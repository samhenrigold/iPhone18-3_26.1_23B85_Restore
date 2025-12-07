uint64_t MP4BoxParser_SampleToGroupCompact::Init(MP4BoxParser_SampleToGroupCompact *this)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = MP4BoxParser_Full::Initialize(this);
  if (v2)
  {
    return v2;
  }

  if (*(this + 5) != 1668507504)
  {
    return 4294967294;
  }

  v3 = (*(*this + 24))(this);
  v49 = 0;
  v4 = *(this + 59);
  *(this + 78) = *(this + 59) >> 7;
  *(this + 68) = (v4 & 0x40) != 0;
  *(this + 20) = dword_18F901ED0[(v4 >> 4) & 3];
  *(this + 21) = dword_18F901ED0[(v4 >> 2) & 3];
  *(this + 22) = dword_18F901ED0[v4 & 3];
  v5 = *(this + 3);
  v6 = (*(*this + 24))(this);
  v7 = *(this + 3);
  if (v5 > v6 && v7 >= 4)
  {
    v50 = 0;
    v9 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3, 4uLL, &v50);
    if (v9)
    {
      v2 = v9;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      *buf = 136315394;
      *&buf[4] = "MP4_BoxParser_SampleToGroupCompact.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 169;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  couldn't read grouping type";
LABEL_11:
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
      return v2;
    }

    *(this + 16) = bswap32(v50);
    v3 += 4;
    v7 = *(this + 3);
  }

  if (*(this + 68))
  {
    v12 = 12;
  }

  else
  {
    v12 = 8;
  }

  if (v7 <= (*(*this + 24))(this) || *(this + 3) < v12)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136315394;
    *&buf[4] = "MP4_BoxParser_SampleToGroupCompact.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 179;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  'csgp' box is too small for its basic contents";
    goto LABEL_21;
  }

  if (*(this + 68) == 1)
  {
    v50 = 0;
    v17 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3, 4uLL, &v50);
    if (v17)
    {
      v2 = v17;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      *buf = 136315394;
      *&buf[4] = "MP4_BoxParser_SampleToGroupCompact.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 186;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  couldn't read grouping type parameter";
      goto LABEL_11;
    }

    *(this + 18) = bswap32(v50);
    v3 += 4;
  }

  v18 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3, 4uLL, &v49);
  if (v18)
  {
    v2 = v18;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v2;
    }

    *buf = 136315394;
    *&buf[4] = "MP4_BoxParser_SampleToGroupCompact.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 192;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  Couldn't read compact sample to group pattern count";
    goto LABEL_11;
  }

  v19 = bswap32(v49);
  *(this + 23) = v19;
  v20 = *(this + 20);
  v21 = *(this + 21);
  if (v20 == 4)
  {
    if (v21 != 4)
    {
LABEL_35:
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 136315394;
      *&buf[4] = "MP4_BoxParser_SampleToGroupCompact.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 198;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  if either pattern size or count size is 4 bits, the other must be 4 bits also";
      goto LABEL_21;
    }
  }

  else if (v21 == 4)
  {
    goto LABEL_35;
  }

  v22 = v19 * ((v21 + v20) >> 3);
  if ((v22 & 0xFFFFFFFF00000000) != 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136315394;
    *&buf[4] = "MP4_BoxParser_SampleToGroupCompact.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 201;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  total pattern spec byte count is too large";
    goto LABEL_21;
  }

  v23 = *(this + 3);
  if (v23 <= (*(*this + 24))(this) || (v24 = v12 + v22, *(this + 3) < v24))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136315394;
    *&buf[4] = "MP4_BoxParser_SampleToGroupCompact.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 204;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  'csgp' box is too small for its pattern lengths and sample counts";
    goto LABEL_21;
  }

  v25 = v3 + 4;
  v26 = v22;
  std::vector<unsigned char>::resize(this + 4, v22);
  DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v25, v22, *(this + 12));
  if (DataSourceBytes)
  {
    v2 = DataSourceBytes;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v2;
    }

    *buf = 136315394;
    *&buf[4] = "MP4_BoxParser_SampleToGroupCompact.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 209;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  Couldn't read compact sample to group pattern specs";
    goto LABEL_11;
  }

  if (*(this + 23))
  {
    v28 = *(this + 12);
    v29 = (*(this + 26) - v28);
    *buf = v28;
    *&buf[8] = v28;
    v30 = v28 + v29;
    *&buf[16] = v28 + v29;
    v55 = 0;
    if ((v28 & 3) != 0)
    {
      v31 = 0;
      v32 = v28 + 1;
      v33 = 8 * ((v28 ^ 3) & 3);
      v34 = v33 + 8;
      v35 = v28;
      do
      {
        if (v35 >= v30)
        {
          v36 = 255;
        }

        else
        {
          v36 = *v35;
        }

        v31 = v36 | (v31 << 8);
        ++v35;
      }

      while ((v32++ & 3) != 0);
      v28 = (v28 + ((v28 ^ 3) & 3) + 1);
      *buf = v28;
      v38 = v31 << (v33 ^ 0x18);
      LODWORD(v55) = v38;
    }

    else
    {
      v34 = 0;
      v38 = 0;
    }

    LODWORD(v39) = 0;
    v40 = 0;
    while (1)
    {
      v41 = *(this + 20);
      if ((v41 - 33) < 0xFFFFFFE0 || ((v42 = v38 >> -v41, v34 -= v41, HIDWORD(v55) = v34, v34 < 0) ? ((AT::TBitstreamReader<unsigned int>::FillCacheFrom(buf, v28), v28 = (*buf + 4), *buf += 4, v43 = BYTE4(v55), v42 |= v55 >> SBYTE4(v55), v34 = HIDWORD(v55) + 32, (HIDWORD(v55) += 32) == 0) ? (v38 = 0) : (v38 = v55 << -v43)) : (v38 <<= v41), LODWORD(v55) = v38, !v42))
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v50 = 136315394;
        v51 = "MP4_BoxParser_SampleToGroupCompact.cpp";
        v52 = 1024;
        v53 = 219;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "%25s:%-5d  zero pattern length prohibited";
        goto LABEL_92;
      }

      v44 = *(this + 22);
      if (v44 == 4)
      {
        LODWORD(v45) = ((v42 - 1) >> 1) + 1;
      }

      else
      {
        v45 = v42 * (v44 >> 3);
        if ((v45 & 0xFFFFFFFF00000000) != 0)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v50 = 136315394;
          v51 = "MP4_BoxParser_SampleToGroupCompact.cpp";
          v52 = 1024;
          v53 = 228;
          v13 = MEMORY[0x1E69E9C10];
          v14 = "%25s:%-5d  pattern too long";
LABEL_92:
          v15 = &v50;
LABEL_22:
          _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v14, v15, 0x12u);
LABEL_23:
          v2 = 0;
          *(this + 60) = 0;
          return v2;
        }
      }

      if (__CFADD__(v39, v45))
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v50 = 136315394;
        v51 = "MP4_BoxParser_SampleToGroupCompact.cpp";
        v52 = 1024;
        v53 = 231;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "%25s:%-5d  total pattern byte count is too large";
        goto LABEL_92;
      }

      v46 = *(this + 21);
      if ((v46 - 33) >= 0xFFFFFFE0)
      {
        v34 -= v46;
        HIDWORD(v55) = v34;
        if (v34 < 0)
        {
          AT::TBitstreamReader<unsigned int>::FillCacheFrom(buf, v28);
          v47 = BYTE4(v55);
          v28 = (*buf + 4);
          *buf += 4;
          v34 = HIDWORD(v55) + 32;
          HIDWORD(v55) += 32;
          if (HIDWORD(v55))
          {
            v38 = v55 << -v47;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 <<= v46;
        }

        LODWORD(v55) = v38;
      }

      v39 = (v45 + v39);
      if (++v40 >= *(this + 23))
      {
        goto LABEL_79;
      }
    }
  }

  v39 = 0;
LABEL_79:
  v48 = *(this + 3);
  if (v48 <= (*(*this + 24))(this) || *(this + 3) < v39 + v24)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136315394;
    *&buf[4] = "MP4_BoxParser_SampleToGroupCompact.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 239;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  'csgp' box is too small to contain its patterns";
LABEL_21:
    v15 = buf;
    goto LABEL_22;
  }

  std::vector<unsigned char>::resize(this + 5, v39);
  v2 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v25 + v26, v39, *(this + 15));
  if (!v2)
  {
    *(this + 60) = 1;
    return v2;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "MP4_BoxParser_SampleToGroupCompact.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 243;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  Couldn't read compact sample to group patterns";
    goto LABEL_11;
  }

  return v2;
}

void MP4BoxParser_SampleToGroupCompact::~MP4BoxParser_SampleToGroupCompact(MP4BoxParser_SampleToGroupCompact *this)
{
  MP4BoxParser_SampleToGroupCompact::~MP4BoxParser_SampleToGroupCompact(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = off_1F03348F0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

uint64_t acv2::ConverterRegistry::GetAvailableNumberChannels(acv2::ConverterRegistry *this, const AudioStreamBasicDescription *a2, unsigned int *a3, void *a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  mFormatID = a2->mFormatID;
  if (a5)
  {
    v6 = mFormatID;
  }

  else
  {
    v6 = 1819304813;
  }

  if (a5)
  {
    v7 = 1819304813;
  }

  else
  {
    v7 = mFormatID;
  }

  v8 = (*(*this + 16))(this, v7, v6, 0, 0);
  if (v8)
  {
    v9 = *(*v8 + 112);

    return v9();
  }

  else
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v11 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "ConverterFactory.cpp";
      v14 = 1024;
      v15 = 651;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to find converter that supports given format for # channels", &v12, 0x12u);
    }

    return 1718449215;
  }
}

uint64_t acv2::ConverterRegistry::GetAvailableChannelLayouts(acv2::ConverterRegistry *this, const AudioStreamBasicDescription *a2, unsigned int *a3, void *a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  mFormatID = a2->mFormatID;
  if (a5)
  {
    v6 = mFormatID;
  }

  else
  {
    v6 = 1819304813;
  }

  if (a5)
  {
    v7 = 1819304813;
  }

  else
  {
    v7 = mFormatID;
  }

  v8 = (*(*this + 16))(this, v7, v6, 0, 0);
  if (v8)
  {
    v9 = *(*v8 + 104);

    return v9();
  }

  else
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v11 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "ConverterFactory.cpp";
      v14 = 1024;
      v15 = 632;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to find converter that supports given format for channel layouts", &v12, 0x12u);
    }

    return 1718449215;
  }
}

uint64_t acv2::ConverterRegistry::GetAvailableEncodeBitRates(acv2::ConverterRegistry *this, unsigned int a2, unsigned int *a3, unsigned int *a4, void *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  FactoryBySpecifier = acv2::ConverterRegistry::FindFactoryBySpecifier(this, a2, a3);
  if (FactoryBySpecifier)
  {
    v6 = *(*FactoryBySpecifier + 88);

    return v6();
  }

  else
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v8 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "ConverterFactory.cpp";
      v11 = 1024;
      v12 = 600;
      _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to find converter that supports given format for encode bit rates", &v9, 0x12u);
    }

    return 1718449215;
  }
}

uint64_t acv2::ConverterRegistry::GetOutputFormats(acv2::ConverterRegistry *this, const unsigned int *a2, _DWORD *a3)
{
  v12 = 0;
  v13 = 0;
  v11 = &v12;
  acv2::ConverterRegistry::GetOutputFormatsSet(this, &v11);
  v5 = 561211770;
  if (a2 && *a2 == 4 * v13)
  {
    v6 = v11;
    if (v11 != &v12)
    {
      do
      {
        *a3 = *(v6 + 28);
        v7 = *(v6 + 8);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v6 + 16);
            v9 = *v8 == v6;
            v6 = v8;
          }

          while (!v9);
        }

        ++a3;
        v6 = v8;
      }

      while (v8 != &v12);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t acv2::ConverterRegistry::GetOutputFormatsSet(uint64_t a1, uint64_t *a2)
{
  v4 = a2 + 1;
  *a2 = v4;
  a2[2] = 0;
  *v4 = 0;
  LODWORD(v15) = 1819304813;
  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, 0x6C70636Du, &v15);
  LODWORD(v15) = 1634492791;
  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, 0x616C6177u, &v15);
  LODWORD(v15) = 1970037111;
  result = std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, 0x756C6177u, &v15);
  if ((*(a1 + 65) & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v6 == v7)
    {
LABEL_10:
      operator new();
    }

    v8 = *(a1 + 8);
    while (1)
    {
      if (*(*v8 + 20) == 1634492791)
      {
        v9 = *(*v8 + 16);
        if (v9 == 1634037347 || v9 == 1852597614)
        {
          break;
        }
      }

      v8 += 8;
      if (v8 == v7)
      {
        goto LABEL_10;
      }
    }

    if (v6 == v7)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      if (*(*v6 + 20) == 1970037111)
      {
        v11 = *(*v6 + 16);
        if (v11 == 1634037347 || v11 == 1852597614)
        {
          break;
        }
      }

      v6 += 8;
      if (v6 == v7)
      {
        goto LABEL_18;
      }
    }

    result = acv2::ConverterRegistry::MakeFactories(a1, 0, 0x6C70636Du, COERCE_DOUBLE(1634037347));
    *(a1 + 65) = 1;
  }

  v14 = *(a1 + 8);
  v13 = *(a1 + 16);
  while (v14 != v13)
  {
    if (*(*v14 + 8) == 1819304813)
    {
      LODWORD(v15) = *(*v14 + 12);
      result = std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, v15, &v15);
    }

    v14 += 8;
  }

  return result;
}

uint64_t acv2::ConverterRegistry::GetInputFormats(acv2::ConverterRegistry *this, const unsigned int *a2, _DWORD *a3)
{
  v12 = 0;
  v13 = 0;
  v11 = &v12;
  acv2::ConverterRegistry::GetInputFormatsSet(this, &v11);
  v5 = 561211770;
  if (a2 && *a2 == 4 * v13)
  {
    v6 = v11;
    if (v11 != &v12)
    {
      do
      {
        *a3 = *(v6 + 28);
        v7 = *(v6 + 8);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v6 + 16);
            v9 = *v8 == v6;
            v6 = v8;
          }

          while (!v9);
        }

        ++a3;
        v6 = v8;
      }

      while (v8 != &v12);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t acv2::ConverterRegistry::GetInputFormatsSet(uint64_t a1, uint64_t *a2)
{
  v4 = a2 + 1;
  *a2 = v4;
  a2[2] = 0;
  *v4 = 0;
  LODWORD(v10) = 1819304813;
  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, 0x6C70636Du, &v10);
  LODWORD(v10) = 1634492791;
  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, 0x616C6177u, &v10);
  LODWORD(v10) = 1970037111;
  result = std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, 0x756C6177u, &v10);
  if ((*(a1 + 64) & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if ((acv2::ConverterRegistry::HaveDecoderFactory(v6, v7, 1634492791, 1819304813) & 1) == 0)
    {
      operator new();
    }

    if ((acv2::ConverterRegistry::HaveDecoderFactory(v6, v7, 1970037111, 1819304813) & 1) == 0)
    {
      operator new();
    }

    result = acv2::ConverterRegistry::MakeFactories(a1, 0, 0x6C70636Du, COERCE_DOUBLE(1633969507));
    *(a1 + 64) = 1;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v9 != v8)
  {
    if (*(*v9 + 12) == 1819304813)
    {
      LODWORD(v10) = *(*v9 + 8);
      result = std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, v10, &v10);
    }

    v9 += 8;
  }

  return result;
}

uint64_t acv2::ConverterRegistry::GetEncoders(acv2::ConverterRegistry *this, unsigned int a2, unsigned int *a3, char *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  acv2::ConverterRegistry::MakeEncoderFactories(this, a2);
  if (a4)
  {
    if (a3)
    {
      v8 = *a3;
      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 != v9 && v8 >= 0xC)
      {
        v24 = 0;
        v25 = v8 / 0xC;
        v26 = v10 + 8;
        do
        {
          v27 = *(v26 - 8);
          v30 = *(v27 + 16);
          v28 = (v27 + 16);
          v29 = v30;
          v31 = v30 == 1852597614 || v29 == 1634037347;
          if (v31 && *(*(v26 - 8) + 20) == a2)
          {
            v32 = &a4[12 * v24++];
            v33 = *v28;
            *(v32 + 2) = *(v28 + 2);
            *v32 = v33;
            v9 = *(this + 2);
          }

          if (v26 == v9)
          {
            break;
          }

          v26 += 8;
        }

        while (v24 < v25);
        v12 = 12 * v24;
      }

      else
      {
        v12 = 0;
      }

      v17 = 0;
      *a3 = v12;
    }

    else
    {
      return 561211770;
    }
  }

  else
  {
    v13 = *(this + 1);
    v14 = *(this + 2);
    if (v13 == v14)
    {
LABEL_16:
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v17 = 1718449215;
      v18 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
      {
        v19.i32[0] = bswap32(a2);
        v20 = vzip1_s8(v19, v19);
        v21.i64[0] = 0x1F0000001FLL;
        v21.i64[1] = 0x1F0000001FLL;
        v22.i64[0] = 0x5F0000005FLL;
        v22.i64[1] = 0x5F0000005FLL;
        v23 = vbsl_s8(vmovn_s32(vcgtq_u32(v22, vsraq_n_s32(v21, vshlq_n_s32(vmovl_u16(v20), 0x18uLL), 0x18uLL))), v20, 0x2E002E002E002ELL);
        v36 = 4;
        LODWORD(__p) = vuzp1_s8(v23, v23).u32[0];
        BYTE4(__p) = 0;
        *buf = 136315906;
        v38 = "ConverterFactory.cpp";
        v39 = 1024;
        v40 = 550;
        v41 = 2080;
        p_p = &__p;
        v43 = 1024;
        v44 = a2;
        _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d no encoder found for format ID '%s' (%d)", buf, 0x22u);
        if (v36 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      while (1)
      {
        v15 = *(*v13 + 16);
        v16 = v15 == 1852597614 || v15 == 1634037347;
        if (v16 && *(*v13 + 20) == a2)
        {
          return 0;
        }

        v13 += 8;
        if (v13 == v14)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return v17;
}

uint64_t acv2::ConverterRegistry::GetFormatInfo(acv2::ConverterRegistry *this, int a2, int *a3, AudioStreamBasicDescription *a4)
{
  mChannelsPerFrame = a4->mChannelsPerFrame;
  if (mChannelsPerFrame || (v8 = 0, a2) && a3)
  {
    v17 = 0;
    if (mChannelsPerFrame <= 1)
    {
      mChannelsPerFrame = 1;
    }

    v22.mSampleRate = a4->mSampleRate;
    *&v22.mFormatID = 0x96C70636DLL;
    v22.mBytesPerPacket = 4 * mChannelsPerFrame;
    v22.mFramesPerPacket = 1;
    v22.mBytesPerFrame = 4 * mChannelsPerFrame;
    v22.mChannelsPerFrame = mChannelsPerFrame;
    *&v22.mBitsPerChannel = 32;
    v15 = &v16;
    v16 = 0;
    v9 = *&a4->mBytesPerPacket;
    *&v14.mSampleRate = *&a4->mSampleRate;
    *&v14.mBytesPerPacket = v9;
    *&v14.mBitsPerChannel = *&a4->mBitsPerChannel;
    v13 = 1969977198;
    v14.mFormatID = AudioFormatEncryptedFormatTranslator::DecryptFormatID(a4->mFormatID, &v13);
    if (a3)
    {
      if (AudioConverterNewInternal(&v14, &v22, 0, 0, &v16, newAudioConverter, 0, 0))
      {
        v8 = AudioConverterNewInternal(&v22, &v14, 0, 0, &v16, newAudioConverter, 0, 0);
        if (!v8)
        {
          if (a2)
          {
            LODWORD(v28) = 1668114275;
            v30 = a2;
            v29 = a3;
            v23 = &v28;
            v24 = &v30;
            v25 = &v29;
            v26 = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
            v27 = &v23;
            with_resolved(v16, &v26);
          }

          goto LABEL_18;
        }

        goto LABEL_22;
      }

      if (a2)
      {
        LODWORD(v28) = 1684891491;
        v30 = a2;
        v29 = a3;
        v23 = &v28;
        v24 = &v30;
        v25 = &v29;
        v26 = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
        v27 = &v23;
        with_resolved(v16, &v26);
      }
    }

    else
    {
      if (!AudioConverterNewInternal(&v22, &v14, 0, 0, &v16, newAudioConverter, 0, 0))
      {
LABEL_18:
        v17 = 40;
        v30 = 1633906532;
        v28 = &v18;
        v29 = &v17;
        v23 = &v30;
        v24 = &v29;
        v25 = &v28;
        v26 = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
        v27 = &v23;
        v10 = with_resolved(v16, &v26);
        goto LABEL_19;
      }

      v8 = AudioConverterNewInternal(&v14, &v22, 0, 0, &v16, newAudioConverter, 0, 0);
      if (v8)
      {
LABEL_22:
        applesauce::raii::v1::detail::ScopeGuard<acv2::ConverterRegistry::GetFormatInfo(unsigned int,void const*,AudioStreamBasicDescription *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&v15);
        return v8;
      }
    }

    v17 = 40;
    v30 = 1633904996;
    v28 = &v18;
    v29 = &v17;
    v23 = &v30;
    v24 = &v29;
    v25 = &v28;
    v26 = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
    v27 = &v23;
    v10 = with_resolved(v16, &v26);
LABEL_19:
    v8 = v10;
    if (!v10)
    {
      a4->mSampleRate = v18;
      v11 = v19;
      *&a4->mFormatID = v19;
      *&a4->mBytesPerFrame = v20;
      a4->mBitsPerChannel = v21;
      v8 = 0;
      if (v13 != 1969977198)
      {
        a4->mFormatID = AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(v11, v13);
      }
    }

    goto LABEL_22;
  }

  return v8;
}

void sub_18F82D8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  applesauce::raii::v1::detail::ScopeGuard<acv2::ConverterRegistry::GetFormatInfo(unsigned int,void const*,AudioStreamBasicDescription *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(va);
  _Unwind_Resume(a1);
}

OpaqueAudioConverter ***applesauce::raii::v1::detail::ScopeGuard<acv2::ConverterRegistry::GetFormatInfo(unsigned int,void const*,AudioStreamBasicDescription *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(OpaqueAudioConverter ***a1)
{
  v2 = **a1;
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  return a1;
}

uint64_t acv2::ConverterRegistry::GetAvailableNumberChannelsInfo(acv2::ConverterRegistry *this, const AudioStreamBasicDescription *a2, unsigned int *a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  mFormatID = a2->mFormatID;
  if (a4)
  {
    v5 = mFormatID;
  }

  else
  {
    v5 = 1819304813;
  }

  if (a4)
  {
    v6 = 1819304813;
  }

  else
  {
    v6 = mFormatID;
  }

  v7 = (*(*this + 16))(this, v6, v5, 0, 0);
  if (v7)
  {
    v8 = *(*v7 + 80);

    return v8();
  }

  else
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v10 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ConverterFactory.cpp";
      v13 = 1024;
      v14 = 484;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to find converter that supports given format for # channels info", &v11, 0x12u);
    }

    return 1718449215;
  }
}

uint64_t acv2::ConverterRegistry::GetAvailableChannelLayoutsInfo(acv2::ConverterRegistry *this, const AudioStreamBasicDescription *a2, unsigned int *a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  mFormatID = a2->mFormatID;
  if (a4)
  {
    v5 = mFormatID;
  }

  else
  {
    v5 = 1819304813;
  }

  if (a4)
  {
    v6 = 1819304813;
  }

  else
  {
    v6 = mFormatID;
  }

  v7 = (*(*this + 16))(this, v6, v5, 0, 0);
  if (v7)
  {
    v8 = *(*v7 + 72);

    return v8();
  }

  else
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v10 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ConverterFactory.cpp";
      v13 = 1024;
      v14 = 465;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to find converter that supports given format for channel layouts info", &v11, 0x12u);
    }

    return 1718449215;
  }
}

uint64_t acv2::ConverterRegistry::GetAvailableEncodeBitRatesInfo(acv2::ConverterRegistry *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  FactoryBySpecifier = acv2::ConverterRegistry::FindFactoryBySpecifier(this, a2, a3);
  if (FactoryBySpecifier)
  {
    v5 = *(*FactoryBySpecifier + 56);

    return v5();
  }

  else
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v7 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "ConverterFactory.cpp";
      v10 = 1024;
      v11 = 433;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to find converter that supports given format for encode bit rates info", &v8, 0x12u);
    }

    return 1718449215;
  }
}

uint64_t acv2::ConverterRegistry::GetOutputFormatsSize(acv2::ConverterRegistry *this)
{
  v4 = 0;
  v5 = 0;
  v3 = &v4;
  acv2::ConverterRegistry::GetOutputFormatsSet(this, &v3);
  v1 = (4 * v5);
  return v1;
}

uint64_t acv2::ConverterRegistry::GetInputFormatsSize(acv2::ConverterRegistry *this)
{
  v4 = 0;
  v5 = 0;
  v3 = &v4;
  acv2::ConverterRegistry::GetInputFormatsSet(this, &v3);
  v1 = (4 * v5);
  return v1;
}

uint64_t acv2::ConverterRegistry::GetEncodersSize(acv2::ConverterRegistry *this, unsigned int a2, unsigned int *a3)
{
  acv2::ConverterRegistry::MakeEncoderFactories(this, a2);
  v6 = *(this + 1);
  v7 = *(this + 2);
  if (v6 == v7)
  {
    v11 = 0;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_12;
  }

  v8 = 0;
  do
  {
    v9 = *(*v6 + 16);
    v10 = v9 == 1852597614 || v9 == 1634037347;
    if (v10 && *(*v6 + 20) == a2)
    {
      ++v8;
    }

    v6 += 8;
  }

  while (v6 != v7);
  v11 = 12 * v8;
  if (a3)
  {
LABEL_12:
    *a3 = v11;
  }

  return 0;
}

void acv2::ConverterRegistry::~ConverterRegistry(acv2::ConverterRegistry *this)
{
  *this = &unk_1F0334928;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0334928;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

uint64_t acv2::ConverterFactory::GetAvailableNumberChannels(acv2::ConverterFactory *this, const AudioStreamBasicDescription *a2, unsigned int *a3, _DWORD *a4)
{
  if (*a3 != 4)
  {
    return 561211770;
  }

  result = 0;
  *a4 = -1;
  return result;
}

uint64_t acv2::ConverterFactory::GetAvailableEncodeSampleRates(acv2::ConverterFactory *this, unsigned int *a2, void *a3)
{
  if (*a2 != 16)
  {
    return 561211770;
  }

  result = 0;
  *a3 = 0;
  a3[1] = 0;
  return result;
}

void DSPGraph::StringSubMacro::apply(uint64_t a1@<X0>, std::string **a2@<X1>, uint64_t *a3@<X2>, std::string *a4@<X8>)
{
  if (*(a1 + 80) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "apply");
    v8 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v8 = *v8;
    }

    DSPGraph::strprintf("preprocessor error: recursive call to macro %s.", v8);
  }

  *(a1 + 80) = 1;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3[1] - *a3 != v6 - v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "apply");
    v9 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v9 = *v9;
    }

    DSPGraph::strprintf("preprocessor error: macro %s: wrong number of arguments expected %zu. got %zu\n", v9, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 3), 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  *&a4->__r_.__value_.__l.__data_ = 0uLL;
  v11[0] = a2;
  a4->__r_.__value_.__r.__words[2] = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v11[1] = &__p;
  if (v6 != v7)
  {
    operator new();
  }

  DSPGraph::Preprocessor::preprocess(&v12, a2, (a1 + 56), 1);
  *a4 = v12;
  DSPGraph::UndefineLocals::~UndefineLocals(v11);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  *(a1 + 80) = 0;
}

void sub_18F82E320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  *(v31 + 80) = 0;
  _Unwind_Resume(exception_object);
}

void std::vector<DSPGraph::Macro const*>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
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
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
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

      std::__throw_bad_array_new_length[abi:ne200100]();
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

void DSPGraph::Preprocessor::undef(DSPGraph::Preprocessor *this, const DSPGraph::Macro *a2)
{
  if (!a2)
  {
    return;
  }

  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v3 == v4)
  {
    return;
  }

  v5 = *(this + 4);
  v6 = *(this + 5);
  v7 = (v4 + 8 * (v5 >> 9));
  v8 = *v7;
  v9 = &(*v7)[v5 & 0x1FF];
  v10 = *(v4 + (((v5 + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v5 + v6) & 0x1FF);
  if (v9 != v10)
  {
    v11 = 1;
    while ((v11 & 1) == 0 || *v9 != a2)
    {
      if (++v9 - v8 == 4096)
      {
        v12 = v7[1];
        ++v7;
        v8 = v12;
        v9 = v12;
      }

      v11 = 0;
      if (v9 == v10)
      {
        goto LABEL_12;
      }
    }

    if (v9 == v10)
    {
LABEL_12:
      v9 = (*(v4 + (((v5 + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v5 + v6) & 0x1FF));
      goto LABEL_13;
    }

    v57 = v9;
    v58 = v7;
LABEL_70:
    v59 = v9 - 512;
    while (1)
    {
      if (++v57 - *v58 == 4096)
      {
        v60 = v58[1];
        ++v58;
        v57 = v60;
      }

      if (v57 == v10)
      {
        break;
      }

      v61 = *v57;
      *v57 = 0;
      v62 = *v9;
      *v9 = v61;
      if (v62)
      {
        (*(*v62 + 8))(v62);
      }

      ++v9;
      if (*v7 == ++v59)
      {
        v63 = v7[1];
        ++v7;
        v9 = v63;
        goto LABEL_70;
      }
    }

    v5 = *(this + 4);
    v6 = *(this + 5);
    v4 = *(this + 1);
    v3 = *(this + 2);
  }

LABEL_13:
  v13 = (v4 + 8 * ((v5 + v6) >> 9));
  v65 = v5 + v6;
  if (v3 == v4)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v13 + 8 * ((v5 + v6) & 0x1FF);
  }

  v15 = v5 >> 9;
  if (v14 != v9)
  {
    v16 = ((v14 - *v13) >> 3) + ((v13 - v7) << 6) - (v9 - *v7);
    v18 = (v4 + 8 * v15);
    if (v3 == v4)
    {
      v17 = 0;
      goto LABEL_22;
    }

LABEL_20:
    v17 = (*v18 + 8 * (v5 & 0x1FF));
    goto LABEL_22;
  }

  v16 = 0;
  v17 = 0;
  v18 = (v4 + 8 * v15);
  if (v3 != v4)
  {
    goto LABEL_20;
  }

LABEL_22:
  v66 = v6;
  if (v9 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = v9 - *v7 + ((v7 - v18) << 6) - ((v17 - *v18) >> 3);
  }

  v20 = std::__deque_iterator<std::unique_ptr<DSPGraph::Macro>,std::unique_ptr<DSPGraph::Macro>*,std::unique_ptr<DSPGraph::Macro>&,std::unique_ptr<DSPGraph::Macro>**,long,512l>::operator+[abi:ne200100](v18, v17, v19);
  if (v16 >= 1)
  {
    v22 = v20;
    v64 = v3;
    v23 = v66 - v16;
    v67 = v21;
    v24 = std::__deque_iterator<std::unique_ptr<DSPGraph::Macro>,std::unique_ptr<DSPGraph::Macro>*,std::unique_ptr<DSPGraph::Macro>&,std::unique_ptr<DSPGraph::Macro>**,long,512l>::operator+[abi:ne200100](v20, v21, v16);
    v26 = v25;
    if (v19 <= v23 >> 1)
    {
      if (v22 == v18)
      {
        v28 = v17;
        v29 = v67;
        v30 = v24;
      }

      else
      {
        v33 = *v22;
        v32 = v22 - 1;
        v31 = v33;
        v34 = v67;
        v30 = v24;
        while (1)
        {
          std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<DSPGraph::Macro> *,std::__deque_iterator<std::unique_ptr<DSPGraph::Macro>,std::unique_ptr<DSPGraph::Macro> *,std::unique_ptr<DSPGraph::Macro>&,std::unique_ptr<DSPGraph::Macro> **,long,512l>,0>(v68, v31, v34, v30, v26);
          v26 = v70;
          v30 = v69;
          if (v32 == v18)
          {
            break;
          }

          v35 = *v32--;
          v31 = v35;
          v34 = v35 + 4096;
        }

        v29 = *v32 + 4096;
        v28 = v17;
      }

      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<DSPGraph::Macro> *,std::__deque_iterator<std::unique_ptr<DSPGraph::Macro>,std::unique_ptr<DSPGraph::Macro> *,std::unique_ptr<DSPGraph::Macro>&,std::unique_ptr<DSPGraph::Macro> **,long,512l>,0>(v68, v28, v29, v30, v26);
      v36 = v70;
      while (v17 != v36)
      {
        v37 = *v17;
        *v17 = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }

        if ((++v17 - *v18) == 4096)
        {
          v38 = *(v18 + 1);
          v18 += 8;
          v17 = v38;
        }
      }

      *(this + 5) -= v16;
      while (1)
      {
        v39 = *(this + 4) + v16;
        *(this + 4) = v39;
        if (v39 < 0x400)
        {
          break;
        }

        operator delete(**(this + 1));
        *(this + 1) += 8;
        v16 = -512;
      }
    }

    else
    {
      if (v64 == v4)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v13 + 8 * (v65 & 0x1FF);
      }

      if (v24 == v13)
      {
        v40 = v27;
        v41 = v22;
        v42 = v67;
      }

      else
      {
        v43 = (v24 + 8);
        v44 = (*v24 + 4096);
        v41 = v22;
        v42 = v67;
        while (1)
        {
          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<DSPGraph::Macro> *,std::__deque_iterator<std::unique_ptr<DSPGraph::Macro>,std::unique_ptr<DSPGraph::Macro> *,std::unique_ptr<DSPGraph::Macro>&,std::unique_ptr<DSPGraph::Macro> **,long,512l>,0>(v68, v25, v44, v41, v42);
          v42 = v70;
          v41 = v69;
          if (v43 == v13)
          {
            break;
          }

          v45 = *v43++;
          v25 = v45;
          v44 = v45 + 512;
        }

        v25 = *v43;
        v40 = v27;
      }

      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<DSPGraph::Macro> *,std::__deque_iterator<std::unique_ptr<DSPGraph::Macro>,std::unique_ptr<DSPGraph::Macro> *,std::unique_ptr<DSPGraph::Macro>&,std::unique_ptr<DSPGraph::Macro> **,long,512l>,0>(v68, v25, v40, v41, v42);
      v46 = v70;
      v48 = *(this + 1);
      v47 = *(this + 2);
      if (v47 == v48)
      {
        v50 = 0;
      }

      else
      {
        v49 = *(this + 5) + *(this + 4);
        v50 = *(v48 + ((v49 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v49 & 0x1FF);
      }

      if (v50 != v70)
      {
        v51 = v69;
        do
        {
          v52 = *v46;
          *v46 = 0;
          if (v52)
          {
            (*(*v52 + 8))(v52);
          }

          if ((++v46 - *v51) == 4096)
          {
            v53 = *(v51 + 1);
            v51 += 8;
            v46 = v53;
          }
        }

        while (v46 != v50);
        v47 = *(this + 2);
      }

      v54 = *(this + 5) - v16;
      for (*(this + 5) = v54; ; v54 = *(this + 5))
      {
        v55 = *(this + 1);
        v56 = v47 == v55 ? 0 : ((v47 - v55) << 6) - 1;
        if ((v56 - (v54 + *(this + 4))) < 0x400)
        {
          break;
        }

        operator delete(*(v47 - 8));
        v47 = *(this + 2) - 8;
        *(this + 2) = v47;
      }
    }
  }
}

void *std::__deque_iterator<std::unique_ptr<DSPGraph::Macro>,std::unique_ptr<DSPGraph::Macro>*,std::unique_ptr<DSPGraph::Macro>&,std::unique_ptr<DSPGraph::Macro>**,long,512l>::operator+[abi:ne200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 3);
    if (v3 < 1)
    {
      result -= (511 - v3) >> 9;
    }

    else
    {
      result += v3 >> 9;
    }
  }

  return result;
}

uint64_t **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<DSPGraph::Macro> *,std::__deque_iterator<std::unique_ptr<DSPGraph::Macro>,std::unique_ptr<DSPGraph::Macro> *,std::unique_ptr<DSPGraph::Macro>&,std::unique_ptr<DSPGraph::Macro> **,long,512l>,0>(uint64_t **result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a4;
  v7 = a2;
  v8 = result;
  if (a2 == a3)
  {
    v14 = a2;
    goto LABEL_17;
  }

  v10 = *a4;
  while (1)
  {
    v11 = v10 - a5 + 4096;
    v12 = a3 - v7 >= v11 >> 3 ? v11 >> 3 : a3 - v7;
    if (v12)
    {
      break;
    }

LABEL_13:
    v16 = v6[1];
    ++v6;
    v10 = v16;
    a5 = v16;
  }

  v13 = 8 * v12;
  v14 = &v7[v12];
  do
  {
    v15 = *v7;
    *v7 = 0;
    result = *a5;
    *a5 = v15;
    if (result)
    {
      result = ((*result)[1])(result);
    }

    ++v7;
    ++a5;
    v13 -= 8;
  }

  while (v13);
  if (v14 != a3)
  {
    v7 = v14;
    goto LABEL_13;
  }

  if ((*v6 + 4096) == a5)
  {
    v17 = v6[1];
    ++v6;
    a5 = v17;
  }

LABEL_17:
  *v8 = v14;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

uint64_t *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<DSPGraph::Macro> *,std::__deque_iterator<std::unique_ptr<DSPGraph::Macro>,std::unique_ptr<DSPGraph::Macro> *,std::unique_ptr<DSPGraph::Macro>&,std::unique_ptr<DSPGraph::Macro> **,long,512l>,0>(uint64_t *result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = a5 - v10;
      if ((v11 - a2) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a2) >> 3;
      }

      if (v13)
      {
        v14 = -8 * v13;
        v15 = (v11 - 8);
        do
        {
          v16 = *v15;
          *v15 = 0;
          v17 = *--a5;
          result = v17;
          *a5 = v16;
          if (v17)
          {
            result = (*(*result + 8))(result);
          }

          --v15;
          v14 += 8;
        }

        while (v14);
      }

      v11 -= 8 * v13;
      if (v11 == a2)
      {
        break;
      }

      v18 = *--v6;
      v10 = v18;
      a5 = (v18 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v19 = v6[1];
      ++v6;
      a5 = v19;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void DSPGraph::ArgMacro::~ArgMacro(void **this)
{
  *this = &unk_1F0334C70;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  DSPGraph::Macro::~Macro(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0334C70;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  DSPGraph::Macro::~Macro(this);
}

void DSPGraph::Macro::~Macro(void **this)
{
  *this = &unk_1F0334C40;
  v2 = this + 4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void DSPGraph::Preprocessor::parseToEnd(std::string::value_type **a1, char a2, std::string::value_type a3, std::string *this)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v8 = **a1;
  if (!v8)
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v13, "parseToEnd");
    std::string::basic_string[abi:ne200100]<0>(&v12, "preprocessor error: expected closing brace");
    DSPGraph::ThrowException(1886548769, &v14, 179, &v13, &v12);
  }

  v9 = *a1 + 1;
  v10 = 1;
  while (1)
  {
    if (v8 != a3)
    {
      if (v8 == a2)
      {
        ++v10;
      }

      goto LABEL_11;
    }

    if (!--v10)
    {
      break;
    }

    v8 = a3;
LABEL_11:
    std::string::push_back(this, v8);
    v11 = *v9++;
    v8 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  *a1 = v9;
}

void sub_18F82EEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::Preprocessor::parseToken(std::string::value_type **a1, uint64_t a2)
{
  DSPGraph::skipspace(a1);
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = DSPGraph::endOfWord(**a1);
  if (!v4)
  {
    for (i = *a1; ; ++i)
    {
      v6 = *i;
      if (DSPGraph::endOfWord(*i))
      {
        break;
      }

      std::string::push_back(a2, v6);
    }

    *a1 = i;
  }

  return !v4;
}

uint64_t DSPGraph::Preprocessor::find(void *a1, const void **a2)
{
  v2 = a1[1];
  if (a1[2] == v2)
  {
    return 0;
  }

  v3 = a1[4];
  v4 = (v2 + 8 * (v3 >> 9));
  v5 = *v4;
  v6 = *v4 + 8 * (v3 & 0x1FF);
  v7 = *(v2 + (((a1[5] + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v3) & 0x1FF);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  if (v8 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  while (1)
  {
    v11 = *v6;
    v12 = *(*v6 + 31);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(*v6 + 16);
    }

    if (v12 == v9)
    {
      v14 = v13 >= 0 ? (v11 + 8) : *(v11 + 8);
      if (!memcmp(v14, v10, v9))
      {
        break;
      }
    }

    v6 += 8;
    if (v6 - v5 == 4096)
    {
      v15 = v4[1];
      ++v4;
      v5 = v15;
      v6 = v15;
    }

    if (v6 == v7)
    {
      return 0;
    }
  }

  return v11;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v16.__end_cap_.__value_ = a1;
  if (v5)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](v5);
  }

  begin = (24 * v2);
  v16.__first_ = 0;
  v16.__begin_ = (24 * v2);
  value = 0;
  v16.__end_ = (24 * v2);
  v16.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v16.__begin_;
    end = v16.__end_;
    value = v16.__end_cap_.__value_;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v8;
    end = (24 * v2);
  }

  v10 = end + 1;
  v11 = *(a1 + 8) - *a1;
  v12 = begin - v11;
  memcpy(begin - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = value;
  v16.__end_ = v13;
  v16.__end_cap_.__value_ = v14;
  v16.__first_ = v13;
  v16.__begin_ = v13;
  std::__split_buffer<std::string>::~__split_buffer(&v16);
  return v10;
}

BOOL DSPGraph::Preprocessor::parseMacroBody(void *a1, std::string::value_type **a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (DSPGraph::Preprocessor::parseToken(a2, a3) || (DSPGraph::Preprocessor::parseString(a2, a3) & 1) != 0)
  {
    return 1;
  }

  DSPGraph::skipspace(a2);
  if (**a2 == 40)
  {
    ++*a2;
    DSPGraph::Preprocessor::parseToEnd(a2, 40, 41, a3);
    v6 = (a3 + 8);
    if (*(a3 + 23) >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = *(a3 + 8);
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v7 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    p_p->__r_.__value_.__s.__data_[0] = 40;
    v9 = &p_p->__r_.__value_.__l.__data_ + 1;
    if (v7)
    {
      if (*(a3 + 23) >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      memmove(v9, v10, v7);
    }

    *(v9 + v7) = 0;
    std::string::push_back(&__p, 41);
    v16[0] = __p.__r_.__value_.__l.__size_;
    v11 = __p.__r_.__value_.__r.__words[0];
    *(v16 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    memset(&__p, 0, sizeof(__p));
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
      v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *a3 = v11;
      *v6 = v16[0];
      *(a3 + 15) = *(v16 + 7);
      *(a3 + 23) = v12;
      if (v14 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a3 = v11;
      *v6 = v16[0];
      *(a3 + 15) = *(v16 + 7);
      *(a3 + 23) = v12;
    }

    return 1;
  }

  DSPGraph::skipspace(a2);
  if (**a2 == 123)
  {
    ++*a2;
    DSPGraph::Preprocessor::parseToEnd(a2, 123, 125, a3);
    return 1;
  }

  return DSPGraph::Preprocessor::parseMacroCall(a1, a2, a3);
}

void sub_18F82F3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::strToLong(uint64_t *a1, const char *a2, int a3, char *a4)
{
  v6 = a1;
  if (*(a1 + 23) < 0)
  {
    if (a1[1])
    {
      __endptr = 0;
      a1 = *a1;
      goto LABEL_6;
    }

LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    DSPGraph::strprintf("empty %s argument", a2);
  }

  if (!*(a1 + 23))
  {
    goto LABEL_15;
  }

  __endptr = 0;
LABEL_6:
  v7 = strtol(a1, &__endptr, 10);
  if ((v7 - 0x7FFFFFFFFFFFFFFFLL) <= 1 && *__error())
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    if (*(v6 + 23) >= 0)
    {
      v12 = v6;
    }

    else
    {
      v12 = *v6;
    }

    DSPGraph::strprintf("out-of-range %s argument: %s", a2, v12);
  }

  v8 = *(v6 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = *v6;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = v6[1];
  }

  if (__endptr != (v9 + v8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    if (*(v6 + 23) >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    DSPGraph::strprintf("non-numerical characters in %s argument: %s", a2, v11);
  }

  return v7;
}

void sub_18F82F5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::numeric::exceptional_add<long>(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
  }

  return result;
}

uint64_t caulk::numeric::exceptional_mul<long>(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 != result >> 63)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
  }

  return result;
}

uint64_t caulk::numeric::exceptional_sub<long>(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic subtraction overflow");
  }

  return result;
}

uint64_t DSPGraph::Preprocessor::skipMacroBody(std::string::value_type **this, const char **a2)
{
  memset(&__p, 0, sizeof(__p));
  if (DSPGraph::Preprocessor::parseToken(this, &__p) || (DSPGraph::Preprocessor::parseString(this, &__p) & 1) != 0)
  {
    goto LABEL_9;
  }

  DSPGraph::skipspace(this);
  v3 = *this;
  if (**this == 40)
  {
    v4 = 41;
    v5 = 40;
LABEL_8:
    *this = v3 + 1;
    DSPGraph::Preprocessor::parseToEnd(this, v5, v4, &__p);
LABEL_9:
    v6 = 1;
    goto LABEL_10;
  }

  DSPGraph::skipspace(this);
  v3 = *this;
  if (**this == 123 || (DSPGraph::skipspace(this), v3 = *this, **this == 91))
  {
    v4 = 125;
    v5 = 123;
    goto LABEL_8;
  }

  v6 = 0;
LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_18F82F890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Preprocessor::parseString(std::string::value_type **a1, uint64_t a2)
{
  DSPGraph::skipspace(a1);
  if (DSPGraph::Preprocessor::parseToken(a1, a2))
  {
    return 1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  if (**a1 == 34)
  {
    std::string::push_back(a2, 34);
    v4 = *a1 - 1;
    do
    {
      v5 = v4[2];
      if (v5 == 10 || v5 == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v10, "parseString");
        std::string::basic_string[abi:ne200100]<0>(&v9, "unterminated string");
        DSPGraph::ThrowException(1886548769, &v11, 296, &v10, &v9);
      }

      v7 = v5;
      std::string::push_back(a2, v5);
      ++v4;
    }

    while (v7 != 34);
    *a1 = v4 + 2;
    return 1;
  }

  return 0;
}

void sub_18F82F9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_18F82FA60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v3 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v4 = *(MEMORY[0x1E69E54C8] + 16);
  v5 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  a1[1] = 0;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, a1 + 2);
  v7 = MEMORY[0x1E69E5528] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  a1[53] = v3;
  MEMORY[0x193ADEDC0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_18F82FC3C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x193ADF120](v1);
  _Unwind_Resume(a1);
}

std::string *std::optional<std::string>::emplace[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,void>(std::string *this, void **a2, void **a3)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(this, *a2, *a3);
  this[1].__r_.__value_.__s.__data_[0] = 1;
  return this;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x193ADEDD0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x193ADF120](a1 + 53);
  return a1;
}

std::string *std::__fs::filesystem::operator/[abi:ne200100](std::string *this, uint64_t a2, std::__fs::filesystem::path *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  if (std::__fs::filesystem::path::__root_directory(a3).__size_)
  {
    return std::string::operator=(this, &a3->__pn_);
  }

  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  v6 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__pn_.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__pn_.__r_.__value_.__l.__size_;
  }

  return std::string::append(this, v7, size);
}

void sub_18F82FE50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::Preprocessor::parseActualArg(void *a1, std::string::value_type **a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (DSPGraph::Preprocessor::parseToken(a2, a3) || (DSPGraph::Preprocessor::parseString(a2, a3) & 1) != 0)
  {
    return 1;
  }

  DSPGraph::skipspace(a2);
  if (**a2 == 40)
  {
    ++*a2;
    DSPGraph::Preprocessor::parseToEnd(a2, 40, 41, a3);
    std::operator+<char>();
    v6 = std::string::append(&__p, ")", 1uLL);
    v7 = v6->__r_.__value_.__r.__words[0];
    v12[0] = v6->__r_.__value_.__l.__size_;
    *(v12 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
    v8 = HIBYTE(v6->__r_.__value_.__r.__words[2]);
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v9 = v12[0];
    *a3 = v7;
    *(a3 + 8) = v9;
    *(a3 + 15) = *(v12 + 7);
    *(a3 + 23) = v8;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 1;
  }

  DSPGraph::skipspace(a2);
  if (**a2 == 123)
  {
    ++*a2;
    DSPGraph::Preprocessor::parseToEnd(a2, 123, 125, a3);
    return 1;
  }

  return DSPGraph::Preprocessor::parseMacroCall(a1, a2, a3);
}

void sub_18F830020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::emplace_back<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t DSPGraph::skipspace(_BYTE **a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E9830];
  do
  {
    v4 = *v2;
    if ((v4 & 0x80000000) != 0)
    {
      result = __maskrune(*v2, 0x4000uLL);
      if (result)
      {
LABEL_4:
        v2 = *a1 + 1;
        *a1 = v2;
        continue;
      }
    }

    else
    {
      result = *(v3 + 4 * v4 + 60) & 0x4000;
      if (result)
      {
        goto LABEL_4;
      }
    }

    if (v4 != 59)
    {
      return result;
    }

    v2 = *a1;
    do
    {
      v6 = *v2;
      if (!*v2)
      {
        break;
      }

      *a1 = ++v2;
    }

    while (v6 != 10);
  }

  while (result);
  return result;
}

BOOL DSPGraph::Preprocessor::parseMacroCall(void *a1, _BYTE **a2, uint64_t a3)
{
  v24 = *a2;
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  DSPGraph::skipspace(&v24);
  v6 = *v24;
  if (v6 == 91)
  {
    v23 = 0;
    ++v24;
    v22[0] = 0;
    v22[1] = 0;
    if (!DSPGraph::Preprocessor::parseToken(&v24, v22))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v18, "parseMacroCall");
      std::string::basic_string[abi:ne200100]<0>(&v16, "preprocessor error: expected macro name");
      DSPGraph::ThrowException(1886548769, __p, 255, &v18, &v16);
    }

    __p[0] = 0;
    __p[1] = 0;
    v21 = 0;
    v18 = 0uLL;
    v19 = 0;
    while (DSPGraph::Preprocessor::parseActualArg(a1, &v24, __p))
    {
      v7 = *(&v18 + 1);
      if (*(&v18 + 1) >= v19)
      {
        v9 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v18, __p);
      }

      else
      {
        if (SHIBYTE(v21) < 0)
        {
          std::string::__init_copy_ctor_external(*(&v18 + 1), __p[0], __p[1]);
        }

        else
        {
          v8 = *__p;
          *(*(&v18 + 1) + 16) = v21;
          *v7 = v8;
        }

        v9 = (v7 + 24);
      }

      *(&v18 + 1) = v9;
    }

    DSPGraph::skipspace(&v24);
    v10 = v24;
    if (*v24 != 93)
    {
      std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v15, "parseMacroCall");
      std::string::basic_string[abi:ne200100]<0>(&v14, "preprocessor error: expected closing brace");
      DSPGraph::ThrowException(1886548769, &v16, 264, &v15, &v14);
    }

    v11 = DSPGraph::Preprocessor::find(a1, v22);
    if (!v11)
    {
      std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v15, "parseMacroCall");
      v13 = v22;
      if (v23 < 0)
      {
        v13 = v22[0];
      }

      DSPGraph::strprintf("preprocessor error: macro %s not found.", v13);
    }

    *a2 = v10 + 1;
    (*(*v11 + 16))(&v16);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v16;
    *(a3 + 16) = v17;
    *&v16 = &v18;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }
  }

  return v6 == 91;
}

void sub_18F8303E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  a22 = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 57) < 0)
  {
    operator delete(*(v39 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t DSPGraph::CounterMacro::apply@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, std::string *a3@<X8>)
{
  std::to_string(a3, *(a1 + 56));
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 == v6)
  {
    result = caulk::numeric::exceptional_add<long>(*(a1 + 56), *(a1 + 64));
  }

  else
  {
    if (v6 - v5 != 24)
    {
      std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v10, "apply");
      std::string::basic_string[abi:ne200100]<0>(&v9, "too many arguments to counter");
      DSPGraph::ThrowException(1886548769, &v11, 400, &v10, &v9);
    }

    v7 = DSPGraph::strToLong(v5, "counter step", 397, "apply");
    result = caulk::numeric::exceptional_add<long>(*(a1 + 56), v7);
  }

  *(a1 + 56) = result;
  return result;
}

void sub_18F8305B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::CounterMacro::~CounterMacro(void **this)
{
  DSPGraph::Macro::~Macro(this);

  JUMPOUT(0x193ADF220);
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke_9741()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

BOOL DSPGraph::endOfWord(unsigned int this)
{
  if (!this)
  {
    return 1;
  }

  if (this <= 0x7F)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * this + 60) & 0x4000) != 0)
    {
      return 1;
    }
  }

  else if (__maskrune(this, 0x4000uLL))
  {
    return 1;
  }
}

void DSPGraph::StringSubMacro::~StringSubMacro(void **this)
{
  *this = &unk_1F0334C70;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  DSPGraph::Macro::~Macro(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0334C70;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  DSPGraph::Macro::~Macro(this);
}

void sub_18F83096C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL28getAVAudioChannelLayoutClassv_block_invoke_9782(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = ___ZL19AVFAudioLibraryCorePPc_block_invoke_9784;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E72C1A38;
    v9 = 0;
    AVFAudioLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFAudioLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"AVFASoftLink.h" lineNumber:63 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("AVAudioChannelLayout");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioChannelLayoutClass()_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"AVFASoftLink.h" lineNumber:65 description:{@"Unable to find class %s", "AVAudioChannelLayout"}];

LABEL_10:
    __break(1u);
  }

  getAVAudioChannelLayoutClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL19AVFAudioLibraryCorePPc_block_invoke_9784(uint64_t a1)
{
  result = _sl_dlopen();
  AVFAudioLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_18F830EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::raii::v1::detail::ScopeGuard<[AVAudioChannelGroupSemantics createAudioChannelGroupSemantics]::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(va);
  _Unwind_Resume(a1);
}

uint64_t AACAudioFile::ScanForPackets(AACAudioFile *this, uint64_t a2, DataSource *a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v31.mStartOffset = 0;
  *&v31.mVariableFramesInPacket = 0;
  v29 = 0;
  if (*(this + 169))
  {
    return 0;
  }

  v5 = a3;
  if (!a3)
  {
    v5 = *(this + 13);
  }

  v8 = *(this + 15);
  if (!v8)
  {
    operator new();
  }

  v9 = *(v8 + 24);
  if (a2 != -1 && v9 >= a2)
  {
    return 0;
  }

  v30 = 0;
  v10 = (*(*v5 + 24))(v5, &v29);
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AACAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 856;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  GetSize failed", buf, 0x12u);
    }
  }

  else
  {
    if (v9)
    {
      v12 = *(this + 9);
      v13 = v9 - 1;
      CompressedPacketTable::operator[](buf, v8, v9 - 1);
      v14 = *buf;
      CompressedPacketTable::operator[](v28, v8, v13);
      v15 = v14 + v12 + v28[3];
    }

    else
    {
      (*(*this + 656))(this, 0);
      v15 = *(this + 9);
    }

    if (a2 == -1)
    {
      v17 = -1;
    }

    else
    {
      v16 = *(this + 15);
      if (v16)
      {
        v16 = *(v16 + 24);
      }

      v17 = a2 - v16;
    }

    if (v15 >= v29)
    {
      v10 = 0;
LABEL_41:
      *(this + 169) = a4;
    }

    else
    {
      v27 = v17;
LABEL_23:
      v18 = *(this + 22);
      while (1)
      {
        v19 = (*(*v5 + 48))(v5, 0, v15, (*(this + 46) - v18), v18, &v30);
        v10 = v19;
        if (v19)
        {
          if (v19 != -39)
          {
            break;
          }
        }

        v21 = v30;
        v22 = *(this + 43);
        if (v30 < v22)
        {
          break;
        }

        v28[0] = *(this + 43);
        v18 = *(this + 22);
        ADTSPacketSize = ACMP4BitStreams::GetADTSPacketSize(v18, v28, v20);
        if (ADTSPacketSize)
        {
          v25 = ADTSPacketSize;
          *buf = v18;
          *&buf[8] = 72;
          *&buf[16] = v18;
          v33 = 0;
          CABitStreamReader::ReadBits(buf, 0x20u);
          CABitStreamReader::ReadBits(buf, 0x16u);
          if (CABitStreamReader::ReadBits(buf, 2u))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "AACAudioFile.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 912;
              _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Packet with multiple raw data blocks was found - unsupported", buf, 0x12u);
            }

            return 1685348671;
          }

          v31.mDataByteSize = v25 - v22;
          v31.mStartOffset = v15 + v22 - *(this + 9);
          if (v25 - v22 > (*(*this + 640))(this))
          {
            (*(*this + 656))(this, (v25 - v22));
          }

          v15 += (*(this + 43) + v25 - v22);
          if (v15 > v29)
          {
            goto LABEL_44;
          }

          AudioFileObject::AppendPacket(this, &v31);
          v26 = v27 - 1;
          if (v27 == -1)
          {
            v26 = -1;
          }

          if (!v26)
          {
            break;
          }

          v27 = v26;
          if (v15 < v29)
          {
            goto LABEL_23;
          }

          goto LABEL_41;
        }

        v24 = ID3Size(v21, v18, buf);
        if (v24)
        {
          v15 += v24;
          *(this + 168) = 1;
          if (v15 < v29)
          {
            continue;
          }
        }

        goto LABEL_41;
      }
    }
  }

  if ((v10 & 0xFFFFFFFE) == 0xFFFFFFD8)
  {
    if (v10 == -39)
    {
LABEL_44:
      v10 = 0;
      *(this + 169) = a4;
      return v10;
    }

    return 0;
  }

  return v10;
}

uint64_t AACAudioFile::PacketRangeUpperBound(AACAudioFile *this, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  result = 1885563711;
  *a4 = 0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = *a3;
    if ((*a3 & 0x8000000000000000) == 0)
    {
      if ((a2 ^ 0x7FFFFFFFFFFFFFFFuLL) < v7)
      {
        return 4294967246;
      }

      result = (*(*this + 696))(this, a2 + v7 + 1, 0, 1);
      if (!result || result == -39)
      {
        if (*(this + 168))
        {
          v10 = *(this + 15);
          result = 1885563711;
          if (v10)
          {
            v11 = *(v10 + 24);
            v12 = *a3;
            if ((*a3 + a2) > v11)
            {
              v12 = (v11 - a2) & ~((v11 - a2) >> 63);
              *a3 = v12;
            }

            if (v12 >= 1)
            {
              v13 = 0;
              v14 = a2;
              while (1)
              {
                CompressedPacketTable::operator[](&v20, v10, v14);
                v15 = v21;
                if (v14 > 0)
                {
                  CompressedPacketTable::operator[](&v20, v10, v14 - 1);
                  v16 = v20;
                  CompressedPacketTable::operator[](v19, v10, v14 - 1);
                  v17 = v16 + v19[3];
                  if (v17 >= 0)
                  {
                    CompressedPacketTable::operator[](&v20, v10, v14);
                    if (v20 - v17 == *(this + 43))
                    {
                      v18 = *(this + 43);
                    }

                    else
                    {
                      v18 = 0;
                    }

                    v15 += v18;
                  }
                }

                if ((v13 ^ 0x7FFFFFFFFFFFFFFFuLL) < v15)
                {
                  return 4294967246;
                }

                v13 += v15;
                if (++v14 >= (*a3 + a2))
                {
                  goto LABEL_26;
                }
              }
            }

            v13 = 0;
LABEL_26:
            result = 0;
            *a4 = v13;
          }
        }

        else
        {

          return AudioFileObject::PacketRangeUpperBound(this, a2, a3, a4);
        }
      }
    }
  }

  return result;
}

uint64_t AACAudioFile::FindMaximumPacketSize(AACAudioFile *this)
{
  if ((*(this + 169) & 1) != 0 || !(*(*this + 696))(this, -1, 0, 1))
  {
    return *(this + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t AACAudioFile::IsDataFormatSupported(AACAudioFile *this, const AudioStreamBasicDescription *a2)
{
  mFormatID = a2->mFormatID;
  result = 1;
  if ((mFormatID - 1633772392 > 0xB || ((1 << (mFormatID - 104)) & 0x901) == 0) && mFormatID != 1633772320)
  {
    return 0;
  }

  return result;
}

uint64_t AACAudioFile::GetEstimatedDuration(AACAudioFile *this, double *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 11);
  if (*(this + 169) == 1)
  {
    if (v5)
    {
      v6 = ((*(*this + 248))(this) * v5) / v4;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = 0;
LABEL_8:
    *a2 = v6;
    return v7;
  }

  *a2 = 0.0;
  if ((*(*this + 696))(this, 16, 0, 1))
  {
    return 0;
  }

  v9 = *(this + 15);
  if (!v9)
  {
    operator new();
  }

  v21 = 0;
  v7 = (*(**(this + 13) + 24))(*(this + 13), &v21);
  if (!v7)
  {
    v21 -= *(this + 9);
    v10 = *(this + 15);
    if (v10)
    {
      v10 = *(v10 + 24);
    }

    v11 = v10 - 1;
    v12 = v10 >> 1;
    if (v12 >= 8)
    {
      v13 = 8;
    }

    else
    {
      v13 = v12;
    }

    v14 = v11 - v13;
    CompressedPacketTable::operator[](v20, v9, v11);
    v15 = v20[0];
    CompressedPacketTable::operator[](v18, v9, v11);
    v16 = v15 + v19;
    CompressedPacketTable::operator[](v17, v9, v13);
    v6 = v21 / (v16 - v17[0]) * (v14 * v5) / v4;
    goto LABEL_8;
  }

  return v7;
}

uint64_t AACAudioFile::GetInfoDictionary(AACAudioFile *this, CACFDictionary *a2)
{
  v5 = 0.0;
  v3 = (*(*this + 552))(this, &v5);
  if (v3)
  {
    return 1886681407;
  }

  AudioFileObject::AddDurationToInfoDictionary(v3, a2, &v5);
  return 0;
}

uint64_t AACAudioFile::GetChannelLayout(AACAudioFile *this, unsigned int *a2, AudioChannelLayout *a3)
{
  result = 561211770;
  if (a2)
  {
    LODWORD(v5) = *a2;
    if (*a2 >= 0xC)
    {
      if (v5 >= 0x20)
      {
        v5 = 32;
      }

      else
      {
        v5 = v5;
      }

      *a2 = v5;
      if (a3)
      {
        bzero(a3, v5);
        result = 0;
        a3->mChannelLayoutTag = *(this + 35);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AACAudioFile::GetChannelLayoutSize(AACAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 32;
  }

  return 0;
}

uint64_t AACAudioFile::GetMagicCookieData(AACAudioFile *this, unsigned int *a2, void *__dst)
{
  result = 2003334207;
  if (__dst)
  {
    if (a2)
    {
      v6 = *(this + 19);
      v7 = *(this + 18);
      if (v7 != v6)
      {
        v8 = v6 - v7;
        result = 561211770;
        if (v8 <= *a2)
        {
          memmove(__dst, v7, v8);
          result = 0;
          *a2 = *(this + 38) - *(this + 36);
        }
      }
    }

    else
    {
      return 561211770;
    }
  }

  return result;
}

uint64_t AACAudioFile::GetMagicCookieDataSize(AACAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = *(this + 100) & 2;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = *(this + 18);
  v4 = *(this + 19);
  if (v3 == v4)
  {
    return 2003334207;
  }

  result = 0;
  *a2 = v4 - v3;
  return result;
}

uint64_t AACAudioFile::GetNumPackets(AACAudioFile *this)
{
  if (((*(this + 169) & 1) != 0 || !(*(*this + 696))(this, -1, 0, 1)) && (v2 = *(this + 15)) != 0)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t AACAudioFile::GetNumBytes(AACAudioFile *this)
{
  v3 = 0;
  (*(**(this + 13) + 24))(*(this + 13), &v3);
  return v3 - *(this + 9);
}

uint64_t AACAudioFile::GetFormatList(AACAudioFile *this, UInt32 *ioPropertyDataSize, AudioFormatListItem *outPropertyData)
{
  v6 = *(this + 3);
  v7 = *(this + 8);
  *v10 = *(this + 36);
  *&v10[12] = *(this + 3);
  memset(inSpecifier, 0, sizeof(inSpecifier));
  DWORD2(inSpecifier[0]) = v7;
  v8 = *(this + 18);
  v12 = 0;
  v13 = v8;
  v14 = *(this + 38) - v8;
  if (AudioFormatGetProperty(0x666C7374u, 0x38u, inSpecifier, ioPropertyDataSize, outPropertyData))
  {
    outPropertyData->mASBD.mSampleRate = v6;
    outPropertyData->mASBD.mFormatID = v7;
    *&outPropertyData->mASBD.mFormatFlags = *v10;
    *&outPropertyData->mASBD.mBytesPerFrame = *&v10[12];
    outPropertyData->mChannelLayoutTag = *(this + 35);
    *ioPropertyDataSize = 48;
  }

  return 0;
}

uint64_t AACAudioFile::GetFormatListInfo(AACAudioFile *this, UInt32 *outPropertyDataSize, unsigned int *a3)
{
  v5 = *(this + 8);
  memset(v8, 0, sizeof(v8));
  DWORD2(v8[0]) = v5;
  v6 = *(this + 18);
  v9 = 0;
  v10 = v6;
  v11 = *(this + 38) - v6;
  if (AudioFormatGetPropertyInfo(0x666C7374u, 0x38u, v8, outPropertyDataSize))
  {
    *outPropertyDataSize = 48;
    *a3 = 0;
  }

  return 0;
}

uint64_t AACAudioFile::WritePackets(AACAudioFile *this, uint64_t a2, uint64_t a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v56 = *MEMORY[0x1E69E9840];
  v52.mStartOffset = 0;
  *&v52.mVariableFramesInPacket = 0;
  v51 = 0;
  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AACAudioFile.cpp";
      v54 = 1024;
      v55 = 328;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  WritePackets Failed";
LABEL_9:
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    }

    return 0;
  }

  if (!*a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AACAudioFile.cpp";
      v54 = 1024;
      v55 = 329;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  WritePackets Failed";
      goto LABEL_9;
    }

    return 0;
  }

  v10 = *(this + 15);
  if (v10)
  {
    v11 = *(v10 + 24);
  }

  else
  {
    v11 = 0;
  }

  if (v11 != a5)
  {
    v14 = 1885563711;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v14;
    }

    *buf = 136315394;
    *&buf[4] = "AACAudioFile.cpp";
    v54 = 1024;
    v55 = 331;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d  ";
LABEL_22:
    _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
    return v14;
  }

  if (!a4)
  {
    v14 = 1885563711;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v14;
    }

    *buf = 136315394;
    *&buf[4] = "AACAudioFile.cpp";
    v54 = 1024;
    v55 = 332;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d  Packet Descriptions were not provided";
    goto LABEL_22;
  }

  if (!a5)
  {
    v19 = *(this + 8);
    v20 = *(this + 13);
    if (v20 == 2)
    {
      v21 = 6619138;
    }

    else
    {
      if (v20 != 1)
      {
        v50[0] = a7;
        v50[1] = 385;
        v50[2] = a7;
        v50[3] = 0;
        ParseADTSChannelConfig(v50, buf, this + 35);
        if (!*(this + 35))
        {
          v22 = v20 - 3;
          if (v20 - 3) <= 5 && ((0x2Fu >> v22))
          {
            v23 = dword_18F916E60[v22];
            *(this + 35) = v23;
          }
        }

LABEL_32:
        if (v19 != 1633772320)
        {
          if (*(this + 18) == *(this + 19))
          {
            return 2003334207;
          }

          *buf = 0;
          LODWORD(size) = 0;
          if (!(*(*this + 200))(this, &size, buf))
          {
            v24 = size;
            v25 = malloc_type_malloc(size, 0x9F9A0ADEuLL);
            v26 = v25;
            if (v24 && !v25)
            {
              exception = __cxa_allocate_exception(8uLL);
              v47 = std::bad_alloc::bad_alloc(exception);
            }

            bzero(v25, v24);
            (*(*this + 208))(this, &size, v26);
            free(v26);
          }
        }

        operator new();
      }

      v21 = 6553601;
    }

    *(this + 35) = v21;
    goto LABEL_32;
  }

  v16 = 0;
  if (!v10)
  {
    operator new();
  }

  if (*a6)
  {
    v27 = 0;
    p_mDataByteSize = &a4->mDataByteSize;
    while (1)
    {
      v29 = *(this + 15);
      if (v29)
      {
        v30 = *(v29 + 24);
        a3 = v30 - 1;
        if (v30 >= 1)
        {
          CompressedPacketTable::operator[](buf, v10, a3);
          v31 = *(this + 15);
          if (v31)
          {
            v32 = *(v31 + 24) - 1;
          }

          else
          {
            v32 = -1;
          }

          v33 = *buf;
          CompressedPacketTable::operator[](&size, v10, v32);
          v34 = v33 + v49;
          if ((**(this + 25) & 0x1000) != 0)
          {
            v35 = 7;
          }

          else
          {
            v35 = 9;
          }

          v16 = v34 + v35;
          v52.mStartOffset = v34 + v35;
        }
      }

      v52.mDataByteSize = *p_mDataByteSize;
      mDataByteSize = v52.mDataByteSize;
      if (mDataByteSize > (*(*this + 640))(this, a2, a3))
      {
        (*(*this + 656))(this, *p_mDataByteSize);
      }

      v37 = *(this + 25);
      v38 = *v37;
      if ((*v37 & 0x1000) != 0)
      {
        v39 = 7;
      }

      else
      {
        v39 = 9;
      }

      v40 = v39 + *p_mDataByteSize;
      if (!(v40 >> 13))
      {
        v37[1] = v37[1] & 0xFC001FFF | (v40 << 13);
        v37[3] = 0;
      }

      v51 = v39;
      v41 = *(this + 22);
      v42 = *v37;
      if ((v38 & 0x1000) != 0 && (v42 & 0x1000) == 0 || v37[3])
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 136315394;
        *&buf[4] = "AACAudioFile.cpp";
        v54 = 1024;
        v55 = 421;
        v12 = MEMORY[0x1E69E9C10];
        v13 = "%25s:%-5d  mMutableADTSHeader->Serialize Failed";
        goto LABEL_9;
      }

      *v41 = bswap32(*(v37 + 7) | (16 * v42));
      v43 = v37[1];
      *(v41 + 4) = bswap32(v43) >> 8;
      *(v41 + 6) = v43;
      if ((*(v37 + 1) & 0x10) != 0)
      {
        v44 = 7;
      }

      else
      {
        *(v41 + 7) = *(v37 + 4);
        v44 = 9;
      }

      v51 = v44;
      v45 = -7;
      if ((**(this + 25) & 0x1000) == 0)
      {
        v45 = -9;
      }

      v14 = (*(**(this + 13) + 56))(*(this + 13), 0, v45 + v16);
      if (v14)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          return v14;
        }

        *buf = 136315394;
        *&buf[4] = "AACAudioFile.cpp";
        v54 = 1024;
        v55 = 423;
        v17 = MEMORY[0x1E69E9C10];
        v18 = "%25s:%-5d  GetDataSource()->WriteBytes Failed";
        goto LABEL_22;
      }

      v14 = (*(**(this + 13) + 56))(*(this + 13), 0, v16, *p_mDataByteSize, &a7[*(p_mDataByteSize - 3)], &v51);
      if (v14)
      {
        break;
      }

      AudioFileObject::AppendPacket(this, &v52);
      ++v27;
      p_mDataByteSize += 4;
      if (v27 >= *a6)
      {
        goto LABEL_71;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v14;
    }

    *buf = 136315394;
    *&buf[4] = "AACAudioFile.cpp";
    v54 = 1024;
    v55 = 429;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d  GetDataSource()->WriteBytes Failed";
    goto LABEL_22;
  }

  LODWORD(v27) = 0;
LABEL_71:
  v14 = 0;
  *a6 = v27;
  return v14;
}

uint64_t AACAudioFile::ReadPackets(AACAudioFile *this, unsigned int a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v62 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (!a6 || (v10 = *a6, !v10))
  {
    v18 = 2003334207;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v18;
    }

    *buf = 136315394;
    *&buf[4] = "AACAudioFile.cpp";
    LOWORD(v61[0]) = 1024;
    *(v61 + 2) = 155;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "%25s:%-5d  invalid num packets parameter";
    goto LABEL_14;
  }

  v11 = a7;
  v17 = (*(*this + 696))(this, v10 + a5, 0, 1);
  if (v17)
  {
    v18 = v17;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v18;
    }

    *buf = 136315394;
    *&buf[4] = "AACAudioFile.cpp";
    LOWORD(v61[0]) = 1024;
    *(v61 + 2) = 159;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "%25s:%-5d  ScanForPackets (AAC) failed";
LABEL_14:
    _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x12u);
    return v18;
  }

  v22 = *(this + 15);
  if (!v22)
  {
    if (a5 <= 0)
    {
      return 1685348671;
    }

    else
    {
      return 1885563711;
    }
  }

  v23 = *(v22 + 24);
  if (v23 >= a5)
  {
    v18 = 1685348671;
  }

  else
  {
    v18 = 1885563711;
  }

  if (v23 >= a5 && v22 != 0)
  {
    v25 = *(v22 + 24);
    if (a3)
    {
      *a3 = 0;
    }

    v26 = *a6;
    if (v26 + a5 > v25)
    {
      LODWORD(v26) = v25 - a5;
      *a6 = v25 - a5;
    }

    if (!v26)
    {
      if (a3)
      {
        *a3 = 0;
      }

      return 4294967257;
    }

    v52 = a3;
    v58 = a5;
    if (v8)
    {
      v27 = v22;
      CompressedPacketTable::operator[](buf, v22, a5);
      if (*a6)
      {
        v28 = 0;
        v29 = *buf;
        p_mVariableFramesInPacket = &a4->mVariableFramesInPacket;
        do
        {
          CompressedPacketTable::operator[](buf, v27, a5 + v28);
          v31 = v61[0];
          *(p_mVariableFramesInPacket - 1) = *buf - v29;
          *p_mVariableFramesInPacket = 0;
          p_mVariableFramesInPacket[1] = v31;
          p_mVariableFramesInPacket += 4;
          ++v28;
        }

        while (v28 < *a6);
      }

LABEL_64:
      v49 = 0;
      v18 = 0;
LABEL_65:
      if (v52)
      {
        *v52 = v49;
      }

      return v18;
    }

    v53 = a2;
    v59 = 0;
    v56 = v22;
    CompressedPacketTable::operator[](buf, v22, a5);
    if (!*a6)
    {
      goto LABEL_64;
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v54 = *buf;
    v55 = 0;
    v36 = &a4->mVariableFramesInPacket;
    v37 = v58;
    v57 = v58;
    while (1)
    {
      v38 = v34;
      v39 = v33;
      v40 = v37 + v32;
      CompressedPacketTable::operator[](buf, v56, v37 + v32);
      v34 = *buf;
      v33 = v61[0];
      if (v57 >= v40)
      {
        goto LABEL_53;
      }

      v41 = *(this + 43);
      if (*buf != v38 + v39 + v41)
      {
        break;
      }

      if (a4)
      {
        *(v36 - 1) = v41 + v35;
        *v36 = 0;
        v36[1] = v33;
      }

      v42 = v41 + v33;
      v37 = v58;
LABEL_56:
      v46 = v59 + v42;
      v59 += v42;
      v35 += v42;
      ++v32;
      v36 += 4;
      if (v32 >= *a6)
      {
        if (!v46)
        {
          v18 = v55;
          v49 = HIDWORD(v55);
          goto LABEL_65;
        }

        v47 = (*(*this + 72))(this, v53, v54, &v59, v11);
        v18 = v47;
        if (v47 == -39 || v47 == 0)
        {
          v49 = v59 + HIDWORD(v55);
          goto LABEL_65;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AACAudioFile.cpp";
          LOWORD(v61[0]) = 1024;
          *(v61 + 2) = 259;
          v19 = MEMORY[0x1E69E9C10];
          v20 = "%25s:%-5d  ReadBytes failed";
          goto LABEL_14;
        }

        return v18;
      }
    }

    v43 = *buf;
    v44 = v61[0];
    LODWORD(v55) = (*(*this + 72))(this, v53, v54, &v59, v11);
    if (v55 != -39 && v55 != 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AACAudioFile.cpp";
        LOWORD(v61[0]) = 1024;
        *(v61 + 2) = 223;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes failed", buf, 0x12u);
      }

      return v55;
    }

    v34 = v43;
    HIDWORD(v55) += v59;
    v11 += v59;
    v59 = 0;
    v57 = v40;
    v54 = v43;
    v33 = v44;
LABEL_53:
    v37 = v58;
    if (a4)
    {
      *(v36 - 1) = v35;
      *v36 = 0;
      v36[1] = v33;
    }

    v42 = v33;
    goto LABEL_56;
  }

  return v18;
}

uint64_t AACAudioFile::InitializeDataSource(AACAudioFile *this, const AudioStreamBasicDescription *a2)
{
  mFormatID = a2->mFormatID;
  if (mFormatID - 1633772392 <= 0xB && ((1 << (mFormatID - 104)) & 0x901) != 0 || mFormatID == 1633772320)
  {
    return 0;
  }

  else
  {
    return 1718449215;
  }
}

uint64_t AACAudioFile::OpenFromDataSource(AACAudioFile *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v2 = 0;
  v48 = *MEMORY[0x1E69E9840];
  do
  {
    v22 = 0x2000;
    DecoderConfigFromADTSHeaderAndPCE = (*(**(v1 + 104) + 48))(*(v1 + 104), 0, v2, 0x2000, buf, &v22);
    if (DecoderConfigFromADTSHeaderAndPCE)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = 136315394;
        v40 = "AACAudioFile.cpp";
        v41 = 1024;
        v42 = 492;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes Failed", &v39, 0x12u);
      }

      goto LABEL_26;
    }

    if (!v22)
    {
      DecoderConfigFromADTSHeaderAndPCE = 2003334207;
      goto LABEL_26;
    }

    if (v22 < 0xA)
    {
      break;
    }

    v4 = ID3Size(v22, buf, &v39);
    v2 += v4;
  }

  while (v4);
  *(v1 + 72) = v2;
  v31 = 0;
  inCodec = 0;
  v29 = 9;
  HIDWORD(v40) = 0;
  v43 = 0;
  v44 = 0;
  v45[2] = 0;
  MP4AudioProgramConfig::Clear(v45);
  v46 = 0u;
  v47 = 0u;
  DecoderConfigDescr::cleanup(&v39);
  memset(&v28, 0, sizeof(v28));
  CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&v27, 9uLL, 1);
  DecoderConfigFromADTSHeaderAndPCE = (*(**(v1 + 104) + 48))(*(v1 + 104), 0, *(v1 + 72), 9, v27, &v31);
  if (!DecoderConfigFromADTSHeaderAndPCE)
  {
    if (v31 != 9)
    {
      DecoderConfigFromADTSHeaderAndPCE = 2003334207;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v36 = 136315394;
      *&v37 = "AACAudioFile.cpp";
      WORD4(v37) = 1024;
      *(&v37 + 10) = 527;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  ReadBytes Failed";
      goto LABEL_18;
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v7 = v27;
    v8 = ADTSHeader::Deserialize(&v24, v27, 9u);
    if (v8)
    {
      DecoderConfigFromADTSHeaderAndPCE = v8;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v36 = 136315394;
      *&v37 = "AACAudioFile.cpp";
      WORD4(v37) = 1024;
      *(&v37 + 10) = 532;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  ReadBytes Failed";
      goto LABEL_18;
    }

    if ((v24 & 0x1000) != 0)
    {
      v11 = 7;
    }

    else
    {
      v11 = 9;
    }

    *(v1 + 172) = v11;
    v12 = *(v1 + 176);
    v13 = *(v1 + 184);
    LOBYTE(v36) = 0;
    v14 = v13 - v12;
    if (v14 > 9)
    {
      if (v14 != 10)
      {
        *(v1 + 184) = v12 + 10;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((v1 + 176), 10 - v14, &v36);
      v11 = *(v1 + 172);
      v7 = v27;
    }

    v29 = v11;
    ADTSPacketSize = ACMP4BitStreams::GetADTSPacketSize(v7, &v29, v9);
    if (!ADTSPacketSize)
    {
      DecoderConfigFromADTSHeaderAndPCE = 1685348671;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v36 = 136315394;
      *&v37 = "AACAudioFile.cpp";
      WORD4(v37) = 1024;
      *(&v37 + 10) = 541;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  GetADTSPacketSize Failed";
      goto LABEL_18;
    }

    v16 = ADTSPacketSize;
    CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&v24, ADTSPacketSize, 1);
    DecoderConfigFromADTSHeaderAndPCE = (*(**(v1 + 104) + 48))(*(v1 + 104), 0, *(v1 + 72), v16, v24, &v31);
    if (DecoderConfigFromADTSHeaderAndPCE)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = 136315394;
        *&v37 = "AACAudioFile.cpp";
        WORD4(v37) = 1024;
        *(&v37 + 10) = 545;
        v19 = MEMORY[0x1E69E9C10];
        v20 = "%25s:%-5d  ReadBytes Failed";
LABEL_48:
        _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, v20, &v36, 0x12u);
      }
    }

    else if (v31 == v16)
    {
      ioPropertyDataSize = v16;
      DecoderConfigFromADTSHeaderAndPCE = ACMP4BitStreams::GetDecoderConfigFromADTSHeaderAndPCE(v24, &ioPropertyDataSize, &v39, v17, v18);
      if (!DecoderConfigFromADTSHeaderAndPCE)
      {
        if (OpenCodecComponent(0x61616320u, &inCodec, 0x61646563u))
        {
          DecoderConfigFromADTSHeaderAndPCE = 0;
        }

        else
        {
          ioPropertyDataSize = 32;
          v36 = v16;
          *(&v37 + 4) = v24;
          HIDWORD(v37) = 0;
          v38 = 0;
          DecoderConfigFromADTSHeaderAndPCE = AudioCodecGetProperty(inCodec, 0x6D327364u, &ioPropertyDataSize, &v36);
          if (!DecoderConfigFromADTSHeaderAndPCE && HIDWORD(v37))
          {
            std::vector<unsigned char>::resize((v1 + 144), HIDWORD(v37));
            v38 = *(v1 + 144);
            DecoderConfigFromADTSHeaderAndPCE = AudioCodecGetProperty(inCodec, 0x6D327364u, &ioPropertyDataSize, &v36);
            if (DecoderConfigFromADTSHeaderAndPCE || !HIDWORD(v37))
            {
              *(v1 + 152) = *(v1 + 144);
            }

            else
            {
              DecoderConfigFromADTSHeaderAndPCE = 0;
            }
          }

          AudioComponentInstanceDispose(inCodec);
        }

        v21 = *(v1 + 144) == *(v1 + 152);
        goto LABEL_50;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = 136315394;
        *&v37 = "AACAudioFile.cpp";
        WORD4(v37) = 1024;
        *(&v37 + 10) = 551;
        v19 = MEMORY[0x1E69E9C10];
        v20 = "%25s:%-5d  ACMP4BitStreams::GetDecoderConfigFromADTSHeaderAndPCE Failed";
        goto LABEL_48;
      }
    }

    else
    {
      DecoderConfigFromADTSHeaderAndPCE = 2003334207;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = 136315394;
        *&v37 = "AACAudioFile.cpp";
        WORD4(v37) = 1024;
        *(&v37 + 10) = 546;
        v19 = MEMORY[0x1E69E9C10];
        v20 = "%25s:%-5d  ReadBytes Failed";
        goto LABEL_48;
      }
    }

    v21 = 4;
LABEL_50:
    if (v24)
    {
      free(v24);
    }

    if (v21 == 4)
    {
      goto LABEL_19;
    }

    if (v21)
    {
      DecoderConfigFromADTSHeaderAndPCE = 1718449215;
      goto LABEL_19;
    }

    DecoderConfigFromADTSHeaderAndPCE = DecoderConfigDescr::GetASBD(&v39, &v28);
    if (DecoderConfigFromADTSHeaderAndPCE)
    {
      goto LABEL_19;
    }

    DecoderConfigFromADTSHeaderAndPCE = (*(*v1 + 184))(v1, &v28);
    if (!DecoderConfigFromADTSHeaderAndPCE)
    {
      DecoderConfigFromADTSHeaderAndPCE = DecoderConfigDescr::GetChannelLayoutTag(&v39, (v1 + 140));
      goto LABEL_19;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v36 = 136315394;
    *&v37 = "AACAudioFile.cpp";
    WORD4(v37) = 1024;
    *(&v37 + 10) = 585;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  bad data format";
LABEL_18:
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, &v36, 0x12u);
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v36 = 136315394;
    *&v37 = "AACAudioFile.cpp";
    WORD4(v37) = 1024;
    *(&v37 + 10) = 526;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  ReadBytes Failed";
    goto LABEL_18;
  }

LABEL_19:
  if (v27)
  {
    free(v27);
  }

  if (*(&v47 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v47 + 1));
  }

  if (*(&v46 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
  }

  if (DecoderConfigFromADTSHeaderAndPCE)
  {
LABEL_26:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "AACAudioFile.cpp";
      v34 = 1024;
      v35 = 448;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AACAudioFile::ParseAudioFile failed", buf, 0x12u);
    }
  }

  return DecoderConfigFromADTSHeaderAndPCE;
}

void sub_18F8339F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9, char a10, void *a11, uint64_t a12, void *a13)
{
  if (a11)
  {
    free(a11);
  }

  if (a13)
  {
    free(a13);
  }

  DecoderConfigDescr::~DecoderConfigDescr(&STACK[0x2080]);
  _Unwind_Resume(a1);
}

uint64_t AACAudioFile::Create(AACAudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  mFormatID = a3->mFormatID;
  if (mFormatID - 1633772392 <= 0xB && ((1 << (mFormatID - 104)) & 0x901) != 0 || mFormatID == 1633772320)
  {
    return AudioFileObject::Create(this, a2, a3);
  }

  else
  {
    return 1718449215;
  }
}

void AACAudioFile::~AACAudioFile(AACAudioFile *this)
{
  AACAudioFile::~AACAudioFile(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0334D20;
  v2 = *(this + 25);
  *(this + 25) = 0;
  if (v2)
  {
    MEMORY[0x193ADF220](v2, 0x1000C4003A0DE81);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  AudioFileObject::~AudioFileObject(this);
}

uint64_t AACAudioFormat::GetHFSCodes(AACAudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 1633772320;
  v3 = 4 * (*a2 > 3);
  *a2 = v3;
  if (__dst)
  {
    memcpy(__dst, &__src, v3);
  }

  return 0;
}

uint64_t AACAudioFormat::GetAvailableStreamDescriptions(AACAudioFormat *this, int a2, unsigned int *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  outPropertyDataSize = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x61636966u, 0, 0, &outPropertyDataSize);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  v8 = outPropertyDataSize;
  v9 = outPropertyDataSize >> 2;
  CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(&v17, v9, 1);
  PropertyInfo = GetAllFormatIDs(&outPropertyDataSize, v17);
  v10 = v17;
  if (!PropertyInfo)
  {
    if (v8 < 4)
    {
      if (v17)
      {
        free(v17);
      }
    }

    else
    {
      v11 = 0;
      v12 = a2 - 1633772392;
      v13 = 1;
      do
      {
        if (*(v17 + v11) == a2 && (v12 <= 0xB && ((1 << v12) & 0x901) != 0 || a2 == 1633772320))
        {
          break;
        }

        v13 = ++v11 < v9;
      }

      while (v9 != v11);
      free(v17);
      v17 = 0;
      if (v13)
      {
        v20 = 0;
        memset(outPropertyData, 0, sizeof(outPropertyData));
        DWORD2(outPropertyData[0]) = a2;
        ioPropertyDataSize = 40;
        AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, outPropertyData);
        if (*a3 >= 0x28)
        {
          v14 = 40;
        }

        else
        {
          v14 = 0;
        }

        *a3 = v14;
        if (a4)
        {
          memcpy(a4, outPropertyData, v14);
        }

        PropertyInfo = 0;
        v10 = v17;
        if (v17)
        {
          goto LABEL_4;
        }

        return PropertyInfo;
      }
    }

    *a3 = 0;
    return 1718449215;
  }

  if (v17)
  {
LABEL_4:
    free(v10);
  }

  return PropertyInfo;
}

void sub_18F833F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AACAudioFormat::GetAvailableFormatIDs(AACAudioFormat *this, unsigned int *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  outPropertyDataSize = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x61636966u, 0, 0, &outPropertyDataSize);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  v7 = outPropertyDataSize;
  v8 = outPropertyDataSize >> 2;
  CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(&outPropertyData, v8, 1);
  PropertyInfo = GetAllFormatIDs(&outPropertyDataSize, outPropertyData);
  v9 = outPropertyData;
  if (PropertyInfo)
  {
    if (outPropertyData)
    {
      free(outPropertyData);
    }

    return PropertyInfo;
  }

  if (v7 >= 4)
  {
    v12 = 0;
    v13 = outPropertyData;
    do
    {
      v15 = *v13++;
      v14 = v15;
      v16 = (1 << (v15 - 104)) & 0x901;
      if ((v15 - 1633772392) <= 0xB && v16 != 0 || v14 == 1633772320)
      {
        __src[v12++] = v14;
      }

      --v8;
    }

    while (v8);
    v10 = 4 * v12;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    if (!outPropertyData)
    {
      goto LABEL_22;
    }
  }

  free(v9);
  v11 = v10;
LABEL_22:
  *a2 = v11;
  if (a3)
  {
    memcpy(a3, __src, v11);
  }

  return 0;
}

void sub_18F8340B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

void AACAudioFormat::GetFileTypeName(AACAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"AAC ADTS");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"AAC ADTS", @"AAC ADTS", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *AACAudioFormat::GetMIMETypes(AACAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"audio/aac";
  values[1] = @"audio/x-aac";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

const __CFArray *AACAudioFormat::GetUTIs(AACAudioFormat *this, const __CFArray **a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"public.aac-audio";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v4, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

const __CFArray *AACAudioFormat::GetExtensions(AACAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"aac";
  values[1] = @"adts";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

uint64_t AACAudioFormat::FileDataIsThisFormat(AACAudioFormat *this, unsigned int a2, unsigned __int8 *a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (ADTSHeader::Deserialize(&v4, a3, a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

BOOL AACAudioFormat::ExtensionIsThisFormat(AACAudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"aac", 1uLL))
  {
    return CFStringCompare(theString1, @"adts", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

uint64_t acv2::NonlinearPCMConverterFactory::BuildConverterChain(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 2);
  v6 = *(a2 + 12);
  if (v5 == 1819304813)
  {
    if (v6 == 1970037111)
    {
      operator new();
    }

    if (v6 == 1634492791)
    {
      operator new();
    }
  }

  else if (v6 == 1819304813)
  {
    if (v5 == 1970037111)
    {
      operator new();
    }

    if (v5 == 1634492791)
    {
      operator new();
    }
  }

  return 1869627199;
}

void sub_18F83494C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a18)
  {
    (*(*a18 + 8))(a18, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void acv2::ULawDecoder::Convert(acv2::ULawDecoder *this, unsigned __int8 *a2, _WORD *a3, int a4)
{
  for (; a4; --a4)
  {
    v4 = *a2++;
    *a3++ = acv2::ulaw_table[v4];
  }
}

void acv2::ALawDecoder::Convert(acv2::ALawDecoder *this, unsigned __int8 *a2, _WORD *a3, int a4)
{
  for (; a4; --a4)
  {
    v4 = *a2++;
    *a3++ = acv2::alaw_table[v4];
  }
}

uint64_t acv2::NonlinearPCMConverter::ConvertBufferList(uint64_t result, int a2, unsigned int **a3, _DWORD **a4)
{
  v4 = *a3;
  v5 = **a3;
  if (v5 != **a4)
  {
    std::terminate();
  }

  v8 = result;
  if ((*(result + 28) & 0x20) != 0)
  {
    v9 = 1;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v9 = *(result + 44);
    if (!v5)
    {
      return result;
    }
  }

  v10 = 0;
  v11 = (v9 * a2);
  v12 = 4;
  do
  {
    result = (*(**(v8 + 168) + 16))(*(v8 + 168), *&v4[v12], *&(*a4)[v12], v11);
    ++v10;
    v4 = *a3;
    v12 += 4;
  }

  while (v10 < **a3);
  return result;
}

void acv2::NonlinearPCMConverter::~NonlinearPCMConverter(acv2::NonlinearPCMConverter *this)
{
  *this = &unk_1F0335148;
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0335148;
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);
}

void acv2::ULawEncoder::Convert(acv2::ULawEncoder *this, char *a2, char *a3, int a4)
{
  for (; a4; --a4)
  {
    v5 = *a2;
    a2 += 2;
    v4 = v5;
    v6 = (v5 >> 8) & 0x80;
    if (v6)
    {
      v4 = -v4;
    }

    if (v4 >= 32635)
    {
      v4 = 32635;
    }

    v7 = (v4 + 132);
    v8 = acv2::exp_lut[(v7 >> 7)];
    v9 = (v7 >> (v8 + 3)) & 0xF | (16 * v8) | v6;
    if (v9 == 0xFF)
    {
      v10 = 2;
    }

    else
    {
      v10 = ~v9;
    }

    *a3++ = v10;
  }
}

void acv2::ALawEncoder::Convert(acv2::ALawEncoder *this, char *a2, char *a3, int a4)
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v6 = *a2;
      a2 += 2;
      v5 = v6;
      if (v6 == -32768)
      {
        LOBYTE(v7) = 42;
      }

      else
      {
        v8 = v5 & 0x8000;
        if ((v5 & 0x8000) != 0)
        {
          v5 = -v5;
        }

        if (v5 > 0xFF)
        {
          if (((v5 >> 15) ^ (v5 >> 14)))
          {
            v9 = 112;
          }

          else
          {
            v11 = 0;
            do
            {
              v12 = (v5 >> 14) ^ (v5 >> 13);
              v5 *= 2;
              ++v11;
            }

            while ((v12 & 1) == 0);
            v9 = (112 - 16 * v11) & 0xF0;
          }

          v10 = v5 >> 10;
        }

        else
        {
          v9 = 0;
          v10 = v5 >> 4;
        }

        v7 = (v9 | (v8 >> 8) | v10 & 0xF) ^ 0xFFFFFFD5;
      }

      *a3++ = v7;
    }
  }
}

uint64_t acv2::Resampler2Wrapper::Reset(acv2::Resampler2Wrapper *this)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 88))(v4);
  }

  *(this + 52) = 0;
  return 0;
}

uint64_t acv2::Resampler2Wrapper::SetInitialPhase(uint64_t this, double a2)
{
  v2 = *(this + 24);
  for (i = *(this + 32); v2 != i; this = (*(*v5 + 96))(v5, *(v5 + 120)))
  {
    v5 = *v2++;
    *(v5 + 144) = a2;
  }

  return this;
}

uint64_t acv2::Resampler2Wrapper::SetPrimeMethod(uint64_t this, uint64_t a2)
{
  *(this + 48) = a2;
  v2 = *(this + 24);
  for (i = *(this + 32); v2 != i; this = (*(*v5 + 96))(v5, a2))
  {
    v5 = *v2++;
  }

  return this;
}

int32x2_t acv2::Resampler2Wrapper::CalcPrimeInfo(acv2::Resampler2Wrapper *this, AudioConverterPrimeInfo *a2)
{
  v3 = **(this + 3);
  (*(*v3 + 16))(v3, &v6);
  v4.i64[0] = a2->leadingFrames;
  v4.i64[1] = HIDWORD(*a2);
  result = vadd_s32(v6, vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_n_f64(vcvtq_f64_u64(v4), v3[22])))));
  *a2 = result;
  return result;
}

uint64_t AudioSampleRateConverterCreate(uint64_t *a1, int a2, CFTypeRef cf)
{
  if (a1)
  {
    v3 = cf;
    if (cf)
    {
      switch(a2)
      {
        case 2:
          v12 = 0uLL;
          LODWORD(v13[0]) = 1;
          v13[1] = 0;
          GetAttribute<double>(&v12, cf, @"InputSampleRate");
          GetAttribute<double>(&v12 + 1, v3, @"OutputSampleRate");
          GetAttribute<unsigned int>(v13, v3, @"NumberOfChannels");
          GetAttribute<double>(&v13[1], v3, @"InitialPhase");
          if (*&v12 > 0.0 && *(&v12 + 1) > 0.0 && LODWORD(v13[0]))
          {
            operator new();
          }

          break;
        case 1:
          v12 = 0uLL;
          v13[0] = 0x4000000001;
          v13[1] = 0;
          GetAttribute<double>(&v12, cf, @"InputSampleRate");
          GetAttribute<double>(&v12 + 1, v3, @"OutputSampleRate");
          GetAttribute<unsigned int>(v13, v3, @"NumberOfChannels");
          GetAttribute<unsigned int>(v13 + 1, v3, @"Quality");
          GetAttribute<double>(&v13[1], v3, @"MaxVariableRateDeviation");
          if (*&v12 > 0.0 && *(&v12 + 1) > 0.0 && LODWORD(v13[0]))
          {
            operator new();
          }

          break;
        case 0:
          v12 = 0uLL;
          *v13 = xmmword_18F901BD0;
          v14 = 0;
          v15 = 1;
          GetAttribute<double>(&v12, cf, @"InputSampleRate");
          GetAttribute<double>(&v12 + 1, v3, @"OutputSampleRate");
          GetAttribute<unsigned int>(v13, v3, @"NumberOfChannels");
          GetAttribute<unsigned int>(v13 + 1, v3, @"Algorithm");
          GetAttribute<unsigned int>(&v13[1], v3, @"Quality");
          GetAttribute<unsigned int>(&v13[1] + 1, v3, @"PrimeMethod");
          GetAttribute<double>(&v14, v3, @"InitialPhase");
          CFRetain(v3);
          v4 = CFGetTypeID(v3);
          if (v4 == CFDictionaryGetTypeID())
          {
            v16 = v3;
          }

          else
          {
            v16 = 0;
            CFRelease(v3);
            v3 = 0;
          }

          CFRetain(@"AllowVariableRate");
          v5 = @"AllowVariableRate";
          v6 = CFGetTypeID(@"AllowVariableRate");
          TypeID = CFStringGetTypeID();
          if (v6 == TypeID)
          {
            v17 = @"AllowVariableRate";
          }

          else
          {
            v17 = 0;
            CFRelease(@"AllowVariableRate");
            v5 = 0;
          }

          if (!v3)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          v8 = applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(v3, v5);
          if (!v8 || (v9 = applesauce::CF::convert_as<BOOL,0>(v8), v9 <= 0xFFu))
          {
            LOBYTE(v9) = v15;
          }

          v15 = v9 & 1;
          if (v6 == TypeID)
          {
            CFRelease(v5);
          }

          CFRelease(v3);
          if (*&v12 > 0.0 && *(&v12 + 1) > 0.0 && LODWORD(v13[0]))
          {
            operator new();
          }

          break;
      }
    }
  }

  return 4294967246;
}

void sub_18F835850(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,OpaqueAudioSampleRateConverter::Resampler2Kernel,OpaqueAudioSampleRateConverter::RamstadKernel,OpaqueAudioSampleRateConverter::STLIKernel>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  MEMORY[0x193ADF220](v1, 0x10A2C40A97E99A9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F8357ACLL);
}

void GetAttribute<double>(unint64_t *a1, CFTypeRef cf, const void *a3)
{
  v4 = cf;
  CFRetain(cf);
  v6 = CFGetTypeID(v4);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v4);
    v4 = 0;
  }

  if (a3)
  {
    CFRetain(a3);
    v7 = CFGetTypeID(a3);
    if (v7 != CFStringGetTypeID())
    {
      CFRelease(a3);
      a3 = 0;
    }
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(v4, a3);
  if (!v8 || (v9 = applesauce::CF::convert_as<double,0>(v8), (v10 & 1) == 0))
  {
    v9 = *a1;
  }

  *a1 = v9;
  if (a3)
  {
    CFRelease(a3);
  }

  CFRelease(v4);
}

void sub_18F835B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::StringRef::~StringRef(&a9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  _Unwind_Resume(a1);
}

void GetAttribute<unsigned int>(int *a1, CFTypeRef cf, const void *a3)
{
  v4 = cf;
  CFRetain(cf);
  v6 = CFGetTypeID(v4);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v4);
    v4 = 0;
  }

  if (a3)
  {
    CFRetain(a3);
    v7 = CFGetTypeID(a3);
    if (v7 != CFStringGetTypeID())
    {
      CFRelease(a3);
      a3 = 0;
    }
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(v4, a3);
  if (v8)
  {
    v8 = applesauce::CF::convert_as<unsigned int,0>(v8);
  }

  v9 = *a1;
  if ((v8 & 0x100000000) != 0)
  {
    v9 = v8;
  }

  *a1 = v9;
  if (a3)
  {
    CFRelease(a3);
  }

  CFRelease(v4);
}

void sub_18F835CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::StringRef::~StringRef(&a9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,OpaqueAudioSampleRateConverter::Resampler2Kernel,OpaqueAudioSampleRateConverter::RamstadKernel,OpaqueAudioSampleRateConverter::STLIKernel>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 304);
  if (v2 != -1)
  {
    result = (*(&off_1F0335310 + v2))(&v3, result);
  }

  *(v1 + 304) = -1;
  return result;
}

void std::vector<std::unique_ptr<ShortTermLinearInterpolationResampler>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          MEMORY[0x193ADF220](v6, 0x1000C40AC875A91);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t OpaqueAudioSampleRateConverter::STLIKernel::Reset(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    *(v3 + 16) = *(v3 + 8);
  }

  return this;
}

uint64_t OpaqueAudioSampleRateConverter::STLIKernel::Process(OpaqueAudioSampleRateConverter::STLIKernel *this, const float *const *a2, int a3, unsigned int *a4, float *const *a5, int a6, unsigned int *a7)
{
  v8 = *(this + 1);
  v7 = *(this + 2);
  if (v8 == v7)
  {
    LODWORD(v25) = *a4;
    LODWORD(v22) = *a7;
LABEL_72:
    *a4 = v25;
    *a7 = v22;
    return 0;
  }

  v11 = a2;
  v12 = this;
  v13 = 0;
  v15 = a3 == 1 && a6 == 1;
  v63 = a4;
  v64 = a7;
  v62 = a5;
  v59 = *(this + 2);
  v58 = v15;
  while (1)
  {
    v16 = v13 | 1;
    if ((v13 | 1uLL) >= *(v12 + 12))
    {
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v17 = v11[v16];
      v18 = a5[v16];
    }

    v19 = v11[v13];
    v20 = a5[v13];
    v21 = *a4;
    v22 = *a7;
    if (v19 && v20 != 0)
    {
      v24 = *v8;
      if (!v17 || v18)
      {
        break;
      }
    }

    LODWORD(v25) = *a4;
LABEL_69:
    v13 += 2;
    if (++v8 == v7)
    {
      goto LABEL_72;
    }
  }

  if (*v24)
  {
    LODWORD(v25) = *a7;
    goto LABEL_44;
  }

  if (v22 <= 0x400000)
  {
    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (v22)
    {
      v28 = v27 + 0x80000000;
      v29 = v27 + 0x80000000 + v26 * v22;
      v25 = HIDWORD(v29);
      if (v21 < HIDWORD(v29))
      {
        if (v21 > 0x400000)
        {
          goto LABEL_75;
        }

        v30 = ~v27 + (v21 << 32) + v26;
        if (v30 < 0)
        {
          LODWORD(v31) = 0;
        }

        else
        {
          v31 = v30 / v26;
          if (v22 < v31)
          {
            goto LABEL_76;
          }

          if (v31)
          {
            v32 = (v28 + v26 * v31) >> 32;
LABEL_39:
            if (v32 >= v21)
            {
              LODWORD(v25) = *a4;
            }

            else
            {
              LODWORD(v25) = v32;
            }

            LODWORD(v22) = v31;
            goto LABEL_43;
          }
        }

        LODWORD(v32) = 0;
        goto LABEL_39;
      }

      v33 = HIDWORD(v29);
      if (v29 > 0x400000FFFFFFFFLL)
      {
        goto LABEL_74;
      }
    }

    else
    {
      LODWORD(v25) = 0;
      v33 = 0;
    }

    v34 = ~v27 + (v33 << 32) + v26;
    if (v34 < 0)
    {
      LODWORD(v35) = 0;
    }

    else
    {
      v35 = v34 / v26;
    }

    if (v35 < v22)
    {
      LODWORD(v22) = v35;
    }

LABEL_43:
    if (v22 != v25)
    {
      v39 = ((v25 - 1) * 4294967300.0 / (v22 - 1));
      if (v17)
      {
        if (v22)
        {
          v40 = 0;
          v41 = 0;
          v42 = v22;
          do
          {
            v43 = vcvts_n_f32_u64(v40, 0x20uLL);
            v44 = HIDWORD(v40) * a3 + a3;
            v20[v41] = v19[HIDWORD(v40) * a3] + (v43 * (v19[v44] - v19[HIDWORD(v40) * a3]));
            v18[v41] = v17[HIDWORD(v40) * a3] + (v43 * (v17[v44] - v17[HIDWORD(v40) * a3]));
            v40 += v39;
            v41 += a6;
            --v42;
          }

          while (v42);
        }
      }

      else if (v22)
      {
        v48 = 0;
        v49 = 0;
        v50 = v22;
        do
        {
          v51 = v19[HIDWORD(v49) * a3];
          v20[v48] = v51 + (vcvts_n_f32_u64(v49, 0x20uLL) * (v19[HIDWORD(v49) * a3 + a3] - v51));
          v49 += v39;
          v48 += a6;
          --v50;
        }

        while (v50);
      }

      goto LABEL_65;
    }

LABEL_44:
    if (v15)
    {
      memcpy(v20, v19, (4 * v25));
      if (v17)
      {
        memcpy(v18, v17, (4 * v25));
      }

      a4 = v63;
      a7 = v64;
      v11 = a2;
      a5 = v62;
      v7 = v59;
      v12 = this;
      v15 = v58;
    }

    else if (v17)
    {
      if (v25)
      {
        v36 = 0;
        v37 = 0;
        v38 = v25;
        do
        {
          v20[v37] = v19[v36];
          v18[v37] = v17[v36];
          v36 += a3;
          v37 += a6;
          --v38;
        }

        while (v38);
      }
    }

    else if (v25)
    {
      v45 = 0;
      v46 = 0;
      v47 = v25;
      do
      {
        v20[v46] = v19[v45];
        v45 += a3;
        v46 += a6;
        --v47;
      }

      while (v47);
    }

LABEL_65:
    if (*v24)
    {
      v52 = 0;
    }

    else
    {
      v52 = *(v24 + 16) + *(v24 + 24) * v22 + (-v25 << 32);
    }

    *(v24 + 16) = v52;
    goto LABEL_69;
  }

  CAAssertRtn();
LABEL_74:
  CAAssertRtn();
LABEL_75:
  CAAssertRtn();
LABEL_76:
  v54 = CAVerboseAbort();
  return OpaqueAudioSampleRateConverter::STLIKernel::GetExpectedNumberOfOutputFrames(v54, v56, v55, v57);
}

uint64_t OpaqueAudioSampleRateConverter::STLIKernel::GetExpectedNumberOfOutputFrames@<X0>(uint64_t this@<X0>, unsigned int *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  *a2 = a3;
  if (a3 <= 0x400000)
  {
    v5 = **(this + 8);
    if ((*v5 & 1) == 0)
    {
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      v8 = ~v7 + (a3 << 32) + v6;
      if (v8 >= 0)
      {
        a3 = v8 / v6;
        v4 = 1;
        goto LABEL_8;
      }

      LODWORD(a3) = 0;
    }

    v4 = 1;
    goto LABEL_8;
  }

  v4 = 0;
  LODWORD(a3) = -50;
LABEL_8:
  *a4 = a3;
  *(a4 + 4) = v4;
  return this;
}

uint64_t OpaqueAudioSampleRateConverter::STLIKernel::GetRequiredNumberOfInputFrames@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 0x400000)
  {
    v4 = **(this + 8);
    if ((*v4 & 1) == 0 && a2)
    {
      a2 = (*(v4 + 16) + *(v4 + 24) * a2 + 0x80000000) >> 32;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    LODWORD(a2) = -50;
  }

  *a3 = a2;
  *(a3 + 4) = v3;
  return this;
}

uint64_t OpaqueAudioSampleRateConverter::STLIKernel::SetVariableRate(uint64_t this, double a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    this = ShortTermLinearInterpolationResampler::SetRate(*v4++, a2);
  }

  *(v3 + 56) = a2;
  return this;
}

void OpaqueAudioSampleRateConverter::STLIKernel::~STLIKernel(OpaqueAudioSampleRateConverter::STLIKernel *this)
{
  v1 = (this + 8);
  std::vector<std::unique_ptr<ShortTermLinearInterpolationResampler>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x193ADF220);
}

{
  v1 = (this + 8);
  std::vector<std::unique_ptr<ShortTermLinearInterpolationResampler>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void OpaqueAudioSampleRateConverter::Resampler2Kernel::~Resampler2Kernel(OpaqueAudioSampleRateConverter::Resampler2Kernel *this)
{
  Resampler2::ShutdownVarispeedMode(*(this + 13));
  v2 = (this + 8);
  std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  OpaqueAudioSampleRateConverter::Resampler2Kernel::~Resampler2Kernel(this);

  JUMPOUT(0x193ADF220);
}

uint64_t OpaqueAudioSampleRateConverter::RamstadKernel::Process(OpaqueAudioSampleRateConverter::RamstadKernel *this, const float **a2, int a3, unsigned int *a4, float **a5, int a6, unsigned int *a7)
{
  v7 = *(this + 14);
  if (v7 == 2)
  {
    RamstadSRC::processStereo(&v9, (this + 8), *a2, a2[1], *a5, a5[1], *a4, *a7, a3, a6);
  }

  else if (v7 == 1)
  {
    RamstadSRC::processMono(&v9, (this + 8), *a2, *a5, *a4, *a7, a3, a6);
  }

  else
  {
    RamstadSRC::processMulti(&v9, this + 1, a2, a5, *a4, *a7, a3, a6);
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t OpaqueAudioSampleRateConverter::RamstadKernel::GetExpectedNumberOfOutputFrames@<X0>(OpaqueAudioSampleRateConverter::RamstadKernel *this@<X0>, unsigned int *a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  v7 = a3;
  result = RamstadSRC::outputSamplesForInputSamples((this + 8), a3, &v7);
  *a2 = v7;
  *a4 = result;
  *(a4 + 4) = 1;
  return result;
}

uint64_t OpaqueAudioSampleRateConverter::RamstadKernel::GetRequiredNumberOfInputFrames@<X0>(OpaqueAudioSampleRateConverter::RamstadKernel *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = RamstadSRC::inputSamplesForOutputSamples((this + 8), a2);
  *a3 = result;
  *(a3 + 4) = 1;
  return result;
}

uint64_t OpaqueAudioSampleRateConverter::RamstadKernel::SetVariableRate@<X0>(uint64_t this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  LODWORD(a3) = vcvtmd_s64_f64(a2);
  *(this + 68) = a3;
  v3 = vcvtmd_s64_f64((a2 - floor(a2)) * 2147483650.0);
  *(this + 76) = v3;
  *(this + 88) = (a3 << 32 >> 1) + v3;
  *(this + 264) = -1;
  *(this + 272) = -1;
  *(this + 296) = a2;
  return this;
}

double OpaqueAudioSampleRateConverter::RamstadKernel::GetLatency(OpaqueAudioSampleRateConverter::RamstadKernel *this)
{
  v1 = *(this + 6);
  v2 = *(this + 5) / v1;
  if (v2 >= 1.0)
  {
    v3 = dbl_18F901BF0[*(this + 16) == 8];
  }

  else
  {
    v3 = dbl_18F901BE0[*(this + 16) == 8] / v2;
  }

  return v3 / v1;
}

void OpaqueAudioSampleRateConverter::RamstadKernel::~RamstadKernel(OpaqueAudioSampleRateConverter::RamstadKernel *this)
{
  RamstadSRC::~RamstadSRC((this + 8));

  JUMPOUT(0x193ADF220);
}

{
  RamstadSRC::~RamstadSRC((this + 8));
}

uint64_t OpaqueAudioSampleRateConverter::Resampler2Kernel::Reset(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 88))(v3);
  }

  return this;
}

uint64_t OpaqueAudioSampleRateConverter::Resampler2Kernel::Process(OpaqueAudioSampleRateConverter::Resampler2Kernel *this, const float *const *a2, uint64_t a3, unsigned int *a4, float *const *a5, unsigned int a6, unsigned int *a7)
{
  v7 = *(this + 1);
  v8 = *(this + 2);
  if (v7 != v8)
  {
    v14 = a2 + 1;
    v15 = a5 + 1;
    v16 = 1;
    do
    {
      if (v16 >= *(this + 12))
      {
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v17 = *v14;
        v18 = *v15;
      }

      v19 = *v7++;
      (*(*v19 + 32))(v19, *(v14 - 1), v17, *(v15 - 1), v18, a4, a7, a3, a6);
      v14 += 2;
      v15 += 2;
      v16 += 2;
    }

    while (v7 != v8);
  }

  return 0;
}

uint64_t OpaqueAudioSampleRateConverter::Resampler2Kernel::GetExpectedNumberOfOutputFrames@<X0>(OpaqueAudioSampleRateConverter::Resampler2Kernel *this@<X0>, unsigned int *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  *a2 = a3;
  result = (*(***(this + 1) + 144))(**(this + 1));
  *a4 = result;
  *(a4 + 4) = 1;
  return result;
}

uint64_t OpaqueAudioSampleRateConverter::Resampler2Kernel::GetRequiredNumberOfInputFrames@<X0>(OpaqueAudioSampleRateConverter::Resampler2Kernel *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(***(this + 1) + 136))(**(this + 1));
  *a2 = result;
  *(a2 + 4) = 1;
  return result;
}

uint64_t OpaqueAudioSampleRateConverter::Resampler2Kernel::SetVariableRate(uint64_t this, double a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = (*(*v6 + 56))(v6, a2);
  }

  *(v3 + 56) = a2;
  return this;
}

uint64_t OpaqueAudioSampleRateConverter::Resampler2Kernel::GetKernelSize(OpaqueAudioSampleRateConverter::Resampler2Kernel *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0x100000000;
  }

  LODWORD(v3) = 0;
  do
  {
    v4 = *v1++;
    v5 = (*(*v4 + 152))(v4);
    if (v5 <= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v5;
    }
  }

  while (v1 != v2);
  return v3 | 0x100000000;
}

uint64_t OpaqueAudioSampleRateConverter::Resampler2Kernel::GetLatency(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  for (i = 0.0; v1 != v2; ++v1)
  {
    v4 = *v1;
    v5 = 0.0;
    if ((*(*v1 + 120) | 2) == 2)
    {
      v6 = 0.5;
      if (*(v4 + 116) != 1818848869)
      {
        v6 = *(v4 + 168) + *(*(v4 + 56) + 20);
      }

      v5 = v6 / *(v4 + 96);
    }

    if (v5 >= i)
    {
      i = v5;
    }
  }

  return this;
}

const void *applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t AudioSampleRateConverterDispose(uint64_t result)
{
  if (result)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,OpaqueAudioSampleRateConverter::Resampler2Kernel,OpaqueAudioSampleRateConverter::RamstadKernel,OpaqueAudioSampleRateConverter::STLIKernel>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t AudioSampleRateConverterGetInputSampleRate(uint64_t a1)
{
  if (a1)
  {
    v2 = *(**(a1 + 312) + 16);

    return v2();
  }

  else
  {
    v4 = CAVerboseAbort();
    return AudioSampleRateConverterGetOutputSampleRate(v4);
  }
}

uint64_t AudioSampleRateConverterGetOutputSampleRate(uint64_t a1)
{
  if (a1)
  {
    v2 = *(**(a1 + 312) + 24);

    return v2();
  }

  else
  {
    v4 = CAVerboseAbort();
    return AudioSampleRateConverterGetNumberOfChannels(v4);
  }
}

uint64_t AudioSampleRateConverterGetNumberOfChannels(uint64_t a1)
{
  if (a1)
  {
    v2 = *(**(a1 + 312) + 32);

    return v2();
  }

  else
  {
    v4 = CAVerboseAbort();
    return AudioSampleRateConverterGetLatency(v4);
  }
}

uint64_t AudioSampleRateConverterGetLatency(uint64_t a1)
{
  if (a1)
  {
    v2 = *(**(a1 + 312) + 40);

    return v2();
  }

  else
  {
    v4 = CAVerboseAbort();
    return AudioSampleRateConverterGetKernelSize(v4, v5);
  }
}

unint64_t AudioSampleRateConverterGetKernelSize(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    v3 = (*(**(a1 + 312) + 48))(*(a1 + 312));
    if (a2)
    {
      if ((v3 & 0x100000000) != 0)
      {
        *a2 = v3;
      }
    }

    return HIDWORD(v3) & 1;
  }

  else
  {
    v5 = CAVerboseAbort();
    return AudioSampleRateConverterGetVariableRate(v5);
  }
}

uint64_t AudioSampleRateConverterGetVariableRate(uint64_t a1)
{
  if (a1)
  {
    v2 = *(**(a1 + 312) + 56);

    return v2();
  }

  else
  {
    v4 = CAVerboseAbort();
    return AudioSampleRateConverterSetVariableRate(v4);
  }
}

uint64_t AudioSampleRateConverterSetVariableRate(uint64_t a1)
{
  if (a1)
  {
    v2 = *(**(a1 + 312) + 64);

    return v2();
  }

  else
  {
    v4 = CAVerboseAbort();
    return AudioSampleRateConverterGetRequiredNumberOfInputFrames(v4);
  }
}

uint64_t AudioSampleRateConverterGetRequiredNumberOfInputFrames(uint64_t a1)
{
  if (a1)
  {
    (*(**(a1 + 312) + 72))(&v5);
    if ((v5 & 0x100000000) != 0)
    {
      return v5;
    }

    CAAssertRtn();
  }

  v2 = CAVerboseAbort();
  return AudioSampleRateConverterGetExpectedNumberOfOutputFrames(v2, v3, v4);
}

uint64_t AudioSampleRateConverterGetExpectedNumberOfOutputFrames(uint64_t a1, int a2, int *a3)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v13 = a2;
  (*(**(a1 + 312) + 80))(&v12);
  if ((v12 & 0x100000000) == 0)
  {
    CAAssertRtn();
LABEL_7:
    v5 = CAVerboseAbort();
    return AudioSampleRateConverterProcess(v5, v6, v7, v8, v9, v10, v11);
  }

  if (a3)
  {
    *a3 = v13;
  }

  return v12;
}

uint64_t AudioSampleRateConverterProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 && a2 && a4 && a5 && a7)
  {
    return (*(**(a1 + 312) + 88))();
  }

  else
  {
    return 4294967246;
  }
}

uint64_t AudioSampleRateConverterProcessAudioBufferLists(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41[1] = *MEMORY[0x1E69E9840];
  result = 4294967246;
  if (a1 && a2 && a3 && a4 && a5)
  {
    v41[0] = v41;
    v11 = (*(**(a1 + 312) + 32))(*(a1 + 312));
    v12 = v11;
    MEMORY[0x1EEE9AC00](v11);
    v15 = v41 - v14;
    if (v13 >= 0x200)
    {
      v16 = 512;
    }

    else
    {
      v16 = v13;
    }

    bzero(v41 - v14, v16);
    if (*a2 == v11)
    {
      if (v11)
      {
        v17 = (a2 + 16);
        v18 = v15;
        v19 = v11;
        do
        {
          v20 = *v17;
          v17 += 2;
          *v18 = v20;
          v18 += 8;
          --v19;
        }

        while (v19);
      }

      v21 = 1;
    }

    else
    {
      result = 4294967246;
      if (*a2 != 1 || *(a2 + 8) != v11)
      {
        return result;
      }

      if (v11)
      {
        v22 = *(a2 + 16);
        v23 = (v11 + 1) & 0x1FFFFFFFELL;
        v24 = vdupq_n_s64(v11 - 1);
        v25 = xmmword_18F9016C0;
        v26 = v15 + 8;
        v27 = vdupq_n_s64(2uLL);
        do
        {
          v28 = vmovn_s64(vcgeq_u64(v24, v25));
          if (v28.i8[0])
          {
            *(v26 - 1) = v22;
          }

          if (v28.i8[4])
          {
            *v26 = v22 + 4;
          }

          v25 = vaddq_s64(v25, v27);
          v22 += 8;
          v26 += 2;
          v23 -= 2;
        }

        while (v23);
        v21 = v11;
      }

      else
      {
        v21 = 0;
      }
    }

    MEMORY[0x1EEE9AC00](result);
    v30 = v41 - ((v29 + 15) & 0xFFFFFFFF0);
    bzero(v30, v16);
    if (*a4 == v11)
    {
      if (v11)
      {
        v31 = (a4 + 16);
        v32 = v30;
        do
        {
          v33 = *v31;
          v31 += 2;
          *v32 = v33;
          v32 += 8;
          --v12;
        }

        while (v12);
      }

      v11 = 1;
      return (*(**(a1 + 312) + 88))(*(a1 + 312), v15, v21, a3, v30, v11, a5);
    }

    result = 4294967246;
    if (*a4 == 1 && *(a4 + 8) == v11)
    {
      if (v11)
      {
        v34 = *(a4 + 16);
        v35 = (v11 + 1) & 0x1FFFFFFFELL;
        v36 = vdupq_n_s64(v11 - 1);
        v37 = xmmword_18F9016C0;
        v38 = v30 + 8;
        v39 = vdupq_n_s64(2uLL);
        do
        {
          v40 = vmovn_s64(vcgeq_u64(v36, v37));
          if (v40.i8[0])
          {
            *(v38 - 1) = v34;
          }

          if (v40.i8[4])
          {
            *v38 = v34 + 4;
          }

          v37 = vaddq_s64(v37, v39);
          v34 += 8;
          v38 += 2;
          v35 -= 2;
        }

        while (v35);
      }

      return (*(**(a1 + 312) + 88))(*(a1 + 312), v15, v21, a3, v30, v11, a5);
    }
  }

  return result;
}

os_log_t AudioSampleRateConverterReset(uint64_t a1)
{
  if (a1)
  {
    v2 = *(**(a1 + 312) + 96);

    return v2();
  }

  else
  {
    CAVerboseAbort();
    return ___ZN8DSPGraph6getLogEv_block_invoke_10139();
  }
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke_10139()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

BOOL DSPGraph::FCBox::upstreamIsCBR(DSPGraph::FCBox *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v9, "in");
    v8 = this + 32;
    if (*(this + 55) < 0)
    {
      v8 = *v8;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v8, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v4 = *((*(*v2 + 40))(v2) + 120);
  v5 = *(v4 + 8);
  return v5 != 1718773105 && v5 != 1819304813 && *(v4 + 16) != 0;
}

void sub_18F837358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::FCBox::downstreamIsCBR(DSPGraph::FCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v9, "out");
    v8 = this + 32;
    if (*(this + 55) < 0)
    {
      v8 = *v8;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v8, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v4 = *((*(*v2 + 40))(v2) + 120);
  v5 = *(v4 + 8);
  return v5 != 1718773105 && v5 != 1819304813 && *(v4 + 16) != 0;
}

void sub_18F8374A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::downstreamFramesPerPacket(DSPGraph::FCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "out");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 20);
}

void sub_18F8375CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

RamstadSRC *std::unique_ptr<RamstadSRC>::reset[abi:ne200100](RamstadSRC **a1, RamstadSRC *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    RamstadSRC::~RamstadSRC(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::vector<float *>::insert(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return;
  }

  v4 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 > (v9 - v8) >> 3)
  {
    v10 = *a1;
    v11 = a3 + (&v8[-*a1] >> 3);
    if (v11 >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v12 = v9 - v10;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::allocator<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::allocate_at_least[abi:ne200100](v13);
    }

    v31 = 0;
    v32 = 8 * ((__src - v10) >> 3);
    v33 = *a4;
    v34 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v35 = vdupq_n_s64(v34);
    do
    {
      v36 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v31), xmmword_18F9016C0)));
      if (v36.i8[0])
      {
        *(v32 + 8 * v31) = v33;
      }

      if (v36.i8[4])
      {
        *(8 * ((__src - v10) >> 3) + 8 * v31 + 8) = v33;
      }

      v31 += 2;
    }

    while (v34 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v31);
    v37 = (v32 + 8 * a3);
    memcpy(v37, __src, a1[1] - __src);
    v38 = *a1;
    v39 = &v37[a1[1] - __src];
    a1[1] = __src;
    v40 = (__src - v38);
    v41 = (v32 - (__src - v38));
    memcpy(v41, v38, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v39;
    a1[2] = 0;
    if (v42)
    {

      operator delete(v42);
    }

    return;
  }

  v14 = v8 - __src;
  if (a3 <= (v8 - __src) >> 3)
  {
    v21 = a1[1];
    v16 = a3;
LABEL_21:
    v22 = &__src[8 * a3];
    v23 = &v21[-8 * a3];
    v24 = v21;
    if (v23 < v8)
    {
      v24 = v21;
      do
      {
        v25 = *v23;
        v23 += 8;
        *v24 = v25;
        v24 += 8;
      }

      while (v23 < v8);
    }

    a1[1] = v24;
    if (v21 != v22)
    {
      memmove(&__src[8 * a3], __src, v21 - v22);
    }

    if (__src <= v4)
    {
      if (a1[1] <= v4)
      {
        v26 = 0;
      }

      else
      {
        v26 = a3;
      }

      v4 += 8 * v26;
    }

    v27 = 0;
    v28 = *v4;
    v29 = vdupq_n_s64(v16 - 1);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_18F9016C0)));
      if (v30.i8[0])
      {
        *&__src[8 * v27] = v28;
      }

      if (v30.i8[4])
      {
        *&__src[8 * v27 + 8] = v28;
      }

      v27 += 2;
    }

    while (((v16 + 1) & 0xFFFFFFFFFFFFFFFELL) != v27);
    return;
  }

  v15 = 0;
  v16 = v14 >> 3;
  v17 = *a4;
  v18 = (8 * a3 - v14 - 8) >> 3;
  v19 = vdupq_n_s64(v18);
  do
  {
    v20 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(vdupq_n_s64(v15), xmmword_18F9016C0)));
    if (v20.i8[0])
    {
      *&v8[8 * v15] = v17;
    }

    if (v20.i8[4])
    {
      *&v8[8 * v15 + 8] = v17;
    }

    v15 += 2;
  }

  while (((v18 + 2) & 0x3FFFFFFFFFFFFFFELL) != v15);
  v21 = &v8[8 * (a3 - (v14 >> 3))];
  a1[1] = v21;
  if (v8 != __src)
  {
    goto LABEL_21;
  }
}

double DSPGraph::RamstadSRCKernel::process(DSPGraph::RamstadSRCKernel *this, AudioBufferList *a2, AudioBufferList *a3, int a4, unsigned int *a5)
{
  v10 = RamstadSRC::outputSamplesForInputSamples(*(this + 1), a4, &v28);
  v11 = v10 & ~(v10 >> 31);
  if (v11 > *a5)
  {
LABEL_13:
    std::string::basic_string[abi:ne200100]<0>(&v27, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v26, "process");
    std::string::basic_string[abi:ne200100]<0>(&v25, "internal error. SRC output would be more than slice duration.");
    DSPGraph::ThrowException(1718775073, &v27, 382, &v26, &v25);
  }

  *a5 = v11;
  v12 = *(this + 16);
  if (v12)
  {
    v13 = 4 * v11;
    if (v12 == 1)
    {
      mData = a2->mBuffers[0].mData;
      v20 = a3->mBuffers[0].mData;
      a3->mBuffers[0].mDataByteSize = v13;
      result = RamstadSRC::processMono(&v27, *(this + 1), mData, v20, a4, *a5, 1, 1);
      goto LABEL_11;
    }

    if (v12 == 2)
    {
      v14 = a2->mBuffers[0].mData;
      v15 = *&a2[1].mBuffers[0].mNumberChannels;
      v16 = a3->mBuffers[0].mData;
      v17 = *&a3[1].mBuffers[0].mNumberChannels;
      a3->mBuffers[0].mDataByteSize = v13;
      *(&a3[1].mNumberBuffers + 1) = v13;
      result = RamstadSRC::processStereo(&v27, *(this + 1), v14, v15, v16, v17, a4, *a5, 1, 1);
      goto LABEL_11;
    }

    v21 = 0;
    p_mData = &a3->mBuffers[0].mData;
    v23 = &a2->mBuffers[0].mData;
    do
    {
      v24 = *v23;
      v23 += 2;
      *(*(this + 2) + 8 * v21) = v24;
      *(*(this + 5) + 8 * v21) = *p_mData;
      *(p_mData - 1) = v13;
      ++v21;
      p_mData += 2;
    }

    while (v12 != v21);
    v11 = *a5;
  }

  result = RamstadSRC::processMulti(&v27, *(this + 1), *(this + 2), *(this + 5), a4, v11, 1, 1);
LABEL_11:
  if ((BYTE4(v27) & 1) == 0)
  {
    CAAssertRtn();
    goto LABEL_13;
  }

  return result;
}

void sub_18F837B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::RamstadSRCKernel::selfLatencyInTicks(DSPGraph::RamstadSRCKernel *this, unint64_t a2)
{
  v2 = llround(5.0 / *(this + 9) * a2);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (v2 >= 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void DSPGraph::RamstadSRCKernel::~RamstadSRCKernel(DSPGraph::RamstadSRCKernel *this)
{
  *this = &unk_1F0336048;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  std::unique_ptr<RamstadSRC>::reset[abi:ne200100](this + 1, 0);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336048;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  std::unique_ptr<RamstadSRC>::reset[abi:ne200100](this + 1, 0);
}

double DSPGraph::SRCBox::open(DSPGraph::SRCBox *this)
{
  v1 = *(this + 1);
  result = *(v1 + 928);
  *(this + 112) = result;
  *(this + 904) = *(v1 + 936);
  return result;
}

uint64_t DSPGraph::SRCBox::setProperty(DSPGraph::SRCBox *this, signed int a2, int a3, unsigned int a4, int a5, _DWORD *a6)
{
  if (a2 > 1835626095)
  {
    if (a2 == 1835626096)
    {
      if (a5 == 4)
      {
        v6 = 0;
        *(this + 904) = *a6 != 0;
        return v6;
      }

      return 561211770;
    }

    if (a2 != 1936876401)
    {
      if (a2 == 1936876385)
      {
        goto LABEL_5;
      }

      return DSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
    }

LABEL_10:
    if (a5 == 4)
    {
      v6 = 0;
      *(this + 225) = *a6;
      return v6;
    }

    return 561211770;
  }

  if (a2 == 26)
  {
    goto LABEL_10;
  }

  if (a2 != 3014)
  {
    return DSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

LABEL_5:
  if (a5 != 4)
  {
    return 561211770;
  }

  v6 = 0;
  *(this + 224) = *a6;
  return v6;
}

void DSPGraph::SRCBox::getProperty(DSPGraph::SRCBox *this, signed int a2, uint64_t a3, uint64_t a4, unsigned int *a5, __n128 *a6, __n128 a7)
{
  if (a2 <= 1835626095)
  {
    if (a2 != 26)
    {
      if (a2 == 3014)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_10:
    if (*a5 != 4)
    {
      return;
    }

    v7 = *(this + 225);
    goto LABEL_14;
  }

  if (a2 != 1835626096)
  {
    if (a2 != 1936876401)
    {
      if (a2 == 1936876385)
      {
LABEL_5:
        if (*a5 != 4)
        {
          return;
        }

        v7 = *(this + 224);
        goto LABEL_14;
      }

LABEL_9:
      DSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6, a7);
      return;
    }

    goto LABEL_10;
  }

  if (*a5 != 4)
  {
    return;
  }

  v7 = *(this + 904);
LABEL_14:
  a6->n128_u32[0] = v7;
}

uint64_t DSPGraph::SRCBox::getPropertyInfo(DSPGraph::SRCBox *this, signed int a2, int a3, unsigned int a4)
{
  result = 0x100000004;
  if (a2 > 1835626095)
  {
    if (a2 == 1835626096 || a2 == 1936876385 || a2 == 1936876401)
    {
      return result;
    }

    return DSPGraph::Box::getPropertyInfo(this, a2, a3);
  }

  if (a2 != 26 && a2 != 3014)
  {
    return DSPGraph::Box::getPropertyInfo(this, a2, a3);
  }

  return result;
}

DSPGraph::SRCBox *DSPGraph::SRCBox::asOperativeSRCBox(DSPGraph::SRCBox *this)
{
  if ((*(*this + 712))(this))
  {
    return 0;
  }

  else
  {
    return this;
  }
}

double DSPGraph::SRCBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.28569068e248;
  *a1 = xmmword_18F901AC0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t DSPGraph::ReblockerBox::initialize(DSPGraph::ReblockerBox *this)
{
  if (((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v9, "ReblockerBox has no inputs");
    DSPGraph::ThrowException(1970168609, &v11, 626, &v10, &v9);
  }

  DSPGraph::RingBufferBox::initialize(this);
  v2 = *(this + 11);
  if (*(this + 12) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v10, "out");
    v7 = this + 32;
    if (*(this + 55) < 0)
    {
      v7 = *v7;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v7, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = *(this + 8);
  if (*(this + 9) == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v10, "in");
    v8 = this + 32;
    if (*(this + 55) < 0)
    {
      v8 = *v8;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v8, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v5 = *(*(v3 + 120) + 28);
  result = (*(*v4 + 40))(v4);
  if (*(*(result + 120) + 28) != v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v9, "input and output channel counts don't match");
    DSPGraph::ThrowException(1667788321, &v11, 634, &v10, &v9);
  }

  return result;
}

void sub_18F838258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::ReblockerBox::process(DSPGraph::ReblockerBox *this, uint64_t a2)
{
  if ((*(*this + 712))(this))
  {
    v4 = *(this + 11);
    if (*(this + 12) == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v30, "out");
      v27 = this + 32;
      if (*(this + 55) < 0)
      {
        v27 = *v27;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v27, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v5 = (*(*v4 + 40))(v4);
    v6 = *(this + 8);
    if (*(this + 9) == v6)
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v30, "in");
      v29 = this + 32;
      if (*(this + 55) < 0)
      {
        v29 = *v29;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v29, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v7 = *(v5 + 56);
    v8 = (*(*v6 + 40))(v6);
    DSPGraph::Buffer::copyFrom(v7, *(v8 + 56));
  }

  else
  {
    v9 = *(this + 8);
    if (*(this + 9) == v9)
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v30, "in");
      v28 = this + 32;
      if (*(this + 55) < 0)
      {
        v28 = *v28;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v28, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v10 = (*(*v9 + 40))(v9);
    DSPGraph::RingBuffer::write((this + 808), a2, a2, (*(v10 + 56) + 80));
  }

  v11 = *(this + 8);
  if (*(this + 9) == v11)
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v30, "in");
    v25 = this + 32;
    if (*(this + 55) < 0)
    {
      v25 = *v25;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v25, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v12 = (*(*v11 + 40))(v11);
  v13 = *(this + 8);
  if (*(this + 9) == v13)
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v30, "in");
    v26 = this + 32;
    if (*(this + 55) < 0)
    {
      v26 = *v26;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v26, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v14 = *(*(v12 + 56) + 72);
  result = (*(*v13 + 40))(v13);
  v17 = *(this + 11);
  v16 = *(this + 12);
  if (v17 != v16)
  {
    v18 = result[7];
    result = v17;
    v19 = v17;
    do
    {
      v20 = *v19;
      v19 += 4;
      v21 = *((*(v20 + 40))(result) + 56);
      v22 = *(v18 + 56);
      v23 = *(v18 + 40);
      v24 = *(v18 + 24);
      *(v21 + 8) = *(v18 + 8);
      *(v21 + 24) = v24;
      *(v21 + 40) = v23;
      *(v21 + 56) = v22;
      *(v21 + 72) = v14;
      v17 += 4;
      result = v19;
    }

    while (v19 != v16);
  }

  return result;
}

void sub_18F838718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::ReblockerBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.14073544e243;
  *a1 = xmmword_18F901AD0;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::ReblockerBox::~ReblockerBox(DSPGraph::ReblockerBox *this)
{
  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));

  DSPGraph::Box::~Box(this);
}

void DSPGraph::FreqSRCBox::uninitialize(DSPGraph::FreqSRCBox *this)
{
  DSPGraph::Box::uninitialize(this);
  DSPGraph::SimpleABL::free((this + 808));

  DSPGraph::SimpleABL::free((this + 888));
}

void DSPGraph::FreqSRCBox::initialize(DSPGraph::FreqSRCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v20, "out");
    v11 = this + 32;
    if (*(this + 55) < 0)
    {
      v11 = *v11;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v11, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v4 = (*(*v2 + 40))(v2);
  v5 = *(this + 8);
  v6 = *(this + 9);
  if (((v6 - v5) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v19, "FreqSRCBox has no inputs");
    DSPGraph::ThrowException(1970168609, &v21, 662, &v20, &v19);
  }

  if (v6 == v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v20, "in");
    v12 = this + 32;
    if (*(this + 55) < 0)
    {
      v12 = *v12;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v12, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v7 = *(*(v4 + 120) + 28);
  if (*(*((*(*v5 + 40))(v5) + 120) + 28) != v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v19, "FreqSRCBox input and output channel counts don't match");
    DSPGraph::ThrowException(1667788321, &v21, 667, &v20, &v19);
  }

  if (!DSPGraph::FreqSRCBox::isValidFreqSRCBoxConnection(this))
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "initialize");
    v15 = DSPGraph::FCBox::upstreamBlockSize(this);
    v16 = DSPGraph::FCBox::upstreamSampleRate(this);
    v17 = DSPGraph::FCBox::downstreamBlockSize(this);
    v18 = DSPGraph::FCBox::downstreamSampleRate(this);
    DSPGraph::strprintf("FreqSRCBox I/O sample rates and block sizes invalid  %u / %u <> %u / %u", v15, v16, v17, v18);
  }

  if (((*(*this + 440))(this) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v19, "FreqSRCBox box can not have ring buffer padding zeros");
    DSPGraph::ThrowException(1634628385, &v21, 676, &v20, &v19);
  }

  if (DSPGraph::FCBox::upstreamBytesPerPacket(this) != 8)
  {
    goto LABEL_28;
  }

  v8 = *(this + 8);
  if (*(this + 9) == v8)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v20, "in");
    v13 = this + 32;
    if (*(this + 55) < 0)
    {
      v13 = *v13;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v13, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  if (*(*((*(*v8 + 40))(v8) + 120) + 8) != 1718773105)
  {
LABEL_28:
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v19, "FreqSRCBox box needs 8 byte packets at input");
    DSPGraph::ThrowException(1718449215, &v21, 680, &v20, &v19);
  }

  if (DSPGraph::FCBox::downstreamBytesPerPacket(this) != 8)
  {
    goto LABEL_29;
  }

  v9 = *(this + 11);
  if (*(this + 12) == v9)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v20, "out");
    v14 = this + 32;
    if (*(this + 55) < 0)
    {
      v14 = *v14;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v14, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  if (*(*((*(*v9 + 40))(v9) + 120) + 8) != 1718773105)
  {
LABEL_29:
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v19, "FreqSRCBox box needs 8 byte packets at output");
    DSPGraph::ThrowException(1718449215, &v21, 685, &v20, &v19);
  }

  DSPGraph::RingBufferBox::initialize(this);
  v10 = 8 * DSPGraph::FCBox::downstreamBlockSize(this);

  DSPGraph::SimpleABL::alloc((this + 888), v7, v10, 0);
}

void sub_18F838E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::FreqSRCBox::isValidFreqSRCBoxConnection(DSPGraph::FreqSRCBox *this)
{
  v2 = DSPGraph::FCBox::upstreamSampleRate(this);
  v3 = DSPGraph::FCBox::downstreamBlockSize(this) * v2;
  v4 = DSPGraph::FCBox::downstreamSampleRate(this);
  return v3 == DSPGraph::FCBox::upstreamBlockSize(this) * v4;
}

uint64_t DSPGraph::FCBox::upstreamBytesPerPacket(DSPGraph::FCBox *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "in");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 16);
}

void sub_18F839064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::downstreamBytesPerPacket(DSPGraph::FCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "out");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 16);
}

void sub_18F839184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

unsigned int **DSPGraph::FreqSRCBox::process(DSPGraph::FreqSRCBox *this)
{
  if (!DSPGraph::FreqSRCBox::isValidFreqSRCBoxConnection(this))
  {
    __assert_rtn("process", "DSPGraph_SRCBox.cpp", 722, "isValidFreqSRCBoxConnection()");
  }

  v2 = *(this + 8);
  if (*(this + 9) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v48, "in");
    v41 = this + 32;
    if (*(this + 55) < 0)
    {
      v41 = *v41;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v41, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = *(this + 11);
  if (*(this + 12) == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v48, "out");
    v42 = this + 32;
    if (*(this + 55) < 0)
    {
      v42 = *v42;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v42, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v5 = *(*(v3 + 56) + 80);
  v6 = (*(*v4 + 40))(v4);
  v7 = *v5;
  if (v7 != **(*(v6 + 56) + 80))
  {
    __assert_rtn("process", "DSPGraph_SRCBox.cpp", 726, "inBuf->mNumberBuffers == outBuf->mNumberBuffers");
  }

  v8 = DSPGraph::FCBox::downstreamBlockSize(this);
  v46 = DSPGraph::FCBox::upstreamBlockSize(this);
  v47 = v8;
  if (v8 <= v46)
  {
    v9 = DSPGraph::FCBox::downstreamBlockSize(this);
    v11 = 0;
  }

  else
  {
    v9 = DSPGraph::FCBox::upstreamBlockSize(this);
    v10 = DSPGraph::FCBox::downstreamBlockSize(this);
    v11 = 4 * (v10 - DSPGraph::FCBox::upstreamBlockSize(this));
  }

  v45 = (this + 888);
  if (v7)
  {
    v12 = (4 * v9);
    v13 = (v5 + 4);
    v14 = (*v45 + 4);
    while (1)
    {
      v15 = *v14;
      v16 = *v13;
      v17 = &v15[4 * DSPGraph::FCBox::downstreamBlockSize(this)];
      v18 = &v16[4 * DSPGraph::FCBox::upstreamBlockSize(this)];
      memcpy(v15, v16, v12);
      v19 = DSPGraph::FCBox::upstreamBlockSize(this);
      bzero(&v15[4 * v19], v11);
      memcpy(v17, v18, v12);
      v20 = DSPGraph::FCBox::upstreamBlockSize(this);
      bzero(&v17[4 * v20], v11);
      if (v47 > v46)
      {
        break;
      }

      v23 = DSPGraph::FCBox::downstreamBlockSize(this);
      if (v23 < DSPGraph::FCBox::upstreamBlockSize(this))
      {
        v22 = *&v16[4 * DSPGraph::FCBox::downstreamBlockSize(this)];
        goto LABEL_14;
      }

LABEL_15:
      v13 += 2;
      v14 += 2;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }

    v21 = *v18;
    *&v15[4 * DSPGraph::FCBox::downstreamBlockSize(this)] = v21;
    v22 = 0;
LABEL_14:
    *v17 = v22;
    goto LABEL_15;
  }

LABEL_16:
  v24 = *(this + 8);
  if (*(this + 9) == v24)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v48, "in");
    v43 = this + 32;
    if (*(this + 55) < 0)
    {
      v43 = *v43;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v43, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v25 = (*(*v24 + 40))(v24);
  v26 = *(this + 8);
  if (*(this + 9) == v26)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v48, "in");
    v44 = this + 32;
    if (*(this + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v44, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v27 = *(*(v25 + 56) + 72);
  v28 = (*(*v26 + 40))(v26);
  v29 = *(this + 11);
  v30 = *(this + 12);
  if (v29 != v30)
  {
    v31 = *(v28 + 56);
    v32 = *(this + 11);
    v33 = v32;
    do
    {
      v34 = *v33;
      v33 += 4;
      v35 = *((*(v34 + 40))(v32) + 56);
      v36 = *(v31 + 56);
      v37 = *(v31 + 40);
      v38 = *(v31 + 24);
      *(v35 + 8) = *(v31 + 8);
      *(v35 + 24) = v38;
      *(v35 + 40) = v37;
      *(v35 + 56) = v36;
      *(v35 + 72) = v27;
      v29 += 4;
      v32 = v33;
    }

    while (v33 != v30);
  }

  v39 = DSPGraph::FCBox::downstreamBlockSize(this);

  return DSPGraph::RingBuffer::write((this + 808), v39, v39, v45);
}

void sub_18F839708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

DSPGraph::FreqSRCBox *DSPGraph::FreqSRCBox::asOperativeFreqSRCBox(DSPGraph::FreqSRCBox *this)
{
  if ((*(*this + 712))(this))
  {
    return 0;
  }

  else
  {
    return this;
  }
}

double DSPGraph::FreqSRCBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.3052639e185;
  *a1 = xmmword_18F901AE0;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::FreqSRCBox::~FreqSRCBox(DSPGraph::FreqSRCBox *this)
{
  *this = &unk_1F0335D48;
  DSPGraph::SimpleABL::free((this + 888));
  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0335D48;
  DSPGraph::SimpleABL::free((this + 888));
  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));

  DSPGraph::Box::~Box(this);
}

double DSPGraph::RingBufferBox::dryRunInit(DSPGraph::RingBufferBox *this)
{
  *(this + 100) = 0;
  result = 0.0;
  *(this + 49) = 0u;
  return result;
}

uint64_t DSPGraph::RingBufferBox::dryRunWrite(uint64_t this, uint64_t a2)
{
  v2 = *(this + 784) + a2;
  *(this + 784) = v2;
  if (*(this + 800) > v2)
  {
    v2 = *(this + 800);
  }

  *(this + 800) = v2;
  return this;
}

uint64_t DSPGraph::RingBufferBox::dryRunRead(uint64_t this, uint64_t a2)
{
  v2 = *(this + 784) - a2;
  *(this + 784) = v2;
  if (v2 >= *(this + 792))
  {
    v2 = *(this + 792);
  }

  *(this + 792) = v2;
  return this;
}

uint64_t DSPGraph::RingBufferBox::configureFromDryRun(DSPGraph::RingBufferBox *this)
{
  v2 = *(this + 99);
  v3 = v2 * (*(*this + 664))(this);
  v4 = *(*(this + 1) + 696);
  v5 = (*(*this + 672))(this);
  v6 = (v4 * v5 + ~v3) / (v4 * v5);
  if (v6 <= 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (HIDWORD(v6))
  {
    LODWORD(v6) = v7;
  }

  *(this + 194) = v6;
  v8 = *(this + 100) - *(this + 99);
  v9 = (*(*this + 664))(this);
  v10 = *(*(this + 1) + 696);
  result = (*(*this + 672))(this);
  v12 = (v10 * result + v8 * v9 - 1) / (v10 * result);
  if (v12 <= 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (HIDWORD(v12))
  {
    LODWORD(v12) = v13;
  }

  *(this + 193) = v12;
  return result;
}

uint64_t DSPGraph::FCBox::upstreamFramesPerPacket(DSPGraph::FCBox *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "in");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 20);
}

void sub_18F839BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke_10253()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

void DSPGraph::NonFiniteProtectionBox::addEvent(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 800) - *(a1 + 792) >= *(a1 + 808) - *(a1 + 792))
  {
    *(a1 + 824) = 1;
  }

  else
  {
    v15 = 0uLL;
    clock_gettime(_CLOCK_REALTIME, &v15);
    *&v16[4] = v15;
    v4 = *(a1 + 800);
    v5 = *(a1 + 808);
    if (v4 >= v5)
    {
      v7 = *(a1 + 792);
      v8 = v4 - v7;
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
      v10 = v9 + 1;
      if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (v12 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = 24 * v9;
      *v13 = a2;
      *(v13 + 4) = *v16;
      *(v13 + 20) = *&v16[16];
      v6 = 24 * v9 + 24;
      v14 = v13 - v8;
      memcpy((v13 - v8), v7, v8);
      *(a1 + 792) = v14;
      *(a1 + 800) = v6;
      *(a1 + 808) = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v4 = a2;
      *(v4 + 4) = *v16;
      *(v4 + 20) = *&v16[16];
      v6 = v4 + 24;
    }

    *(a1 + 800) = v6;
  }
}

uint64_t DSPGraph::NonFiniteProtectionBox::setProperty(DSPGraph::NonFiniteProtectionBox *this, int a2, int a3, unsigned int a4, int a5, unsigned int *a6)
{
  if (a2 == 64331)
  {
    if (a5 != 4)
    {
      return 561211770;
    }

    if (a3)
    {
      return 4294956430;
    }

    if (*a6)
    {
      result = 0;
      atomic_store(*a6, this + 207);
    }

    else
    {
      return 4294956445;
    }
  }

  else
  {
    if (a2 == 64330)
    {
      if (a5 == 4)
      {
        if (!a3)
        {
          result = 0;
          atomic_store(*a6 != 0, this + 826);
          return result;
        }

        return 4294956430;
      }

      return 561211770;
    }

    return DSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

  return result;
}

void DSPGraph::NonFiniteProtectionBox::getProperty(DSPGraph::NonFiniteProtectionBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, __n128 *a6, __n128 a7)
{
  if (a2 == 64331)
  {
    if (*a5 == 4 && a6 && !a3)
    {
      v8 = atomic_load(this + 207);
      goto LABEL_15;
    }
  }

  else
  {
    if (a2 != 64330)
    {
      DSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6, a7);
      return;
    }

    if (*a5 == 4 && a6 && !a3)
    {
      v7 = atomic_load(this + 826);
      v8 = v7 & 1;
LABEL_15:
      a6->n128_u32[0] = v8;
    }
  }
}

unint64_t DSPGraph::NonFiniteProtectionBox::getPropertyInfo(DSPGraph::NonFiniteProtectionBox *this, int a2, int a3, unsigned int a4)
{
  if (a2 == 64331 || a2 == 64330)
  {
    v4 = 4;
    if (a3)
    {
      v4 = 4294956430;
      v5 = 0;
    }

    else
    {
      v5 = 0x100000000;
    }
  }

  else
  {
    PropertyInfo = DSPGraph::Box::getPropertyInfo(this, a2, a3);
    v5 = PropertyInfo & 0xFFFFFFFF00000000;
    v4 = PropertyInfo;
  }

  return v5 | v4;
}

double DSPGraph::NonFiniteProtectionBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 6.48669114e223;
  *a1 = xmmword_18F901B70;
  *(a1 + 16) = 0;
  return result;
}

__n128 DSPGraph::NonFiniteProtectionBox::getParameterInfo@<Q0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = -10866;
LABEL_3:
    *a3 = v4;
    *(a3 + 104) = 0;
    return result;
  }

  if (a2 == 71)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v14.n128_u32[2] = 1065353216;
    v14.n128_u32[0] = 2;
    v15 = 3221225472;
    strlcpy(&v9, "if output is silenced on breach of threshold", 0x34uLL);
    v5 = @"if output is silenced on breach of threshold";
  }

  else if (a2 == 70)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v14.n128_u32[2] = 1092616192;
    v14.n128_u32[0] = 4;
    v15 = 3221225472;
    strlcpy(&v9, "time of silence", 0x34uLL);
    v5 = @"time of silence";
  }

  else
  {
    if (a2)
    {
      v4 = -10878;
      goto LABEL_3;
    }

    v15 = 3221225472;
    v13 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v14.n128_u64[1] = 0x4220000042A00000;
    v14.n128_u64[0] = 13;
    strlcpy(&v9, "hard clip threshold", 0x34uLL);
    v5 = @"hard clip threshold";
  }

  *(&v13 + 1) = v5;
  LODWORD(v15) = v15 | 0x8000000;
  v6 = v10;
  *a3 = v9;
  *(a3 + 16) = v6;
  v7 = v12;
  *(a3 + 32) = v11;
  *(a3 + 48) = v7;
  result = v14;
  *(a3 + 64) = v13;
  *(a3 + 80) = result;
  *(a3 + 96) = v15;
  *(a3 + 104) = 1;
  return result;
}

void sub_18F83A138(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *DSPGraph::NonFiniteProtectionBox::getParameterList@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = 0x4600000000;
    v4 = 71;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &v5, 3uLL);
  }

  return result;
}

float DSPGraph::NonFiniteProtectionBox::getParameter(DSPGraph::NonFiniteProtectionBox *this, int a2, int a3, int a4)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_NonFiniteProtectionBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v8, "");
    DSPGraph::ThrowException(-10866, &v10, 210, &v9, &v8);
  }

  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_NonFiniteProtectionBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v8, "");
    DSPGraph::ThrowException(-10877, &v10, 213, &v9, &v8);
  }

  if (a2 == 71)
  {
    v7 = atomic_load(this + 780);
    result = 0.0;
    if (v7)
    {
      return 1.0;
    }
  }

  else
  {
    if (a2 == 70)
    {
      v4 = (this + 776);
    }

    else
    {
      if (a2)
      {
        std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_NonFiniteProtectionBox.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v9, "getParameter");
        std::string::basic_string[abi:ne200100]<0>(&v8, "");
        DSPGraph::ThrowException(-10878, &v10, 222, &v9, &v8);
      }

      v4 = (this + 772);
    }

    return COERCE_FLOAT(atomic_load(v4));
  }

  return result;
}

void sub_18F83A328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t LS::LSDatabaseReady(LS *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E6963648] sharedDatabaseContext];
  v9 = 0;
  v2 = [v1 startAccessingWithOptions:1 error:&v9];
  v3 = v9;
  if ((v2 & 1) == 0)
  {
    {
      operator new();
    }

    if (LS::LSLogScope(void)::global)
    {
      v4 = *LS::LSLogScope(void)::global;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 localizedDescription];
      *buf = 136315650;
      v11 = "LSDatabaseUtils.mm";
      v12 = 1024;
      v13 = 26;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d LS Database not ready. Error: %@", buf, 0x1Cu);
    }
  }

LABEL_10:

  return v2;
}

void sub_18F83A5C8(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t CA::ADMBuilder::Impl::parse_track_uid(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  if (!strcmp(__s1, "audioMXFLookUp"))
  {
    v6 = *(*this + 272);
    *__p = 0u;
    v13 = 0u;
    *v10 = 0u;
    v11 = 0u;
    *v8 = 0u;
    v9 = 0u;
    v7 = *(v6 - 16);
    if (v7[144] == 1)
    {
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>((v7 + 48), v8);
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>((v7 + 80), v10);
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>((v7 + 112), __p);
      if ((BYTE8(v13) & 1) != 0 && SBYTE7(v13) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v7[48] = 0;
      v7[72] = 0;
      v7[80] = 0;
      v7[104] = 0;
      v7[112] = 0;
      v7[136] = 0;
      v7[144] = 1;
    }

    if (BYTE8(v11) == 1 && SBYTE7(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (BYTE8(v9) == 1 && SBYTE7(v9) < 0)
    {
      operator delete(v8[0]);
    }

    return 53;
  }

  else
  {
    if (!strcmp(__s1, "audioTrackFormatIDRef"))
    {
      operator new();
    }

    if (!strcmp(__s1, "audioChannelFormatIDRef"))
    {
      operator new();
    }

    if (!strcmp(__s1, "audioPackFormatIDRef"))
    {
      operator new();
    }

    return 1;
  }
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    *(a2 + 8) = 0uLL;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t CA::ADMBuilder::Impl::parse_track_uid_mxf_lookup(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  if (!strcmp(__s1, "packageUIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "trackIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "channelIDRef"))
  {
    operator new();
  }

  return 1;
}

void AUOOPRenderingServer::~AUOOPRenderingServer(AUOOPRenderingServer *this)
{
  AUOOPRenderingServer::~AUOOPRenderingServer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03363C8;
  v2 = atomic_load(*(this + 11));
  if (v2 != 2)
  {
    atomic_store(1u, this + 113);
    os_eventlink_cancel();
  }

  if (*(this + 56) == 1)
  {
    caulk::thread::join((this + 40));
  }

  if (*(this + 200) == 1)
  {
    v4 = (this + 168);
    std::vector<audioipc::SharedAudioBuffers::Element>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  audioipc::eventlink_primitive::~eventlink_primitive((this + 120));
  caulk::ipc::mapped_memory::reset((this + 64));
  if (*(this + 56) == 1)
  {
    caulk::thread::~thread((this + 40));
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t AUOOPRenderingServerUser::updateHostCallbacks(AUOOPRenderingServerUser *this, char a2)
{
  if (a2)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = ___ZNK24AUOOPRenderingServerUser19updateHostCallbacksEm_block_invoke;
    v17 = &__block_descriptor_40_e29_B56__0_d8_d16_q24_d32_q40_d48l;
    v18 = this;
    mAUAudioUnit = this->mAUAudioUnit;
    v5 = &v14;
  }

  else
  {
    mAUAudioUnit = this->mAUAudioUnit;
    v5 = 0;
  }

  [mAUAudioUnit setMusicalContextBlock:v5];
  if ((a2 & 2) != 0)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = ___ZNK24AUOOPRenderingServerUser19updateHostCallbacksEm_block_invoke_2;
    v12 = &__block_descriptor_40_e21_B40__0_Q8_d16_d24_d32l;
    v13 = this;
    v6 = this->mAUAudioUnit;
    v7 = &v9;
  }

  else
  {
    v6 = this->mAUAudioUnit;
    v7 = 0;
  }

  return [(AUAudioUnit *)v6 setTransportStateBlock:v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18];
}

uint64_t ___ZN24AUOOPRenderingServerUserC2EP11AUAudioUnitm_block_invoke(uint64_t a1, unint64_t a2, char a3, uint64_t a4, const void *a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  if (!v6)
  {
    return 0;
  }

  if (*(v5 + 80) != 1)
  {
    return 0;
  }

  v8 = a4;
  if (*(v5 + 72) != pthread_self())
  {
    return 0;
  }

  v11 = 4294900543;
  v13 = *(v6 + 8);
  v14 = v13[1];
  v15 = *v13 - v14;
  v18 = v13 + v14 + 8;
  v19 = 0;
  v20 = v15;
  if (v14)
  {
    if (!AUOOPBufferSerializer::writeCompressedUnsignedInt<unsigned long long>(&v18, a2 - *(v5 + 48)))
    {
      return v11;
    }
  }

  else
  {
    *(v5 + 48) = a2;
    if (!AUOOPBufferSerializer::writeCompressedUnsignedInt<unsigned long long>(&v18, a2))
    {
      return v11;
    }
  }

  v16 = v19;
  if (v20 != v19)
  {
    *(v18 + v19) = a3;
    v19 = v16 + 1;
    if (AUOOPBufferSerializer::writeCompressedUnsignedInt<unsigned int>(&v18, v8))
    {
      v17 = v19;
      if (v20 - v19 >= v8)
      {
        memcpy((v18 + v19), a5, v8);
        v11 = 0;
        v13[1] = v17 + v8 + v14;
      }
    }
  }

  return v11;
}

uint64_t ___ZN24AUOOPRenderingServerUserC2EP11AUAudioUnitm_block_invoke_2(uint64_t a1, unint64_t a2, char a3, MIDI::EventList *a4)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  if (!v5 || *(v4 + 80) != 1 || *(v4 + 72) != pthread_self())
  {
    return 0;
  }

  v9 = 4294900543;
  v11 = *(v5 + 16);
  v12 = v11[1];
  v13 = *v11 - v12;
  v17 = v11 + v12 + 8;
  v18 = 0;
  v19 = v13;
  if (v12)
  {
    if (!AUOOPBufferSerializer::writeCompressedUnsignedInt<unsigned long long>(&v17, a2 - *(v4 + 48)))
    {
      return v9;
    }
  }

  else
  {
    *(v4 + 48) = a2;
    if (!AUOOPBufferSerializer::writeCompressedUnsignedInt<unsigned long long>(&v17, a2))
    {
      return v9;
    }
  }

  v14 = v18;
  if (v19 != v18)
  {
    *(v17 + v18) = a3;
    v18 = v14 + 1;
    v15 = MIDI::EventList::size(a4);
    if (AUOOPBufferSerializer::writeCompressedUnsignedInt<unsigned int>(&v17, v15))
    {
      if (((v17 + v18) & 3) != 0)
      {
        v16 = v18 - ((v17 + v18) & 3) + 4;
      }

      else
      {
        v16 = v18;
      }

      if (v15 <= (v19 - v16))
      {
        memcpy((v17 + v16), a4, v15);
        v9 = 0;
        v11[1] = v16 + v15 + v12;
      }
    }
  }

  return v9;
}

BOOL AUOOPBufferSerializer::writeCompressedUnsignedInt<unsigned long long>(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  __src = 0;
  if (a2 < 0x80)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      *(&__src + v3) = a2 | 0x80;
      v4 = a2 >> 14;
      a2 >>= 7;
      ++v3;
    }

    while (v4);
  }

  *(&__src + v3) = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 12) - v5;
  v7 = v3;
  if (v6 > v3)
  {
    v8 = v3 + 1;
    memcpy((*a1 + v5), &__src, v3 + 1);
    *(a1 + 8) += v8;
  }

  return v6 > v7;
}

BOOL AUOOPBufferSerializer::writeCompressedUnsignedInt<unsigned int>(uint64_t a1, unsigned int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  __src = 0;
  if (a2 < 0x80)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      *(&__src + v3) = a2 | 0x80;
      v4 = a2 >> 14;
      a2 >>= 7;
      ++v3;
    }

    while (v4);
  }

  *(&__src + v3) = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 12) - v5;
  v7 = v3;
  if (v6 > v3)
  {
    v8 = v3 + 1;
    memcpy((*a1 + v5), &__src, v3 + 1);
    *(a1 + 8) += v8;
  }

  return v6 > v7;
}

uint64_t ___ZNK24AUOOPRenderingServerUser19updateHostCallbacksEm_block_invoke(uint64_t a1, void *a2, double *a3, void *a4, void *a5, void *a6, void *a7)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  if (!v8 || *(v7 + 80) != 1 || *(v7 + 72) != pthread_self())
  {
    return 0;
  }

  v16 = *v8;
  v17 = *(*v8 + 4248);
  if ((v17 & 0x100) != 0)
  {
    if (a2)
    {
      *a2 = *(v16 + 4240);
    }

    if (a5)
    {
      v18 = *(v16 + 4232);
LABEL_13:
      *a5 = v18;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 0x405E000000000000;
    }

    v18 = 0;
    if (a5)
    {
      goto LABEL_13;
    }
  }

  if ((v17 & 0x200) != 0)
  {
    if (a3)
    {
      *a3 = *(v16 + 4256);
    }

    if (a4)
    {
      *a4 = *(v16 + 4260);
    }

    if (a6)
    {
      *a6 = *(v16 + 4252);
    }

    if (!a7)
    {
      return 1;
    }

    v19 = *(v16 + 4264);
    result = 1;
LABEL_31:
    *a7 = v19;
    return result;
  }

  if (a3)
  {
    *a3 = 4.0;
  }

  if (a4)
  {
    *a4 = 4;
  }

  result = (v17 >> 8) & 1;
  if (a6)
  {
    *a6 = 0;
  }

  v19 = 0;
  if (a7)
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t ___ZNK24AUOOPRenderingServerUser19updateHostCallbacksEm_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  if (!v6)
  {
    return 0;
  }

  if (*(v5 + 80) != 1)
  {
    return 0;
  }

  if (*(v5 + 72) != pthread_self())
  {
    return 0;
  }

  v11 = *v6;
  v12 = *(*v6 + 4248);
  if ((v12 & 0x400) == 0)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = v12 & 0xF;
  }

  if (a3)
  {
    *a3 = v11[534];
  }

  if (a4)
  {
    *a4 = v11[535];
  }

  if (a5)
  {
    *a5 = v11[536];
  }

  return 1;
}

void caulk::mach::throw_if_mach_error(caulk::mach *this, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *v6 = &unk_1F0336410;
  MEMORY[0x193ADED80](v5, 4, v6, "Constructing a thread with real time priority requires that the computation (quantum) is less than or equal to the constraint");
  std::error_category::~error_category(v6);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = std::runtime_error::what(v5);
    *v6 = 136315138;
    *&v6[4] = v2;
    _os_log_error_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Throwing: %s", v6, 0xCu);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = std::runtime_error::runtime_error(exception, v5);
  v4->__vftable = (MEMORY[0x1E69E5510] + 16);
  v4[1] = v5[1];
}

uint64_t *std::unique_ptr<std::tuple<caulk::thread::attributes,AUOOPRenderingServer::AUOOPRenderingServer(int,int,int,std::vector<AudioStreamBasicDescription> const&,unsigned int,unsigned int,applesauce::xpc::dict const&,std::shared_ptr<auoop::WorkgroupMirror>)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x193ADF220](v2, 0x1032C4060C540BCLL);
  }

  return a1;
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,AUOOPRenderingServer::AUOOPRenderingServer(int,int,int,std::vector<AudioStreamBasicDescription> const&,unsigned int,unsigned int,applesauce::xpc::dict const&,std::shared_ptr<auoop::WorkgroupMirror>)::$_0,std::tuple<>>>(caulk::thread::attributes *a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v60 = a1;
  caulk::thread::attributes::apply_to_this_thread(a1);
  v2 = *(a1 + 8);
  v71[0] = 0;
  v72 = 0;
  v73 = MEMORY[0x1E69E3C18] + 16;
  memset(v74, 0, 49);
  audioipc::eventlink_primitive::activate((v2 + 120), 1);
  v3 = atomic_load((v2 + 113));
  v4 = *(v2 + 88);
  if ((v3 & 1) == 0)
  {
    atomic_store(0, v4);
    v5 = audioipc::eventlink_primitive::wait_or_error(*(v2 + 120));
    v6 = atomic_load((v2 + 113));
    if ((v6 & 1) == 0)
    {
      v7 = v5;
      v58 = v2 + 144;
      while (1)
      {
        v8 = atomic_load(*(v2 + 96));
        if (v8 == 2)
        {
          goto LABEL_103;
        }

        if ((v7 & 0x100000000) == 0)
        {
          v54 = CADefaultLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "rt_receiver::receive_loop";
            *&buf[12] = 1024;
            *&buf[14] = v7;
            _os_log_error_impl(&dword_18F5DF000, v54, OS_LOG_TYPE_ERROR, "%s failed: %d", buf, 0x12u);
          }

          goto LABEL_103;
        }

        atomic_store(1u, *(v2 + 88));
        v9 = *(v2 + 104);
        v10 = v9 + 4096;
        v11 = *(v9 + 4104);
        if ((v11 - 1) < 2)
        {
          break;
        }

        if (v11 == 4)
        {
          AUOOPRenderingServer::prepareRealtimeMessages(v2, 1);
        }

        else
        {
          if (v11 == 5)
          {
            break;
          }

          if (!kInterAppAudioScope)
          {
            v20 = MEMORY[0x1E69E9C10];
            v21 = MEMORY[0x1E69E9C10];
LABEL_27:
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v22 = *(v9 + 4104);
              *buf = 136315650;
              *&buf[4] = "AUOOPRenderingServer.mm";
              *&buf[12] = 1024;
              *&buf[14] = 466;
              *&buf[18] = 1024;
              *&buf[20] = v22;
              _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown message: %d", buf, 0x18u);
            }

            goto LABEL_94;
          }

          v20 = *kInterAppAudioScope;
          if (v20)
          {
            goto LABEL_27;
          }
        }

LABEL_94:
        *(v10 + 9) = 101;
        v50 = atomic_load((v2 + 113));
        if ((v50 & 1) == 0)
        {
          v51 = atomic_load(*(v2 + 96));
          if (v51 != 2)
          {
            atomic_store(0, *(v2 + 88));
            v52 = audioipc::eventlink_primitive::wait_signal_or_error(*(v2 + 120));
            if ((v52 & 0x100000000) == 0)
            {
              v7 = v52;
            }

            v53 = atomic_load((v2 + 113));
            if ((v53 & 1) == 0)
            {
              continue;
            }
          }
        }

        goto LABEL_103;
      }

      *buf = *(v9 + 4108);
      v61[0] = 0;
      v64 = 0;
      v65 = 0;
      if (*MEMORY[0x1E69E5020])
      {
        std::optional<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::scoped_lookup>::emplace[abi:ne200100]<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>&,unsigned int const&,void>(v61, *MEMORY[0x1E69E5020], buf);
        if (v62)
        {
          v13 = BaseOpaqueObject::checkRTTI();
          v65 = v13;
          if (v13)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v13 = v65;
          if (v65)
          {
LABEL_12:
            v14 = *(v9 + 4104);
            if (v14 != 5)
            {
              v15 = *(v9 + 4112);
              if (v15 > 0x61)
              {
                if (*(v2 + 240) != 97)
                {
                  *buf = *(v2 + 224);
                  *&buf[16] = 1;
                  caulk::mach::this_thread::set_priority();
                  *(v2 + 240) = 97;
                }

                auoop::WorkgroupMirror::lookup(v75, *(v2 + 24), v15);
                if (v76 != v74[0] || v78[24] != LOBYTE(v74[6]))
                {
                  if (v76)
                  {
                    std::optional<audioipc::os_workgroup_joiner>::emplace[abi:ne200100]<caulk::mach::os_workgroup_managed &,void>(v71, v75);
                  }

                  else if (v72 == 1)
                  {
                    audioipc::os_workgroup_joiner::~os_workgroup_joiner(v71);
                    v72 = 0;
                  }

                  caulk::mach::details::holder::operator=(v74, &v76);
                  *&v74[1] = v77;
                  *&v74[3] = *v78;
                  *(&v74[4] + 1) = *&v78[9];
                }

                caulk::mach::os_workgroup_managed::~os_workgroup_managed(v75);
              }

              else
              {
                v16 = v74[0];
                if (v74[0])
                {
                  if (v72 == 1)
                  {
                    audioipc::os_workgroup_joiner::~os_workgroup_joiner(v71);
                    v72 = 0;
                    v16 = v74[0];
                  }

                  memset(&buf[16], 0, 48);
                  v74[0] = 0;
                  *buf = MEMORY[0x1E69E3C18] + 16;
                  *&buf[8] = v16;
                  caulk::mach::details::release_os_object(0, v12);
                  v17 = v74[5];
                  v19 = *&v74[1];
                  v18 = *&v74[3];
                  *&v74[1] = *&buf[16];
                  *&v74[3] = *&buf[32];
                  v74[5] = *&buf[48];
                  *&buf[16] = v19;
                  *&buf[32] = v18;
                  *&buf[48] = v17;
                  LOBYTE(v17) = v74[6];
                  LOBYTE(v74[6]) = buf[56];
                  buf[56] = v17;
                  caulk::mach::os_workgroup_managed::~os_workgroup_managed(buf);
                }

                if (v15)
                {
                  audioipc::priority_propagator_impl::apply_priority((v2 + 224), v15);
                }
              }
            }

            AUOOPRenderingServer::prepareRealtimeMessages(v2, 0);
            v23 = *(v2 + 208);
            v24 = *(v13 + 41);
            v25 = AUEventSchedule::preRender(*(v13 + 56), *(*v58 + 4168), *(*v58 + 4312), 0);
            *buf = v23;
            v69 = 0;
            v70 = v25;
            v67 = 0;
            v68 = 0;
            v66 = 0;
            if (v23)
            {
LABEL_41:
              if (v25)
              {
                v26 = &v70;
                if (*(v23 + 8) <= *(v25 + 8))
                {
                  v26 = buf;
                }

                v25 = *v26;
              }

              else
              {
                v26 = buf;
                v25 = v23;
              }

              goto LABEL_48;
            }

            while (v25)
            {
              v26 = &v70;
LABEL_48:
              if (*(v25 + 16) != 1 || (v24 & 1) != 0 || !*(v25 + 36))
              {
                goto LABEL_55;
              }

              v27 = *(v25 + 8);
              if (v27 >> 28 == 0xFFFFFFFE0)
              {
                *(v25 + 8) = v27 | 0x100000000;
              }

              if ((*(v25 + 19) & 2) != 0)
              {
LABEL_55:
                v28 = &v69;
                v29 = &v68;
              }

              else
              {
                v28 = &v67;
                v29 = &v66;
              }

              v30 = *v25;
              if (*v28)
              {
                v28 = *v29;
              }

              *v28 = v25;
              *v29 = v25;
              *v25 = 0;
              *v26 = v30;
              v23 = *buf;
              v25 = v70;
              if (*buf)
              {
                goto LABEL_41;
              }
            }

            v59 = v69;
            if (v67)
            {
              AUEventSchedule::dispatchV2SetParamEvents(*(v13 + 56), v67, v14 == 5);
            }

            *(v13 + 64) = v58;
            *(v13 + 72) = pthread_self();
            *(v13 + 80) = 1;
            v57 = v9;
            if (*(v9 + 4104) == 2)
            {
              if (*(v13 + 32))
              {
                v31 = *(v2 + 144);
                v32 = *(v31 + 4312);
                v33 = *(v2 + 16) + *(v9 + 4120);
                *(v31 + 4316 + 4 * v33) = 0;
                audioipc::SharedAudioBuffers::mutableBufferList((v2 + 168), v33, v32);
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ZN20AUOOPRenderingServer8AURenderER24AUOOPRenderingServerUserjP13AURenderEvent_block_invoke;
                *&buf[24] = &__block_descriptor_48_e106_i44__0_I8r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16I24q28__AudioBufferList_I_1_AudioBuffer_II_v___36l;
                *&buf[32] = v2;
                *&buf[40] = v31 + 4316;
                v34 = _Block_copy(buf);
                v35 = (*(*(v13 + 32) + 16))();
              }

              else
              {
                v35 = -4;
              }

              goto LABEL_88;
            }

            v56 = v7;
            v36 = *(v2 + 144);
            v37 = *(v36 + 4312);
            *(*(v2 + 152) + 4) = 0;
            *(*(v2 + 160) + 4) = 0;
            if (v14 == 5)
            {
              [*(v13 + 16) deliverV2Parameters:v59];
            }

            else if (*(v2 + 20) >= 1)
            {
              v38 = 0;
              v35 = 0;
              v39 = v36 + 4168;
              do
              {
                v40 = v38;
                if ((*(v13 + 40) & 1) == 0)
                {
                  v40 = *(v2 + 16) + v38;
                }

                v41 = *audioipc::SharedAudioBuffers::mutableBufferList((v2 + 168), v40, v37);
                v42 = *(v13 + 32);
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ZN20AUOOPRenderingServer9AUProcessER24AUOOPRenderingServerUserRbP13AURenderEventb_block_invoke;
                *&buf[24] = &__block_descriptor_48_e106_i44__0_I8r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16I24q28__AudioBufferList_I_1_AudioBuffer_II_v___36l;
                *&buf[32] = v2;
                *&buf[40] = v39;
                v43 = (*(v42 + 16))();
                *(v10 + 10) = 0;
                v44 = audioipc::SharedAudioBuffers::mutableBufferList((v2 + 168), v38, v37);
                v45 = *v44;
                v46 = **v44;
                if (v46 == *v41)
                {
                  *(v10 + 10) = 1;
                  if (v46)
                  {
                    v47 = v45 + 4;
                    v48 = v41 + 4;
                    while (*v48 == *v47)
                    {
                      v47 += 2;
                      v48 += 2;
                      if (!--v46)
                      {
                        goto LABEL_77;
                      }
                    }

                    *(v10 + 10) = 0;
                  }
                }

LABEL_77:
                if (v35)
                {
                  v49 = 1;
                }

                else
                {
                  v49 = v43 == 0;
                }

                if (!v49)
                {
                  v35 = v43;
                }

                ++v38;
              }

              while (v38 < *(v2 + 20));
              goto LABEL_87;
            }

            v35 = 0;
LABEL_87:
            v7 = v56;
LABEL_88:
            *(v57 + 4124) = v35;
            if (*(v13 + 80) == 1)
            {
              *(v13 + 80) = 0;
            }

            AUEventSchedule::postRender(*(v13 + 56), v59);
            *(v2 + 208) = 0;
            *(v2 + 216) = 0;
            goto LABEL_91;
          }
        }
      }

      *(v9 + 4124) = -1;
LABEL_91:
      if (v64 == 1 && v63)
      {
        atomic_fetch_add(v63, 0xFFFFFFFF);
      }

      goto LABEL_94;
    }

LABEL_103:
    v4 = *(v2 + 88);
  }

  atomic_store(2u, v4);
  caulk::mach::os_workgroup_managed::~os_workgroup_managed(&v73);
  if (v72 == 1)
  {
    audioipc::os_workgroup_joiner::~os_workgroup_joiner(v71);
  }

  std::unique_ptr<std::tuple<caulk::thread::attributes,AUOOPRenderingServer::AUOOPRenderingServer(int,int,int,std::vector<AudioStreamBasicDescription> const&,unsigned int,unsigned int,applesauce::xpc::dict const&,std::shared_ptr<auoop::WorkgroupMirror>)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](&v60);
  return 0;
}

void sub_18F83BC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, atomic_uint *a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int16 buf)
{
  if (a2)
  {
    if (a24 == 1 && a23)
    {
      atomic_fetch_add(a23, 0xFFFFFFFF);
    }

    AUOOPRenderingServer::renderThread(void)::WorkgroupJoiner::~WorkgroupJoiner(&buf);
    __cxa_begin_catch(exception_object);
    v32 = *kInterAppAudioScope;
    v33 = applesauce::dispatch::v1::queue::operator*(*kInterAppAudioScope);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      buf = 0;
      _os_log_fault_impl(&dword_18F5DF000, v32, OS_LOG_TYPE_FAULT, "Render thread exiting with uncaught exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x18F83BBFCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUOOPRenderingServer::prepareRealtimeMessages(uint64_t this, int a2)
{
  v2 = *(this + 144);
  v3 = *(v2 + 4);
  if (v3)
  {
    v5 = this;
    v6 = v2 + 8;
    v7 = v2 + 8 + v3;
    v9 = CADeprecated::TSingleton<AURenderEventAllocator>::instance();
    v10 = (v5 + 208);
    if (*(v5 + 216))
    {
      v11 = *(v5 + 216);
    }

    else
    {
      v11 = (v5 + 208);
    }

    while (a2)
    {
      v12 = 0;
      v13 = *(v6 + 16);
      if (v13 > 8)
      {
        if (v13 == 9)
        {
          v12 = AURenderEventAllocator::allocMIDISysEx(v9, *(v6 + 18));
          v14 = *(v6 + 18) + 21;
LABEL_16:
          memcpy(v12, v6, v14);
          v15 = 0;
LABEL_17:
          v12[17] = v15;
          goto LABEL_18;
        }

        if (v13 == 10)
        {
          v12 = XAtomicPoolAllocator::alloc((v9 + 224));
          v12[17] = 0;
          v14 = MIDI::EventList::size((v6 + 20)) + 20;
          goto LABEL_16;
        }
      }

      else
      {
        if (v13 - 1 < 2)
        {
          v12 = XAtomicPoolAllocator::alloc(v9);
          v12[17] = 0;
          v14 = 48;
          goto LABEL_16;
        }

        if (v13 == 8)
        {
          v12 = XAtomicPoolAllocator::alloc((v9 + 112));
          v12[17] = 0;
          v14 = 24;
          goto LABEL_16;
        }
      }

LABEL_18:
      if (!*v10)
      {
        *v10 = v12;
      }

      *v11 = v12;
      *v12 = 0;
      this = AURenderEventAllocator::eventSize(v6, v8);
      v6 += this;
      v11 = v12;
      if (v6 >= v7)
      {
        *(v5 + 216) = v12;
        return this;
      }
    }

    v15 = 1;
    v12 = v6;
    goto LABEL_17;
  }

  return this;
}

_BYTE *AUOOPRenderingServer::renderThread(void)::WorkgroupJoiner::~WorkgroupJoiner(_BYTE *a1)
{
  caulk::mach::os_workgroup_managed::~os_workgroup_managed((a1 + 80));
  if (a1[72] == 1)
  {
    audioipc::os_workgroup_joiner::~os_workgroup_joiner(a1);
  }

  return a1;
}

uint64_t ___ZN20AUOOPRenderingServer8AURenderER24AUOOPRenderingServerUserjP13AURenderEvent_block_invoke(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int *a6)
{
  v11 = *(a1 + 32);
  v12 = *(v11 + 144);
  v13 = v12 + 4096;
  *(v12 + 4105) = 102;
  *(v12 + 4128) = a5;
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = *(a3 + 56) & 7;
  *(v12 + 4136) = *a3;
  *(v12 + 4144) = v14;
  *(v12 + 4152) = v15;
  *(v12 + 4160) = v16;
  *(v12 + 4132) = a4;
  can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::can_send(v11 + 64, v15);
  v18 = HIDWORD(can_send);
  if (can_send & 0x100000000) != 0 && (can_send)
  {
    can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait_with_timeout(v11 + 64, 100.0);
    v18 = HIDWORD(can_send);
  }

  if (!v18 || (can_send & 1) == 0 || *(v13 + 8) != 3)
  {
    return 4294956420;
  }

  *a2 = *(*(a1 + 40) + 4 * a5);
  v19 = audioipc::SharedAudioBuffers::mutableBufferList((v11 + 168), a5, a4);
  v20 = **v19;
  v23 = *a6;
  v22 = a6 + 2;
  v21 = v23;
  if (v20 >= v23)
  {
    v20 = v21;
  }

  memcpy(v22, *v19 + 2, 16 * v20);
  return 0;
}

uint64_t ___ZN20AUOOPRenderingServer9AUProcessER24AUOOPRenderingServerUserRbP13AURenderEventb_block_invoke(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, uint64_t a5, unsigned int *a6)
{
  v6 = *(a1 + 32);
  if (*(v6 + 16) <= a5)
  {
    return 4294956419;
  }

  *a2 = *(*(a1 + 40) + 4 * a5 + 148);
  v8 = audioipc::SharedAudioBuffers::mutableBufferList((v6 + 168), a5, a4);
  v9 = **v8;
  v12 = *a6;
  v11 = a6 + 2;
  v10 = v12;
  if (v9 >= v12)
  {
    v9 = v10;
  }

  memcpy(v11, *v8 + 2, 16 * v9);
  return 0;
}

void caulk::mach::error_category::message(caulk::mach::error_category *this@<X0>, mach_error_t a2@<W1>, std::string *a3@<X8>)
{
  v5 = (*(*this + 16))(this);
  std::string::basic_string[abi:ne200100]<0>(&v11, v5);
  v6 = std::string::append(&v11, ": ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = mach_error_string(a2);
  v9 = strlen(v8);
  v10 = std::string::append(&v12, v8, v9);
  *a3 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_18F83C1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void caulk::mach::error_category::~error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x193ADF220);
}

id applesauce::xpc::dict::object_proxy::operator*(uint64_t a1)
{
  v2 = **a1;
  v3 = applesauce::dispatch::v1::queue::operator*(v2);
  v4 = xpc_dictionary_get_value(v3, *(a1 + 8));

  return v4;
}

int *ExtendedAudioBufferList_PrepareWithNumberOfBuffers(int *a1, unsigned int a2, int a3, int a4)
{
  if (a1[2] != 1094863915)
  {
    std::terminate();
  }

  if (a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  if (a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = 1;
  }

  if (v5 > *a1)
  {
    v13 = _os_log_pack_size();
    result = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v13 + 88, 16);
    if (!result)
    {
      return result;
    }

    v14 = result;
    v15 = _os_log_pack_fill((result + 10), v13, 0, &dword_18F5DF000, "ExtendedAudioBufferList_PrepareWithNumberOfBuffers(): the requested number of buffers: %d is higher than the originally specified maximum: %d.", v22, v23);
    v16 = *a1;
    *v15 = 67109376;
    *(v15 + 4) = v5;
    *(v15 + 8) = 1024;
    *(v15 + 10) = v16;
    v17 = *(gCADefaultDeferredLog + 16);
    v18 = v14;
    goto LABEL_27;
  }

  v7 = a1[5];
  if (((v5 * a4) & 0xFFFFFFFF00000000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v5 * a4) | 0x100000000;
  }

  if (!HIDWORD(v8))
  {
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_25;
  }

  if (v7 < v8)
  {
LABEL_25:
    v19 = _os_log_pack_size();
    result = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v19 + 88, 16);
    if (!result)
    {
      return result;
    }

    v20 = result;
    v21 = _os_log_pack_fill((result + 10), v19, 0, &dword_18F5DF000, "ExtendedAudioBufferList_PrepareWithNumberOfBuffers(): insufficient capacity (%d/%d)", v22, v23);
    *v21 = 67109376;
    *(v21 + 4) = v8;
    *(v21 + 8) = 1024;
    *(v21 + 10) = v7;
    v17 = *(gCADefaultDeferredLog + 16);
    v18 = v20;
LABEL_27:
    caulk::concurrent::messenger::enqueue(v17, v18);
    return 0;
  }

  v9 = *(a1 + 4);
  a1[12] = v5;
  result = a1 + 12;
  if (v5)
  {
    v11 = a1 + 16;
    v12 = v5;
    do
    {
      *v11 = v9;
      v9 += a4;
      *(v11 - 2) = v6;
      *(v11 - 1) = a4;
      v11 += 4;
      --v12;
    }

    while (v12);
  }

  else
  {
    v5 = 0;
  }

  a1[4 * v5 + 14] = 1094863915;
  return result;
}