uint64_t caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::NotifyParameterChange(AUListener *,void *,XAUParameter const&,float *)::$_0>(uint64_t *a1, int a2, caulk::pooled_semaphore_mutex *this)
{
  v4 = *a1;
  caulk::pooled_semaphore_mutex::_lock(this);
  v5 = *(this + 1);
  if (v5)
  {
    **v4 = 1;
    **(v4 + 8) |= (*(*v5 + 16))(v5, **(v4 + 16), **(v4 + 24), **(v4 + 32));
  }

  caulk::pooled_semaphore_mutex::_unlock(this);
  return 0;
}

uint64_t caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::NotifyEvent(AUListener *,void *,XAudioUnitEvent const&)::$_0>(void ***a1, int a2, caulk::pooled_semaphore_mutex *this)
{
  v4 = *a1;
  caulk::pooled_semaphore_mutex::_lock(this);
  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6 != **v4 || (v8 = *v4[1]) != 0 && *(v5 + 16) != v8)
    {
      (*(*v6 + 72))(v6);
    }
  }

  caulk::pooled_semaphore_mutex::_unlock(this);
  return 0;
}

uint64_t CA::ADMBuilder::Impl::parse_stream_format(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  if (!strcmp(__s1, "audioChannelFormatIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioPackFormatIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioTrackFormatIDRef"))
  {
    operator new();
  }

  return 1;
}

uint64_t EC3AudioFile::ParseAudioFile(EC3AudioFile *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(this + 21) == 1633889587)
  {
    v2 = 10;
  }

  else
  {
    v2 = 12;
  }

  v9 = 0;
  v8 = 0;
  std::vector<unsigned char>::vector[abi:ne200100](__p, v2);
  FPosForNextSyncWord = EC3AudioFile::GetFPosForNextSyncWord(this, &v8, &v7, *(this + 13));
  if (!FPosForNextSyncWord)
  {
    v4 = v8;
    (*(**(this + 13) + 48))(*(this + 13), 0, v8, v2, __p[0], &v9);
    *(this + 9) = v4;
    operator new();
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return FPosForNextSyncWord;
}

void sub_18F705860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  operator delete(v31);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t EC3AudioFile::GetFPosForNextSyncWord(EC3AudioFile *this, uint64_t *a2, unsigned int *a3, DataSource *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(this + 21) == 1633889587)
  {
    v8 = 10;
  }

  else
  {
    v8 = 12;
  }

  v17 = 0;
  CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v17, 0x28uLL, 1);
  v9 = v17;
  if (v17)
  {
    v10 = *a2;
LABEL_6:
    v18 = 0;
    v11 = (*(*a4 + 48))(a4, 0, v10, 40, v9, &v18);
    v12 = v18;
    if (v18 < v8)
    {
      v13 = 4294967257;
      if (!v9)
      {
        return v13;
      }

      goto LABEL_12;
    }

    v13 = v11;
    v14 = 0;
    while (1)
    {
      v15 = v14;
      EC3PacketParser::EC3PacketParser(buf, *(this + 21), &v9[v14], v12);
      if (EC3PacketParser::IsValid(buf))
      {
        break;
      }

      v14 = v15 + 1;
      v12 = v18 - 1;
      v18 = v12;
      if (v8 + v15 + 1 > v12)
      {
        v10 += v14;
        goto LABEL_6;
      }
    }

    *a3 = v23;
    *a2 = v10 + v15;
    if (v9)
    {
LABEL_12:
      free(v9);
    }
  }

  else
  {
    v13 = 1685348671;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "EC3AudioFile.cpp";
      v21 = 1024;
      v22 = 891;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  couldn't make space", buf, 0x12u);
    }
  }

  return v13;
}

void sub_18F705AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EC3AudioFile::ParseOneCycle(EC3AudioFile *this, uint64_t a2, int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(this + 161))
  {
    return 0;
  }

  v10 = *(this + 21) == 1633889587;
  *&v38[1] = 0;
  *v39 = 0;
  if (v10)
  {
    v7 = 10;
  }

  else
  {
    v7 = 12;
  }

  if (a3)
  {
    bzero(this + 200, 0x40uLL);
  }

  v3 = (*(**(this + 13) + 24))(*(this + 13), &v38[1]);
  if (!v3)
  {
    bzero(*(this + 22), *(this + 46));
    v8 = (*(**(this + 13) + 48))(*(this + 13), 0, a2, v7, *(this + 22), &v39[1]);
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v39[1] == 0;
    }

    if (v10)
    {
      v3 = v8;
      *(this + 161) = 1;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v33 = 0;
      v34 = 0;
      v37 = 0;
      memset(&v36.mFormatID, 0, 32);
      v15 = this + 200;
      while (1)
      {
        v36.mSampleRate = 0.0;
        v38[0] = 0;
        v17.n128_f64[0] = EC3StreamParser::AssessPacketHeader((*(this + 22) + 12 * v14), v7, v39, v38, &v36.mFormatID, (&v36.mSampleRate + 4), &v36, v9);
        v3 = v16;
        if (a3 && !v16)
        {
          if (v13 == *(this + 47))
          {
            *(this + 48) = LODWORD(v36.mSampleRate);
          }

          v3 = EC3StreamParser::AssessPacket(*(this + 21), (*(this + 22) + 12 * v14), v7, v14, buf, &v35);
        }

        v18 = v39[0];
        v20 = v3 == -2 && v39[0] != 0;
        if (v3 && !v20)
        {
          if (kAFSubSytemEC3)
          {
            v29 = *kAFSubSytemEC3;
            if (!*kAFSubSytemEC3)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v29 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "EC3AudioFile.cpp";
            *v41 = 1024;
            *&v41[2] = 470;
            v42 = 2048;
            v43 = this;
            v44 = 1024;
            v45 = v3;
            _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EC3AudioFile(%p): AssessPacketHeader failed, err = %d", buf, 0x22u);
          }

          goto LABEL_16;
        }

        if (v14)
        {
          if (v38[0])
          {
            v3 = 0;
            goto LABEL_65;
          }
        }

        else if ((v38[0] & 1) == 0)
        {
          goto LABEL_78;
        }

        v21 = *(this + 21);
        if (v21 == 1633889587)
        {
          *&v15[8 * v13] += v39[0];
          v34 += v18;
        }

        else
        {
          if (v14)
          {
            if (HIDWORD(v36.mSampleRate) == 1 && ++v13 >= 8)
            {
LABEL_78:
              v3 = 0xFFFFFFFFLL;
              goto LABEL_16;
            }
          }

          *&v15[8 * v13] += v39[0];
          v22 = *(this + 47);
          if (v13 == v22)
          {
            v23 = v18;
          }

          else
          {
            v23 = 0;
          }

          v25 = v33;
          v24 = v34;
          v26 = v23 + v34;
          if (v13 >= v22)
          {
            v24 = v26;
          }

          else
          {
            v25 = v18 + v33;
          }

          v33 = v25;
          v34 = v24;
        }

        v12 += v18;
        if ((*(this + 161) & 1) != 0 || v12 + a2 >= *&v38[1])
        {
          v3 = 0;
          ++v14;
          goto LABEL_64;
        }

        if (v14)
        {
          if (v14 - 71 < 0xFFFFFFB8)
          {
            goto LABEL_62;
          }
        }

        else if (v21 == 1633889587)
        {
LABEL_62:
          v3 = 0;
          ++v14;
          goto LABEL_65;
        }

        v27 = (*(**(this + 13) + 48))(*(this + 13), 0, v17);
        if (v27 || v39[1] == 0)
        {
          break;
        }

        ++v14;
      }

      v3 = v27;
      ++v14;
LABEL_64:
      *(this + 161) = 1;
LABEL_65:
      if (!v3 && v34)
      {
        v30 = a2 + v33;
        if (v30 + v34 > *&v38[1])
        {
          return 0;
        }

        *buf = v30 - *(this + 9);
        *&buf[8] = 0;
        *v41 = v34;
        AudioFileObject::AppendPacket(this, buf);
        if (v34 > (*(*this + 640))(this))
        {
          (*(*this + 656))(this, v34);
        }

        if (a3)
        {
          (*(*this + 184))(this, &v36.mFormatID);
          v32 = v36.mBytesPerPacket == 1633889587 && v14 > 1;
          *(this + 160) = v32;
          v3 = EC3AudioFile::ConstructMagicCookie(this);
        }

        else
        {
          v3 = 0;
        }

        *(this + 33) = v12 + a2;
      }
    }

    if (v3)
    {
LABEL_16:
      *(this + 161) = 1;
    }
  }

  return v3;
}

void EC3StreamParser::~EC3StreamParser(EC3StreamParser *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>>>::destroy(*(this + 2));
}

void std::__tree<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t EC3AudioFile::ConstructMagicCookie(EC3AudioFile *this)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(this + 15);
  if (v2 && *(v2 + 24) > 0)
  {
    v29 = 0;
    CompressedPacketTable::operator[](buf, v2, 0);
    v3 = *size;
    v4 = malloc_type_malloc(*size, 0x69C19EF0uLL);
    v5 = v4;
    if (v3 && !v4)
    {
      exception = __cxa_allocate_exception(8uLL);
      v24 = std::bad_alloc::bad_alloc(exception);
    }

    bzero(v4, v3);
    v6 = *(this + 13);
    v7 = *(this + 9);
    CompressedPacketTable::operator[](buf, v2, 0);
    v8 = *buf;
    CompressedPacketTable::operator[](v28, v2, 0);
    v9 = (*(*v6 + 48))(v6, 0, v8 + v7, v28[3], v5, &v29);
    if (v9)
    {
      goto LABEL_40;
    }

    free(*(this + 18));
    *(this + 18) = 0;
    *(this + 38) = 0;
    v10 = *(this + 8);
    v27 = 45;
    v28[0] = 11;
    if (v10 == 1633889587)
    {
      v11 = 11;
    }

    else
    {
      v11 = 0;
    }

    v12 = (v10 == 1700998451) | *(this + 160);
    if ((v10 == 1700998451) | *(this + 160) & 1)
    {
      v13 = v11 + 45;
    }

    else
    {
      v13 = v11;
    }

    v14 = malloc_type_malloc(v13, 0xB82AB62AuLL);
    v15 = v14;
    if (!v14 && (v10 == 1633889587) | v12 & 1)
    {
      v25 = __cxa_allocate_exception(8uLL);
      v26 = std::bad_alloc::bad_alloc(v25);
    }

    bzero(v14, v13);
    *(this + 18) = v15;
    if (v10 == 1633889587)
    {
      v16 = ConvertAC3HeaderToAC3MP4Cookie(v5, v29, v15, v28);
      v17 = v28[0];
      if (v16)
      {
        v9 = v16;
        goto LABEL_29;
      }

      v19 = v28[0];
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    if (v10 == 1700998451 || (*(this + 160) & 1) != 0)
    {
      v9 = ConvertEAC3HeaderToEAC3MP4Cookie(v5, v29, (*(this + 18) + v19), &v27);
      if (v9)
      {
LABEL_30:
        if (kAFSubSytemEC3)
        {
          v20 = *kAFSubSytemEC3;
          if (!*kAFSubSytemEC3)
          {
LABEL_38:
            free(*(this + 18));
            v21 = 0;
            *(this + 18) = 0;
            goto LABEL_39;
          }
        }

        else
        {
          v20 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "EC3AudioFile.cpp";
          *size = 1024;
          *&size[2] = 636;
          size_6 = 2048;
          v33 = this;
          v34 = 1024;
          v35 = v9;
          _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EC3AudioFile(%p): got a bad magic cookie, err = %d!", buf, 0x22u);
        }

        goto LABEL_38;
      }

LABEL_34:
      v21 = v27 + v17;
LABEL_39:
      *(this + 38) = v21;
LABEL_40:
      free(v5);
      return v9;
    }

    v9 = 0;
LABEL_29:
    v27 = 0;
    if (v9)
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (!kAFSubSytemEC3)
  {
    v18 = MEMORY[0x1E69E9C10];
LABEL_21:
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "EC3AudioFile.cpp";
      *size = 1024;
      *&size[2] = 588;
      size_6 = 2048;
      v33 = this;
      _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EC3AudioFile(%p): cannot find magic cookie, packet data not available!", buf, 0x1Cu);
    }

    return 0xFFFFFFFFLL;
  }

  v18 = *kAFSubSytemEC3;
  if (*kAFSubSytemEC3)
  {
    goto LABEL_21;
  }

  return 0xFFFFFFFFLL;
}

uint64_t EC3AudioFile::ScanForPackets(EC3AudioFile *this, uint64_t a2, DataSource *a3, char a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if ((*(this + 161) & 1) == 0)
  {
    v5 = a3;
    v6 = a2;
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
    if (a2 == -1 || v9 < a2)
    {
      FPosForNextSyncWord = (*(*v5 + 24))(v5, &v17);
      if (FPosForNextSyncWord)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "EC3AudioFile.cpp";
          v21 = 1024;
          v22 = 1220;
          v11 = MEMORY[0x1E69E9C10];
          v12 = "%25s:%-5d  GetSize failed";
LABEL_11:
          _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
        }
      }

      else
      {
        v13 = 264;
        if (!v9)
        {
          v13 = 72;
        }

        v18 = *(this + v13);
        if (v18 >= v17)
        {
LABEL_30:
          FPosForNextSyncWord = 0;
          *(this + 161) = a4;
          return FPosForNextSyncWord;
        }

        if (v6 != -1)
        {
          v14 = *(this + 15);
          if (v14)
          {
            v14 = *(v14 + 24);
          }

          v6 = v6 - v14 + 1;
        }

        while (1)
        {
          FPosForNextSyncWord = EC3AudioFile::GetFPosForNextSyncWord(this, &v18, &v16, v5);
          if (FPosForNextSyncWord)
          {
            break;
          }

          FPosForNextSyncWord = EC3AudioFile::ParseOneCycle(this, v18, 0);
          if (FPosForNextSyncWord)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              break;
            }

            *buf = 136315394;
            v20 = "EC3AudioFile.cpp";
            v21 = 1024;
            v22 = 1247;
            v11 = MEMORY[0x1E69E9C10];
            v12 = "%25s:%-5d  EC3AudioFile::ScanForPackets : ParseOneCycle failed";
            goto LABEL_11;
          }

          v18 = *(this + 33);
          if (v6 == -1)
          {
            if (*(this + 161))
            {
              return 0;
            }
          }

          else if (!--v6)
          {
            return 0;
          }
        }
      }

      if (FPosForNextSyncWord != -40)
      {
        if (FPosForNextSyncWord != -39)
        {
          return FPosForNextSyncWord;
        }

        goto LABEL_30;
      }
    }
  }

  return 0;
}

uint64_t EC3AudioFile::GetEstimatedDuration(EC3AudioFile *this, double *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 11);
  if (*(this + 161) == 1)
  {
    if (v5)
    {
      v6 = ((*(*this + 248))(this) * v5) / v4;
    }

    else
    {
      v6 = 0.0;
    }

    result = 0;
  }

  else
  {
    *a2 = 0.0;
    v7 = *(this + 13);
    v9 = 0;
    result = (*(*v7 + 24))(v7, &v9);
    if (result)
    {
      return result;
    }

    v6 = (v9 / *(*(this + 21) + 36) * v5) / v4;
  }

  *a2 = v6;
  return result;
}

uint64_t EC3AudioFile::GetLoudnessInfo(EC3AudioFile *this, CACFDictionary *a2)
{
  if (*(this + 48) < 0xFFFFFFE1)
  {
    return 0xFFFFFFFFLL;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = 257;
  CACFDictionary::AddFloat32(a2, @"dialnorm", *(this + 48));
  CACFDictionary::~CACFDictionary(&Mutable);
  return 0;
}

uint64_t EC3AudioFile::GetInfoDictionary(EC3AudioFile *this, CACFDictionary *a2)
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

double EC3AudioFile::GetChannelLayout(EC3AudioFile *this, unsigned int *a2, AudioChannelLayout *a3)
{
  if (a2)
  {
    if (*a2 >= 0x20)
    {
      result = 0.0;
      *&a3->mChannelLayoutTag = 0u;
      *&a3->mChannelDescriptions[0].mChannelFlags = 0u;
      a3->mChannelLayoutTag = *(this + 39);
    }
  }

  return result;
}

uint64_t EC3AudioFile::GetChannelLayoutSize(EC3AudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 32;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 0;
}

uint64_t EC3AudioFile::GetMagicCookieData(EC3AudioFile *this, unsigned int *a2, void *__dst)
{
  v3 = *(this + 38);
  if (*a2 < v3)
  {
    return 561211770;
  }

  result = 2003334207;
  if (__dst)
  {
    v7 = *(this + 18);
    if (v7)
    {
      memcpy(__dst, v7, v3);
      result = 0;
      *a2 = *(this + 38);
    }
  }

  return result;
}

uint64_t EC3AudioFile::GetMagicCookieDataSize(EC3AudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = *(this + 38);
  }

  return 0;
}

uint64_t EC3AudioFile::GetBitRate(EC3AudioFile *this, unsigned int *a2)
{
  if (*(this + 21) != 1633889587)
  {
    if (!a2)
    {
      return 2003334207;
    }

    v5 = *(this + 10);
    v6 = *(this + 11);
    v7 = *(this + 3);
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      result = 0;
      v12 = v5 * 8.0 * v7 / v6;
LABEL_19:
      *a2 = v12;
      return result;
    }

    v9 = (*(*this + 248))(this);
    if ((*(this + 161) & 1) == 0)
    {
      do
      {
        EC3AudioFile::ParseOneCycle(this, *(this + 33), 0);
      }

      while (*(this + 161) != 1);
    }

    v10 = *(this + *(this + 47) + 25);
    if (v6)
    {
      v11 = v9 * v6;
    }

    else
    {
      v13 = *(this + 15);
      if (!v13)
      {
        return 1886681407;
      }

      if (*(v13 + 24) != v9)
      {
        return 1685348671;
      }

      if (v9 < 1)
      {
        goto LABEL_26;
      }

      v14 = 0;
      v11 = 0;
      do
      {
        CompressedPacketTable::operator[](v15, v13, v14);
        v11 += v16;
        ++v14;
      }

      while (v9 != v14);
    }

    if (v11 && v7 != 0.0)
    {
      result = 0;
      v12 = v10 * 8.0 / (v11 / v7);
      goto LABEL_19;
    }

LABEL_26:
    result = 0;
    *a2 = 0;
    return result;
  }

  return AudioFileObject::GetBitRate(this, a2);
}

uint64_t EC3AudioFile::GetNumPackets(EC3AudioFile *this)
{
  if ((*(this + 161) & 1) == 0)
  {
    do
    {
      EC3AudioFile::ParseOneCycle(this, *(this + 33), 0);
    }

    while (*(this + 161) != 1);
  }

  v2 = *(this + 15);
  if (v2)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t EC3AudioFile::GetNumBytes(EC3AudioFile *this)
{
  v4 = 0;
  v2 = (*(**(this + 13) + 24))(*(this + 13), &v4);
  result = v4;
  if (!v2)
  {
    return v4 - *(this + 9);
  }

  return result;
}

uint64_t EC3AudioFile::GetFormatList(EC3AudioFile *this, UInt32 *ioPropertyDataSize, AudioFormatListItem *outPropertyData)
{
  v8 = *(this + 24);
  v9 = *(this + 40);
  v10 = *(this + 7);
  inSpecifier[0] = v8;
  inSpecifier[1] = v9;
  v6 = *(this + 18);
  v12 = v10;
  v13 = v6;
  v14 = *(this + 38);
  if (AudioFormatGetProperty(0x666C7374u, 0x38u, inSpecifier, ioPropertyDataSize, outPropertyData))
  {
    *&outPropertyData->mASBD.mSampleRate = v8;
    *&outPropertyData->mASBD.mBytesPerPacket = v9;
    *&outPropertyData->mASBD.mBitsPerChannel = v10;
    outPropertyData->mASBD.mFramesPerPacket = *(this + 11);
    outPropertyData->mChannelLayoutTag = *(this + 39);
    *ioPropertyDataSize = 48;
  }

  return 0;
}

uint64_t EC3AudioFile::GetFormatListInfo(EC3AudioFile *this, UInt32 *outPropertyDataSize, unsigned int *a3)
{
  v5 = *(this + 40);
  v8[0] = *(this + 24);
  v8[1] = v5;
  v6 = *(this + 18);
  v9 = *(this + 7);
  v10 = v6;
  v11 = *(this + 38);
  if (AudioFormatGetPropertyInfo(0x666C7374u, 0x38u, v8, outPropertyDataSize))
  {
    *outPropertyDataSize = 48;
    *a3 = 0;
  }

  return 0;
}

uint64_t EC3AudioFile::SetProperty(EC3AudioFile *this, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 == 1969321067)
  {
    result = 1886681407;
    if ((*(this + 100) & 2) == 0 && *(this + 21) != 1633889587)
    {
      if (a3 >= 4)
      {
        v6 = *a4;
        if (*a4 >= *(*(this + 21) + 4))
        {
          return 2003334207;
        }

        else if (v6 == *(this + 47))
        {
          return 0;
        }

        else
        {
          *(this + 161) = 0;
          AudioFileObject::DeletePacketTable(this);
          *(this + 47) = v6;
          v7 = *(this + 9);

          return EC3AudioFile::ParseOneCycle(this, v7, 1);
        }
      }

      else
      {
        return 561211770;
      }
    }
  }

  else
  {

    return AudioFileObject::SetProperty(this, a2, a3, a4);
  }

  return result;
}

uint64_t EC3AudioFile::GetProperty(EC3AudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  if (a2 > 1886090593)
  {
    if (a2 == 1886090594)
    {
      goto LABEL_5;
    }

    if (a2 != 1969321067)
    {
      if (a2 == 1886616165)
      {
LABEL_5:
        if (*a3 == 4)
        {
          if (!*(this + 10) && (*(this + 161) & 1) == 0)
          {
            result = (*(*this + 696))(this, -1, 0, 1);
            if (result)
            {
              return result;
            }
          }

          goto LABEL_23;
        }

        return 561211770;
      }

LABEL_23:

      return AudioFileObject::GetProperty(this, a2, a3, a4);
    }

    if (*(this + 21) == 1633889587)
    {
      return 1886681407;
    }

    if (*a3 < 4)
    {
      return 561211770;
    }

    result = 0;
    v18 = *(this + 47);
LABEL_34:
    *a4 = v18;
    return result;
  }

  if (a2 == 1635017588)
  {
    if (*a3 < 4)
    {
      return 561211770;
    }

    v18 = *(*(this + 21) + 4);
    if (!v18)
    {
      return 2003334207;
    }

    result = 0;
    goto LABEL_34;
  }

  if (a2 != 1718383476)
  {
    goto LABEL_23;
  }

  result = AudioFileObject::GetProperty(this, 1718383476, a3, a4);
  if (!result)
  {
    if (*a3 >= 0x30)
    {
      v9 = *(this + 11);
      v10 = *a3 / 0x30uLL;
      v11 = (v10 + 3) & 0xFFFFFFC;
      v12 = vdupq_n_s64(v10 - 1);
      v13 = xmmword_18F9016B0;
      v14 = xmmword_18F9016C0;
      v15 = a4 + 29;
      v16 = vdupq_n_s64(4uLL);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v12, v14));
        if (vuzp1_s16(v17, *v12.i8).u8[0])
        {
          *(v15 - 24) = v9;
        }

        if (vuzp1_s16(v17, *&v12).i8[2])
        {
          *(v15 - 12) = v9;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
        {
          *v15 = v9;
          v15[12] = v9;
        }

        v13 = vaddq_s64(v13, v16);
        v14 = vaddq_s64(v14, v16);
        v15 += 48;
        v11 -= 4;
      }

      while (v11);
    }

    return 0;
  }

  return result;
}

uint64_t EC3AudioFile::GetPropertyInfo(EC3AudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 1969321067)
  {
    if (*(this + 21) == 1633889587)
    {
      return 1886681407;
    }

    if (a3)
    {
      *a3 = 4;
    }

    if (a4)
    {
      result = 0;
      *a4 = 1;
      return result;
    }
  }

  else
  {
    if (a2 != 1635017588)
    {
      return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
    }

    if (a3)
    {
      *a3 = 4;
    }

    if (a4)
    {
      result = 0;
      *a4 = 0;
      return result;
    }
  }

  return 0;
}

uint64_t EC3AudioFile::WritePackets(EC3AudioFile *this, uint64_t a2, uint64_t a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v12 = (*(*this + 248))(this, a2, a3);
  v24 = 0;
  if ((a5 & 0x8000000000000000) == 0 && v12 != a5)
  {
    v13 = 1885563711;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "EC3AudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 826;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d  Invalid starting packet";
LABEL_13:
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
      return v13;
    }

    return v13;
  }

  if (!a4)
  {
    v13 = 1885563711;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "EC3AudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 827;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d  Packet Descriptions were not provided";
      goto LABEL_13;
    }

    return v13;
  }

  v16 = *(this + 15);
  if (!v16)
  {
    operator new();
  }

  if (!*(v16 + 24))
  {
    v17 = 0;
LABEL_17:
    v25.mStartOffset = v17;
    if (*a6)
    {
      v18 = 0;
      v19 = *(this + 9);
      p_mVariableFramesInPacket = &a4->mVariableFramesInPacket;
      do
      {
        v21 = *(p_mVariableFramesInPacket - 1);
        v22 = p_mVariableFramesInPacket[1];
        v25.mVariableFramesInPacket = *p_mVariableFramesInPacket;
        v25.mDataByteSize = v22;
        v13 = (*(**(this + 13) + 56))(*(this + 13), 0, v17 + v19, v22, &a7[v21], &v24);
        AudioFileObject::AppendPacket(this, &v25);
        v17 += v22;
        v25.mStartOffset = v17;
        v19 = *(this + 9);
        *(this + 33) = v19 + v17;
        ++v18;
        p_mVariableFramesInPacket += 4;
      }

      while (v18 < *a6);
    }

    else
    {
      LODWORD(v18) = 0;
      v13 = 0;
    }

    *a6 = v18;
    return v13;
  }

  if (v12 <= a5)
  {
    CompressedPacketTable::operator[](buf, v16, v12 - 1);
    v25 = *buf;
    v17 = *buf + *&buf[12];
    goto LABEL_17;
  }

  v13 = 1885563711;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "EC3AudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 840;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  Invalid starting packet";
    goto LABEL_13;
  }

  return v13;
}

uint64_t EC3AudioFile::ReadPackets(EC3AudioFile *this, unsigned int a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = *a6;
  if (v9)
  {
    if (a3)
    {
      *a3 = 0;
    }

    *a6 = 0;
    v15 = *(this + 15);
    if (v15)
    {
      v16 = *(v15 + 24);
      if (v16 >= a5)
      {
        v21 = v9 + a5;
        do
        {
          if (v16 >= v21)
          {
            break;
          }

          v22 = EC3AudioFile::ParseOneCycle(this, *(this + 33), 0);
          v23 = v22;
          v16 = *(this + 15);
          if (v16)
          {
            v16 = *(v16 + 24);
          }

          if (v22)
          {
            goto LABEL_27;
          }
        }

        while (*(this + 161) != 1);
        v23 = 0;
LABEL_27:
        if (v21 <= v16)
        {
          v24 = v9;
        }

        else
        {
          v24 = v16 - a5;
        }

        v41 = v24;
        if (v24)
        {
          if (v8)
          {
            *buf = v24;
            AudioFileObject::GetPacketDescriptions(this, a5, buf, a4);
            v25 = 0;
            LODWORD(v41) = *buf;
          }

          else
          {
            v26 = v24 + a5;
            if (a5 >= v41 + a5)
            {
              v27 = 0;
            }

            else
            {
              v27 = 0;
              v28 = a5;
              v29 = v26;
              do
              {
                CompressedPacketTable::operator[](buf, v15, v28);
                v27 += v44[0];
                ++v28;
              }

              while (v29 != v28);
            }

            v42 = v27;
            CompressedPacketTable::operator[](buf, v15, a5);
            v30 = (*(*this + 72))(this, a2, *buf, &v42, a7);
            v17 = v30;
            if (v30 != -39 && v30 != 0)
            {
              return v17;
            }

            v25 = v42;
            if (a4)
            {
              v32 = 0;
              v33 = 0;
              v34 = 1;
              v35 = v42;
              do
              {
                CompressedPacketTable::operator[](buf, v15, v32 + a5);
                if (v35 >= v44[0])
                {
                  CompressedPacketTable::operator[](buf, v15, v32 + a5);
                  v36 = v44[0];
                }

                else
                {
                  v36 = v35 & ~(v35 >> 63);
                }

                v37 = &a4[v32];
                v37->mStartOffset = v33;
                v37->mVariableFramesInPacket = 0;
                v37->mDataByteSize = v36;
                v33 += v36;
                v35 -= v36;
                v32 = v34;
              }

              while (v41 > v34++);
              v23 = 0;
              if (v17 && v17 != -39)
              {
                return v17;
              }
            }

            else
            {
              v23 = 0;
            }
          }

          if (a3)
          {
            *a3 = v25;
          }

          *a6 = v41;
          return v23;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "EC3AudioFile.cpp";
          LOWORD(v44[0]) = 1024;
          *(v44 + 2) = 709;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  EOF", buf, 0x12u);
        }

        return 4294967257;
      }

      else
      {
        v17 = 1885563711;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "EC3AudioFile.cpp";
          LOWORD(v44[0]) = 1024;
          *(v44 + 2) = 696;
          v18 = MEMORY[0x1E69E9C10];
          v19 = "%25s:%-5d  Invalid starting packet index";
LABEL_18:
          _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x12u);
        }
      }
    }

    else
    {
      v17 = 1685348671;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "EC3AudioFile.cpp";
        LOWORD(v44[0]) = 1024;
        *(v44 + 2) = 692;
        v18 = MEMORY[0x1E69E9C10];
        v19 = "%25s:%-5d  Could not get PacketTable";
        goto LABEL_18;
      }
    }
  }

  else
  {
    v17 = 2003334207;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "EC3AudioFile.cpp";
      LOWORD(v44[0]) = 1024;
      *(v44 + 2) = 683;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "%25s:%-5d  invalid num packets parameter";
      goto LABEL_18;
    }
  }

  return v17;
}

uint64_t EC3AudioFile::InitializeDataSource(EC3AudioFile *this, const AudioStreamBasicDescription *a2)
{
  if (a2->mFormatID == *(this + 21))
  {
    return 0;
  }

  else
  {
    return 1718449215;
  }
}

uint64_t EC3AudioFile::OpenFromDataSource(EC3AudioFile *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = (*(*this + 736))(this);
  if (v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "EC3AudioFile.cpp";
    v5 = 1024;
    v6 = 319;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  EC3AudioFile::ParseAudioFile failed", &v3, 0x12u);
  }

  return v1;
}

uint64_t EC3AudioFile::Create(EC3AudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(this + 21);
  if (a3->mFormatID != v4)
  {
    if (kAFSubSytemEC3)
    {
      v6 = *kAFSubSytemEC3;
      if (!*kAFSubSytemEC3)
      {
        return 1718449215;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v8, v4);
      CAX4CCString::CAX4CCString(v7, a3->mFormatID);
      *buf = 136315906;
      v10 = "EC3AudioFile.cpp";
      v11 = 1024;
      v12 = 346;
      v13 = 2080;
      v14 = v8;
      v15 = 2080;
      v16 = v7;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: cannot create file, mismatch in formatID (expected = %s, specified = %s)", buf, 0x26u);
    }

    return 1718449215;
  }

  return AudioFileObject::Create(this, a2, a3);
}

void EC3AudioFile::~EC3AudioFile(EC3AudioFile *this)
{
  EC3AudioFile::~EC3AudioFile(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0327898;
  v2 = *(this + 22);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    EC3StreamParser::~EC3StreamParser(v3);
    MEMORY[0x193ADF220]();
    *(this + 21) = 0;
  }

  v4 = *(this + 18);
  if (v4)
  {
    free(v4);
    *(this + 18) = 0;
  }

  AudioFileObject::~AudioFileObject(this);
}

void sub_18F707EF8(_Unwind_Exception *a1)
{
  AudioFileObject::~AudioFileObject(v1);
  MEMORY[0x193ADF220]();
  _Unwind_Resume(a1);
}

uint64_t EC3AudioFormat::GetHFSCodes(EC3AudioFormat *this, unsigned int *a2, void *__dst)
{
  if (*(this + 2) == 1633889587)
  {
    v3 = 1633889587;
  }

  else
  {
    v3 = 1700998451;
  }

  __src = v3;
  v4 = 4 * (*a2 > 3);
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, &__src, v4);
  }

  return 0;
}

uint64_t EC3AudioFormat::GetAvailableStreamDescriptions(EC3AudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  if ((a2 | 0x4000000) == 0x65632D33)
  {
    v10 = v4;
    v11 = v5;
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    DWORD2(v8[0]) = a2;
    if (*a3 >= 0x28)
    {
      v6 = 40;
    }

    else
    {
      v6 = 0;
    }

    *a3 = v6;
    if (__dst)
    {
      memcpy(__dst, v8, v6);
    }

    return 0;
  }

  else
  {
    *a3 = 0;
    return 1718449215;
  }
}

uint64_t EC3AudioFormat::GetAvailableFormatIDs(EC3AudioFormat *this, unsigned int *a2, void *__dst)
{
  if (*(this + 2) == 1633889587)
  {
    v3 = 1633889587;
  }

  else
  {
    v3 = 1700998451;
  }

  __src = v3;
  v4 = 4 * (*a2 > 3);
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, &__src, v4);
  }

  return 0;
}

void EC3AudioFormat::GetFileTypeName(EC3AudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  if (*(this + 2) == 1633889587)
  {
    v4 = @"AC3";
  }

  else
  {
    v4 = @"EC3";
  }

  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *EC3AudioFormat::GetMIMETypes(EC3AudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  v4 = v3 == 1633889587;
  if (v3 == 1633889587)
  {
    v5 = @"audio/ac3";
  }

  else
  {
    v5 = @"audio/eac3";
  }

  v6 = @"audio/x-eac3";
  if (v4)
  {
    v6 = @"audio/x-ac3";
  }

  values[0] = v5;
  values[1] = v6;
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

const __CFArray *EC3AudioFormat::GetUTIs(EC3AudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (*(this + 2) == 1633889587)
  {
    v3 = @"public.ac3-audio";
  }

  else
  {
    v3 = @"public.enhanced-ac3-audio";
  }

  v5[0] = v3;
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

void EC3AudioFormat::GetExtensions(EC3AudioFormat *this, const __CFArray **a2)
{
  if (*(this + 2) == 1633889587)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  std::vector<__CFString const*>::vector[abi:ne200100](values, v4);
  if (*(this + 2) == 1633889587)
  {
    *values[0] = @"ac3";
    v5 = values[0];
  }

  else
  {
    *values[0] = @"ec3";
    v5 = values[0];
    values[0][1] = @"eac3";
  }

  *a2 = CFArrayCreate(*MEMORY[0x1E695E480], v5, v4, MEMORY[0x1E695E9C0]);
  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }
}

void sub_18F7082F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<__CFString const*>::vector[abi:ne200100](void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    operator new();
  }

  return a1;
}

void sub_18F708384(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EC3AudioFormat::FileDataIsThisFormat(EC3AudioFormat *this, unsigned int a2, const void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(this + 2) == 1633889587)
  {
    v6 = 10;
  }

  else
  {
    v6 = 12;
  }

  std::vector<unsigned char>::vector[abi:ne200100](__p, v6);
  v7 = __p[0];
  if (a2 >= 0x18)
  {
    v16 = 0;
    v15 = &unk_1F033E8B8;
    v17 = a2;
    v18 = a3;
    v19 = 0;
    memcpy(__p[0], a3, v6);
    v20 = v6;
    v10 = *(this + 2);
    v23 = 0;
    v22 = 0;
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v22, 0x28uLL, 1);
    v11 = v22;
    if (v22)
    {
      v23 = 0;
      (*(v15 + 6))(&v15, 0, 0, 40, v22, &v23);
      if (v23 == 40)
      {
        if (v10 == 1633889587)
        {
          v12 = 31;
        }

        else
        {
          v12 = 29;
        }

        v13 = 40;
        v14 = v11;
        while (1)
        {
          EC3PacketParser::EC3PacketParser(buf, v10, v14, v13);
          if (EC3PacketParser::IsValid(buf))
          {
            break;
          }

          v13 = --v23;
          ++v14;
          if (!--v12)
          {
            v8 = 0;
            if (v11)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }

        v8 = 1;
        if (!v11)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v8 = 0;
      }

LABEL_23:
      free(v11);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "EC3AudioFile.cpp";
        v26 = 1024;
        v27 = 56;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  couldn't make space", buf, 0x12u);
      }

      v8 = 0;
    }

LABEL_24:
    v7 = __p[0];
    if (__p[0])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
    if (__p[0])
    {
LABEL_6:
      __p[1] = v7;
      operator delete(v7);
    }
  }

  return v8;
}

void sub_18F708610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19)
{
  if (a19)
  {
    free(a19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL EC3AudioFormat::ExtensionIsThisFormat(EC3AudioFormat *this, CFStringRef theString1)
{
  if (*(this + 2) == 1633889587)
  {
    v3 = @"ac3";
    return CFStringCompare(theString1, v3, 1uLL) == kCFCompareEqualTo;
  }

  v4 = 1;
  if (CFStringCompare(theString1, @"ec3", 1uLL))
  {
    v3 = @"eac3";
    return CFStringCompare(theString1, v3, 1uLL) == kCFCompareEqualTo;
  }

  return v4;
}

uint64_t DSPGraph::MantissaRandomizerBox::initialize(DSPGraph::MantissaRandomizerBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  if (*(this + 9) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v23, "in");
    v9 = this + 32;
    if (*(this + 55) < 0)
    {
      v9 = *v9;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v9, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = *(this + 11);
  if (*(this + 12) == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v23, "out");
    v10 = this + 32;
    if (*(this + 55) < 0)
    {
      v10 = *v10;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v10, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v5 = *(*(v3 + 120) + 28);
  if (v5 != *(*((*(*v4 + 40))(v4) + 120) + 28))
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "initialize");
    v13 = *(this + 8);
    if (*(this + 9) != v13)
    {
      v14 = (*(*v13 + 40))(v13);
      v15 = *(this + 11);
      if (*(this + 12) != v15)
      {
        v16 = *(*(v14 + 120) + 28);
        v17 = (*(*v15 + 40))(v15);
        DSPGraph::strprintf("input and output must have the same channel count, but have %u and %u", v16, *(*(v17 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v23, "out");
      v19 = this + 32;
      if (*(this + 55) < 0)
      {
        v19 = *v19;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v19, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v23, "in");
    v18 = this + 32;
    if (*(this + 55) < 0)
    {
      v18 = *v18;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v18, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v6 = *(this + 8);
  if (*(this + 9) == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v23, "in");
    v11 = this + 32;
    if (*(this + 55) < 0)
    {
      v11 = *v11;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v11, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  if (*(*((*(*v6 + 40))(v6) + 120) + 8) != 1819304813)
  {
    goto LABEL_21;
  }

  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v23, "out");
    v12 = this + 32;
    if (*(this + 55) < 0)
    {
      v12 = *v12;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v12, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v7 + 40))(v7);
  if (*(*(result + 120) + 8) != 1819304813)
  {
LABEL_21:
    std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v23, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v22, "input and output must both be time-domain");
    DSPGraph::ThrowException(1718449215, &v24, 117, &v23, &v22);
  }

  return result;
}

void sub_18F708BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::MantissaRandomizerBox::process(DSPGraph::MantissaRandomizerBox *this, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = atomic_load(this + 194);
  v8 = atomic_load(this + 772);
  if ((v8 & 1) != 0 || !v7)
  {
    v31 = *(this + 8);
    if (*(this + 9) == v31)
    {
      std::string::basic_string[abi:ne200100]<0>(v58, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v57, "in");
      v50 = this + 32;
      if (*(this + 55) < 0)
      {
        v50 = *v50;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v50, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v32 = (*(*v31 + 40))(v31, a2, a3, a4, a5, a6);
    v33 = *(this + 11);
    if (*(this + 12) == v33)
    {
      std::string::basic_string[abi:ne200100]<0>(v58, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v57, "out");
      v52 = this + 32;
      if (*(this + 55) < 0)
      {
        v52 = *v52;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v52, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v34 = *(v32 + 56);
    v35 = (*(*v33 + 40))(v33);
    DSPGraph::SimpleABL::copy((v34 + 80), (*(v35 + 56) + 80), 1);
  }

  else
  {
    v9 = a2;
    v10 = (v7 + 3) & 0xFFFFFFFC;
    v11 = xmmword_18F901740;
    v12 = 0uLL;
    v13.i64[0] = 0x100000001;
    v13.i64[1] = 0x100000001;
    v14.i64[0] = 0x400000004;
    v14.i64[1] = 0x400000004;
    do
    {
      v15 = v11;
      v16 = v12;
      v12 = vorrq_s8(v12, vshlq_u32(v13, v11));
      v11 = vaddq_s32(v11, v14);
      v10 -= 4;
    }

    while (v10);
    v17 = *(this + 11);
    if (*(this + 12) == v17)
    {
      std::string::basic_string[abi:ne200100]<0>(v58, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v57, "out");
      v51 = this + 32;
      if (*(this + 55) < 0)
      {
        v51 = *v51;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v51, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v53 = v15;
    v54 = v16;
    v55 = v12;
    a6.n128_u32[0] = v7 - 1;
    v56 = a6.n128_u64[0];
    v18 = **(*((*(*v17 + 40))(v17) + 56) + 80);
    if (v18)
    {
      v19 = 0;
      v20 = vbslq_s8(vcgtq_u32(v53, vdupq_lane_s32(v56, 0)), v54, v55);
      *v20.i8 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      v21 = v20.i32[0] | v20.i32[1];
      v22 = ~(v20.i32[0] | v20.i32[1]);
      do
      {
        v23 = *(this + 8);
        if (*(this + 9) == v23)
        {
          std::string::basic_string[abi:ne200100]<0>(v58, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(&v57, "in");
          v47 = this + 32;
          if (*(this + 55) < 0)
          {
            v47 = *v47;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v47, (*(this + 9) - *(this + 8)) >> 5, 0);
        }

        v24 = (*(*v23 + 40))(v23);
        v25 = *(this + 11);
        if (*(this + 12) == v25)
        {
          std::string::basic_string[abi:ne200100]<0>(v58, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(&v57, "out");
          v48 = this + 32;
          if (*(this + 55) < 0)
          {
            v48 = *v48;
          }

          DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v48, (*(this + 12) - *(this + 11)) >> 5, 0);
        }

        v26 = *(*(*(v24 + 56) + 80) + 16 * v19 + 16);
        v27 = (*(*v25 + 40))(v25);
        if (v9)
        {
          v28 = *(*(*(v27 + 56) + 80) + 16 * v19 + 16);
          v29 = 4 * v9;
          do
          {
            v30 = *v26++;
            LODWORD(v58[0]) = 0;
            HIDWORD(v58[0]) = v21;
            *v28++ = std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>((this + 784), v58) | v30 & v22;
            v29 -= 4;
          }

          while (v29);
        }

        ++v19;
      }

      while (v19 != v18);
    }
  }

  v36 = *(this + 8);
  if (*(this + 9) == v36)
  {
    std::string::basic_string[abi:ne200100]<0>(v58, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v57, "in");
    v49 = this + 32;
    if (*(this + 55) < 0)
    {
      v49 = *v49;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v49, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  result = (*(*v36 + 40))(v36);
  v39 = *(this + 11);
  v38 = *(this + 12);
  if (v39 != v38)
  {
    v40 = result[7];
    result = v39;
    v41 = v39;
    do
    {
      v42 = *v41;
      v41 += 4;
      v43 = *((*(v42 + 40))(result) + 56);
      v44 = *(v40 + 56);
      v45 = *(v40 + 40);
      v46 = *(v40 + 24);
      *(v43 + 8) = *(v40 + 8);
      *(v43 + 24) = v46;
      *(v43 + 40) = v45;
      *(v43 + 56) = v44;
      *(v43 + 72) = 0;
      v39 += 4;
      result = v41;
    }

    while (v41 != v38);
  }

  return result;
}

void sub_18F709298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::MantissaRandomizerBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.62656313e219;
  *a1 = xmmword_18F9017D0;
  *(a1 + 16) = 0;
  return result;
}

__n128 DSPGraph::MantissaRandomizerBox::getParameterInfo@<Q0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = -10866;
  }

  else
  {
    if (!a2)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v13.n128_u32[2] = 1102577664;
      v13.n128_u32[0] = 1;
      v14 = 3221225472;
      strlcpy(&v8, "bits to randomize", 0x34uLL);
      *(&v12 + 1) = @"bits to randomize";
      LODWORD(v14) = v14 | 0x8000000;
      v5 = v9;
      *a3 = v8;
      *(a3 + 16) = v5;
      v6 = v11;
      *(a3 + 32) = v10;
      *(a3 + 48) = v6;
      result = v13;
      *(a3 + 64) = v12;
      *(a3 + 80) = result;
      *(a3 + 96) = v14;
      *(a3 + 104) = 1;
      return result;
    }

    v4 = -10878;
  }

  *a3 = v4;
  *(a3 + 104) = 0;
  return result;
}

void sub_18F709424(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *DSPGraph::MantissaRandomizerBox::getParameterList@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v6[0] = v2;
    v6[1] = v3;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v5, v6, 1uLL);
  }

  return result;
}

float DSPGraph::MantissaRandomizerBox::getParameter(DSPGraph::MantissaRandomizerBox *this, int a2, int a3, int a4)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "");
    DSPGraph::ThrowException(-10866, &v8, 73, &v7, &v6);
  }

  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "");
    DSPGraph::ThrowException(-10877, &v8, 76, &v7, &v6);
  }

  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "");
    DSPGraph::ThrowException(-10878, &v8, 81, &v7, &v6);
  }

  return atomic_load(this + 194);
}

void sub_18F7095A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t DSPGraph::MantissaRandomizerBox::setParameter(uint64_t this, int a2, int a3, int a4, float a5)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v8, "");
    DSPGraph::ThrowException(-10866, &v10, 92, &v9, &v8);
  }

  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v8, "");
    DSPGraph::ThrowException(-10877, &v10, 95, &v9, &v8);
  }

  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v8, "");
    DSPGraph::ThrowException(-10878, &v10, 102, &v9, &v8);
  }

  v5 = llroundf(a5);
  v6 = 23;
  if (v5 < 0x17)
  {
    v6 = v5;
  }

  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  atomic_store(v7, (this + 776));
  return this;
}

void sub_18F709738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void DSPGraph::MantissaRandomizerBox::~MantissaRandomizerBox(DSPGraph::MantissaRandomizerBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AUSpatialMixerPropertyMarshaller::GetSpatialMixerMarshaller(AUSpatialMixerPropertyMarshaller *this)
{
  v1 = this;
  result = 0;
  if (v1 > 3199)
  {
    switch(v1)
    {
      case 3200:
      case 3202:
      case 3204:
      case 3206:
      case 3208:
        operator new();
      case 3201:
      case 3203:
      case 3205:
      case 3207:
      case 3209:
        operator new();
      case 3210:
      case 3211:
      case 3212:
      case 3213:
      case 3215:
      case 3216:
      case 3217:
      case 3218:
      case 3219:
      case 3220:
      case 3221:
      case 3222:
      case 3224:
      case 3225:
      case 3226:
      case 3227:
      case 3228:
      case 3229:
      case 3232:
      case 3234:
      case 3235:
      case 3239:
      case 3242:
        return result;
      case 3214:
      case 3230:
      case 3233:
      case 3236:
      case 3240:
      case 3243:
      case 3244:
        goto LABEL_20;
      case 3223:
      case 3238:
      case 3241:
LABEL_16:
        operator new();
      case 3231:
        operator new();
      case 3237:
LABEL_17:
        operator new();
      default:
        if (v1 == 4600)
        {
          goto LABEL_20;
        }

        return result;
    }
  }

  if (v1 > 3099)
  {
    switch(v1)
    {
      case 3100:
      case 3101:
      case 3103:
      case 3106:
      case 3110:
      case 3111:
      case 3113:
      case 3114:
      case 3116:
        goto LABEL_20;
      case 3102:
      case 3115:
        goto LABEL_17;
      case 3104:
      case 3105:
        operator new();
      case 3107:
        operator new();
      case 3108:
        goto LABEL_16;
      case 3109:
      case 3112:
        operator new();
      default:
        return result;
    }
  }

  if ((v1 - 3000) <= 0xD)
  {
    if (((1 << (v1 + 72)) & 0x2029) != 0)
    {
      goto LABEL_20;
    }

    if (v1 == 3010)
    {
      operator new();
    }
  }

  if (v1 <= 0x25 && ((1 << v1) & 0x2004000400) != 0 || v1 == 1005)
  {
LABEL_20:
    operator new();
  }

  return result;
}

uint64_t TSimpleMarshaller<MixerDistanceParams>::DeserializeT(int a1, CADeserializer *this, char *a3)
{
  CADeserializer::Read(this, a3);
  CADeserializer::Read(this, a3 + 4);

  return CADeserializer::Read(this, a3 + 8);
}

uint64_t TSimpleMarshaller<MixerDistanceParams>::SerializeT(int a1, CASerializer *this, char *a3)
{
  CASerializer::Write(this, a3);
  CASerializer::Write(this, a3 + 4);

  return CASerializer::Write(this, a3 + 8);
}

uint64_t TMarshaller<MixerDistanceParams>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if (*a4 == 12 || *a4 == 0)
  {
    Marshaller::CheckDest(a1, a3, a4, 0xCuLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v8 = *(a2 + 32) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL TMarshaller<MixerDistanceParams>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 12)
  {
    (*(*a1 + 32))(a1, a2, a3);
  }

  return a4 == 12;
}

void TSimpleMarshaller<MixerDistanceParams>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t MarshalSpatialMixerImpulseResponses::Deserialize(MarshalSpatialMixerImpulseResponses *this, CADeserializer *a2, void **a3, unsigned int *a4)
{
  v22 = 0;
  CADeserializer::Read(a2, &v22 + 4);
  CADeserializer::Read(a2, &v22);
  if (a2->var4)
  {
    return 0;
  }

  Marshaller::CheckDest(this, a3, a4, 8 * (v22 * WORD2(v22) + WORD2(v22)) + 40);
  v9 = v22;
  v8 = WORD2(v22);
  v10 = *a3;
  v10[2] = HIDWORD(v22);
  v10[3] = v9;
  CADeserializer::Read(a2, v10 + 4);
  CADeserializer::Read(a2, v10 + 8);
  if (a2->var4)
  {
    return 0;
  }

  if (*(v10 + 4))
  {
    Ptr = CADeserializer::GetAndAdvanceReadPtr(a2);
    var4 = a2->var4;
    *(v10 + 3) = Ptr;
    if (var4)
    {
      return 0;
    }
  }

  else
  {
    *(v10 + 3) = 0;
  }

  v14 = *a3 + 40;
  v15 = v8;
  if (v8)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = 0;
    v18 = &v16[(8 * v15)];
    do
    {
      if (v9)
      {
        v19 = v18;
        v20 = v9;
        do
        {
          if (*(v10 + 2))
          {
            v21 = CADeserializer::GetAndAdvanceReadPtr(a2);
            if (a2->var4)
            {
              return 0;
            }
          }

          else
          {
            v21 = 0;
          }

          *v19++ = v21;
          --v20;
        }

        while (v20);
      }

      *&v16[8 * v17] = &v16[8 * v17 + (8 * v15)];
      ++v17;
      ++v18;
    }

    while (v17 != v15);
  }

  *v10 = v16;
  return 1;
}

BOOL MarshalSpatialMixerImpulseResponses::Serialize(MarshalSpatialMixerImpulseResponses *this, CASerializer *a2, char *a3, unsigned int a4)
{
  if (a4 >= 0x28)
  {
    CASerializer::Write(a2, a3 + 8);
    CASerializer::Write(a2, a3 + 12);
    v15 = *(a3 + 2);
    CASerializer::Write(a2, &v15);
    v15 = *(a3 + 4);
    CASerializer::Write(a2, &v15);
    CASerializer::Write(a2, *(a3 + 3));
    v7 = *(a3 + 4);
    if (*(a3 + 4))
    {
      v8 = 0;
      v9 = *(a3 + 6);
      do
      {
        if (v9)
        {
          v10 = 0;
          v11 = *(a3 + 2);
          do
          {
            if (v11)
            {
              v12 = 0;
              for (i = 0; i < v11; ++i)
              {
                CASerializer::Write(a2, (*(*(*a3 + 8 * v8) + 8 * v10) + v12));
                v11 = *(a3 + 2);
                v12 += 4;
              }
            }

            ++v10;
          }

          while (v10 != v9);
        }

        ++v8;
      }

      while (v8 != v7);
    }
  }

  return a4 > 0x27;
}

void MarshalSpatialMixerImpulseResponses::~MarshalSpatialMixerImpulseResponses(MarshalSpatialMixerImpulseResponses *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<unsigned int>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFFC);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<unsigned int>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t RawDataMarshaller::Deserialize(RawDataMarshaller *this, CADeserializer *a2, void **a3, unsigned int *a4)
{
  Marshaller::CheckDest(this, a3, a4, a2->var3 - a2->var2);
  v7 = *a3;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(a2);
  memcpy(v7, Ptr, *a4);
  return 1;
}

void RawDataMarshaller::~RawDataMarshaller(RawDataMarshaller *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

uint64_t TMarshaller<__CFURL const*>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 8) == 8)
  {
    Marshaller::CheckDest(a1, a3, a4, 8uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<__CFURL const*>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1, a2, a3);
  }

  return a4 == 8;
}

void TSimpleMarshaller<__CFURL const*>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<char>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<char>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<float>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFFC);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<float>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TMarshaller<float>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 4) == 4)
  {
    Marshaller::CheckDest(a1, a3, a4, 4uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<float>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 4)
  {
    (*(*a1 + 32))(a1, a2, a3);
  }

  return a4 == 4;
}

void TSimpleMarshaller<float>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

void MarshalCFPropertyList::DeserializeT(MarshalCFPropertyList *this, CADeserializer *a2, const void **a3)
{
  Plist = CADeserializer::ReadPlist(a2);
  *a3 = Plist;
  if (Plist)
  {
    v6 = Plist;
    v8 = *(this + 2);
    v7 = *(this + 3);
    if (v8 >= v7)
    {
      v10 = *(this + 1);
      v11 = (v8 - v10) >> 3;
      if ((v11 + 1) >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = v7 - v10;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v14);
      }

      v15 = (8 * v11);
      *v15 = v6;
      v9 = 8 * v11 + 8;
      v16 = *(this + 1);
      v17 = *(this + 2) - v16;
      v18 = v15 - v17;
      memcpy(v15 - v17, v16, v17);
      v19 = *(this + 1);
      *(this + 1) = v18;
      *(this + 2) = v9;
      *(this + 3) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v8 = Plist;
      v9 = (v8 + 1);
    }

    *(this + 2) = v9;
  }
}

void MarshalCFPropertyList::SerializeT(MarshalCFPropertyList *this, CASerializer *a2, const void **a3)
{
  CASerializer::WritePlist(a2, *a3);
  v5 = *a3;
  if (*a3 && *(this + 32) == 1)
  {

    CFRelease(v5);
  }
}

uint64_t TMarshaller<void const*>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 8) == 8)
  {
    Marshaller::CheckDest(a1, a3, a4, 8uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<void const*>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1, a2, a3);
  }

  return a4 == 8;
}

void MarshalCFPropertyList::~MarshalCFPropertyList(MarshalCFPropertyList *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

FILE *CACopyObjectDescription(uint64_t a1, void *a2)
{
  v4 = BaseOpaqueObject::ResolveOpaqueRef();
  if (v4)
  {
    a1 = v4;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v7 = funopen(&v7, 0, CAMemoryStream::Write, 0, 0);
  (*(*a1 + 16))(a1, v7);
  v5 = CAMemoryStream::cstr(&v7);
  if (a2)
  {
    *a2 = v9;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  fclose(v7);
  free(v8);
  return v5;
}

void sub_18F70A9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, FILE *a9, void *a10)
{
  fclose(a9);
  free(a10);
  _Unwind_Resume(a1);
}

void CAShowFile(void *inObject, FILE *inFile)
{
  v3 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v3)
  {
    v3 = inObject;
  }

  v4 = *(*v3 + 16);

  v4();
}

void CAShow(void *inObject)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v2 = funopen(&v6, 0, CAMemoryStream::Write, 0, 0);
  v6 = v2;
  v3 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v3)
  {
    v3 = inObject;
  }

  (*(*v3 + 16))(v3, v2);
  v4 = CADefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CAMemoryStream::cstr(&v6);
    *buf = 136315138;
    v11 = v5;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fclose(v6);
  free(v7);
}

void sub_18F70AB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, FILE *a9, void *a10)
{
  fclose(a9);
  free(a10);
  _Unwind_Resume(a1);
}

uint64_t _ReportRPCTimeout(char *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (iEjr08d2 >= 1)
  {
    goto LABEL_12;
  }

  special_port[0] = 0;
  sp = 0;
  task_get_special_port(*MEMORY[0x1E69E9A60], 4, special_port);
  result = bootstrap_look_up(special_port[0], "com.apple.coremedia.admin", &sp);
  if (!result)
  {
    v5 = CADefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = a2;
      _os_log_error_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, "%s posting message to kill audiomxd (%d)", buf, 0x12u);
    }

    v6 = sp;
    *&v19 = 0;
    *(&v19 + 1) = &v19;
    v20 = 0x2020000000;
    v7 = getFigRPCTimeout_KillAndForceCrashReportSymbolLoc(void)::ptr;
    v21 = getFigRPCTimeout_KillAndForceCrashReportSymbolLoc(void)::ptr;
    if (!getFigRPCTimeout_KillAndForceCrashReportSymbolLoc(void)::ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL49getFigRPCTimeout_KillAndForceCrashReportSymbolLocv_block_invoke;
      v25 = &unk_1E72C2B68;
      v26 = &v19;
      ___ZL49getFigRPCTimeout_KillAndForceCrashReportSymbolLocv_block_invoke(buf);
      v7 = *(*(&v19 + 1) + 24);
    }

    _Block_object_dispose(&v19, 8);
    if (!v7)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"kern_return_t local_FigRPCTimeout_KillAndForceCrashReport(mach_port_t, natural_t, rpc_cstring_t)"}];
      [v8 handleFailureInFunction:v9 file:@"RPCTimeout.mm" lineNumber:33 description:{@"%s", dlerror()}];

      while (1)
      {
        __break(1u);
LABEL_12:
        LogACQEvents();
        snprintf(buf, 0x100uLL, "%s: RPC timeout within audiomxd. Apparently deadlocked. Writing a stackshot and exiting.", a1);
        v10 = CADefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          LODWORD(v19) = 136315138;
          *(&v19 + 4) = buf;
          _os_log_fault_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_FAULT, "%s", &v19, 0xCu);
        }

        *special_port = 0;
        v16 = special_port;
        v17 = 0x2020000000;
        v18 = 0;
        *&v19 = 0;
        *(&v19 + 1) = &v19;
        v20 = 0x3032000000;
        v21 = __Block_byref_object_copy__2583;
        v22 = __Block_byref_object_dispose__2584;
        v23 = dispatch_semaphore_create(0);
        a1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:buf encoding:134217984];
        v11 = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___Z17_ReportRPCTimeoutPKci_block_invoke;
        block[3] = &unk_1E72BAAF0;
        block[5] = special_port;
        block[4] = a1;
        block[6] = &v19;
        dispatch_async(v11, block);

        v12 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(*(*(&v19 + 1) + 40), v12);
        if (*(v16 + 24) == 1)
        {
          exit(1);
        }

        abort_with_reason();
      }
    }

    return v7(v6, a2, a1);
  }

  return result;
}

void sub_18F70AFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);

  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2583(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t ___Z17_ReportRPCTimeoutPKci_block_invoke(void *a1)
{
  getpid();
  *(*(a1[5] + 8) + 24) = WriteStackshotReportWithPID();
  v2 = *(*(a1[6] + 8) + 40);

  return dispatch_semaphore_signal(v2);
}

void *___ZL49getFigRPCTimeout_KillAndForceCrashReportSymbolLocv_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreMediaLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL20CoreMediaLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E72BAB10;
    v7 = 0;
    CoreMediaLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreMediaLibraryCore(char **)::frameworkLibrary;
  if (!CoreMediaLibraryCore(char **)::frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreMediaLibrary()"];
    [a1 handleFailureInFunction:v2 file:@"RPCTimeout.mm" lineNumber:30 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "FigRPCTimeout_KillAndForceCrashReport");
  *(*(a1[4] + 8) + 24) = result;
  getFigRPCTimeout_KillAndForceCrashReportSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t ___ZL20CoreMediaLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreMediaLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

uint64_t _CheckRPCError(char *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v6 = CADefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = a1;
      v12 = 1024;
      v13 = 0;
      _os_log_error_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, "%s is passing a serverPID of %d to CheckRPCError!", &v10, 0x12u);
    }
  }

  if (a3 == 268451843 || a3 == 268435460)
  {
    _ReportRPCTimeout(a1, a2);
  }

  else
  {
    v8 = (a3 & 0x3E00) != 0;
    if ((a3 & 0xFFFFC1FF) != 0)
    {
      v8 = 0;
    }

    if (WORD1(a3) == 4096 || v8)
    {
      v9 = CADefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = a1;
        v12 = 1024;
        v13 = a3;
        _os_log_error_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, "CheckRPCError: %s returned server mach error 0x%x!", &v10, 0x12u);
      }
    }
  }

  return a3;
}

uint64_t CA::ADMBuilder::Impl::parse_loudness_metadata(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  if (!strcmp(__s1, "integratedLoudness"))
  {
    operator new();
  }

  if (!strcmp(__s1, "loudnessRange"))
  {
    operator new();
  }

  if (!strcmp(__s1, "maxTruePeak"))
  {
    operator new();
  }

  if (!strcmp(__s1, "maxMomentary"))
  {
    operator new();
  }

  if (!strcmp(__s1, "maxShortTerm"))
  {
    operator new();
  }

  if (!strcmp(__s1, "dialogueLoudness"))
  {
    operator new();
  }

  return 1;
}

uint64_t MP4BoxParser_HandlerReference::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1751411826)
    {
      v3 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v3 + 4, 4uLL, this + 60);
      if (!result)
      {
        *(this + 15) = bswap32(*(this + 15));
      }
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

void MP4BoxParser_HandlerReference::~MP4BoxParser_HandlerReference(MP4BoxParser_HandlerReference *this)
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

void HapticSharedMemoryWriter::~HapticSharedMemoryWriter(xpc_object_t *this)
{
  SharableMemoryBlock::~SharableMemoryBlock(this);

  JUMPOUT(0x193ADF220);
}

uint64_t HapticSharedMemoryWriter::reserveForWrite(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((a2 & 3) != 0)
  {
    __assert_rtn("reserveForWrite", "HapticSharedMemoryWriter.h", 25, "(inSize & 3) == 0");
  }

  v5 = *(a1 + 24);
  if (!v5)
  {
    if (kHSHMScope)
    {
      v10 = *kHSHMScope;
      if (!v10)
      {
LABEL_23:
        result = 0;
        *a4 = 0;
        return result;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v34 = 136315650;
      v35 = "HapticSharedMemoryWriter.h";
      v36 = 1024;
      v37 = 29;
      v38 = 2080;
      v39 = "reserveForWrite";
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot write to shared ring buffer (already deallocated?)!", &v34, 0x1Cu);
    }

    goto LABEL_23;
  }

  v7 = *v5;
  *a4 = *v5;
  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    if (kHSHMScope)
    {
      result = *kHSHMScope;
      v9 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v19 = *a4;
      v34 = 136316162;
      v35 = "HapticSharedMemoryWriter.h";
      v37 = 39;
      v38 = 2080;
      v36 = 1024;
      v39 = "reserveForWrite";
      v40 = 1024;
      v41 = a2;
      v42 = 1024;
      v43 = v19;
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: WARNING: Command block size (%u) is larger than entire ring buffer (%u)", &v34, 0x28u);
    }

    return 0;
  }

  if (a2 < v7 >> 1)
  {
    for (i = -5; ; ++i)
    {
      v13 = v5[1];
      v14 = v13 - v5[2];
      if (v14 < 0)
      {
        v15 = ~v14;
      }

      else
      {
        v15 = *v5 + ~v14;
      }

      if (v15 >= a2)
      {
        goto LABEL_44;
      }

      if (!i)
      {
        break;
      }

      usleep(0x1388u);
    }

    if (v14 < 0)
    {
      v20 = ~v14;
    }

    else
    {
      v20 = *v5 + ~v14;
    }

    if (v20 >= a2)
    {
LABEL_44:
      v27 = *v5;
      v26 = v5 + 4;
      v25 = v27;
      if ((v13 + a2) >= v27)
      {
        v28 = v25;
      }

      else
      {
        v28 = 0;
      }

      v29 = v13 + a2 - v28;
      *(a3 + 28) = v29;
      *a3 = v26 + v13;
      if (v29 <= v13)
      {
        v30 = v25 - v13;
        *(a3 + 8) = v30;
        v31 = a2 >= v30;
        v32 = a2 - v30;
        if (v32 != 0 && v31)
        {
          *(a3 + 16) = v26;
          *(a3 + 24) = v32;
        }

        return 1;
      }

      else
      {
        *(a3 + 8) = a2;
        *(a3 + 16) = 0;
        result = 1;
        *(a3 + 24) = 0;
      }

      return result;
    }

    if (kHSHMScope)
    {
      v17 = *kHSHMScope;
      if (!v17)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315650;
      v35 = "HapticSharedMemoryWriter.h";
      v36 = 1024;
      v37 = 50;
      v38 = 2080;
      v39 = "reserveForWrite";
      v22 = "%25s:%-5d %s: WARNING: Unable to wait for enough write space in ring buffer";
      v23 = v17;
      v24 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (!kHSHMScope)
  {
    v17 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
LABEL_34:
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v34 = 136315650;
      v35 = "HapticSharedMemoryWriter.h";
      v36 = 1024;
      v37 = 55;
      v38 = 2080;
      v39 = "reserveForWrite";
      v22 = "%25s:%-5d %s: WARNING: Not enough space in ring buffer";
      v23 = v17;
      v24 = OS_LOG_TYPE_DEBUG;
LABEL_36:
      _os_log_impl(&dword_18F5DF000, v23, v24, v22, &v34, 0x1Cu);
    }

LABEL_37:

    return 0;
  }

  result = *kHSHMScope;
  v17 = result;
  if (result)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t writeCommandToReserved(int a1, uint64_t a2, char *__src)
{
  LODWORD(v5) = *__src;
  v6 = *(a2 + 8);
  if (v6 >= v5)
  {
    v7 = *__src;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    memcpy(*a2, __src, v7);
    LODWORD(v5) = v5 - v7;
    *(a2 + 8) -= v7;
    *a2 += v7;
  }

  if (!v5)
  {
    return 1;
  }

  v8 = *(a2 + 24);
  if (!v8)
  {
    return 0;
  }

  v9 = v5 > v8;
  if (v5 >= v8)
  {
    v5 = v8;
  }

  else
  {
    v5 = v5;
  }

  v10 = &__src[v7];
  v11 = !v9;
  memcpy(*(a2 + 16), v10, v5);
  *(a2 + 24) -= v5;
  *(a2 + 16) += v5;
  return v11;
}

uint64_t writeCommand(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *a2;
  __dst = 0;
  LODWORD(__n) = 0;
  v14 = 0;
  v15 = 0;
  v11 = 0;
  v5 = HapticSharedMemoryWriter::reserveForWrite(a1, v4, &__dst, &v11);
  if (v5)
  {
    if (!__dst)
    {
      __assert_rtn("write", "HapticSharedMemoryWriter.h", 134, "res.address0 != NULL");
    }

    v6 = __n;
    if (!__n)
    {
      __assert_rtn("write", "HapticSharedMemoryWriter.h", 135, "res.size0 != 0");
    }

    memcpy(__dst, a2, __n);
    v7 = v15;
    if (v14 && v15)
    {
      memcpy(v14, a2 + v6, v15);
      v7 = 0;
      LODWORD(v15) = 0;
    }

    LODWORD(__n) = 0;
    v8 = *(a1 + 24);
    v9 = HIDWORD(v15) - v7;
    if (HIDWORD(v15) - v7 < 0)
    {
      v9 += *v8;
    }

    v8[1] = v9;
    __dmb(0xBu);
  }

  return v5;
}

uint64_t updateReservedWriteIndex(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 24);
  v3 = a2[7] - (a2[2] + a2[6]);
  if (v3 < 0)
  {
    v3 += *v2;
  }

  v2[1] = v3;
  __dmb(0xBu);
  return result;
}

uint64_t destroyHapticCommandWriter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    (*(*result + 16))(result);
    v2 = *(*v1 + 8);

    return v2(v1);
  }

  return result;
}

void sub_18F70C598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PropertyMarshaller::~PropertyMarshaller(va);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

uint64_t InternalAudioUnitPropertyMarshaller::GetMarshaller(InternalAudioUnitPropertyMarshaller *this, AudioUnitPropertyMarshaller *a2)
{
  result = AudioUnitPropertyMarshaller::CreateMarshaller(a2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void InternalAudioUnitPropertyMarshaller::~InternalAudioUnitPropertyMarshaller(InternalAudioUnitPropertyMarshaller *this)
{
  PropertyMarshaller::~PropertyMarshaller(this);

  JUMPOUT(0x193ADF220);
}

void sub_18F70C9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void sub_18F70CEF0(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v1, 0xE1C40AACF12E9);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void TestAUProcessingBlock::~TestAUProcessingBlock(TestAUProcessingBlock *this)
{
  AUProcessingBlock_AU_Instantiating::~AUProcessingBlock_AU_Instantiating(this);

  JUMPOUT(0x193ADF220);
}

void sub_18F70D908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, const void *a25)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a25);
  applesauce::CF::TypeRef::~TypeRef(&a24);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void sub_18F70EA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL AUProperty::Swizzler::addGetter(SEL name, objc_class *types, Class cls, void (*a4)(void))
{
  result = class_addMethod(cls, name, a4, types);
  if (!result)
  {
    __assert_rtn("addGetter", "AUAudioUnitProperties.mm", 580, "class_addMethod(cls, mGetSelector, imp, mGetterTypes)");
  }

  return result;
}

BOOL AUProperty::Swizzler::addSetter(SEL name, objc_class *types, Class cls, void (*a4)(void))
{
  result = class_addMethod(cls, name, a4, types);
  if (!result)
  {
    __assert_rtn("addSetter", "AUAudioUnitProperties.mm", 585, "class_addMethod(cls, mSetSelector, imp, mSetterTypes)");
  }

  return result;
}

IMP AUProperty::Swizzler::replaceGetter(SEL name, objc_class *types, Class cls, void (*a4)(void))
{
  result = class_replaceMethod(cls, name, a4, types);
  if (!result)
  {
    __assert_rtn("replaceGetter", "AUAudioUnitProperties.mm", 590, "class_replaceMethod(cls, mGetSelector, imp, mGetterTypes)");
  }

  return result;
}

IMP AUProperty::Swizzler::replaceSetter(SEL name, objc_class *types, Class cls, void (*a4)(void))
{
  result = class_replaceMethod(cls, name, a4, types);
  if (!result)
  {
    __assert_rtn("replaceSetter", "AUAudioUnitProperties.mm", 595, "class_replaceMethod(cls, mSetSelector, imp, mSetterTypes)");
  }

  return result;
}

uint64_t getPropertySizeXPC(AUAudioUnit *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = [AUAudioUnitProperty propertyWithKey:@"_v2fwd_PropertySize" v2propID:a2 scope:a3 element:a4];
  v14 = 0;
  v9 = [(AUAudioUnit *)v7 _valueForProperty:v8 error:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = [v10 code];
    v12 = 0;
  }

  else
  {
    v11 = [v9 unsignedIntValue];
    v12 = 0x100000000;
  }

  return v12 | v11;
}

void AUAudioUnitProperties::AUAudioUnitProperties(AUAudioUnitProperties *this)
{
  v4 = *MEMORY[0x1E69E9840];
  *this = &unk_1F0328E60;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCPtrKeyCallbacks, &kCPtrValueCallbacks);
  *this = &unk_1F0328E80;
  *(this + 1) = Mutable;
  *(this + 2) = &unk_1F0328E60;
  v3 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], &kCPtrValueCallbacks);
  *(this + 2) = &unk_1F0328EA0;
  *(this + 3) = v3;
  operator new();
}

void sub_18F712E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, TCFDictionaryBase *a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  TCFDictionaryBase::~TCFDictionaryBase(a10);
  TCFDictionaryBase::~TCFDictionaryBase(v20);
  _Unwind_Resume(a1);
}

void sub_18F713020(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TCFDictionaryBase::~TCFDictionaryBase(TCFDictionaryBase *this)
{
  *this = &unk_1F0328E60;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  TCFDictionaryBase::~TCFDictionaryBase(this);

  JUMPOUT(0x193ADF220);
}

BOOL TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeSetter_Bus);
}

void TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x33u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x33u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}

BOOL TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeSetter_Global);
}

void TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x33u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<BOOL,unsigned int,51u,ScalarConverter,3u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x33u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

BOOL TV3Property<BOOL,51u,3u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,51u,3u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,51u,3u>::marshalSetter_Bus);
}

void TV3Property<BOOL,51u,3u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x33);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F71355C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t CADeprecated::TSingleton<AUAudioUnitProperties>::instance()
{
  if (atomic_load_explicit(&CADeprecated::TSingleton<AUAudioUnitProperties>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&CADeprecated::TSingleton<AUAudioUnitProperties>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<AUAudioUnitProperties>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<AUAudioUnitProperties>::sInstance;
}

void *TV3Property<BOOL,51u,3u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x33);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

BOOL TV3Property<BOOL,51u,3u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,51u,3u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,51u,3u>::marshalSetter_Global);
}

void TV3Property<BOOL,51u,3u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x33);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F71388C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<BOOL,51u,3u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x33);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<BOOL,51u,3u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,51u,3u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<BOOL,51u,3u>::stubSetter);
}

char *TV3Property<BOOL,51u,3u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "B");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

objc_selector *AUAudioUnitProperties::accessorsForProperty(Class cls, objc_class *name, objc_selector **a3, objc_selector **a4, objc_selector **a5)
{
  v8 = cls;
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  Property = class_getProperty(cls, name);
  if (Property)
  {
    result = property_getAttributes(Property);
    v11 = result;
    do
    {
      v12 = *v11;
      if (!*v11)
      {
        break;
      }

      result = strchr(v11, 44);
      v13 = result;
      if (!result)
      {
        result = strlen(v11);
        v13 = (result + v11);
      }

      if (v13 + ~v11 >= 0x7F)
      {
        v14 = 127;
      }

      else
      {
        v14 = v13 + ~v11;
      }

      if (!a3 || (v15 = a3, v12 != 71))
      {
        if (!a4)
        {
          continue;
        }

        v15 = a4;
        if (v12 != 83)
        {
          continue;
        }
      }

      memcpy(__dst, v11 + 1, v14);
      __dst[v14] = 0;
      result = sel_registerName(__dst);
      *v15 = result;
      v11 = v13 + 1;
    }

    while (*v13);
    if (a3 && !*a3)
    {
      result = sel_registerName(name);
      *a3 = result;
    }

    if (a4)
    {
      if (!*a4)
      {
        snprintf(__dst, 0x80uLL, "set%s:", name);
        LOBYTE(v17) = __toupper(v17);
        result = sel_registerName(__dst);
        *a4 = result;
      }
    }
  }

  else
  {
    do
    {
      result = class_getSuperclass(v8);
      v8 = result;
    }

    while (result);
  }

  return result;
}

void *std::__function::__value_func<int ()(objc_object *,void *,unsigned int &)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_18F713ED4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<int ()(objc_object *,void *,unsigned int &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__value_func<objc_object * ()(void const*,unsigned int,int &)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_18F7141B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<objc_object * ()(void const*,unsigned int,int &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__value_func<objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_18F71449C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__value_func<int ()(OpaqueAudioComponentInstance *,objc_object *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_18F714780(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<int ()(OpaqueAudioComponentInstance *,objc_object *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x33u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x33u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,51u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<double,double,40u,ScalarConverter,3u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeSetter_Bus);
}

void TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeSetter_Bus(void *a1, double a2)
{
  v3 = a1;
  inData = a2;
  WeakRetained = objc_loadWeakRetained(v3 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x28u, *(v3 + 32), *(v3 + 33), &inData, 8u);
}

double TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0.0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x28u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<double,double,40u,ScalarConverter,3u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeSetter_Global);
}

void TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeSetter_Global(void *a1, const char *a2, double a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x28u, 0, 0, &inData, 8u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

double TAUProperty<double,double,40u,ScalarConverter,3u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0.0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x28u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<double,40u,3u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<double,40u,3u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<double,40u,3u>::marshalSetter_Bus);
}

void TV3Property<double,40u,3u>::marshalSetter_Bus(void *a1, double a2)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v3 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v3 + 8), 0x28);
  if (Value)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(v9 + 14);
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v9 + 32) element:*(v9 + 33)];
    [WeakRetained _setValue:v5 forProperty:v8 error:0];
  }
}

void sub_18F715120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

double TV3Property<double,40u,3u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x28);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

BOOL TV3Property<double,40u,3u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<double,40u,3u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<double,40u,3u>::marshalSetter_Global);
}

void TV3Property<double,40u,3u>::marshalSetter_Global(void *a1, double a2)
{
  v8 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v3 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v3 + 8), 0x28);
  if (Value)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    v6 = v5;
    v7 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v8 _setValue:v5 forProperty:v7 error:0];
  }
}

void sub_18F715390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

double TV3Property<double,40u,3u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x28);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

void sub_18F715470(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

IMP TV3Property<double,40u,3u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<double,40u,3u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<double,40u,3u>::stubSetter);
}

char *TV3Property<double,40u,3u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "d");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "d");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  [*a3 doubleValue];
  inData = v4;
  return AudioUnitSetProperty(v3, 0x28u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0.0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x28u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, double **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<double,double,40u,ScalarConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      [v6 doubleValue];
      *v5 = v9;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::v2BridgeGetter_Common(OpaqueAudioComponentInstance *a1, AudioUnitScope inScope, AudioUnitElement inElement)
{
  memset(&v15, 0, sizeof(v15));
  outDataSize = 0;
  outWritable = 0;
  if (AudioUnitGetPropertyInfo(a1, 0x20u, inScope, inElement, &outDataSize, &outWritable))
  {
    v6 = 0;
    goto LABEL_6;
  }

  std::vector<int>::resize(&v15, outDataSize >> 2);
  begin = v15.__begin_;
  if (AudioUnitGetProperty(a1, 0x20u, inScope, inElement, v15.__begin_, &outDataSize))
  {
    v6 = 0;
    if (!begin)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  end = v15.__end_;
  v10 = objc_opt_new();
  if (end != begin)
  {
    v11 = begin;
    do
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v11];
      [v10 addObject:v12];

      ++v11;
    }

    while (v11 != end);
  }

  v6 = v10;

  if (begin)
  {
LABEL_5:
    operator delete(begin);
  }

LABEL_6:

  return v6;
}

void sub_18F715B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::TAUVectorProperty(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::TAUVectorProperty(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = *a2;
  memset(v12, 0, sizeof(v12));
  obj = v6;
  v10 = a4;
  if ([obj countByEnumeratingWithState:v12 objects:v13 count:16])
  {
    [**(&v12[0] + 1) unsignedIntValue];
    std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](1uLL);
  }

  LODWORD(v7) = 0;
  if (v5)
  {
    v8 = v10;
    if (*v10)
    {
      v7 = 0;
    }

    else
    {
      v7 = *v10;
    }

    memcpy(v5, 0, v7);
  }

  else
  {
    v8 = v10;
  }

  *v8 = v7;
  return 0;
}

id TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::v2BridgeGetter_Bus(uint64_t a1)
{
  v1 = TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::v2BridgeGetter_Common(*(a1 + 120), *(a1 + 128), *(a1 + 132));

  return v1;
}

id TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::v2BridgeGetter_Global(void *a1)
{
  v1 = a1;
  v2 = TAUVectorProperty<NSArray * {__strong},unsigned int,32u,ArrayVectorConverter<unsigned int>,2u>::v2BridgeGetter_Common([v1 audioUnit], 0, 0);

  return v2;
}

void *TV3Property<NSArray * {__strong},32u,2u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x20);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSArray * {__strong},32u,2u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x20);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSArray * {__strong},32u,2u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeSetter_Bus);
}

void TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  inData = v5;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x1Eu, *(v4 + 32), *(v4 + 33), &inData, 8u);
}

id TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x1Eu, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeSetter_Global);
}

void TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeSetter_Global(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  inData = v6;
  if (AudioUnitSetProperty([v5 audioUnit], 0x1Eu, 0, 0, &inData, 8u))
  {
    v7 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v7, a2);
    (MethodImplementation)(v5, a2, v6);
  }
}

id TAUProperty<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x1Eu, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<NSString * {__strong},30u,3u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},30u,3u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},30u,3u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},30u,3u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x1E);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F7167FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},30u,3u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1E);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},30u,3u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},30u,3u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},30u,3u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},30u,3u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x1E);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F716A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},30u,3u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1E);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},30u,3u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},30u,3u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},30u,3u>::stubSetter);
}

char *TV3Property<NSString * {__strong},30u,3u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x1Eu, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x1Eu, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,30u,CFNSConverter,3u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x67506366u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x67506366u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1733321574u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1733321574u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67506366);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F7175F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67506366);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1733321574u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67506366);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F717848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1733321574u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67506366);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1733321574u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1733321574u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1733321574u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v4 = *a2;
  v5 = *a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("operator()", "AUAudioUnitProperties.mm", 877, "[value isKindOfClass:[NSData class]]");
  }

  v6 = v5;
  v7 = AudioUnitSetProperty(v4, *(a1 + 8), 0, 0, [v6 bytes], objc_msgSend(v6, "length"));

  return v7;
}

uint64_t std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F0328CB0;
  *(a2 + 8) = *(result + 8);
  return result;
}

id std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  outWritable = 0;
  outDataSize = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(v4, *(a1 + 8), 0, 0, &outDataSize, &outWritable);
  if (PropertyInfo || (([MEMORY[0x1E695DF88] dataWithLength:outDataSize], v7 = objc_claimAutoreleasedReturnValue(), (PropertyInfo = AudioUnitGetProperty(v4, *(a1 + 8), 0, 0, objc_msgSend(v7, "mutableBytes"), &outDataSize)) != 0) ? (v8 = v7) : (v8 = 0), v8, PropertyInfo))
  {
    if (v5)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:PropertyInfo userInfo:0];
      *v5 = v9;
    }

    v7 = 0;
  }

  return v7;
}

uint64_t std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F0328C68;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(void const*,unsigned int,int &)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = 0;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:v5];
}

uint64_t std::__function::__func<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<V2OnlyNSDataProperty::V2OnlyNSDataProperty(char const*,unsigned int)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("operator()", "AUAudioUnitProperties.mm", 845, "[value isKindOfClass:[NSData class]]");
  }

  v7 = v6;
  v8 = *a4;
  if ([v7 length] <= v8)
  {
    if (v5)
    {
      memcpy(v5, [v7 bytes], objc_msgSend(v7, "length"));
    }

    v9 = 0;
    *a4 = [v7 length];
  }

  else
  {
    v9 = 4294956445;
  }

  return v9;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x62787073u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x62787073u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060275u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1652060275u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x62787073);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71859C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x62787073);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1652060275u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x62787073);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F7187F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1652060275u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x62787073);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1652060275u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060275u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1652060275u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x62787072u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x62787072u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1652060274u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1652060274u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x62787072);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F718F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x62787072);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1652060274u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x62787072);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F7191F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1652060274u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x62787072);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1652060274u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1652060274u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1652060274u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x67727072u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x67727072u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1735553138u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1735553138u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67727072);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71999C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67727072);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1735553138u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67727072);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F719BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1735553138u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67727072);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1735553138u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1735553138u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1735553138u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x61757370u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x61757370u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1635087216u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1635087216u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x61757370);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71A39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x61757370);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1635087216u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x61757370);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71A5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1635087216u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x61757370);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1635087216u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1635087216u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1635087216u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x70727270u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x70727270u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1886548592u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSString * {__strong},1886548592u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1886548592u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1886548592u,17u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},1886548592u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x70727270);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71AD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},1886548592u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x70727270);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},1886548592u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1886548592u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1886548592u,17u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},1886548592u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x70727270);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71AFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},1886548592u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x70727270);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},1886548592u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1886548592u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},1886548592u,17u>::stubSetter);
}

char *TV3Property<NSString * {__strong},1886548592u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x70727370u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x70727370u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,1886548848u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSDictionary * {__strong},1886548848u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalSetter_Bus);
}

void TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x70727370);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71B79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x70727370);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSDictionary * {__strong},1886548848u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalSetter_Global);
}

void TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x70727370);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71B9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSDictionary * {__strong},1886548848u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x70727370);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSDictionary * {__strong},1886548848u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSDictionary * {__strong},1886548848u,17u>::stubSetter);
}

char *TV3Property<NSDictionary * {__strong},1886548848u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x67727478u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x67727478u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1735554168u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSString * {__strong},1735554168u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1735554168u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1735554168u,17u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},1735554168u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67727478);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71C19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},1735554168u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67727478);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},1735554168u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1735554168u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1735554168u,17u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},1735554168u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x67727478);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71C3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},1735554168u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x67727478);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},1735554168u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1735554168u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},1735554168u,17u>::stubSetter);
}

char *TV3Property<NSString * {__strong},1735554168u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x64737067u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x64737067u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1685287015u,CFNSConverter,17u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TV3Property<NSString * {__strong},1685287015u,17u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1685287015u,17u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1685287015u,17u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},1685287015u,17u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x64737067);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71CB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},1685287015u,17u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x64737067);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},1685287015u,17u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1685287015u,17u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1685287015u,17u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},1685287015u,17u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x64737067);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71CDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},1685287015u,17u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x64737067);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},1685287015u,17u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1685287015u,17u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},1685287015u,17u>::stubSetter);
}

char *TV3Property<NSString * {__strong},1685287015u,17u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t TAUProperty<BOOL,unsigned int,1844u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x734u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}

uint64_t TAUProperty<BOOL,unsigned int,1844u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x734u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

void *TV3Property<BOOL,1844u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x734);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

uint64_t TV3Property<BOOL,1844u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x734);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *TV3Property<BOOL,1844u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x734u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x734u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,1844u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<long,int,1845u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x735u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x735u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  v4 = outData;
  if (Property)
  {
    v4 = 0;
  }

  v5 = v4;

  return v5;
}

BOOL TAUProperty<long,int,1845u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x735u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<long,int,1845u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x735u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<long,1845u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<long,1845u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<long,1845u,1u>::marshalSetter_Bus);
}

void TV3Property<long,1845u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x735);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F71DCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<long,1845u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x735);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 integerValue];
  }

  return Value;
}

BOOL TV3Property<long,1845u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<long,1845u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<long,1845u,1u>::marshalSetter_Global);
}

void TV3Property<long,1845u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x735);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F71DF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<long,1845u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x735);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<long,1845u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<long,1845u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<long,1845u,1u>::stubSetter);
}

char *TV3Property<long,1845u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "q");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "q");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 integerValue];
  return AudioUnitSetProperty(v3, 0x735u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x735u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<long,int,1845u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 intValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  inData = v5;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x736u, *(v4 + 32), *(v4 + 33), &inData, 8u);
}

id TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x736u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  inData = v6;
  if (AudioUnitSetProperty([v5 audioUnit], 0x736u, 0, 0, &inData, 8u))
  {
    v7 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v7, a2);
    (MethodImplementation)(v5, a2, v6);
  }
}

id TAUProperty<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x736u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<NSString * {__strong},1846u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1846u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1846u,1u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},1846u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x736);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F71EA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},1846u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x736);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},1846u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1846u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},1846u,1u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},1846u,1u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x736);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F71ECE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},1846u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x736);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},1846u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},1846u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},1846u,1u>::stubSetter);
}

char *TV3Property<NSString * {__strong},1846u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x736u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x736u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,1846u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<long,int,65u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x41u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x41u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  v4 = outData;
  if (Property)
  {
    v4 = 0;
  }

  v5 = v4;

  return v5;
}

BOOL TAUProperty<long,int,65u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x41u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<long,int,65u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x41u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<long,65u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<long,65u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<long,65u,1u>::marshalSetter_Bus);
}

void TV3Property<long,65u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x41);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F71F7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<long,65u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x41);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 integerValue];
  }

  return Value;
}

BOOL TV3Property<long,65u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<long,65u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<long,65u,1u>::marshalSetter_Global);
}

void TV3Property<long,65u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x41);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F71FA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<long,65u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x41);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<long,65u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<long,65u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<long,65u,1u>::stubSetter);
}

char *TV3Property<long,65u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "q");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "q");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 integerValue];
  return AudioUnitSetProperty(v3, 0x41u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x41u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<long,int,65u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 intValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

uint64_t TAUProperty<long,int,64u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x40u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  v4 = outData;
  if (Property)
  {
    v4 = 0;
  }

  v5 = v4;

  return v5;
}

uint64_t TAUProperty<long,int,64u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x40u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

void *TV3Property<long,64u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x40);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 integerValue];
  }

  return Value;
}

uint64_t TV3Property<long,64u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x40);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *TV3Property<long,64u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "q");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 integerValue];
  return AudioUnitSetProperty(v3, 0x40u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x40u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:outData];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<long,int,64u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 intValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x42u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x42u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x42u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<unsigned long,unsigned int,66u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x42u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<unsigned long,66u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,66u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,66u,1u>::marshalSetter_Bus);
}

void TV3Property<unsigned long,66u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x42);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F720D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<unsigned long,66u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x42);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 unsignedIntegerValue];
  }

  return Value;
}

BOOL TV3Property<unsigned long,66u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,66u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,66u,1u>::marshalSetter_Global);
}

void TV3Property<unsigned long,66u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x42);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F720F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<unsigned long,66u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x42);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<unsigned long,66u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,66u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<unsigned long,66u,1u>::stubSetter);
}

char *TV3Property<unsigned long,66u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "Q");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "Q");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 unsignedIntegerValue];
  return AudioUnitSetProperty(v3, 0x42u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x42u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,66u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUProperty<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x2Fu, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

id TAUProperty<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x2Fu, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

void *TV3Property<NSArray * {__strong},47u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x2F);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSArray * {__strong},47u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x2F);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSArray * {__strong},47u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x2Fu, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x2Fu, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFString const*,47u,CFNSConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

uint64_t std::__function::__func<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  ArrayVectorConverter<int>::ObjToC::ObjToC(&inData, *a3);
  v4 = AudioUnitSetProperty(v3, 0x7D2u, 0, 0, inData, (v7 - inData) & 0xFFFFFFFC);
  if (inData)
  {
    v7 = inData;
    operator delete(inData);
  }

  return v4;
}

void sub_18F721DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ArrayVectorConverter<int>::ObjToC::ObjToC(const void **a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 intValue];
        v10 = v9;
        v12 = a1[1];
        v11 = a1[2];
        if (v12 >= v11)
        {
          v14 = *a1;
          v15 = v12 - *a1;
          v16 = v15 >> 2;
          v17 = (v15 >> 2) + 1;
          if (v17 >> 62)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v18 = v11 - v14;
          if (v18 >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v19 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v19);
          }

          *(4 * v16) = v10;
          v13 = (4 * v16 + 4);
          memcpy(0, v14, v15);
          v20 = *a1;
          *a1 = 0;
          a1[1] = v13;
          a1[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v12 = v9;
          v13 = v12 + 4;
        }

        a1[1] = v13;
      }

      v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  return a1;
}

void sub_18F721FD0(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

id std::__function::__func<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, _DWORD *a4)
{
  v5 = *a2;
  v6 = *a3;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (v7)
  {
    ArrayVectorConverter<int>::CToObj::CToObj(&v10, v5, v6 >> 2);
    v8 = v10;
    *a4 = 0;
  }

  else
  {
    v8 = 0;
    *a4 = -50;
  }

  return v8;
}

void **ArrayVectorConverter<int>::CToObj::CToObj(void **a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0;
  v6 = objc_opt_new();
  v7 = *a1;
  *a1 = v6;

  if (a3)
  {
    v8 = 4 * a3;
    do
    {
      v9 = *a1;
      v10 = [MEMORY[0x1E696AD98] numberWithInt:*a2];
      [v9 addObject:v10];

      ++a2;
      v8 -= 4;
    }

    while (v8);
  }

  return a1;
}

id TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Common(OpaqueAudioComponentInstance *a1, AudioUnitScope inScope, AudioUnitElement inElement)
{
  memset(&v12, 0, sizeof(v12));
  outDataSize = 0;
  outWritable = 0;
  if (AudioUnitGetPropertyInfo(a1, 0x7D2u, inScope, inElement, &outDataSize, &outWritable))
  {
    v6 = 0;
    goto LABEL_6;
  }

  std::vector<int>::resize(&v12, outDataSize >> 2);
  begin = v12.__begin_;
  if (AudioUnitGetProperty(a1, 0x7D2u, inScope, inElement, v12.__begin_, &outDataSize))
  {
    v6 = 0;
    if (!begin)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  ArrayVectorConverter<int>::CToObj::CToObj(&v9, begin, v12.__end_ - begin);
  v6 = v9;

  if (begin)
  {
LABEL_5:
    operator delete(begin);
  }

LABEL_6:

  return v6;
}

void sub_18F72237C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::TAUVectorProperty(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, void **a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  ArrayVectorConverter<int>::ObjToC::ObjToC(&__src, *a2);
  v6 = __src;
  LODWORD(v7) = (v10 - __src) & 0xFFFFFFFC;
  if (v5)
  {
    if (v7 >= *a4)
    {
      v7 = *a4;
    }

    else
    {
      v7 = v7;
    }

    memcpy(v5, __src, v7);
  }

  *a4 = v7;
  if (v6)
  {
    v10 = v6;
    operator delete(v6);
  }

  return 0;
}

BOOL TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeSetter_Bus);
}

void TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeSetter_Common(OpaqueAudioComponentInstance *a1, void *a2)
{
  ArrayVectorConverter<int>::ObjToC::ObjToC(&inData, a2);
  AudioUnitSetProperty(a1, 0x7D2u, 0, 0, inData, (v4 - inData) & 0xFFFFFFFC);
  if (inData)
  {
    v4 = inData;
    operator delete(inData);
  }
}

void sub_18F72261C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Bus(uint64_t a1)
{
  v1 = TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Common(*(a1 + 120), *(a1 + 128), *(a1 + 132));

  return v1;
}

BOOL TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeSetter_Global);
}

void TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v4 = a3;
  TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeSetter_Common([v5 audioUnit], v4);
}

id TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Global(void *a1)
{
  v1 = a1;
  v2 = TAUVectorProperty<NSArray * {__strong},int,2002u,ArrayVectorConverter<int>,1u>::v2BridgeGetter_Common([v1 audioUnit], 0, 0);

  return v2;
}

BOOL TV3Property<NSArray * {__strong},2002u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSArray * {__strong},2002u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSArray * {__strong},2002u,1u>::marshalSetter_Bus);
}

void TV3Property<NSArray * {__strong},2002u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x7D2);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F72292C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSArray * {__strong},2002u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x7D2);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSArray * {__strong},2002u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSArray * {__strong},2002u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSArray * {__strong},2002u,1u>::marshalSetter_Global);
}

void TV3Property<NSArray * {__strong},2002u,1u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x7D2);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F722B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSArray * {__strong},2002u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x7D2);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSArray * {__strong},2002u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSArray * {__strong},2002u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSArray * {__strong},2002u,1u>::stubSetter);
}

char *TV3Property<NSArray * {__strong},2002u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t TAUProperty<BOOL,unsigned int,58u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x3Au, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}