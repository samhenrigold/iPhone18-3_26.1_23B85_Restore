void gloria::ShardManager::DoContains(gloria::Status *a1, uint64_t a2, gloria::Shard *a3, uint64_t a4, void *a5)
{
  gloria::ShardManager::CheckShardInitialization(&v28, a3);
  if (v28)
  {
    gloria::Status::Status(a1, &v28);
  }

  else
  {
    v10 = (*(**(a2 + 32) + 16))(*(a2 + 32));
    if (*(a4 + 16) == v10)
    {
      v27.__r_.__value_.__r.__words[0] = &unk_1EF7E3B98;
      v11 = (*(**(a2 + 32) + 16))(*(a2 + 32));
      v12 = *a3;
      v13 = *(*a3 + 24) - *(*a3 + 16);
      v24 = *(a2 + 48) + v11;
      v26.__r_.__value_.__r.__words[0] = 0;
      v25.__r_.__value_.__r.__words[0] = v13 / v24;
      gloria::BinarySearchStrategy::search(v12, a4, &v24, &v26, &v25, a5, a1);
    }

    else
    {
      memset(&v27, 0, sizeof(v27));
      v14 = std::string::append(&v27, "the size_ of the key provided is not matching the expected size_", 0x40uLL);
      v15 = std::string::append(v14, "expected: ", 0xAuLL);
      std::to_string(&v26, v10);
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v26;
      }

      else
      {
        v16 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v26.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(v15, v16, size);
      v19 = std::string::append(v18, " but found:", 0xBuLL);
      std::to_string(&v25, *(a4 + 16));
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v25;
      }

      else
      {
        v20 = v25.__r_.__value_.__r.__words[0];
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = v25.__r_.__value_.__l.__size_;
      }

      std::string::append(v19, v20, v21);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v26.__r_.__value_.__s.__data_[0] = 1;
      HIDWORD(v26.__r_.__value_.__r.__words[0]) = 0;
      v22 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
      v23 = &v27;
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v27.__r_.__value_.__r.__words[0];
      }

      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v27.__r_.__value_.__l.__size_;
      }

      v26.__r_.__value_.__l.__size_ = v23;
      v26.__r_.__value_.__r.__words[2] = v22;
      gloria::Status::Status(a1, 3, &v26);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v30 < 0)
  {
    operator delete(__p);
  }
}

void sub_18668CB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gloria::ShardManager::CheckShardInitialization(gloria::ShardManager *this, const gloria::Shard *a2)
{
  if (*a2 != 0)
  {
    goto LABEL_10;
  }

  v2 = *(a2 + 127);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 14);
  }

  if (!v2 || *(a2 + 2) == 0)
  {
    v6[0] = 1;
    v7 = 0;
    v8 = "the shard_ was not initialized and cannot be queried: the index was not loaded previously or may have failed loading it";
    v9 = 119;
    v4 = 4;
  }

  else
  {
LABEL_10:
    v6[0] = 1;
    v7 = 0;
    v8 = "";
    v9 = 0;
    v4 = 0;
  }

  return gloria::Status::Status(this, v4, v6);
}

void gloria::RecordReader::ReadPayloadAt(uint64_t a1, void (***a2)(void *__return_ptr, void, void, void, void), uint64_t a3, uint64_t a4)
{
  LODWORD(v11.__r_.__value_.__l.__data_) = 10;
  v12 = 0;
  *&v11.__r_.__value_.__r.__words[1] = 0uLL;
  LOBYTE(v19) = 1;
  HIDWORD(v19) = 0;
  v20 = "";
  v21 = 0;
  v13[0] = a3;
  v14 = 4;
  (**a2)(&v15, a2, v13, &v14, &v19);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  v8 = *v20;
  LOBYTE(v13[0]) = 1;
  HIDWORD(v13[0]) = 0;
  v13[1] = "";
  v13[2] = 0;
  gloria::Status::Status(v9, 0, v13);
  gloria::Status::operator=(&v11, v9);
  if (v10 < 0)
  {
    operator delete(v9[1]);
  }

  if (LODWORD(v11.__r_.__value_.__l.__data_))
  {
    goto LABEL_9;
  }

  v9[0] = a3 + 4;
  v19 = v8;
  (**a2)(&v15, a2, v9, &v19, a4);
  gloria::Status::operator=(&v11, &v15);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (LODWORD(v11.__r_.__value_.__l.__data_))
  {
LABEL_9:
    gloria::Status::Status(a1, &v11);
  }

  else
  {
    LOBYTE(v15) = 1;
    HIDWORD(v15) = 0;
    __p = "";
    v17 = 0;
    gloria::Status::Status(a1, 0, &v15);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__size_);
  }
}

void sub_18668CE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gloria::NoopDecompressor::decompress@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a2 + 56) = 0;
  v3 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v3;
  v5[0] = 1;
  v6 = 0;
  v7 = "";
  v8 = 0;
  return gloria::Status::Status(a3, 0, v5);
}

void *GEOTerritoryDataTileDataReadAllFrom(uint64_t a1, void *a2)
{
  if (*(a1 + 36))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOTerritoryDataTileDataReadAllFrom can only be called once per object"];
  }

  else
  {
    if (!(objc_msgSend_position(a2) >> 32) && !([a2 length] >> 32))
    {
      os_unfair_lock_lock((a1 + 40));
      v6 = a2;
      objc_sync_enter(v6);
      objc_storeStrong((a1 + 8), a2);
      *(a1 + 32) = objc_msgSend_position(v6);
      *(a1 + 36) = [v6 length];
      Specified = GEOTerritoryDataTileDataReadSpecified(a1, v6, &GEOTerritoryDataTileDataReadAllFrom_initialTag);
      objc_sync_exit(v6);

      os_unfair_lock_unlock((a1 + 40));
      return Specified;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v7, 2u);
    }
  }

  return 0;
}

void *GEOTerritoryDataTileDataReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 40));
  [v3 setLength:*(a1 + 36)];
  [v3 seekToOffset:*(a1 + 32)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 44) >> 1) & 1) + (*(a1 + 44) & 1);
  while (1)
  {
    v11 = a3[v6];
    if (v11 > -2)
    {
      break;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_13;
    }

    if (v11 == -2)
    {
      goto LABEL_9;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v6;
  }

  if (v11 == -1)
  {
    v8 = 1;
LABEL_9:
    v9 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = v9 | (v10 != 0);
  if (v9 & 1 | (v10 != 0) | v7 & 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  v36 = (v6 != 0) | v12;
  while (1)
  {
    v14 = objc_msgSend_position(v3);
    if (v14 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
      goto LABEL_58;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      LOBYTE(v37) = 0;
      v18 = objc_msgSend_position(v3) + 1;
      if (v18 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3) + 1, v19 <= [v3 length]))
      {
        v20 = [v3 data];
        [v20 getBytes:&v37 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v17 |= (v37 & 0x7F) << v15;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v15 += 7;
      if (v16++ >= 9)
      {
        v22 = 0;
        goto LABEL_32;
      }
    }

    v22 = [v3 hasError] ? 0 : v17;
LABEL_32:
    if (([v3 hasError] & 1) != 0 || (v22 & 7) == 4)
    {
LABEL_58:
      if (v12)
      {
        v30 = 1;
        goto LABEL_71;
      }

      if (!v13)
      {
LABEL_72:
        v3 = ([v3 hasError] ^ 1);
        if ((v12 & 1) == 0)
        {
          return v3;
        }

        goto LABEL_73;
      }

      while (1)
      {
        while (1)
        {
          v33 = *v13++;
          v32 = v33;
          if (v33 != 1)
          {
            break;
          }

          v31 = 2;
LABEL_64:
          *(a1 + 44) |= v31;
        }

        if (v32 == 2)
        {
          v31 = 1;
          goto LABEL_64;
        }

        if (!v32)
        {
          goto LABEL_72;
        }
      }
    }

    v23 = v22 >> 3;
    v24 = v12;
    if (!((v13 == 0) | v12 & 1))
    {
      v25 = v13;
      do
      {
        v27 = *v25++;
        v26 = v27;
        v24 = v27 != 0;
        if (v27)
        {
          v28 = v26 == v23;
        }

        else
        {
          v28 = 1;
        }
      }

      while (!v28);
    }

    if (v23 == 2)
    {
      break;
    }

    if (v23 != 1)
    {
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_70;
      }

      goto LABEL_57;
    }

    if (!v24 || (*(a1 + 44) & 2) != 0)
    {
      goto LABEL_56;
    }

    v37 = 0;
    v38 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_70;
    }

    v29 = objc_alloc_init(GEOTerritoryDataTerritoryInfo);
    if (!GEOTerritoryDataTerritoryInfoReadAllFrom(v29, v3, v8 & 1))
    {
      goto LABEL_69;
    }

    PBReaderRecallMark();
    [(GEOTerritoryDataTileData *)a1 _addNoFlagsTerritory:v29];
LABEL_53:

LABEL_57:
    if ((v36 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  if (!v24 || (*(a1 + 44) & 1) != 0)
  {
LABEL_56:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_57;
  }

  v37 = 0;
  v38 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_70;
  }

  v29 = objc_alloc_init(GEOTerritoryDataTerritoryInfo);
  if (GEOTerritoryDataTerritoryInfoReadAllFrom(v29, v3, v8 & 1))
  {
    PBReaderRecallMark();
    [(GEOTerritoryDataTileData *)a1 _addNoFlagsState:v29];
    goto LABEL_53;
  }

LABEL_69:

LABEL_70:
  v30 = 0;
LABEL_71:
  *(a1 + 44) |= 2u;
  *(a1 + 44) |= 1u;
  if (v30)
  {
    goto LABEL_72;
  }

  v3 = 0;
  if (v12)
  {
LABEL_73:
    v34 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOTerritoryDataTerritoryInfoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 100))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOTerritoryDataTerritoryInfoReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 104));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 96) = objc_msgSend_position(v8);
  *(a1 + 100) = [v8 length];
  if (a3)
  {
    v9 = &GEOTerritoryDataTerritoryInfoReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOTerritoryDataTerritoryInfoReadAllFrom_initialTag;
  }

  Specified = GEOTerritoryDataTerritoryInfoReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [(GEOTerritoryDataPolygon *)*(a1 + 88) readAll:?];
  }

  os_unfair_lock_unlock((a1 + 104));
  return Specified;
}

void *GEOTerritoryDataTerritoryInfoReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 104));
  [v3 setLength:*(a1 + 100)];
  [v3 seekToOffset:*(a1 + 96)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 112)) & 0xFF00FF00FF00FFLL), 0xFFFEFFFAFFFBFFFDLL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 112) & 0x10) != 0));
  while (1)
  {
    v11 = a3[v6];
    if (v11 > -2)
    {
      break;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_13;
    }

    if (v11 == -2)
    {
      goto LABEL_9;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v6;
  }

  if (v11 == -1)
  {
    v8 = 1;
LABEL_9:
    v9 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = v9 | (v10 > 3);
  if (v9 & 1 | (v10 > 3) | v7 & 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  v14 = objc_msgSend_position(v3);
  if (v14 >= [v3 length])
  {
LABEL_161:
    if (v12)
    {
      v76 = 1;
      goto LABEL_163;
    }

    if (!v13)
    {
      goto LABEL_180;
    }

    while (1)
    {
      while (1)
      {
        v78 = *v13++;
        v77 = v78;
        if (v78 > 4)
        {
          break;
        }

        switch(v77)
        {
          case 1:
            v79 = 8;
LABEL_178:
            *(a1 + 112) |= v79;
            break;
          case 3:
            v79 = 32;
            goto LABEL_178;
          case 0:
            goto LABEL_180;
        }
      }

      switch(v77)
      {
        case 5:
          v79 = 64;
          goto LABEL_178;
        case 6:
          v79 = 4;
          goto LABEL_178;
        case 7:
          v79 = 16;
          goto LABEL_178;
      }
    }
  }

  v82 = (v13 == 0) | v12;
  v83 = v12;
  while (1)
  {
    if ([v3 hasError])
    {
      goto LABEL_161;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      LOBYTE(v84) = 0;
      v18 = objc_msgSend_position(v3) + 1;
      if (v18 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3) + 1, v19 <= [v3 length]))
      {
        v20 = [v3 data];
        [v20 getBytes:&v84 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v17 |= (v84 & 0x7F) << v15;
      if ((v84 & 0x80) == 0)
      {
        break;
      }

      v15 += 7;
      v21 = v16++ >= 9;
      if (v21)
      {
        v22 = 0;
        goto LABEL_32;
      }
    }

    v22 = [v3 hasError] ? 0 : v17;
LABEL_32:
    v12 = v83;
    if ([v3 hasError])
    {
      goto LABEL_161;
    }

    v23 = v22 & 7;
    if (v23 == 4)
    {
      goto LABEL_161;
    }

    v24 = v22 >> 3;
    v25 = v83;
    if ((v82 & 1) == 0)
    {
      v26 = v13;
      do
      {
        v28 = *v26++;
        v27 = v28;
        v25 = v28 != 0;
        if (v28)
        {
          v29 = v27 == v24;
        }

        else
        {
          v29 = 1;
        }
      }

      while (!v29);
    }

    if (v24 > 3)
    {
      break;
    }

    if (v24 == 1)
    {
      if (!v25 || (*(a1 + 112) & 8) != 0)
      {
LABEL_118:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_184;
        }

        goto LABEL_159;
      }

      if (v23 != 2)
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          LOBYTE(v84) = 0;
          v66 = objc_msgSend_position(v3) + 1;
          if (v66 >= objc_msgSend_position(v3) && (v67 = objc_msgSend_position(v3) + 1, v67 <= [v3 length]))
          {
            v68 = [v3 data];
            [v68 getBytes:&v84 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v65 |= (v84 & 0x7F) << v63;
          if ((v84 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v21 = v64++ >= 9;
          if (v21)
          {
            goto LABEL_155;
          }
        }

        [v3 hasError];
LABEL_155:
        PBRepeatedInt32Add();
        goto LABEL_158;
      }

      v84 = 0;
      v85 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_184;
      }

      while (1)
      {
        v34 = objc_msgSend_position(v3);
        if (v34 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
        {
          break;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          v86 = 0;
          v38 = objc_msgSend_position(v3) + 1;
          if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
          {
            v40 = [v3 data];
            [v40 getBytes:&v86 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v37 |= (v86 & 0x7F) << v35;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v21 = v36++ >= 9;
          if (v21)
          {
            goto LABEL_78;
          }
        }

        [v3 hasError];
LABEL_78:
        PBRepeatedInt32Add();
      }

LABEL_135:
      PBReaderRecallMark();
      goto LABEL_158;
    }

    if (v24 != 2)
    {
      if (v24 != 3)
      {
        goto LABEL_79;
      }

      if (!v25)
      {
        goto LABEL_118;
      }

      if ((*(a1 + 112) & 0x20) == 0)
      {
        v32 = PBReaderReadString();
        v33 = 80;
        goto LABEL_60;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_184;
      }

      v62 = 4 * *(a1 + 112);
      goto LABEL_134;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_118;
    }

    v55 = 0;
    v56 = 0;
    v57 = 0;
    *(a1 + 112) |= 2u;
    while (1)
    {
      LOBYTE(v84) = 0;
      v58 = objc_msgSend_position(v3) + 1;
      if (v58 >= objc_msgSend_position(v3) && (v59 = objc_msgSend_position(v3) + 1, v59 <= [v3 length]))
      {
        v60 = [v3 data];
        [v60 getBytes:&v84 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v57 |= (v84 & 0x7F) << v55;
      if ((v84 & 0x80) == 0)
      {
        break;
      }

      v55 += 7;
      v21 = v56++ >= 9;
      if (v21)
      {
        v61 = 0;
        goto LABEL_127;
      }
    }

    if ([v3 hasError])
    {
      v61 = 0;
    }

    else
    {
      v61 = v57;
    }

LABEL_127:
    *(a1 + 108) = v61;
LABEL_158:
    v12 = v83;
LABEL_159:
    if (v12 & 1 | (v6 != 0))
    {
      v75 = objc_msgSend_position(v3);
      if (v75 < [v3 length])
      {
        continue;
      }
    }

    goto LABEL_161;
  }

  if (v24 > 5)
  {
    if (v24 != 6)
    {
      if (v24 != 7)
      {
LABEL_79:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_184;
        }

        goto LABEL_159;
      }

      if (!v25)
      {
        goto LABEL_118;
      }

      if ((*(a1 + 112) & 0x10) == 0)
      {
        v32 = PBReaderReadString();
        v33 = 72;
LABEL_60:
        v31 = *(a1 + v33);
        *(a1 + v33) = v32;
LABEL_61:

        --v6;
        goto LABEL_159;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_184;
      }

      v62 = 8 * *(a1 + 112);
      goto LABEL_134;
    }

    if (!v25 || (*(a1 + 112) & 4) != 0)
    {
      goto LABEL_118;
    }

    if (v23 != 2)
    {
      v69 = 0;
      v70 = 0;
      v71 = 0;
      while (1)
      {
        LOBYTE(v84) = 0;
        v72 = objc_msgSend_position(v3) + 1;
        if (v72 >= objc_msgSend_position(v3) && (v73 = objc_msgSend_position(v3) + 1, v73 <= [v3 length]))
        {
          v74 = [v3 data];
          [v74 getBytes:&v84 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v71 |= (v84 & 0x7F) << v69;
        if ((v84 & 0x80) == 0)
        {
          break;
        }

        v69 += 7;
        v21 = v70++ >= 9;
        if (v21)
        {
          goto LABEL_157;
        }
      }

      [v3 hasError];
LABEL_157:
      PBRepeatedUInt32Add();
      goto LABEL_158;
    }

    v84 = 0;
    v85 = 0;
    if (!PBReaderPlaceMark())
    {
      goto LABEL_184;
    }

    while (1)
    {
      v48 = objc_msgSend_position(v3);
      if (v48 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
      {
        goto LABEL_135;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      while (1)
      {
        v86 = 0;
        v52 = objc_msgSend_position(v3) + 1;
        if (v52 >= objc_msgSend_position(v3) && (v53 = objc_msgSend_position(v3) + 1, v53 <= [v3 length]))
        {
          v54 = [v3 data];
          [v54 getBytes:&v86 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v51 |= (v86 & 0x7F) << v49;
        if ((v86 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v21 = v50++ >= 9;
        if (v21)
        {
          goto LABEL_107;
        }
      }

      [v3 hasError];
LABEL_107:
      PBRepeatedUInt32Add();
    }
  }

  if (v24 == 4)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_118;
    }

    v41 = 0;
    v42 = 0;
    v43 = 0;
    *(a1 + 112) |= 1u;
    while (1)
    {
      LOBYTE(v84) = 0;
      v44 = objc_msgSend_position(v3) + 1;
      if (v44 >= objc_msgSend_position(v3) && (v45 = objc_msgSend_position(v3) + 1, v45 <= [v3 length]))
      {
        v46 = [v3 data];
        [v46 getBytes:&v84 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v43 |= (v84 & 0x7F) << v41;
      if ((v84 & 0x80) == 0)
      {
        break;
      }

      v41 += 7;
      v21 = v42++ >= 9;
      if (v21)
      {
        v47 = 0;
        goto LABEL_123;
      }
    }

    if ([v3 hasError])
    {
      v47 = 0;
    }

    else
    {
      v47 = v43;
    }

LABEL_123:
    *(a1 + 64) = v47;
    goto LABEL_158;
  }

  if (!v25)
  {
    goto LABEL_118;
  }

  if ((*(a1 + 112) & 0x40) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_184;
    }

    v62 = 2 * *(a1 + 112);
LABEL_134:
    v6 += v62 >> 7;
    goto LABEL_159;
  }

  v84 = 0;
  v85 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_184;
  }

  v30 = objc_alloc_init(GEOTerritoryDataPolygon);
  if (GEOTerritoryDataPolygonReadAllFrom(v30, v3, v8 & 1))
  {
    PBReaderRecallMark();
    v31 = *(a1 + 88);
    *(a1 + 88) = v30;
    goto LABEL_61;
  }

LABEL_184:
  v76 = 0;
LABEL_163:
  *(a1 + 112) |= 8u;
  *(a1 + 112) |= 0x20u;
  *(a1 + 112) |= 0x40u;
  *(a1 + 112) |= 4u;
  *(a1 + 112) |= 0x10u;
  if (v76)
  {
LABEL_180:
    v3 = ([v3 hasError] ^ 1);
    if (v12)
    {
      goto LABEL_181;
    }

    return v3;
  }

  v3 = 0;
  if ((v12 & 1) == 0)
  {
    return v3;
  }

LABEL_181:
  v80 = *(a1 + 8);
  *(a1 + 8) = 0;

  return v3;
}

void gloria::GloriaDB::~GloriaDB(gloria::GloriaDB *this)
{
  *this = &unk_1EF7E4008;
  gloria::ShardPool::Close(&v8, this + 17);
  if (v9 < 0)
  {
    operator delete(v8.__r_.__value_.__l.__size_);
  }

  v2 = *(this + 24);
  *(this + 24) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    std::default_delete<gloria::Bucketizer>::operator()[abi:ne200100](v3);
  }

  std::__tree<std::__value_type<int,gloria::ShardInfo>,std::__map_value_compare<int,std::__value_type<int,gloria::ShardInfo>,std::less<int>,true>,std::allocator<std::__value_type<int,gloria::ShardInfo>>>::destroy(*(this + 21));
  std::__tree<std::__value_type<int,gloria::Shard>,std::__map_value_compare<int,std::__value_type<int,gloria::Shard>,std::less<int>,true>,std::allocator<std::__value_type<int,gloria::Shard>>>::destroy(*(this + 18));
  v4 = *(this + 14);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

{
  gloria::GloriaDB::~GloriaDB(this);

  JUMPOUT(0x18CFD1E40);
}

void gloria::ShardPool::Close(std::string *this, void *a2)
{
  LOBYTE(v18) = 1;
  HIDWORD(v18) = 0;
  __p = "";
  v20 = 0;
  gloria::Status::Status(this, 0, &v18);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      LOBYTE(v18) = 1;
      HIDWORD(v18) = 0;
      __p = "";
      v20 = 0;
      gloria::Status::Status(&v16, 0, &v18);
      v7 = v5[5];
      if (v7)
      {
        (*(*v7 + 24))(&v18);
        v8 = v5[5];
        if (v8)
        {
          (*(*v8 + 16))(v8);
        }

        v5[5] = 0;
        if (v18)
        {
          gloria::Status::operator=(&v16, &v18);
        }

        if (v21 < 0)
        {
          operator delete(__p);
        }
      }

      v9 = v5[6];
      if (v9)
      {
        (*(*v9 + 24))(&v18);
        v10 = v5[6];
        if (v10)
        {
          (*(*v10 + 16))(v10);
        }

        v5[6] = 0;
        if (v18 && LODWORD(v16.__r_.__value_.__l.__data_))
        {
          gloria::Status::operator=(&v16, &v18);
        }

        if (v21 < 0)
        {
          operator delete(__p);
        }
      }

      v11 = v5[7];
      if (v11)
      {
        (*(*v11 + 24))(&v18);
        v12 = v5[7];
        if (v12)
        {
          (*(*v12 + 16))(v12);
        }

        v5[7] = 0;
        if (v18 && LODWORD(v16.__r_.__value_.__l.__data_))
        {
          gloria::Status::operator=(&v16, &v18);
        }

        if (v21 < 0)
        {
          operator delete(__p);
        }
      }

      if (LODWORD(v16.__r_.__value_.__l.__data_))
      {
        gloria::Status::operator=(this, &v16);
      }

      if (v17 < 0)
      {
        operator delete(v16.__r_.__value_.__l.__size_);
      }

      v13 = v5[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != v4);
  }
}

void sub_18668EB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v22 + 31) < 0)
  {
    operator delete(*(v22 + 8));
  }

  _Unwind_Resume(exception_object);
}

void gloria::MmapMemoryBuffer::Close(gloria::MmapMemoryBuffer *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 8);
  v4[0] = 1;
  v5 = 0;
  __p = "could not unmap mmap file";
  v7 = 25;
  gloria::Status::Status(a2, 7, v4);
  if (*(v3 + 24) != -1)
  {
    gloria::MemoryMappedFile::UnMap(v4, v3);
    gloria::Status::operator=(a2, v4);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_18668ECB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void gloria::MemoryMappedFile::UnMap(gloria::MemoryMappedFile *this, uint64_t a2)
{
  if (*(a2 + 56) == 1 && (v4 = munlock(*a2, *(a2 + 16))) != 0)
  {
    v5 = v4;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "munlock() failed to unlock file: ", 33);
    v7 = (a2 + 32);
    if (*(a2 + 55) < 0)
    {
      v7 = *v7;
    }

    v8 = strlen(v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; size_=", 8);
    v11 = MEMORY[0x18CFD1C70](v10, *(a2 + 16));
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "; error=", 8);
    v13 = __error();
    v14 = strerror(*v13);
    v15 = strlen(v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v41, MEMORY[0x1E69E5318]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v41);
    std::ostream::put();
    std::ostream::flush();
    std::to_string(&v38, v5);
    v18 = std::string::insert(&v38, 0, "could not munlock file, munlock error code: ", 0x2CuLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v40 = v18->__r_.__value_.__r.__words[2];
    *__p = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    LOBYTE(v41.__locale_) = 1;
    v20 = SHIBYTE(v40);
    v21 = __p;
    if (v40 < 0)
    {
      v21 = __p[0];
    }

    HIDWORD(v41.__locale_) = 0;
    if (v40 < 0)
    {
      v20 = __p[1];
    }
  }

  else
  {
    v22 = munmap(*a2, *(a2 + 16));
    if (!v22)
    {
      close(*(a2 + 24));
      *a2 = 0;
      *(a2 + 24) = -1;
      *(a2 + 16) = -1;
      LOBYTE(v41.__locale_) = 1;
      HIDWORD(v41.__locale_) = 0;
      v42 = "";
      v43 = 0;
      gloria::Status::Status(this, 0, &v41);
      return;
    }

    v23 = v22;
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "munmap() failed to unmap file: ", 31);
    v25 = (a2 + 32);
    if (*(a2 + 55) < 0)
    {
      v25 = *v25;
    }

    v26 = strlen(v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "; size_=", 8);
    v29 = MEMORY[0x18CFD1C70](v28, *(a2 + 16));
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "; error=", 8);
    v31 = __error();
    v32 = strerror(*v31);
    v33 = strlen(v32);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
    std::ios_base::getloc((v34 + *(*v34 - 24)));
    v35 = std::locale::use_facet(&v41, MEMORY[0x1E69E5318]);
    (v35->__vftable[2].~facet_0)(v35, 10);
    std::locale::~locale(&v41);
    std::ostream::put();
    std::ostream::flush();
    std::to_string(&v38, v23);
    v36 = std::string::insert(&v38, 0, "could not unmap file, unmap error code: ", 0x28uLL);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v40 = v36->__r_.__value_.__r.__words[2];
    *__p = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    LOBYTE(v41.__locale_) = 1;
    v20 = SHIBYTE(v40);
    v21 = __p;
    if (v40 < 0)
    {
      v21 = __p[0];
    }

    HIDWORD(v41.__locale_) = 0;
    if (v40 < 0)
    {
      v20 = __p[1];
    }
  }

  v42 = v21;
  v43 = v20;
  gloria::Status::Status(this, 7, &v41);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_18668F0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void gloria::MmapMemoryBuffer::~MmapMemoryBuffer(gloria::MmapMemoryBuffer *this)
{
  gloria::MmapMemoryBuffer::~MmapMemoryBuffer(this);

  JUMPOUT(0x18CFD1E40);
}

{
  *this = &unk_1EF7E3A60;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    gloria::MemoryMappedFile::~MemoryMappedFile(v2);
    MEMORY[0x18CFD1E40]();
  }

  *this = &unk_1EF7E7A40;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

void gloria::MemoryMappedFile::~MemoryMappedFile(gloria::MemoryMappedFile *this)
{
  if (*(this + 6) != -1)
  {
    gloria::MemoryMappedFile::UnMap(&v2, this);
    if (v4 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

void std::default_delete<gloria::Bucketizer>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  JUMPOUT(0x18CFD1E40);
}

void std::__tree<std::__value_type<int,gloria::Shard>,std::__map_value_compare<int,std::__value_type<int,gloria::Shard>,std::less<int>,true>,std::allocator<std::__value_type<int,gloria::Shard>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,gloria::Shard>,std::__map_value_compare<int,std::__value_type<int,gloria::Shard>,std::less<int>,true>,std::allocator<std::__value_type<int,gloria::Shard>>>::destroy(*a1);
    std::__tree<std::__value_type<int,gloria::Shard>,std::__map_value_compare<int,std::__value_type<int,gloria::Shard>,std::less<int>,true>,std::allocator<std::__value_type<int,gloria::Shard>>>::destroy(a1[1]);
    gloria::Shard::~Shard((a1 + 5));

    operator delete(a1);
  }
}

uint64_t std::__shared_ptr_pointer<gloria::BasicShardHeader *,std::shared_ptr<gloria::BasicShardHeader>::__shared_ptr_default_delete<gloria::BasicShardHeader,gloria::BasicShardHeader>,std::allocator<gloria::BasicShardHeader>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

double GEOCoordinateRegionMakeWithDistance(double a1)
{
  v2 = a1 * 0.0174532925;
  cos(v2 + v2);
  cos(v2 * 4.0);
  cos(v2 * 6.0);
  cos(v2);
  cos(v2 * 3.0);
  cos(v2 * 5.0);
  return a1;
}

unint64_t gloria::XXHashFn::Hash(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v5 = v4 + v3;
  if (v3 < 0x20)
  {
    v15 = a3 + 0x27D4EB2F165667C5;
    v9 = v4;
  }

  else
  {
    v6 = a3 + 0x60EA27EEADC0B5D6;
    v7 = a3 - 0x3D4D51C2D82B14B1;
    v8 = a3 + 0x61C8864E7A143579;
    v9 = v4;
    do
    {
      v10 = __ROR8__(v6 - 0x3D4D51C2D82B14B1 * *v9, 33);
      v6 = 0x9E3779B185EBCA87 * v10;
      v11 = __ROR8__(v7 - 0x3D4D51C2D82B14B1 * *(v9 + 1), 33);
      v7 = 0x9E3779B185EBCA87 * v11;
      v12 = *(v9 + 3);
      v13 = __ROR8__(a3 - 0x3D4D51C2D82B14B1 * *(v9 + 2), 33);
      a3 = 0x9E3779B185EBCA87 * v13;
      v9 += 8;
      v14 = __ROR8__(v8 - 0x3D4D51C2D82B14B1 * v12, 33);
      v8 = 0x9E3779B185EBCA87 * v14;
    }

    while (v9 <= v5 - 32);
    v15 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((((0x3C6EF3630BD7950ELL * v10) | (v6 >> 63)) + 0x1BBCD8C2F5E54380 * v11 + (v7 >> 57) + 0x779B185EBCA87000 * v13 + (a3 >> 52) - 0x1939E850D5E40000 * v14 + (v8 >> 46)) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v10) | ((0xDEF35B010F796CA9 * v10) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v11) | ((0xDEF35B010F796CA9 * v11) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v13) | ((0xDEF35B010F796CA9 * v13) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v14) | ((0xDEF35B010F796CA9 * v14) >> 33))));
  }

  v16 = v15 + v3;
  if ((v9 + 2) <= v5)
  {
    do
    {
      v17 = v9 + 2;
      v16 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *v9) | ((0xC2B2AE3D27D4EB4FLL * *v9) >> 33))) ^ v16, 37);
      v18 = (v9 + 4) > v5;
      v9 += 2;
    }

    while (!v18);
  }

  else
  {
    v17 = v9;
  }

  if ((v17 + 1) <= v5)
  {
    v16 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * *v17++) ^ v16, 41);
  }

  if (v17 < v5)
  {
    v19 = v3 + v4 - v17;
    do
    {
      v20 = *v17;
      v17 = (v17 + 1);
      v16 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v20) ^ v16, 53);
      --v19;
    }

    while (v19);
  }

  v21 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v16 ^ (v16 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v16 ^ (v16 >> 33))) >> 29));
  return v21 ^ HIDWORD(v21);
}

void gloria::BasicShardHeader::~BasicShardHeader(void **this)
{
  *this = &unk_1EF7E3CC8;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  JUMPOUT(0x18CFD1E40);
}

uint64_t std::__shared_ptr_pointer<geo::GloriaDB::QuadKey *,std::shared_ptr<gloria::RecordAttribute>::__shared_ptr_default_delete<gloria::RecordAttribute,geo::GloriaDB::QuadKey>,std::allocator<geo::GloriaDB::QuadKey>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_18668FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GEOCalculateChangedKeys(void *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v41 = v6;
  v42 = v5;
  v40 = v7;
  if ([v7 length])
  {
    v8 = [v5 mutableCopy];
    [v8 setObject:0 forKeyedSubscript:@"CountryProviders"];
    v9 = [v5 objectForKeyedSubscript:@"CountryProviders"];
    v10 = [v9 objectForKeyedSubscript:v7];

    [v8 addEntriesFromDictionary:v10];
    v11 = [v6 mutableCopy];
    [v11 setObject:0 forKeyedSubscript:@"CountryProviders"];
    v12 = [v6 objectForKeyedSubscript:@"CountryProviders"];
    v13 = [v12 objectForKeyedSubscript:v7];

    [v11 addEntriesFromDictionary:v13];
  }

  else
  {
    v8 = v5;
    v11 = v6;
  }

  v14 = MEMORY[0x1E695DFD8];
  v15 = [v8 allKeys];
  v16 = v15;
  v17 = MEMORY[0x1E695E0F0];
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v19 = [v14 setWithArray:v18];

  v20 = MEMORY[0x1E695DFD8];
  v21 = [v11 allKeys];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v17;
  }

  v24 = [v20 setWithArray:v23];

  v25 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v24, "count")}];
  v26 = [v19 mutableCopy];
  [v26 minusSet:v24];
  [v25 unionSet:v26];

  v27 = [v24 mutableCopy];
  [v27 minusSet:v19];
  [v25 unionSet:v27];

  v38 = v24;
  v28 = [v24 mutableCopy];
  v39 = v19;
  [v28 intersectSet:v19];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v28;
  v30 = [v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v43 + 1) + 8 * i);
        v35 = [v8 objectForKeyedSubscript:v34];
        v36 = [v11 objectForKeyedSubscript:v34];
        if (([v35 isEqual:v36] & 1) == 0)
        {
          [v25 addObject:v34];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v31);
  }

  return v25;
}

void sub_18669024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

id GEOGetDefaultsForStateCapture()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v1 = MEMORY[0x1E696AD98];
  if (_GEOConfigRangeCheckEnabled_onceToken != -1)
  {
    dispatch_once(&_GEOConfigRangeCheckEnabled_onceToken, &__block_literal_global_116682);
  }

  v2 = [v1 numberWithBool:(_rangeCheckEnabled & 1) == 0];
  [v0 setObject:v2 forKeyedSubscript:@"RangeClampEnabled"];

  v3 = _GEOConfigStorageCFPrefsReadWrite();
  v4 = [MEMORY[0x1E695DFA8] set];
  os_unfair_lock_lock_with_options();
  if ([_stateCaptureFnsUserDefaults count])
  {
    v5 = 0;
    do
    {
      v6 = [_stateCaptureFnsUserDefaults pointerAtIndex:v5];
      if (v6)
      {
        v7 = v6();
        [v4 addObjectsFromArray:v7];
      }

      ++v5;
    }

    while (v5 < [_stateCaptureFnsUserDefaults count]);
  }

  os_unfair_lock_unlock(&_stateCaptureFnsLock);
  v8 = _valuesForStore(v3, v4);
  [v0 setObject:v8 forKeyedSubscript:@"user_defaults"];

  v9 = [MEMORY[0x1E695DFA8] set];
  os_unfair_lock_lock_with_options();
  if ([_stateCaptureFnsConfigStore count])
  {
    v10 = 0;
    do
    {
      v11 = [_stateCaptureFnsConfigStore pointerAtIndex:v10];
      if (v11)
      {
        v12 = v11();
        [v9 addObjectsFromArray:v12];
      }

      ++v10;
    }

    while (v10 < [_stateCaptureFnsConfigStore count]);
  }

  os_unfair_lock_unlock(&_stateCaptureFnsLock);
  v13 = _GEOConfigStorageUser();
  v14 = _valuesForStore(v13, v9);
  [v0 setObject:v14 forKeyedSubscript:@"config_store"];

  v15 = _GEOConfigStorageXPC();
  v16 = _valuesForStore(v15, v9);
  [v0 setObject:v16 forKeyedSubscript:@"config_store_xpc"];

  v17 = _GEOConfigStorageSystem();
  v18 = _valuesForStore(v17, v9);
  [v0 setObject:v18 forKeyedSubscript:@"config_store_system"];

  return v0;
}

BOOL _GEOConfigRangeCheckEnabled()
{
  if (_GEOConfigRangeCheckEnabled_onceToken != -1)
  {
    dispatch_once(&_GEOConfigRangeCheckEnabled_onceToken, &__block_literal_global_116682);
  }

  return (_rangeCheckEnabled & 1) == 0;
}

id _GEOConfigStorageXPC()
{
  if (_initStorage_onceToken_134588 != -1)
  {
    dispatch_once(&_initStorage_onceToken_134588, &__block_literal_global_134589);
  }

  v1 = _xpc_storage;

  return v1;
}

id _GEOConfigStorageCFPrefsReadWrite()
{
  _initStorage(0);
  v0 = _cfprefs_readwrite_storage;
  if (_cfprefs_readwrite_storage)
  {
    v1 = _cfprefs_readwrite_storage;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _cfprefs_readwrite_storage != ((void*)0)", v3, 2u);
  }

  return v0;
}

id _valuesForStore(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 getConfigValueForKey:0 countryCode:0 options:0 source:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 mutableCopy];
    v6 = [v4 objectForKeyedSubscript:@"entitled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v4;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = [v6 allValues];
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19[0] = MEMORY[0x1E69E9820];
              v19[1] = 3221225472;
              v19[2] = ___valuesForStore_block_invoke;
              v19[3] = &unk_1E706F118;
              v20 = v5;
              [v12 enumerateKeysAndObjectsUsingBlock:v19];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);
      }

      v4 = v18;
    }

    v13 = MEMORY[0x1E695DFA8];
    v14 = [v4 allKeys];
    v15 = [v13 setWithArray:v14];

    [v15 minusSet:v3];
    [v15 removeObject:@"DefaultsSanitizedVersion"];
    [v15 removeObject:@"GEODefaultsRevision"];
    [v15 removeObject:@"DisableSundanceCleanup"];
    [v15 addObject:@"entitled"];
    v16 = [v15 allObjects];
    [v5 removeObjectsForKeys:v16];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id GEODefaultsKeyStringForConfigKey(int a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__135064;
  v9 = __Block_byref_object_dispose__135065;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __GEODefaultsKeyStringForConfigKey_block_invoke;
  v4[3] = &unk_1E70606F8;
  v4[4] = &v5;
  GEOConfigGetPropertiesForKey(a1, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_186691494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_186692860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AuthKitLibraryCore(uint64_t a1)
{
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AuthKitLibraryCore_frameworkLibrary;
}

void sub_186692B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_186692EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_186693060(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_18669325C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GEOGetNetworkStatusLog()
{
  if (GEOGetNetworkStatusLog_onceToken != -1)
  {
    dispatch_once(&GEOGetNetworkStatusLog_onceToken, &__block_literal_global_63);
  }

  v1 = GEOGetNetworkStatusLog_log;

  return v1;
}

void sub_1866935A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL _GEOMapDataSubscriptionIdentifierIsCompatible(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 1;
  if (([v3 isEqualToString:v4] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"*") & 1) == 0)
  {
    if (![v3 hasSuffix:@"*"] || (objc_msgSend(v3, "substringToIndex:", objc_msgSend(v3, "length") - 1), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v4, "hasPrefix:", v7), v7, (v8 & 1) == 0))
    {
      v5 = 0;
    }
  }

  return v5;
}

BOOL __FetchExpiredSubscriptions_block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  do
  {
    if (v4 != 100)
    {
      break;
    }

    v5 = [*(a1 + 32) stringForColumn:0 inStatment:a2];
    v6 = [*(a1 + 32) stringForColumn:1 inStatment:a2];
    v7 = [*(a1 + 32) int64ForColumn:2 inStatment:a2];
    v8 = [*(a1 + 32) int64ForColumn:3 inStatment:a2];
    v9 = [*(a1 + 32) blobForColumn:4 inStatment:a2];
    v10 = [*(a1 + 32) stringForColumn:5 inStatment:a2];
    v11 = (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7, v8, v9, v10, [*(a1 + 32) intForColumn:6 inStatment:a2], objc_msgSend(*(a1 + 32), "int64ForColumn:inStatment:", 7, a2));
    v12 = v11;
    v4 = v11 ? sqlite3_step(a2) : 101;
  }

  while ((v12 & 1) != 0);
  if (v4 != 101)
  {
    v13 = *(a1 + 32);
    v14 = *(*(a1 + 48) + 8);
    obj = *(v14 + 40);
    [v13 reportSQLiteErrorCode:v4 method:@"step" error:&obj];
    objc_storeStrong((v14 + 40), obj);
  }

  return v4 == 101;
}

void sub_18669397C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __CalculateTotalOfflineDataSize_block_invoke(void *a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  v5 = a1[4];
  if (v4 == 100)
  {
    *(*(a1[5] + 8) + 24) = [v5 int64ForColumn:0 inStatment:a2];
  }

  else
  {
    v6 = *(a1[6] + 8);
    obj = *(v6 + 40);
    [v5 reportSQLiteErrorCode:v4 method:@"step" error:&obj];
    objc_storeStrong((v6 + 40), obj);
  }

  return v4 == 100;
}

void GEOConfigSetInteger(int a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  _setValue(a1, a2, v4, 1, 0);
}

uint64_t NanoPreferencesSyncLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = NanoPreferencesSyncLibraryCore_frameworkLibrary;
  v6 = NanoPreferencesSyncLibraryCore_frameworkLibrary;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E705FAB8;
    v8 = *off_1E705FAC8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    NanoPreferencesSyncLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_18669455C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNPSManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNPSManagerClass_softClass;
  v7 = getNPSManagerClass_softClass;
  if (!getNPSManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNPSManagerClass_block_invoke;
    v3[3] = &unk_1E7073678;
    v3[4] = &v4;
    __getNPSManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_186694654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MapsFeature_AddDelegateListener(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__166991;
  v22 = __Block_byref_object_dispose__166992;
  v23 = 0;
  objc_initWeak(&location, v8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __MapsFeature_AddDelegateListener_block_invoke;
  v15[3] = &unk_1E706E960;
  objc_copyWeak(v16, &location);
  v15[4] = &v18;
  v16[1] = a1;
  v16[2] = a2;
  v9 = MapsFeature_AddBlockListener(a1, a2, v7, v15);
  v10 = v19[5];
  v19[5] = v9;

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MapsFeature_AddDelegateListener_block_invoke_2;
  v12[3] = &unk_1E706E8E8;
  v11 = v8;
  v13 = v11;
  v14 = &v18;
  withSFFDelegateListeners(v12);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v18, 8);
}

void sub_186694828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void withSFFDelegateListeners(void *a1)
{
  v3 = a1;
  os_unfair_lock_lock(&withSFFDelegateListeners__lock);
  if (!withSFFDelegateListeners__delegateListeners)
  {
    v1 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v2 = withSFFDelegateListeners__delegateListeners;
    withSFFDelegateListeners__delegateListeners = v1;
  }

  v3[2]();
  os_unfair_lock_unlock(&withSFFDelegateListeners__lock);
}

id GEOGetETagFromExtendedAttributes(void *a1)
{
  v1 = [a1 fileSystemRepresentation];
  v2 = getxattr(v1, "com.apple.GeoServices.ETAG", 0, 0, 0, 0);
  if (v2 < 0)
  {
    v5 = 0;
  }

  else
  {
    v3 = v2;
    v4 = [MEMORY[0x1E695DF88] dataWithLength:v2];
    if (getxattr(v1, "com.apple.GeoServices.ETAG", [v4 mutableBytes], v3, 0, 0) < 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
    }
  }

  return v5;
}

id GEOURLAuthenticationGenerateURLFromComponents(void *a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[GEOResourceManifestManager modernManager];
  v3 = [v2 authToken];

  if (!v3)
  {
    v23 = [v1 URL];
    goto LABEL_32;
  }

  v4 = +[GEOCountryConfiguration sharedConfiguration];
  [v4 urlAuthenticationTimeToLive];
  v6 = v5;

  v7 = [@"4cjLaD4jGRwlQ9U" stringByAppendingString:v3];
  Current = CFAbsoluteTimeGetCurrent();
  v68 = v1;
  v9 = v1;
  v10 = v7;
  v11 = [MEMORY[0x1E696AD60] string];
  v12 = [@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789" length];
  v13 = 16;
  do
  {
    [v11 appendFormat:@"%c", objc_msgSend(@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", "characterAtIndex:", arc4random_uniform(v12))];
    --v13;
  }

  while (v13);
  v14 = v9;
  v15 = [v14 string];
  v16 = [v14 rangeOfPath];
  v18 = v17;
  v19 = [v14 rangeOfQuery];
  v21 = v20;

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = v15;
  }

  else
  {
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = v15;
      v25 = v16;
      v26 = v18;
    }

    else
    {
      if (v16 >= v19)
      {
        v25 = v19;
      }

      else
      {
        v25 = v16;
      }

      v27 = v16 + v18;
      if (v16 + v18 <= v19 + v21)
      {
        v27 = v19 + v21;
      }

      v26 = v27 - v25;
      v24 = v15;
    }

    v22 = [v24 substringWithRange:{v25, v26}];
  }

  v28 = v22;

  v29 = v28;
  v30 = v11;
  v67 = v10;
  v31 = [v10 stringByAppendingString:v30];
  memset(&c, 0, sizeof(c));
  v32 = [v31 cStringUsingEncoding:1];
  v33 = [v31 lengthOfBytesUsingEncoding:1];
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v32, v33);
  CC_SHA256_Final(md, &c);
  v34 = (v6 + Current + *MEMORY[0x1E695E468]);
  v35 = [MEMORY[0x1E696AD60] stringWithString:v29];
  [v35 appendFormat:@"%li", v34];
  [v35 appendString:v30];
  v36 = [v35 lengthOfBytesUsingEncoding:1];
  v37 = 16 - (v36 & 0xFu);
  v38 = v36 & 0xF | 0xFFFFFFFFFFFFFFF0;
  do
  {
    [v35 appendFormat:@"%c", v37];
  }

  while (!__CFADD__(v38++, 1));
  v40 = [v35 cStringUsingEncoding:1];
  v41 = [v35 lengthOfBytesUsingEncoding:1];
  cryptorRef = 0;
  v42 = CCCryptorCreate(0, 0, 0, md, 0x20uLL, 0, &cryptorRef);
  v66 = v3;
  if (v42)
  {
    NSLog(&cfstr_ErrorCreatingC.isa, v42);
    v43 = cryptorRef;
    if (!cryptorRef)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  OutputLength = CCCryptorGetOutputLength(cryptorRef, v41, 1);
  if (!OutputLength)
  {
    NSLog(&cfstr_ZeroSizeOutput.isa);
LABEL_28:
    v43 = cryptorRef;
LABEL_29:
    CCCryptorRelease(v43);
    goto LABEL_30;
  }

  v45 = OutputLength;
  v46 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
  if (!v46)
  {
    NSLog(&cfstr_ErrorAllocatin.isa);
    goto LABEL_28;
  }

  v47 = v41;
  v48 = v46;
  v49 = CCCryptorUpdate(cryptorRef, v40, v47, v46, v45, 0);
  if (v49)
  {
    NSLog(&cfstr_ErrorUpdatingC.isa, v49);
  }

  else
  {
    v63 = CCCryptorFinal(cryptorRef, v48, v45, 0);
    if (!v63)
    {
      v64 = v48;
      v65 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v48 length:v45 freeWhenDone:0];
      v50 = [v65 base64EncodedStringWithOptions:0];
      CCCryptorRelease(cryptorRef);
      free(v64);

      goto LABEL_31;
    }

    NSLog(&cfstr_ErrorFinalizin.isa, v63);
  }

  CCCryptorRelease(cryptorRef);
  free(v48);
LABEL_30:
  v34 = 0;
  v50 = 0;
LABEL_31:

  v51 = [MEMORY[0x1E696AD60] stringWithFormat:@"%lu_", v34];
  [v51 appendString:v30];
  [v51 appendString:@"_"];
  [v51 appendString:v50];
  v52 = escapeChars();
  v53 = [v51 stringByAddingPercentEncodingWithAllowedCharacters:v52];

  v54 = MEMORY[0x1E695DEC8];
  v55 = [v14 queryItems];
  v56 = [v54 arrayWithArray:v55];
  v57 = [MEMORY[0x1E696AF60] queryItemWithName:@"accessKey" value:@"A"];
  v58 = [v56 arrayByAddingObject:v57];
  [v14 setQueryItems:v58];

  v59 = MEMORY[0x1E696AD60];
  v60 = [v14 string];
  v61 = [v59 stringWithString:v60];

  [v61 replaceCharactersInRange:objc_msgSend(v61 withString:{"length") - 1, 1, v53}];
  v23 = [MEMORY[0x1E695DFF8] URLWithString:v61];

  v1 = v68;
  v3 = v66;
LABEL_32:

  return v23;
}

void sub_186695770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18669584C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id escapeChars()
{
  if (escapeChars_once != -1)
  {
    dispatch_once(&escapeChars_once, &__block_literal_global_123048);
  }

  v1 = escapeChars_chars;

  return v1;
}

BOOL GEOBZ2Compress(char *a1, unint64_t a2, char **a3, void *a4)
{
  if (a2 <= 0x400000)
  {
    v7 = a2;
    v9 = (a2 * 1.01);
    v10 = malloc_type_malloc(v9 + 604, 0x100004077774924uLL);
    *a3 = v10;
    *v10 = v7;
    destLen = v9 + 600;
    v11 = BZ2_bzBuffToBuffCompress(v10 + 4, &destLen, a1, v7, 1, 0, 0);
    v6 = v11 == 0;
    if (v11)
    {
      fprintf(*MEMORY[0x1E69E9848], "Bzip2 compress returned %d\n", v11);
    }

    *a4 = destLen + 4;
  }

  else
  {
    fprintf(*MEMORY[0x1E69E9848], "Refusing to compress with Bzip2 more than %d bytes\n", 0x400000);
    v6 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  return v6;
}

void __GEOConfigRemoveDelegateListenerForKey_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v27 = a4;
  v26 = a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [v8 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    v13 = v29;
    v25 = v9;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = *(a1 + 48);
        if (*(a1 + 40))
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          if (!v15)
          {
            continue;
          }

          if (*(a1 + 40) != *(v15 + 40) || v16 != *(v15 + 48))
          {
            continue;
          }
        }

        v19 = [v8 objectForKeyedSubscript:{*(*(&v31 + 1) + 8 * i), v25}];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v29[0] = __GEOConfigRemoveDelegateListenerForKey_block_invoke_2;
        v29[1] = &unk_1E705DB18;
        v30 = *(a1 + 32);
        v20 = [v19 indexOfObjectPassingTest:v28];
        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v19 removeObjectAtIndex:v20];
          if (![v19 count])
          {
            v21 = [(_GEOConfigKeyHelper *)v15 keyString];
            [(_GEOConfigKeyHelper *)v15 keyNumber];
            v23 = v22 = v13;
            [v8 setObject:0 forKeyedSubscript:v15];
            [v27 setObject:0 forKeyedSubscript:v21];
            [v26 setObject:0 forKeyedSubscript:v23];
            v24 = [MEMORY[0x1E695DFD8] setWithObject:v21];
            _GEORemoveChangeListenerForKeys(v24);

            v13 = v22;
            v9 = v25;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }
}

uint64_t __GEOConfigRemoveDelegateListenerForKey_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  v7 = v6;
  if (v6 && (v8 = objc_loadWeakRetained(v6 + 3)) != 0)
  {
    v9 = v8;
    WeakRetained = objc_loadWeakRetained(v7 + 3);
    *a4 = WeakRetained == *(a1 + 32);

    v11 = *a4;
  }

  else
  {
    v11 = 0;
    *a4 = 0;
  }

  return v11 & 1;
}

uint64_t GEOPDABClientDatasetMetadataReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      while (1)
      {
        if ([v3 hasError])
        {
          goto LABEL_50;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v34 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v34 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v34 & 0x7F) << v5;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          goto LABEL_50;
        }

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          break;
        }

        if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v36 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v36 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v36 & 0x7F) << v15;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v21 = v16++ > 8;
            if (v21)
            {
              v22 = 0;
              v23 = &OBJC_IVAR___GEOPDABClientDatasetMetadata__bucketId;
              goto LABEL_48;
            }
          }

          v23 = &OBJC_IVAR___GEOPDABClientDatasetMetadata__bucketId;
LABEL_45:
          if ([v3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v17;
          }

LABEL_48:
          *(a1 + *v23) = v22;
          goto LABEL_49;
        }

        if (!*(a1 + 8))
        {
          v29 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v30 = *(a1 + 8);
          *(a1 + 8) = v29;
        }

        if ((PBUnknownFieldAdd() & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_49:
        v31 = objc_msgSend_position(v3);
        if (v31 >= [v3 length])
        {
          goto LABEL_50;
        }
      }

      v24 = 0;
      v25 = 0;
      v17 = 0;
      *(a1 + 24) |= 2u;
      while (1)
      {
        v35 = 0;
        v26 = objc_msgSend_position(v3);
        if (v26 + 1 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 1 <= [v3 length]))
        {
          v28 = [v3 data];
          [v28 getBytes:&v35 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v17 |= (v35 & 0x7F) << v24;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v21 = v25++ > 8;
        if (v21)
        {
          v22 = 0;
          v23 = &OBJC_IVAR___GEOPDABClientDatasetMetadata__datasetId;
          goto LABEL_48;
        }
      }

      v23 = &OBJC_IVAR___GEOPDABClientDatasetMetadata__datasetId;
      goto LABEL_45;
    }

LABEL_50:
    v32 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_51:
    v32 = 0;
  }

  objc_sync_exit(v3);

  return v32;
}

void *GEOTileSetReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 88));
  [v3 setLength:*(a1 + 84)];
  [v3 seekToOffset:*(a1 + 80)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (a1 + 128);
  v12 = vld1q_dup_f32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddvq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBEEC0), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBEED0), v13)));
  while (1)
  {
    v15 = a3[v6];
    if (v15 > -3)
    {
      break;
    }

    if (v15 == -4)
    {
      ++v14;
      v8 = 1;
      goto LABEL_15;
    }

    if (v15 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v14;
LABEL_15:
    ++v6;
  }

  if (v15 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v15 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  v16 = v14 > 4;
  v117 = v9;
  v118 = v16 & ~v10 | v8;
  v17 = v10 | v16;
  v119 = v17 | v8;
  if ((v17 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v120 = (v18 == 0) | v17;
  v121 = v17;
  while (2)
  {
    v19 = objc_msgSend_position(v3);
    if (v19 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_240:
      v28 = 1;
      goto LABEL_241;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v122) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v122 & 0x7F) << v20;
      if ((v122 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v26 = v21++ >= 9;
      if (v26)
      {
        v22 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v22 = 0;
    }

LABEL_33:
    v27 = [v3 hasError];
    v28 = 1;
    if ((v27 & 1) != 0 || (v22 & 7) == 4)
    {
      goto LABEL_241;
    }

    v29 = v22 >> 3;
    v30 = v121;
    if ((v120 & 1) == 0)
    {
      v31 = v18;
      do
      {
        v33 = *v31++;
        v32 = v33;
        v30 = v33 != 0;
        if (v33)
        {
          v34 = v32 == v29;
        }

        else
        {
          v34 = 1;
        }
      }

      while (!v34);
    }

    switch(v29)
    {
      case 1:
        if (!v30)
        {
          goto LABEL_189;
        }

        if ((*(a1 + 129) & 2) == 0)
        {
          v35 = PBReaderReadString();
          v36 = 24;
          goto LABEL_128;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_272;
        }

        v111 = (*(a1 + 128) << 22) >> 31;
        goto LABEL_239;
      case 2:
        if (!v30)
        {
          goto LABEL_189;
        }

        if ((*(a1 + 129) & 0x20) == 0)
        {
          v35 = PBReaderReadString();
          v36 = 56;
          goto LABEL_128;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_272;
        }

        v111 = (*(a1 + 128) << 18) >> 31;
        goto LABEL_239;
      case 3:
        if ((v7 & 1) == 0)
        {
          goto LABEL_189;
        }

        v71 = 0;
        v72 = 0;
        v73 = 0;
        while (1)
        {
          LOBYTE(v122) = 0;
          v74 = objc_msgSend_position(v3) + 1;
          if (v74 >= objc_msgSend_position(v3) && (v75 = objc_msgSend_position(v3) + 1, v75 <= [v3 length]))
          {
            v76 = [v3 data];
            [v76 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v73 |= (v122 & 0x7F) << v71;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v26 = v72++ >= 9;
          if (v26)
          {
            v43 = 0;
            goto LABEL_214;
          }
        }

        if ([v3 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v73;
        }

LABEL_214:
        v109 = 116;
        goto LABEL_230;
      case 5:
        if (!v30 || (*(a1 + 129) & 0x80) != 0)
        {
          goto LABEL_189;
        }

        v122 = 0;
        v123 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_272;
        }

        v44 = objc_alloc_init(GEOTileSetVersion);
        if (!GEOTileSetVersionReadAllFrom(v44, v3, v117 & 1))
        {
          goto LABEL_271;
        }

        PBReaderRecallMark();
        [(GEOTileSet *)a1 _addNoFlagsValidVersion:v44];
        goto LABEL_178;
      case 6:
        if ((v7 & 1) == 0)
        {
          goto LABEL_189;
        }

        v45 = 0;
        v46 = 0;
        v47 = 0;
        while (1)
        {
          LOBYTE(v122) = 0;
          v48 = objc_msgSend_position(v3) + 1;
          if (v48 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3) + 1, v49 <= [v3 length]))
          {
            v50 = [v3 data];
            [v50 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v47 |= (v122 & 0x7F) << v45;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v26 = v46++ >= 9;
          if (v26)
          {
            v43 = 0;
            goto LABEL_198;
          }
        }

        if ([v3 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v47;
        }

LABEL_198:
        v109 = 108;
        goto LABEL_230;
      case 7:
        if ((v7 & 1) == 0)
        {
          goto LABEL_189;
        }

        v57 = 0;
        v58 = 0;
        v59 = 0;
        while (1)
        {
          LOBYTE(v122) = 0;
          v60 = objc_msgSend_position(v3) + 1;
          if (v60 >= objc_msgSend_position(v3) && (v61 = objc_msgSend_position(v3) + 1, v61 <= [v3 length]))
          {
            v62 = [v3 data];
            [v62 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v59 |= (v122 & 0x7F) << v57;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v26 = v58++ >= 9;
          if (v26)
          {
            v43 = 0;
            goto LABEL_206;
          }
        }

        if ([v3 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v59;
        }

LABEL_206:
        v109 = 112;
        goto LABEL_230;
      case 9:
        if (!v30)
        {
          goto LABEL_189;
        }

        if ((*(a1 + 129) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_272;
          }

          v111 = (*(a1 + 128) << 19) >> 31;
LABEL_239:
          v6 += v111;
        }

        else
        {
          v35 = PBReaderReadString();
          v36 = 48;
LABEL_128:
          v77 = *(a1 + v36);
          *(a1 + v36) = v35;

          --v6;
        }

        goto LABEL_231;
      case 10:
        if (!v30 || (*(a1 + 129) & 0x40) != 0)
        {
          goto LABEL_189;
        }

        v122 = 0;
        v123 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_272;
        }

        v44 = objc_alloc_init(GEOLanguage);
        if (!GEOLanguageReadAllFrom(v44, v3))
        {
          goto LABEL_271;
        }

        PBReaderRecallMark();
        [(GEOTileSet *)a1 _addNoFlagsSupportedLanguage:v44];
        goto LABEL_178;
      case 11:
        if ((v7 & 1) == 0)
        {
          goto LABEL_189;
        }

        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 128) |= 0x20u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v100 = objc_msgSend_position(v3) + 1;
          if (v100 >= objc_msgSend_position(v3) && (v101 = objc_msgSend_position(v3) + 1, v101 <= [v3 length]))
          {
            v102 = [v3 data];
            [v102 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v99 |= (v122 & 0x7F) << v97;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v26 = v98++ >= 9;
          if (v26)
          {
            v84 = 0;
            goto LABEL_224;
          }
        }

        v84 = (v99 != 0) & ~[v3 hasError];
LABEL_224:
        v110 = 124;
        goto LABEL_225;
      case 12:
        if ((v7 & 1) == 0)
        {
          goto LABEL_189;
        }

        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 128) |= 0x10u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v94 = objc_msgSend_position(v3) + 1;
          if (v94 >= objc_msgSend_position(v3) && (v95 = objc_msgSend_position(v3) + 1, v95 <= [v3 length]))
          {
            v96 = [v3 data];
            [v96 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v93 |= (v122 & 0x7F) << v91;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v26 = v92++ >= 9;
          if (v26)
          {
            v43 = 0;
            goto LABEL_222;
          }
        }

        if ([v3 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v93;
        }

LABEL_222:
        v109 = 120;
        goto LABEL_230;
      case 13:
        if (!v30 || (*(a1 + 129) & 4) != 0)
        {
          goto LABEL_189;
        }

        v122 = 0;
        v123 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_272;
        }

        v44 = objc_alloc_init(GEOCountryRegionTuple);
        if (GEOCountryRegionTupleReadAllFrom(v44, v3, v117 & 1))
        {
          PBReaderRecallMark();
          [(GEOTileSet *)a1 _addNoFlagsCountryRegionAllowlist:v44];
LABEL_178:

LABEL_231:
          if (!(v119 & 1 | (v6 != 0)))
          {
            goto LABEL_240;
          }

          continue;
        }

LABEL_271:

LABEL_272:
        v28 = 0;
LABEL_241:
        if (v118)
        {
LABEL_242:
          *(a1 + 128) |= 0x100u;
        }

        if (v121 || (v28 & 1) == 0)
        {
          *(a1 + 128) |= 0x200u;
          *(a1 + 128) |= 0x2000u;
          *(a1 + 128) |= 0x8000u;
          *(a1 + 128) |= 0x1000u;
          *(a1 + 128) |= 0x4000u;
          *(a1 + 128) |= 0x400u;
          *(a1 + 128) |= 0x800u;
          goto LABEL_265;
        }

        if (v18)
        {
          while (1)
          {
LABEL_246:
            v113 = *v18++;
            v112 = v113;
            if (v113 > 8)
            {
              if (v112 > 12)
              {
                if (v112 == 13)
                {
                  v114 = 1024;
                }

                else
                {
                  if (v112 != 20)
                  {
                    continue;
                  }

                  v114 = 2048;
                }
              }

              else if (v112 == 9)
              {
                v114 = 4096;
              }

              else
              {
                if (v112 != 10)
                {
                  continue;
                }

                v114 = 0x4000;
              }

              goto LABEL_263;
            }

            if (v112 > 1)
            {
              break;
            }

            if (v112 == 1)
            {
              v114 = 512;
LABEL_263:
              *(a1 + 128) |= v114;
              continue;
            }

            if (!v112)
            {
              goto LABEL_265;
            }
          }

          if (v112 == 2)
          {
            v114 = 0x2000;
          }

          else
          {
            if (v112 != 5)
            {
              goto LABEL_246;
            }

            v114 = 0x8000;
          }

          goto LABEL_263;
        }

LABEL_265:
        if (v28)
        {
          v3 = ([v3 hasError] ^ 1);
        }

        else
        {
          v3 = 0;
        }

        if (v121)
        {
          v115 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        return v3;
      case 14:
        if ((v7 & 1) == 0)
        {
          goto LABEL_189;
        }

        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 128) |= 2u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v66 = objc_msgSend_position(v3) + 1;
          if (v66 >= objc_msgSend_position(v3) && (v67 = objc_msgSend_position(v3) + 1, v67 <= [v3 length]))
          {
            v68 = [v3 data];
            [v68 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v65 |= (v122 & 0x7F) << v63;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v26 = v64++ >= 9;
          if (v26)
          {
            v43 = 0;
            goto LABEL_210;
          }
        }

        if ([v3 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v65;
        }

LABEL_210:
        v109 = 96;
        goto LABEL_230;
      case 15:
        if ((v7 & 1) == 0)
        {
          goto LABEL_189;
        }

        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 128) |= 4u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v54 = objc_msgSend_position(v3) + 1;
          if (v54 >= objc_msgSend_position(v3) && (v55 = objc_msgSend_position(v3) + 1, v55 <= [v3 length]))
          {
            v56 = [v3 data];
            [v56 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v53 |= (v122 & 0x7F) << v51;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v26 = v52++ >= 9;
          if (v26)
          {
            v43 = 0;
            goto LABEL_202;
          }
        }

        if ([v3 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v53;
        }

LABEL_202:
        v109 = 100;
        goto LABEL_230;
      case 16:
        if ((v7 & 1) == 0)
        {
          goto LABEL_189;
        }

        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 128) |= 8u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v40 = objc_msgSend_position(v3) + 1;
          if (v40 >= objc_msgSend_position(v3) && (v41 = objc_msgSend_position(v3) + 1, v41 <= [v3 length]))
          {
            v42 = [v3 data];
            [v42 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v39 |= (v122 & 0x7F) << v37;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v26 = v38++ >= 9;
          if (v26)
          {
            v43 = 0;
            goto LABEL_194;
          }
        }

        if ([v3 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_194:
        v109 = 104;
        goto LABEL_230;
      case 17:
        if ((v7 & 1) == 0)
        {
          goto LABEL_189;
        }

        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 128) |= 0x80u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v81 = objc_msgSend_position(v3) + 1;
          if (v81 >= objc_msgSend_position(v3) && (v82 = objc_msgSend_position(v3) + 1, v82 <= [v3 length]))
          {
            v83 = [v3 data];
            [v83 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v80 |= (v122 & 0x7F) << v78;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v26 = v79++ >= 9;
          if (v26)
          {
            v84 = 0;
            goto LABEL_216;
          }
        }

        v84 = (v80 != 0) & ~[v3 hasError];
LABEL_216:
        v110 = 126;
        goto LABEL_225;
      case 18:
        if ((v7 & 1) == 0)
        {
          goto LABEL_189;
        }

        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 128) |= 0x40u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v88 = objc_msgSend_position(v3) + 1;
          if (v88 >= objc_msgSend_position(v3) && (v89 = objc_msgSend_position(v3) + 1, v89 <= [v3 length]))
          {
            v90 = [v3 data];
            [v90 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v87 |= (v122 & 0x7F) << v85;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v26 = v86++ >= 9;
          if (v26)
          {
            v84 = 0;
            goto LABEL_218;
          }
        }

        v84 = (v87 != 0) & ~[v3 hasError];
LABEL_218:
        v110 = 125;
LABEL_225:
        *(a1 + v110) = v84;
        goto LABEL_231;
      case 19:
        if ((v7 & 1) == 0)
        {
          goto LABEL_189;
        }

        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 128) |= 1u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v106 = objc_msgSend_position(v3) + 1;
          if (v106 >= objc_msgSend_position(v3) && (v107 = objc_msgSend_position(v3) + 1, v107 <= [v3 length]))
          {
            v108 = [v3 data];
            [v108 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v105 |= (v122 & 0x7F) << v103;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v26 = v104++ >= 9;
          if (v26)
          {
            v43 = 0;
            goto LABEL_229;
          }
        }

        if ([v3 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v105;
        }

LABEL_229:
        v109 = 92;
LABEL_230:
        *(a1 + v109) = v43;
        goto LABEL_231;
      case 20:
        if (!v30 || (*(a1 + 129) & 8) != 0)
        {
          goto LABEL_189;
        }

        v44 = PBReaderReadString();
        if (v44)
        {
          [(GEOTileSet *)a1 _addNoFlagsDeviceSKUAllowlist:v44];
        }

        goto LABEL_178;
      default:
        if (v118 & 1) == 0 || (*(a1 + 129))
        {
LABEL_189:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_272;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v69 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v70 = *(a1 + 16);
            *(a1 + 16) = v69;
          }

          if (!PBUnknownFieldAdd())
          {
            v28 = 0;
            goto LABEL_242;
          }
        }

        goto LABEL_231;
    }
  }
}

void *GEODownloadMetadataReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 64));
  [v3 setLength:*(a1 + 60)];
  [v3 seekToOffset:*(a1 + 56)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 68) >> 3) & 1) + (*(a1 + 68) & 1) + ((*(a1 + 68) >> 2) & 1) + ((*(a1 + 68) >> 1) & 1);
  while (1)
  {
    v11 = a3[v8];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v6 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v8;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 > 1;
  v13 = v12 & ~v9 | v6;
  v14 = v9 | v12;
  LODWORD(v47) = v13;
  HIDWORD(v47) = v14 | v6;
  if ((v14 | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v48 = (v15 == 0) | v14;
  v49 = v14;
  while (1)
  {
    v16 = objc_msgSend_position(v3, v47);
    if (v16 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_76:
      v25 = 1;
      goto LABEL_77;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v51 = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v51 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v51 & 0x7F) << v17;
      if ((v51 & 0x80) == 0)
      {
        break;
      }

      v17 += 7;
      if (v18++ >= 9)
      {
        v19 = 0;
        goto LABEL_30;
      }
    }

    if ([v3 hasError])
    {
      v19 = 0;
    }

LABEL_30:
    v24 = [v3 hasError];
    v25 = 1;
    if ((v24 & 1) != 0 || (v19 & 7) == 4)
    {
      goto LABEL_77;
    }

    v26 = v19 >> 3;
    v27 = v49;
    if ((v48 & 1) == 0)
    {
      v28 = v15;
      do
      {
        v30 = *v28++;
        v29 = v30;
        v27 = v30 != 0;
        if (v30)
        {
          v31 = v29 == v26;
        }

        else
        {
          v31 = 1;
        }
      }

      while (!v31);
    }

    if (v26 > 2)
    {
      break;
    }

    if (v26 == 1)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_64;
      }

      v50 = 0;
      v36 = objc_msgSend_position(v3) + 8;
      if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 8, v37 <= [v3 length]))
      {
        v40 = [v3 data];
        [v40 getBytes:&v50 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      *(a1 + 40) = v50;
      goto LABEL_75;
    }

    if (v26 == 2)
    {
      if (!v27)
      {
        goto LABEL_64;
      }

      if ((*(a1 + 68) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_98;
        }

        v39 = 32 * *(a1 + 68);
        goto LABEL_72;
      }

      v32 = PBReaderReadString();
      v33 = 32;
      goto LABEL_63;
    }

LABEL_50:
    if (v47 & 1) == 0 || (*(a1 + 68))
    {
LABEL_64:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_75;
    }

    if (!*(a1 + 16))
    {
      v34 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v35 = *(a1 + 16);
      *(a1 + 16) = v34;
    }

    if (!PBUnknownFieldAdd())
    {
      v25 = 0;
      goto LABEL_78;
    }

LABEL_75:
    if (!(BYTE4(v47) & 1 | (v8 != 0)))
    {
      goto LABEL_76;
    }
  }

  if (v26 != 3)
  {
    if (v26 == 4)
    {
      if (!v27)
      {
        goto LABEL_64;
      }

      if ((*(a1 + 68) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_98;
        }

        v39 = *(a1 + 68) << 6;
        goto LABEL_72;
      }

      v32 = PBReaderReadString();
      v33 = 24;
      goto LABEL_63;
    }

    goto LABEL_50;
  }

  if (!v27)
  {
    goto LABEL_64;
  }

  if ((*(a1 + 68) & 8) == 0)
  {
    v32 = PBReaderReadString();
    v33 = 48;
LABEL_63:
    v38 = *(a1 + v33);
    *(a1 + v33) = v32;

    --v8;
    goto LABEL_75;
  }

  if (PBReaderSkipValueWithTag())
  {
    v39 = 16 * *(a1 + 68);
LABEL_72:
    v8 += v39 >> 7;
    goto LABEL_75;
  }

LABEL_98:
  v25 = 0;
LABEL_77:
  if ((v47 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_78:
  *(a1 + 68) |= 1u;
LABEL_79:
  if (v49 & 1 | ((v25 & 1) == 0))
  {
    *(a1 + 68) |= 4u;
    *(a1 + 68) |= 8u;
    *(a1 + 68) |= 2u;
    goto LABEL_92;
  }

  if (v15)
  {
    while (2)
    {
      while (1)
      {
        v42 = *v15++;
        v41 = v42;
        v43 = v42 == 2;
        if (v42 > 2)
        {
          break;
        }

        if (v43)
        {
          v44 = 4;
LABEL_90:
          *(a1 + 68) |= v44;
          continue;
        }

        if (!v41)
        {
          goto LABEL_92;
        }
      }

      if (v41 == 4)
      {
        v44 = 2;
      }

      else
      {
        if (v41 != 3)
        {
          continue;
        }

        v44 = 8;
      }

      goto LABEL_90;
    }
  }

LABEL_92:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v49)
  {
    v45 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEODownloadMetadataReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEODownloadMetadataReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 64));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 56) = objc_msgSend_position(v8);
  *(a1 + 60) = [v8 length];
  if (a3)
  {
    v9 = &GEODownloadMetadataReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEODownloadMetadataReadAllFrom_initialTag;
  }

  Specified = GEODownloadMetadataReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

id ErrorInfo::description(ErrorInfo *this, uint64_t a2)
{
  GEOMachAbsoluteTimeGetCurrent();
  v4 = v3;
  v5 = *this;
  v6 = [MEMORY[0x1E695DF70] array];
  for (i = *(this + 5); i != (this + 32); i = *(i + 8))
  {
    v11 = *(i + 16);
    v8 = GEOStringFromTileKey(&v11);
    [v6 addObject:v8];
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Error %@ age:%.1fs keys: %@>", *(this + 2), v4 - v5, v6];

  return v9;
}

id GEOStringFromTileKey(char *a1)
{
  v2 = *a1 & 0x1F;
  if (v2 > 0xD)
  {
    switch(v2)
    {
      case 0xEu:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"x:%d y:%d z:%d", *(a1 + 6) >> 6, *(a1 + 10) & 0x3FFFFFF, *(a1 + 6) & 0x3F, v48, v49];
        break;
      case 0xFu:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"x:%d y:%d z:%d (uncertainty: %u, build: %llu)", (*(a1 + 10) >> 5) & 0x1FFFFF, ((*(a1 + 10) | (*(a1 + 7) << 32)) >> 26) & 0x1FFFFF, *(a1 + 10) & 0x1F, a1[9], *(a1 + 1)];
        break;
      case 0x12u:
        v10 = MEMORY[0x1E696AD60];
        v11 = *(a1 + 1);
        v12 = *(a1 + 5);
        v13 = @"RASTER_STANDARD";
        switch(((v12 | (a1[9] << 32)) >> 26))
        {
          case 0u:
            break;
          case 1u:
            v13 = @"VECTOR_STANDARD";
            break;
          case 2u:
            v13 = @"VECTOR_TRAFFIC_SEGMENTS_FOR_RASTER";
            break;
          case 3u:
            v13 = @"VECTOR_TRAFFIC_INCIDENTS_FOR_RASTER";
            break;
          case 4u:
            v13 = @"VECTOR_TRAFFIC_SEGMENTS_AND_INCIDENTS_FOR_RASTER";
            break;
          case 5u:
            v13 = @"RASTER_STANDARD_BACKGROUND";
            break;
          case 6u:
            v13 = @"RASTER_HYBRID";
            break;
          case 7u:
            v13 = @"RASTER_SATELLITE";
            break;
          case 8u:
            v13 = @"RASTER_TERRAIN";
            break;
          case 0xBu:
            v13 = @"VECTOR_BUILDINGS";
            break;
          case 0xCu:
            v13 = @"VECTOR_TRAFFIC";
            break;
          case 0xDu:
            v13 = @"VECTOR_POI";
            break;
          case 0xEu:
            v13 = @"SPUTNIK_METADATA";
            break;
          case 0xFu:
            v13 = @"SPUTNIK_C3M";
            break;
          case 0x10u:
            v13 = @"SPUTNIK_DSM";
            break;
          case 0x11u:
            v13 = @"SPUTNIK_DSM_GLOBAL";
            break;
          case 0x12u:
            v13 = @"VECTOR_REALISTIC";
            break;
          case 0x13u:
            v13 = @"VECTOR_LEGACY_REALISTIC";
            break;
          case 0x14u:
            v13 = @"VECTOR_ROADS";
            break;
          case 0x15u:
            v13 = @"RASTER_VEGETATION";
            break;
          case 0x16u:
            v13 = @"VECTOR_TRAFFIC_SKELETON";
            break;
          case 0x17u:
            v13 = @"RASTER_COASTLINE_MASK";
            break;
          case 0x18u:
            v13 = @"RASTER_HILLSHADE";
            break;
          case 0x19u:
            v13 = @"VECTOR_TRAFFIC_WITH_GREEN";
            break;
          case 0x1Au:
            v13 = @"VECTOR_TRAFFIC_STATIC";
            break;
          case 0x1Bu:
            v13 = @"RASTER_COASTLINE_DROP_MASK";
            break;
          case 0x1Cu:
            v13 = @"VECTOR_TRAFFIC_SKELETON_WITH_HISTORICAL";
            break;
          case 0x1Du:
            v13 = @"VECTOR_SPEED_PROFILES";
            break;
          case 0x1Eu:
            v13 = @"VECTOR_VENUES";
            break;
          case 0x1Fu:
            v13 = @"RASTER_DOWN_SAMPLED";
            break;
          case 0x20u:
            v13 = @"RASTER_COLOR_BALANCED";
            break;
          case 0x21u:
            v13 = @"RASTER_SATELLITE_NIGHT";
            break;
          case 0x22u:
            v13 = @"SPUTNIK_VECTOR_BORDER";
            break;
          case 0x23u:
            v13 = @"RASTER_SATELLITE_DIGITIZE";
            break;
          case 0x24u:
            v13 = @"RASTER_HILLSHADE_PARKS";
            break;
          case 0x25u:
            v13 = @"VECTOR_TRANSIT";
            break;
          case 0x26u:
            v13 = @"RASTER_STANDARD_BASE";
            break;
          case 0x27u:
            v13 = @"RASTER_STANDARD_LABELS";
            break;
          case 0x28u:
            v13 = @"RASTER_HYBRID_ROADS";
            break;
          case 0x29u:
            v13 = @"RASTER_HYBRID_LABELS";
            break;
          case 0x2Au:
            v13 = @"FLYOVER_C3M_MESH";
            break;
          case 0x2Bu:
            v13 = @"FLYOVER_C3M_JPEG_TEXTURE";
            break;
          case 0x2Cu:
            v13 = @"FLYOVER_C3M_ASTC_TEXTURE";
            break;
          case 0x2Du:
            v13 = @"RASTER_SATELLITE_ASTC";
            break;
          case 0x2Eu:
            v13 = @"RASTER_HYBRID_ROADS_AND_LABELS";
            break;
          case 0x2Fu:
            v13 = @"VECTOR_TRANSIT_SELECTION";
            break;
          case 0x30u:
            v13 = @"VECTOR_COVERAGE";
            break;
          case 0x34u:
            v13 = @"FLYOVER_METADATA";
            break;
          case 0x35u:
            v13 = @"VECTOR_ROAD_NETWORK";
            break;
          case 0x36u:
            v13 = @"VECTOR_LAND_COVER";
            break;
          case 0x37u:
            v13 = @"VECTOR_DEBUG";
            break;
          case 0x38u:
            v13 = @"VECTOR_STREET_POI";
            break;
          case 0x39u:
            v13 = @"MUNIN_METADATA";
            break;
          case 0x3Au:
            v13 = @"VECTOR_SPR_MERCATOR";
            break;
          case 0x3Bu:
            v13 = @"VECTOR_SPR_MODELS";
            break;
          case 0x3Cu:
            v13 = @"VECTOR_SPR_MATERIALS";
            break;
          case 0x3Du:
            v13 = @"VECTOR_SPR_METADATA";
            break;
          case 0x3Eu:
            v13 = @"VECTOR_TRACKS";
            break;
          case 0x3Fu:
            v13 = @"VECTOR_RESERVED_2";
            break;
          case 0x40u:
            v13 = @"VECTOR_STREET_LANDMARKS";
            break;
          case 0x41u:
            v13 = @"COARSE_LOCATION_POLYGONS";
            break;
          case 0x42u:
            v13 = @"VECTOR_SPR_ROADS";
            break;
          case 0x43u:
            v13 = @"VECTOR_SPR_STANDARD";
            break;
          case 0x44u:
            v13 = @"VECTOR_POI_V2";
            break;
          case 0x45u:
            v13 = @"VECTOR_POLYGON_SELECTION";
            break;
          case 0x46u:
            v13 = @"VL_METADATA";
            break;
          case 0x47u:
            v13 = @"VL_DATA";
            break;
          case 0x48u:
            v13 = @"PROACTIVE_APP_CLIP";
            break;
          case 0x49u:
            v13 = @"VECTOR_BUILDINGS_V2";
            break;
          case 0x4Au:
            v13 = @"POI_BUSYNESS";
            break;
          case 0x4Bu:
            v13 = @"POI_DP_BUSYNESS";
            break;
          case 0x4Cu:
            v13 = @"SMART_INTERFACE_SELECTION";
            break;
          case 0x4Du:
            v13 = @"VECTOR_ASSETS";
            break;
          case 0x4Eu:
            v13 = @"SPR_ASSET_METADATA";
            break;
          case 0x4Fu:
            v13 = @"VECTOR_SPR_POLAR";
            break;
          case 0x50u:
            v13 = @"SMART_DATA_MODE";
            break;
          case 0x51u:
            v13 = @"CELLULAR_PERFORMANCE_SCORE";
            break;
          case 0x52u:
            v13 = @"VECTOR_SPR_MODELS_OCCLUSION";
            break;
          case 0x53u:
            v13 = @"VECTOR_TOPOGRAPHIC";
            break;
          case 0x54u:
            v13 = @"VECTOR_POI_V2_UPDATE";
            break;
          case 0x55u:
            v13 = @"VECTOR_LIVE_DATA_UPDATES";
            break;
          case 0x56u:
            v13 = @"VECTOR_TRAFFIC_V2";
            break;
          case 0x57u:
            v13 = @"VECTOR_ROAD_SELECTION";
            break;
          case 0x58u:
            v13 = @"VECTOR_REGION_METADATA";
            break;
          case 0x59u:
            v13 = @"RAY_TRACING";
            break;
          case 0x5Au:
            v13 = @"VECTOR_CONTOURS";
            break;
          case 0x5Bu:
            v13 = @"RASTER_SATELLITE_POLAR";
            break;
          case 0x5Cu:
            v13 = @"VMAP4_ELEVATION";
            break;
          case 0x5Du:
            v13 = @"VMAP4_ELEVATION_POLAR";
            break;
          case 0x5Eu:
            v13 = @"CELLULAR_COVERAGE_PLMN";
            break;
          case 0x5Fu:
            v13 = @"RASTER_SATELLITE_POLAR_NIGHT";
            break;
          case 0x60u:
            v13 = @"BLUEPOI_MODEL";
            break;
          case 0x61u:
            v13 = @"BLUEPOI_AOI";
            break;
          case 0x62u:
            v13 = @"UNUSED_98";
            break;
          case 0x63u:
            v13 = @"UNUSED_99";
            break;
          case 0x64u:
            v13 = @"UNUSED_100";
            break;
          case 0x65u:
            v13 = @"UNUSED_101";
            break;
          case 0x66u:
            v13 = @"UNUSED_102";
            break;
          case 0x67u:
            v13 = @"UNUSED_103";
            break;
          case 0x68u:
            v13 = @"UNUSED_104";
            break;
          case 0x69u:
            v13 = @"UNUSED_105";
            break;
          case 0x6Au:
            v13 = @"UNUSED_106";
            break;
          case 0x6Bu:
            v13 = @"UNUSED_107";
            break;
          case 0x6Cu:
            v13 = @"UNUSED_108";
            break;
          case 0x6Du:
            v13 = @"UNUSED_109";
            break;
          case 0x6Eu:
            v13 = @"UNUSED_110";
            break;
          case 0x6Fu:
            v13 = @"UNUSED_111";
            break;
          case 0x70u:
            v13 = @"UNUSED_112";
            break;
          case 0x71u:
            v13 = @"UNUSED_113";
            break;
          case 0x72u:
            v13 = @"UNUSED_114";
            break;
          case 0x73u:
            v13 = @"UNUSED_115";
            break;
          case 0x74u:
            v13 = @"UNUSED_116";
            break;
          case 0x75u:
            v13 = @"UNUSED_117";
            break;
          case 0x76u:
            v13 = @"UNUSED_118";
            break;
          case 0x77u:
            v13 = @"UNUSED_119";
            break;
          default:
            v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", (v12 | (a1[9] << 32)) >> 26];
            break;
        }

        v37 = v11 >> 6;
        v38 = v12 & 0x3FFFFFF;
        v39 = v11 & 0x3F;
        v40 = a1[10] & 0xF;
        if (v40 >= 3)
        {
          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1[10] & 0xF];
        }

        else
        {
          v41 = off_1E704EC20[v40];
        }

        v19 = objc_msgSend(v10, "stringWithFormat:", @"x:%d y:%d z:%d (type: %@ size: %@ domain:%d"), v37, v38, v39, v13, v41, *(a1 + 11) & 0xF;

        if (*a1 < 0)
        {
          [v19 appendFormat:@" expires", v46];
        }

        goto LABEL_503;
      default:
        goto LABEL_15;
    }
    v19 = ;
    goto LABEL_506;
  }

  if (v2 == 2)
  {
    v14 = MEMORY[0x1E696AD60];
    v15 = *(a1 + 6);
    v16 = *(a1 + 10);
    v17 = @"RASTER_STANDARD";
    switch(((v16 | (a1[14] << 32)) >> 26))
    {
      case 0u:
        break;
      case 1u:
        v17 = @"VECTOR_STANDARD";
        break;
      case 2u:
        v17 = @"VECTOR_TRAFFIC_SEGMENTS_FOR_RASTER";
        break;
      case 3u:
        v17 = @"VECTOR_TRAFFIC_INCIDENTS_FOR_RASTER";
        break;
      case 4u:
        v17 = @"VECTOR_TRAFFIC_SEGMENTS_AND_INCIDENTS_FOR_RASTER";
        break;
      case 5u:
        v17 = @"RASTER_STANDARD_BACKGROUND";
        break;
      case 6u:
        v17 = @"RASTER_HYBRID";
        break;
      case 7u:
        v17 = @"RASTER_SATELLITE";
        break;
      case 8u:
        v17 = @"RASTER_TERRAIN";
        break;
      case 0xBu:
        v17 = @"VECTOR_BUILDINGS";
        break;
      case 0xCu:
        v17 = @"VECTOR_TRAFFIC";
        break;
      case 0xDu:
        v17 = @"VECTOR_POI";
        break;
      case 0xEu:
        v17 = @"SPUTNIK_METADATA";
        break;
      case 0xFu:
        v17 = @"SPUTNIK_C3M";
        break;
      case 0x10u:
        v17 = @"SPUTNIK_DSM";
        break;
      case 0x11u:
        v17 = @"SPUTNIK_DSM_GLOBAL";
        break;
      case 0x12u:
        v17 = @"VECTOR_REALISTIC";
        break;
      case 0x13u:
        v17 = @"VECTOR_LEGACY_REALISTIC";
        break;
      case 0x14u:
        v17 = @"VECTOR_ROADS";
        break;
      case 0x15u:
        v17 = @"RASTER_VEGETATION";
        break;
      case 0x16u:
        v17 = @"VECTOR_TRAFFIC_SKELETON";
        break;
      case 0x17u:
        v17 = @"RASTER_COASTLINE_MASK";
        break;
      case 0x18u:
        v17 = @"RASTER_HILLSHADE";
        break;
      case 0x19u:
        v17 = @"VECTOR_TRAFFIC_WITH_GREEN";
        break;
      case 0x1Au:
        v17 = @"VECTOR_TRAFFIC_STATIC";
        break;
      case 0x1Bu:
        v17 = @"RASTER_COASTLINE_DROP_MASK";
        break;
      case 0x1Cu:
        v17 = @"VECTOR_TRAFFIC_SKELETON_WITH_HISTORICAL";
        break;
      case 0x1Du:
        v17 = @"VECTOR_SPEED_PROFILES";
        break;
      case 0x1Eu:
        v17 = @"VECTOR_VENUES";
        break;
      case 0x1Fu:
        v17 = @"RASTER_DOWN_SAMPLED";
        break;
      case 0x20u:
        v17 = @"RASTER_COLOR_BALANCED";
        break;
      case 0x21u:
        v17 = @"RASTER_SATELLITE_NIGHT";
        break;
      case 0x22u:
        v17 = @"SPUTNIK_VECTOR_BORDER";
        break;
      case 0x23u:
        v17 = @"RASTER_SATELLITE_DIGITIZE";
        break;
      case 0x24u:
        v17 = @"RASTER_HILLSHADE_PARKS";
        break;
      case 0x25u:
        v17 = @"VECTOR_TRANSIT";
        break;
      case 0x26u:
        v17 = @"RASTER_STANDARD_BASE";
        break;
      case 0x27u:
        v17 = @"RASTER_STANDARD_LABELS";
        break;
      case 0x28u:
        v17 = @"RASTER_HYBRID_ROADS";
        break;
      case 0x29u:
        v17 = @"RASTER_HYBRID_LABELS";
        break;
      case 0x2Au:
        v17 = @"FLYOVER_C3M_MESH";
        break;
      case 0x2Bu:
        v17 = @"FLYOVER_C3M_JPEG_TEXTURE";
        break;
      case 0x2Cu:
        v17 = @"FLYOVER_C3M_ASTC_TEXTURE";
        break;
      case 0x2Du:
        v17 = @"RASTER_SATELLITE_ASTC";
        break;
      case 0x2Eu:
        v17 = @"RASTER_HYBRID_ROADS_AND_LABELS";
        break;
      case 0x2Fu:
        v17 = @"VECTOR_TRANSIT_SELECTION";
        break;
      case 0x30u:
        v17 = @"VECTOR_COVERAGE";
        break;
      case 0x34u:
        v17 = @"FLYOVER_METADATA";
        break;
      case 0x35u:
        v17 = @"VECTOR_ROAD_NETWORK";
        break;
      case 0x36u:
        v17 = @"VECTOR_LAND_COVER";
        break;
      case 0x37u:
        v17 = @"VECTOR_DEBUG";
        break;
      case 0x38u:
        v17 = @"VECTOR_STREET_POI";
        break;
      case 0x39u:
        v17 = @"MUNIN_METADATA";
        break;
      case 0x3Au:
        v17 = @"VECTOR_SPR_MERCATOR";
        break;
      case 0x3Bu:
        v17 = @"VECTOR_SPR_MODELS";
        break;
      case 0x3Cu:
        v17 = @"VECTOR_SPR_MATERIALS";
        break;
      case 0x3Du:
        v17 = @"VECTOR_SPR_METADATA";
        break;
      case 0x3Eu:
        v17 = @"VECTOR_TRACKS";
        break;
      case 0x3Fu:
        v17 = @"VECTOR_RESERVED_2";
        break;
      case 0x40u:
        v17 = @"VECTOR_STREET_LANDMARKS";
        break;
      case 0x41u:
        v17 = @"COARSE_LOCATION_POLYGONS";
        break;
      case 0x42u:
        v17 = @"VECTOR_SPR_ROADS";
        break;
      case 0x43u:
        v17 = @"VECTOR_SPR_STANDARD";
        break;
      case 0x44u:
        v17 = @"VECTOR_POI_V2";
        break;
      case 0x45u:
        v17 = @"VECTOR_POLYGON_SELECTION";
        break;
      case 0x46u:
        v17 = @"VL_METADATA";
        break;
      case 0x47u:
        v17 = @"VL_DATA";
        break;
      case 0x48u:
        v17 = @"PROACTIVE_APP_CLIP";
        break;
      case 0x49u:
        v17 = @"VECTOR_BUILDINGS_V2";
        break;
      case 0x4Au:
        v17 = @"POI_BUSYNESS";
        break;
      case 0x4Bu:
        v17 = @"POI_DP_BUSYNESS";
        break;
      case 0x4Cu:
        v17 = @"SMART_INTERFACE_SELECTION";
        break;
      case 0x4Du:
        v17 = @"VECTOR_ASSETS";
        break;
      case 0x4Eu:
        v17 = @"SPR_ASSET_METADATA";
        break;
      case 0x4Fu:
        v17 = @"VECTOR_SPR_POLAR";
        break;
      case 0x50u:
        v17 = @"SMART_DATA_MODE";
        break;
      case 0x51u:
        v17 = @"CELLULAR_PERFORMANCE_SCORE";
        break;
      case 0x52u:
        v17 = @"VECTOR_SPR_MODELS_OCCLUSION";
        break;
      case 0x53u:
        v17 = @"VECTOR_TOPOGRAPHIC";
        break;
      case 0x54u:
        v17 = @"VECTOR_POI_V2_UPDATE";
        break;
      case 0x55u:
        v17 = @"VECTOR_LIVE_DATA_UPDATES";
        break;
      case 0x56u:
        v17 = @"VECTOR_TRAFFIC_V2";
        break;
      case 0x57u:
        v17 = @"VECTOR_ROAD_SELECTION";
        break;
      case 0x58u:
        v17 = @"VECTOR_REGION_METADATA";
        break;
      case 0x59u:
        v17 = @"RAY_TRACING";
        break;
      case 0x5Au:
        v17 = @"VECTOR_CONTOURS";
        break;
      case 0x5Bu:
        v17 = @"RASTER_SATELLITE_POLAR";
        break;
      case 0x5Cu:
        v17 = @"VMAP4_ELEVATION";
        break;
      case 0x5Du:
        v17 = @"VMAP4_ELEVATION_POLAR";
        break;
      case 0x5Eu:
        v17 = @"CELLULAR_COVERAGE_PLMN";
        break;
      case 0x5Fu:
        v17 = @"RASTER_SATELLITE_POLAR_NIGHT";
        break;
      case 0x60u:
        v17 = @"BLUEPOI_MODEL";
        break;
      case 0x61u:
        v17 = @"BLUEPOI_AOI";
        break;
      case 0x62u:
        v17 = @"UNUSED_98";
        break;
      case 0x63u:
        v17 = @"UNUSED_99";
        break;
      case 0x64u:
        v17 = @"UNUSED_100";
        break;
      case 0x65u:
        v17 = @"UNUSED_101";
        break;
      case 0x66u:
        v17 = @"UNUSED_102";
        break;
      case 0x67u:
        v17 = @"UNUSED_103";
        break;
      case 0x68u:
        v17 = @"UNUSED_104";
        break;
      case 0x69u:
        v17 = @"UNUSED_105";
        break;
      case 0x6Au:
        v17 = @"UNUSED_106";
        break;
      case 0x6Bu:
        v17 = @"UNUSED_107";
        break;
      case 0x6Cu:
        v17 = @"UNUSED_108";
        break;
      case 0x6Du:
        v17 = @"UNUSED_109";
        break;
      case 0x6Eu:
        v17 = @"UNUSED_110";
        break;
      case 0x6Fu:
        v17 = @"UNUSED_111";
        break;
      case 0x70u:
        v17 = @"UNUSED_112";
        break;
      case 0x71u:
        v17 = @"UNUSED_113";
        break;
      case 0x72u:
        v17 = @"UNUSED_114";
        break;
      case 0x73u:
        v17 = @"UNUSED_115";
        break;
      case 0x74u:
        v17 = @"UNUSED_116";
        break;
      case 0x75u:
        v17 = @"UNUSED_117";
        break;
      case 0x76u:
        v17 = @"UNUSED_118";
        break;
      case 0x77u:
        v17 = @"UNUSED_119";
        break;
      default:
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", (v16 | (a1[14] << 32)) >> 26];
        break;
    }

    v26 = v15 >> 6;
    v27 = v16 & 0x3FFFFFF;
    v28 = v15 & 0x3F;
    v29 = a1[15] & 0xF;
    if (v29 >= 3)
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1[15] & 0xF];
    }

    else
    {
      v30 = off_1E704EC20[v29];
    }

    v19 = objc_msgSend(v14, "stringWithFormat:", @"x:%d y:%d z:%d (type: %@ size: %@"), v26, v27, v28, v17, v30;

    v31 = a1[15];
    if (v31 >= 0x10)
    {
      v32 = v31 >> 4;
      if (v32 == 1)
      {
        v33 = @"LODPI";
      }

      else if (v32 == 2)
      {
        v33 = @"HIDPI";
      }

      else
      {
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v32];
      }

      [v19 appendFormat:@" scale: %@", v33];
    }

    goto LABEL_487;
  }

  if (v2 == 9)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = *(a1 + 1);
    v23 = a1[9];
    if (*(a1 + 11))
    {
      v24 = "Y";
    }

    else
    {
      v24 = "N";
    }

    v25 = @"RASTER_STANDARD";
    switch(a1[10])
    {
      case 0:
        break;
      case 1:
        v25 = @"VECTOR_STANDARD";
        break;
      case 2:
        v25 = @"VECTOR_TRAFFIC_SEGMENTS_FOR_RASTER";
        break;
      case 3:
        v25 = @"VECTOR_TRAFFIC_INCIDENTS_FOR_RASTER";
        break;
      case 4:
        v25 = @"VECTOR_TRAFFIC_SEGMENTS_AND_INCIDENTS_FOR_RASTER";
        break;
      case 5:
        v25 = @"RASTER_STANDARD_BACKGROUND";
        break;
      case 6:
        v25 = @"RASTER_HYBRID";
        break;
      case 7:
        v25 = @"RASTER_SATELLITE";
        break;
      case 8:
        v25 = @"RASTER_TERRAIN";
        break;
      case 11:
        v25 = @"VECTOR_BUILDINGS";
        break;
      case 12:
        v25 = @"VECTOR_TRAFFIC";
        break;
      case 13:
        v25 = @"VECTOR_POI";
        break;
      case 14:
        v25 = @"SPUTNIK_METADATA";
        break;
      case 15:
        v25 = @"SPUTNIK_C3M";
        break;
      case 16:
        v25 = @"SPUTNIK_DSM";
        break;
      case 17:
        v25 = @"SPUTNIK_DSM_GLOBAL";
        break;
      case 18:
        v25 = @"VECTOR_REALISTIC";
        break;
      case 19:
        v25 = @"VECTOR_LEGACY_REALISTIC";
        break;
      case 20:
        v25 = @"VECTOR_ROADS";
        break;
      case 21:
        v25 = @"RASTER_VEGETATION";
        break;
      case 22:
        v25 = @"VECTOR_TRAFFIC_SKELETON";
        break;
      case 23:
        v25 = @"RASTER_COASTLINE_MASK";
        break;
      case 24:
        v25 = @"RASTER_HILLSHADE";
        break;
      case 25:
        v25 = @"VECTOR_TRAFFIC_WITH_GREEN";
        break;
      case 26:
        v25 = @"VECTOR_TRAFFIC_STATIC";
        break;
      case 27:
        v25 = @"RASTER_COASTLINE_DROP_MASK";
        break;
      case 28:
        v25 = @"VECTOR_TRAFFIC_SKELETON_WITH_HISTORICAL";
        break;
      case 29:
        v25 = @"VECTOR_SPEED_PROFILES";
        break;
      case 30:
        v25 = @"VECTOR_VENUES";
        break;
      case 31:
        v25 = @"RASTER_DOWN_SAMPLED";
        break;
      case 32:
        v25 = @"RASTER_COLOR_BALANCED";
        break;
      case 33:
        v25 = @"RASTER_SATELLITE_NIGHT";
        break;
      case 34:
        v25 = @"SPUTNIK_VECTOR_BORDER";
        break;
      case 35:
        v25 = @"RASTER_SATELLITE_DIGITIZE";
        break;
      case 36:
        v25 = @"RASTER_HILLSHADE_PARKS";
        break;
      case 37:
        v25 = @"VECTOR_TRANSIT";
        break;
      case 38:
        v25 = @"RASTER_STANDARD_BASE";
        break;
      case 39:
        v25 = @"RASTER_STANDARD_LABELS";
        break;
      case 40:
        v25 = @"RASTER_HYBRID_ROADS";
        break;
      case 41:
        v25 = @"RASTER_HYBRID_LABELS";
        break;
      case 42:
        v25 = @"FLYOVER_C3M_MESH";
        break;
      case 43:
        v25 = @"FLYOVER_C3M_JPEG_TEXTURE";
        break;
      case 44:
        v25 = @"FLYOVER_C3M_ASTC_TEXTURE";
        break;
      case 45:
        v25 = @"RASTER_SATELLITE_ASTC";
        break;
      case 46:
        v25 = @"RASTER_HYBRID_ROADS_AND_LABELS";
        break;
      case 47:
        v25 = @"VECTOR_TRANSIT_SELECTION";
        break;
      case 48:
        v25 = @"VECTOR_COVERAGE";
        break;
      case 52:
        v25 = @"FLYOVER_METADATA";
        break;
      case 53:
        v25 = @"VECTOR_ROAD_NETWORK";
        break;
      case 54:
        v25 = @"VECTOR_LAND_COVER";
        break;
      case 55:
        v25 = @"VECTOR_DEBUG";
        break;
      case 56:
        v25 = @"VECTOR_STREET_POI";
        break;
      case 57:
        v25 = @"MUNIN_METADATA";
        break;
      case 58:
        v25 = @"VECTOR_SPR_MERCATOR";
        break;
      case 59:
        v25 = @"VECTOR_SPR_MODELS";
        break;
      case 60:
        v25 = @"VECTOR_SPR_MATERIALS";
        break;
      case 61:
        v25 = @"VECTOR_SPR_METADATA";
        break;
      case 62:
        v25 = @"VECTOR_TRACKS";
        break;
      case 63:
        v25 = @"VECTOR_RESERVED_2";
        break;
      case 64:
        v25 = @"VECTOR_STREET_LANDMARKS";
        break;
      case 65:
        v25 = @"COARSE_LOCATION_POLYGONS";
        break;
      case 66:
        v25 = @"VECTOR_SPR_ROADS";
        break;
      case 67:
        v25 = @"VECTOR_SPR_STANDARD";
        break;
      case 68:
        v25 = @"VECTOR_POI_V2";
        break;
      case 69:
        v25 = @"VECTOR_POLYGON_SELECTION";
        break;
      case 70:
        v25 = @"VL_METADATA";
        break;
      case 71:
        v25 = @"VL_DATA";
        break;
      case 72:
        v25 = @"PROACTIVE_APP_CLIP";
        break;
      case 73:
        v25 = @"VECTOR_BUILDINGS_V2";
        break;
      case 74:
        v25 = @"POI_BUSYNESS";
        break;
      case 75:
        v25 = @"POI_DP_BUSYNESS";
        break;
      case 76:
        v25 = @"SMART_INTERFACE_SELECTION";
        break;
      case 77:
        v25 = @"VECTOR_ASSETS";
        break;
      case 78:
        v25 = @"SPR_ASSET_METADATA";
        break;
      case 79:
        v25 = @"VECTOR_SPR_POLAR";
        break;
      case 80:
        v25 = @"SMART_DATA_MODE";
        break;
      case 81:
        v25 = @"CELLULAR_PERFORMANCE_SCORE";
        break;
      case 82:
        v25 = @"VECTOR_SPR_MODELS_OCCLUSION";
        break;
      case 83:
        v25 = @"VECTOR_TOPOGRAPHIC";
        break;
      case 84:
        v25 = @"VECTOR_POI_V2_UPDATE";
        break;
      case 85:
        v25 = @"VECTOR_LIVE_DATA_UPDATES";
        break;
      case 86:
        v25 = @"VECTOR_TRAFFIC_V2";
        break;
      case 87:
        v25 = @"VECTOR_ROAD_SELECTION";
        break;
      case 88:
        v25 = @"VECTOR_REGION_METADATA";
        break;
      case 89:
        v25 = @"RAY_TRACING";
        break;
      case 90:
        v25 = @"VECTOR_CONTOURS";
        break;
      case 91:
        v25 = @"RASTER_SATELLITE_POLAR";
        break;
      case 92:
        v25 = @"VMAP4_ELEVATION";
        break;
      case 93:
        v25 = @"VMAP4_ELEVATION_POLAR";
        break;
      case 94:
        v25 = @"CELLULAR_COVERAGE_PLMN";
        break;
      case 95:
        v25 = @"RASTER_SATELLITE_POLAR_NIGHT";
        break;
      case 96:
        v25 = @"BLUEPOI_MODEL";
        break;
      case 97:
        v25 = @"BLUEPOI_AOI";
        break;
      case 98:
        v25 = @"UNUSED_98";
        break;
      case 99:
        v25 = @"UNUSED_99";
        break;
      case 100:
        v25 = @"UNUSED_100";
        break;
      case 101:
        v25 = @"UNUSED_101";
        break;
      case 102:
        v25 = @"UNUSED_102";
        break;
      case 103:
        v25 = @"UNUSED_103";
        break;
      case 104:
        v25 = @"UNUSED_104";
        break;
      case 105:
        v25 = @"UNUSED_105";
        break;
      case 106:
        v25 = @"UNUSED_106";
        break;
      case 107:
        v25 = @"UNUSED_107";
        break;
      case 108:
        v25 = @"UNUSED_108";
        break;
      case 109:
        v25 = @"UNUSED_109";
        break;
      case 110:
        v25 = @"UNUSED_110";
        break;
      case 111:
        v25 = @"UNUSED_111";
        break;
      case 112:
        v25 = @"UNUSED_112";
        break;
      case 113:
        v25 = @"UNUSED_113";
        break;
      case 114:
        v25 = @"UNUSED_114";
        break;
      case 115:
        v25 = @"UNUSED_115";
        break;
      case 116:
        v25 = @"UNUSED_116";
        break;
      case 117:
        v25 = @"UNUSED_117";
        break;
      case 118:
        v25 = @"UNUSED_118";
        break;
      case 119:
        v25 = @"UNUSED_119";
        break;
      default:
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1[10]];
        break;
    }

    v19 = [v21 stringWithFormat:@"id: %llu lod: %u ASTC: %s type: %@", v22, v23, v24, v25];

    goto LABEL_506;
  }

  if (v2 != 12)
  {
LABEL_15:
    v18 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"x:%d y:%d z:%d (type: %d pixel: %d"), *(a1 + 6) >> 6, *(a1 + 10) & 0x3FFFFFF, *(a1 + 6) & 0x3F, (*(a1 + 10) | (a1[14] << 32)) >> 26, a1[15] & 0xF;
    v19 = v18;
    v20 = a1[15];
    if (v20 >= 0x10)
    {
      [v18 appendFormat:@" text: %d", v20 >> 4];
    }

LABEL_487:
    if (*a1 < 0)
    {
      [v19 appendFormat:@" expires"];
    }

    v34 = *(a1 + 1);
    if (v34 | (a1[5] << 32))
    {
      [v19 appendFormat:@" r: %llu", v34 | (a1[5] << 32)];
    }

LABEL_503:
    [v19 appendString:@""]);
    goto LABEL_506;
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 9) | (a1[11] << 16);
  v5 = *(a1 + 1) & 0x3FLL;
  *(&v7 + 1) = *(a1 + 9);
  *&v7 = *(a1 + 1);
  v6 = v7 >> 6;
  v8 = (v4 >> 6) & 0x3FFF;
  v9 = @"RASTER_STANDARD";
  switch(v8)
  {
    case 0:
      break;
    case 1:
      v9 = @"VECTOR_STANDARD";
      break;
    case 2:
      v9 = @"VECTOR_TRAFFIC_SEGMENTS_FOR_RASTER";
      break;
    case 3:
      v9 = @"VECTOR_TRAFFIC_INCIDENTS_FOR_RASTER";
      break;
    case 4:
      v9 = @"VECTOR_TRAFFIC_SEGMENTS_AND_INCIDENTS_FOR_RASTER";
      break;
    case 5:
      v9 = @"RASTER_STANDARD_BACKGROUND";
      break;
    case 6:
      v9 = @"RASTER_HYBRID";
      break;
    case 7:
      v9 = @"RASTER_SATELLITE";
      break;
    case 8:
      v9 = @"RASTER_TERRAIN";
      break;
    case 11:
      v9 = @"VECTOR_BUILDINGS";
      break;
    case 12:
      v9 = @"VECTOR_TRAFFIC";
      break;
    case 13:
      v9 = @"VECTOR_POI";
      break;
    case 14:
      v9 = @"SPUTNIK_METADATA";
      break;
    case 15:
      v9 = @"SPUTNIK_C3M";
      break;
    case 16:
      v9 = @"SPUTNIK_DSM";
      break;
    case 17:
      v9 = @"SPUTNIK_DSM_GLOBAL";
      break;
    case 18:
      v9 = @"VECTOR_REALISTIC";
      break;
    case 19:
      v9 = @"VECTOR_LEGACY_REALISTIC";
      break;
    case 20:
      v9 = @"VECTOR_ROADS";
      break;
    case 21:
      v9 = @"RASTER_VEGETATION";
      break;
    case 22:
      v9 = @"VECTOR_TRAFFIC_SKELETON";
      break;
    case 23:
      v9 = @"RASTER_COASTLINE_MASK";
      break;
    case 24:
      v9 = @"RASTER_HILLSHADE";
      break;
    case 25:
      v9 = @"VECTOR_TRAFFIC_WITH_GREEN";
      break;
    case 26:
      v9 = @"VECTOR_TRAFFIC_STATIC";
      break;
    case 27:
      v9 = @"RASTER_COASTLINE_DROP_MASK";
      break;
    case 28:
      v9 = @"VECTOR_TRAFFIC_SKELETON_WITH_HISTORICAL";
      break;
    case 29:
      v9 = @"VECTOR_SPEED_PROFILES";
      break;
    case 30:
      v9 = @"VECTOR_VENUES";
      break;
    case 31:
      v9 = @"RASTER_DOWN_SAMPLED";
      break;
    case 32:
      v9 = @"RASTER_COLOR_BALANCED";
      break;
    case 33:
      v9 = @"RASTER_SATELLITE_NIGHT";
      break;
    case 34:
      v9 = @"SPUTNIK_VECTOR_BORDER";
      break;
    case 35:
      v9 = @"RASTER_SATELLITE_DIGITIZE";
      break;
    case 36:
      v9 = @"RASTER_HILLSHADE_PARKS";
      break;
    case 37:
      v9 = @"VECTOR_TRANSIT";
      break;
    case 38:
      v9 = @"RASTER_STANDARD_BASE";
      break;
    case 39:
      v9 = @"RASTER_STANDARD_LABELS";
      break;
    case 40:
      v9 = @"RASTER_HYBRID_ROADS";
      break;
    case 41:
      v9 = @"RASTER_HYBRID_LABELS";
      break;
    case 42:
      v9 = @"FLYOVER_C3M_MESH";
      break;
    case 43:
      v9 = @"FLYOVER_C3M_JPEG_TEXTURE";
      break;
    case 44:
      v9 = @"FLYOVER_C3M_ASTC_TEXTURE";
      break;
    case 45:
      v9 = @"RASTER_SATELLITE_ASTC";
      break;
    case 46:
      v9 = @"RASTER_HYBRID_ROADS_AND_LABELS";
      break;
    case 47:
      v9 = @"VECTOR_TRANSIT_SELECTION";
      break;
    case 48:
      v9 = @"VECTOR_COVERAGE";
      break;
    case 52:
      v9 = @"FLYOVER_METADATA";
      break;
    case 53:
      v9 = @"VECTOR_ROAD_NETWORK";
      break;
    case 54:
      v9 = @"VECTOR_LAND_COVER";
      break;
    case 55:
      v9 = @"VECTOR_DEBUG";
      break;
    case 56:
      v9 = @"VECTOR_STREET_POI";
      break;
    case 57:
      v9 = @"MUNIN_METADATA";
      break;
    case 58:
      v9 = @"VECTOR_SPR_MERCATOR";
      break;
    case 59:
      v9 = @"VECTOR_SPR_MODELS";
      break;
    case 60:
      v9 = @"VECTOR_SPR_MATERIALS";
      break;
    case 61:
      v9 = @"VECTOR_SPR_METADATA";
      break;
    case 62:
      v9 = @"VECTOR_TRACKS";
      break;
    case 63:
      v9 = @"VECTOR_RESERVED_2";
      break;
    case 64:
      v9 = @"VECTOR_STREET_LANDMARKS";
      break;
    case 65:
      v9 = @"COARSE_LOCATION_POLYGONS";
      break;
    case 66:
      v9 = @"VECTOR_SPR_ROADS";
      break;
    case 67:
      v9 = @"VECTOR_SPR_STANDARD";
      break;
    case 68:
      v9 = @"VECTOR_POI_V2";
      break;
    case 69:
      v9 = @"VECTOR_POLYGON_SELECTION";
      break;
    case 70:
      v9 = @"VL_METADATA";
      break;
    case 71:
      v9 = @"VL_DATA";
      break;
    case 72:
      v9 = @"PROACTIVE_APP_CLIP";
      break;
    case 73:
      v9 = @"VECTOR_BUILDINGS_V2";
      break;
    case 74:
      v9 = @"POI_BUSYNESS";
      break;
    case 75:
      v9 = @"POI_DP_BUSYNESS";
      break;
    case 76:
      v9 = @"SMART_INTERFACE_SELECTION";
      break;
    case 77:
      v9 = @"VECTOR_ASSETS";
      break;
    case 78:
      v9 = @"SPR_ASSET_METADATA";
      break;
    case 79:
      v9 = @"VECTOR_SPR_POLAR";
      break;
    case 80:
      v9 = @"SMART_DATA_MODE";
      break;
    case 81:
      v9 = @"CELLULAR_PERFORMANCE_SCORE";
      break;
    case 82:
      v9 = @"VECTOR_SPR_MODELS_OCCLUSION";
      break;
    case 83:
      v9 = @"VECTOR_TOPOGRAPHIC";
      break;
    case 84:
      v9 = @"VECTOR_POI_V2_UPDATE";
      break;
    case 85:
      v9 = @"VECTOR_LIVE_DATA_UPDATES";
      break;
    case 86:
      v9 = @"VECTOR_TRAFFIC_V2";
      break;
    case 87:
      v9 = @"VECTOR_ROAD_SELECTION";
      break;
    case 88:
      v9 = @"VECTOR_REGION_METADATA";
      break;
    case 89:
      v9 = @"RAY_TRACING";
      break;
    case 90:
      v9 = @"VECTOR_CONTOURS";
      break;
    case 91:
      v9 = @"RASTER_SATELLITE_POLAR";
      break;
    case 92:
      v9 = @"VMAP4_ELEVATION";
      break;
    case 93:
      v9 = @"VMAP4_ELEVATION_POLAR";
      break;
    case 94:
      v9 = @"CELLULAR_COVERAGE_PLMN";
      break;
    case 95:
      v9 = @"RASTER_SATELLITE_POLAR_NIGHT";
      break;
    case 96:
      v9 = @"BLUEPOI_MODEL";
      break;
    case 97:
      v9 = @"BLUEPOI_AOI";
      break;
    case 98:
      v9 = @"UNUSED_98";
      break;
    case 99:
      v9 = @"UNUSED_99";
      break;
    case 100:
      v9 = @"UNUSED_100";
      break;
    case 101:
      v9 = @"UNUSED_101";
      break;
    case 102:
      v9 = @"UNUSED_102";
      break;
    case 103:
      v9 = @"UNUSED_103";
      break;
    case 104:
      v9 = @"UNUSED_104";
      break;
    case 105:
      v9 = @"UNUSED_105";
      break;
    case 106:
      v9 = @"UNUSED_106";
      break;
    case 107:
      v9 = @"UNUSED_107";
      break;
    case 108:
      v9 = @"UNUSED_108";
      break;
    case 109:
      v9 = @"UNUSED_109";
      break;
    case 110:
      v9 = @"UNUSED_110";
      break;
    case 111:
      v9 = @"UNUSED_111";
      break;
    case 112:
      v9 = @"UNUSED_112";
      break;
    case 113:
      v9 = @"UNUSED_113";
      break;
    case 114:
      v9 = @"UNUSED_114";
      break;
    case 115:
      v9 = @"UNUSED_115";
      break;
    case 116:
      v9 = @"UNUSED_116";
      break;
    case 117:
      v9 = @"UNUSED_117";
      break;
    case 118:
      v9 = @"UNUSED_118";
      break;
    case 119:
      v9 = @"UNUSED_119";
      break;
    default:
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", (v4 >> 6) & 0x3FFF];
      break;
  }

  v19 = [v3 stringWithFormat:@"z=%u qk=%llu t=%u (%@)", v5, v6, v8, v9];

  v35 = *(a1 + 3);
  if (((*(a1 + 9) | (a1[11] << 16)) & 0xFFFC0) == 0x1800)
  {
    [v19 stringByAppendingFormat:@" version: %u", v35 & 0x3FF, v47];
  }

  else
  {
    if (!v35)
    {
      goto LABEL_506;
    }

    [v19 stringByAppendingFormat:@" mcc: %u mnc: %u", v35 & 0x3FF, (v35 >> 10) & 0x3FF];
  }
  v36 = ;

  v19 = v36;
LABEL_506:
  v42 = MEMORY[0x1E696AEC0];
  v43 = GEOStringFromTileProvider(*a1 & 0x7F);
  v44 = [v42 stringWithFormat:@"{%@ / %@}", v43, v19];

  return v44;
}

id GEOStringFromTileProvider(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = v2;
  if ((a1 & 0x40) != 0)
  {
    [v2 appendString:@"Offline "];
  }

  switch(a1 & 0x1F)
  {
    case 1:
      v4 = @"Invalid";
      goto LABEL_27;
    case 2:
      v4 = @"Voltaire";
      goto LABEL_27;
    case 3:
      v4 = @"VoltaireSimple3D";
      goto LABEL_27;
    case 4:
      v4 = @"VoltaireSputnikMetadata";
      goto LABEL_27;
    case 5:
      v4 = @"MuninTile";
      goto LABEL_27;
    case 6:
      v4 = @"MuninMesh";
      goto LABEL_27;
    case 7:
      v4 = @"MuninTexture";
      goto LABEL_27;
    case 8:
      v4 = @"Regional";
      goto LABEL_27;
    case 9:
      v4 = @"Identified";
      goto LABEL_27;
    case 0xALL:
      v4 = @"FeatureSpecific";
      goto LABEL_27;
    case 0xBLL:
      v4 = @"PolygonSelection";
      goto LABEL_27;
    case 0xCLL:
      v4 = @"Gloria";
      goto LABEL_27;
    case 0xDLL:
    case 0xFLL:
      v4 = @"VL";
      goto LABEL_27;
    case 0xELL:
      v4 = @"VLMeta";
      goto LABEL_27;
    case 0x10:
      v4 = @"S2";
      goto LABEL_27;
    case 0x12:
      v4 = @"Live";
      goto LABEL_27;
    case 0x13:
      v4 = @"RoadSelection";
      goto LABEL_27;
    case 0x14:
      v4 = @"ContourLines";
      goto LABEL_27;
    case 0x1BLL:
      v4 = @"External_1";
      goto LABEL_27;
    case 0x1CLL:
      v4 = @"External_2";
      goto LABEL_27;
    case 0x1DLL:
      v4 = @"External_3";
      goto LABEL_27;
    case 0x1ELL:
      v4 = @"External_4";
LABEL_27:
      [v3 appendString:v4];
      break;
    default:
      [v3 appendFormat:@"Unknown(%d)", a1];
      break;
  }

  return v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<anonymous namespace::Result>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id anonymous namespace::Result::plistEncoded(_anonymous_namespace_::Result *this, uint64_t a2)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"age";
  v3 = MEMORY[0x1E696AD98];
  GEOGetMonotonicTime();
  v5 = [v3 numberWithDouble:v4 - *this];
  v15[0] = v5;
  v14[1] = @"timestamp";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*this];
  v15[1] = v6;
  v14[2] = @"request";
  v7 = GEODataRequestKindAsString(*(this + 1));
  v15[2] = v7;
  v14[3] = @"status";
  v8 = *(this + 2);
  if (v8 > 6)
  {
    v9 = "invalid";
  }

  else
  {
    v9 = off_1E70564B0[v8];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
  v15[3] = v10;
  v14[4] = @"interfaces";
  v11 = GEORequestCounterInterfaceTypesToStrings(*(this + 3));
  v15[4] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  return v12;
}

id GEORequestCounterInterfaceTypesToStrings(uint64_t a1)
{
  if (!a1)
  {
    v3 = &unk_1EFA22070;
    goto LABEL_16;
  }

  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v3 = v2;
  if (v1)
  {
    [v2 addObject:@"WiFi/Wired"];
    if ((v1 & 2) == 0)
    {
LABEL_4:
      if ((v1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"Cellular"];
  if ((v1 & 4) == 0)
  {
LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 addObject:@"Expensive"];
  if ((v1 & 8) == 0)
  {
LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    [v3 addObject:@"Multipath"];
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_13:
  [v3 addObject:@"Constrained"];
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v1 & 0x100) != 0)
  {
LABEL_15:
    [v3 addObject:@"Offline"];
  }

LABEL_16:

  return v3;
}

uint64_t *LoadItem::addRequester(int8x8_t *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, char a8, double a9, int a10, _OWORD *a11, int a12, uint64_t a13)
{
  v78 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v45 = a3;
  v46 = v21;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  LoadItem::deleteRequester(a1, v21, 1, 1);
  v22 = v49;
  v23 = v48;
  v53 = v47;
  v24 = v45;
  v25 = v46;
  v54 = off_1EF7E6AA0;
  v55 = v25;
  v56 = off_1EF7E6AD0;
  v57 = v24;
  v52 = v57;

  geo::_retain_ptr<NSObject  {objcproto17OS_dispatch_queue}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(v58, v53);
  v26 = v23;
  v27 = v26;
  v59 = off_1EF7E6B00;
  v60 = 0;
  v51 = v26;
  if (v26)
  {
    v28 = [v26 copy];
  }

  else
  {
    v28 = _Block_copy(0);
  }

  v29 = v60;
  v60 = v28;

  v30 = v22;
  v31 = v30;
  v61 = off_1EF7E6B30;
  v62 = 0;
  if (v30)
  {
    v32 = [v30 copy];
  }

  else
  {
    v32 = _Block_copy(0);
  }

  v33 = v62;
  v62 = v32;

  *&v63 = a7;
  BYTE8(v63) = a8;
  HIDWORD(v63) = a10;
  v64[0] = 0;
  *&v64[20] = a12;
  v65 = voucher_copy();
  *&v66 = a13;
  *(&v66 + 1) = a9;
  v64[1] = a11 != 0;
  if (a11)
  {
    *&v64[4] = *a11;
  }

  v50 = v25;
  v67 = v50;
  geo::_retain_ptr<NSString * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v68, &v54);
  geo::_retain_ptr<GEOApplicationAuditToken * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v69, &v56);
  geo::_retain_ptr<NSObject  {objcproto17OS_dispatch_queue}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(v70, v58);
  geo::_retain_ptr<void({block_pointer} {__strong})(void),geo::_copy_block_arc<void({block_pointer} {__strong})(void)>,geo::_release_block_arc<void({block_pointer} {__strong})(void)>,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(v71, &v59);
  geo::_retain_ptr<void({block_pointer} {__strong})(_GEOTileKey const*,GEOTileData *,unsigned long,NSError *,NSDictionary *),geo::_copy_block_arc<void({block_pointer} {__strong})(_GEOTileKey const*,GEOTileData *,unsigned long,NSError *,NSDictionary *)>,geo::_release_block_arc<void({block_pointer} {__strong})(_GEOTileKey const*,GEOTileData *,unsigned long,NSError *,NSDictionary *)>,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(v72, &v61);
  v73 = v63;
  v74 = *v64;
  v34 = v65;
  v65 = 0;
  v75 = *&v64[16];
  v76 = v34;
  v77 = v66;
  v35 = [v67 hash];
  v36 = v35;
  v37 = a1[12];
  if (!*&v37)
  {
    goto LABEL_26;
  }

  v38 = vcnt_s8(v37);
  v38.i16[0] = vaddlv_u8(v38);
  v39 = v38.u32[0];
  if (v38.u32[0] > 1uLL)
  {
    v40 = v35;
    if (v35 >= *&v37)
    {
      v40 = v35 % *&v37;
    }
  }

  else
  {
    v40 = (*&v37 - 1) & v35;
  }

  v41 = *(*&a1[11] + 8 * v40);
  if (!v41 || (v42 = *v41) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v43 = v42[1];
    if (v43 == v36)
    {
      break;
    }

    if (v39 > 1)
    {
      if (v43 >= *&v37)
      {
        v43 %= *&v37;
      }
    }

    else
    {
      v43 &= *&v37 - 1;
    }

    if (v43 != v40)
    {
      goto LABEL_26;
    }

LABEL_25:
    v42 = *v42;
    if (!v42)
    {
      goto LABEL_26;
    }
  }

  if (([v42[2] isEqualToString:v67] & 1) == 0)
  {
    goto LABEL_25;
  }

  v72[0] = off_1EF7E6B30;
  v71[0] = off_1EF7E6B00;

  v70[0] = off_1EF7E6910;
  v69[0] = off_1EF7E6AD0;

  v68[0] = off_1EF7E6AA0;
  v61 = off_1EF7E6B30;

  v59 = off_1EF7E6B00;
  v58[0] = off_1EF7E6910;

  v56 = off_1EF7E6AD0;
  v54 = off_1EF7E6AA0;

  return (v42 + 3);
}

void *geo::_retain_ptr<NSObject  {objcproto17OS_dispatch_queue}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1EF7E6910;
  a1[1] = v3;
  return a1;
}

uint64_t geo::_retain_ptr<NSString * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = off_1EF7E6AA0;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

uint64_t geo::_retain_ptr<NSObject  {objcproto17OS_dispatch_queue}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = off_1EF7E6910;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

uint64_t geo::_retain_ptr<GEOApplicationAuditToken * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = off_1EF7E6AD0;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void *geo::_retain_ptr<void({block_pointer} {__strong})(void),geo::_copy_block_arc<void({block_pointer} {__strong})(void)>,geo::_release_block_arc<void({block_pointer} {__strong})(void)>,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = off_1EF7E6B00;
  a1[1] = 0;
  v4 = _Block_copy(*(a2 + 8));
  v5 = a1[1];
  a1[1] = v4;

  v6 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void *geo::_retain_ptr<void({block_pointer} {__strong})(_GEOTileKey const*,GEOTileData *,unsigned long,NSError *,NSDictionary *),geo::_copy_block_arc<void({block_pointer} {__strong})(_GEOTileKey const*,GEOTileData *,unsigned long,NSError *,NSDictionary *)>,geo::_release_block_arc<void({block_pointer} {__strong})(_GEOTileKey const*,GEOTileData *,unsigned long,NSError *,NSDictionary *)>,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = off_1EF7E6B30;
  a1[1] = 0;
  v4 = _Block_copy(*(a2 + 8));
  v5 = a1[1];
  a1[1] = v4;

  v6 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void sub_1866A00E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SetValue(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __SetValue_block_invoke;
  v18[3] = &unk_1E704E628;
  v12 = v9;
  v22 = &v24;
  v23 = a3;
  v19 = v12;
  v13 = v10;
  v20 = v13;
  v14 = v11;
  v21 = v14;
  v15 = [v12 executeStatement:@"SetValue" statementBlock:v18];
  if (a2)
  {
    v16 = v25[5];
    if (v16)
    {
      *a2 = v16;
    }
  }

  _Block_object_dispose(&v24, 8);
  return v15;
}

void sub_1866A04E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SetValue_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[8];
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindInt64Parameter:"@rowid" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1[7] + 8);
  v18 = *(v10 + 40);
  v11 = [v8 bindTextParameter:"@type" toValue:v9 inStatement:a2 error:&v18];
  objc_storeStrong((v10 + 40), v18);
  if (!v11)
  {
    return 0;
  }

  v12 = a1[4];
  v13 = a1[6];
  v14 = *(a1[7] + 8);
  v17 = *(v14 + 40);
  v15 = [v12 bindTextParameter:"@value" toValue:v13 inStatement:a2 error:&v17];
  objc_storeStrong((v14 + 40), v17);
  return v15;
}

id uniqueIdentifierForTileGroup(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a5;
  v11 = a4;
  v12 = a2;
  v13 = a1;
  v14 = [a3 allObjects];
  v15 = [v14 sortedArrayUsingSelector:sel_compare_];

  v16 = [v11 allObjects];

  v17 = [v16 sortedArrayUsingSelector:sel_compare_];

  v18 = MEMORY[0x1E696AEC0];
  v19 = [v13 identifier];

  if (_GEOConfigHasValue(94, &GeoServicesConfig_ActiveTileGroupModelVersionOverride_Metadata))
  {
    UInteger = GEOConfigGetUInteger(94, &GeoServicesConfig_ActiveTileGroupModelVersionOverride_Metadata);
  }

  else
  {
    UInteger = 13;
  }

  v21 = [v15 componentsJoinedByString:{@", "}];
  v22 = [v17 componentsJoinedByString:{@", "}];
  v23 = [v10 identifier];

  v24 = [v18 stringWithFormat:@"%@:%i:%i:scl=%@&scn=%@&dsid=%u&gsd=%u", v12, v19, UInteger, v21, v22, v23, a6];

  return v24;
}

uint64_t AccountsLibraryCore(uint64_t a1)
{
  if (!AccountsLibraryCore_frameworkLibrary)
  {
    AccountsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AccountsLibraryCore_frameworkLibrary;
}

uint64_t AccountsLibrary()
{
  v3 = 0;
  v0 = AccountsLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

void std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      free(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_1866A161C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void __GEOGetNetworkStatusLog_block_invoke()
{
  v0 = os_log_create("com.apple.GeoServices", "NetworkStatus");
  v1 = GEOGetNetworkStatusLog_log;
  GEOGetNetworkStatusLog_log = v0;
}

id GEOURLAuthenticationGenerateURL(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
    v2 = GEOURLAuthenticationGenerateURLFromComponents(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *GEOABSecondPartyPlaceRequestClientMetaDataReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOABSecondPartyPlaceRequestClientMetaDataReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 56));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 48) = objc_msgSend_position(v8);
  *(a1 + 52) = [v8 length];
  if (a3)
  {
    v9 = &GEOABSecondPartyPlaceRequestClientMetaDataReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOABSecondPartyPlaceRequestClientMetaDataReadAllFrom_initialTag;
  }

  Specified = GEOABSecondPartyPlaceRequestClientMetaDataReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOABSecondPartyPlaceRequestClientMetaDataCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOABSecondPartyPlaceRequestClientMetaDataReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 56));
  [v3 setLength:*(a1 + 52)];
  [v3 seekToOffset:*(a1 + 48)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = ((*(a1 + 60) >> 1) & 1) + (*(a1 + 60) & 1) + ((*(a1 + 60) >> 3) & 1) + ((*(a1 + 60) >> 2) & 1);
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 1;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v42) = v14;
  HIDWORD(v42) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v43 = (v16 == 0) | v15;
  v44 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v42);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_72:
      v26 = 1;
      goto LABEL_75;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v45) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v45 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v45 & 0x7F) << v18;
      if ((v45 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      if (v19++ >= 9)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_75;
    }

    v27 = v20 >> 3;
    v28 = v44;
    if ((v43 & 1) == 0)
    {
      v29 = v16;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v28 = v31 != 0;
        if (v31)
        {
          v32 = v30 == v27;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    if (v27 == 5)
    {
      break;
    }

    if (v27 == 2)
    {
      if (!v28 || (*(a1 + 60) & 2) != 0)
      {
LABEL_67:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_74;
        }

        goto LABEL_68;
      }

      v45 = 0;
      v46 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_74;
      }

      v33 = objc_alloc_init(GEOABClientConfig);
      if (!GEOABClientConfigReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_73;
      }

      PBReaderRecallMark();
      [(GEOABSecondPartyPlaceRequestClientMetaData *)a1 _addNoFlagsClientConfig:v33];
      goto LABEL_55;
    }

    if (v27 == 1)
    {
      if (!v28 || (*(a1 + 60) & 8) != 0)
      {
        goto LABEL_67;
      }

      v45 = 0;
      v46 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_74;
      }

      v33 = objc_alloc_init(GEOABExperimentAssignment);
      if (!GEOABExperimentAssignmentReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_73;
      }

      PBReaderRecallMark();
      [(GEOABSecondPartyPlaceRequestClientMetaData *)a1 _addNoFlagsServerAbAssignment:v33];
LABEL_55:

      goto LABEL_68;
    }

    if (v42 & 1) == 0 || (*(a1 + 60))
    {
      goto LABEL_67;
    }

    if (!*(a1 + 16))
    {
      v35 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v36 = *(a1 + 16);
      *(a1 + 16) = v35;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      goto LABEL_76;
    }

LABEL_68:
    if (!(BYTE4(v42) & 1 | (v6 != 0)))
    {
      goto LABEL_72;
    }
  }

  if (!v28)
  {
    goto LABEL_67;
  }

  if ((*(a1 + 60) & 4) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_74;
    }

    v6 += *(a1 + 60) << 29 >> 31;
    goto LABEL_68;
  }

  v45 = 0;
  v46 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_74;
  }

  v33 = objc_alloc_init(GEOPDABClientDatasetMetadata);
  if (GEOPDABClientDatasetMetadataReadAllFrom(v33, v3))
  {
    PBReaderRecallMark();
    v34 = *(a1 + 32);
    *(a1 + 32) = v33;

    --v6;
    goto LABEL_68;
  }

LABEL_73:

LABEL_74:
  v26 = 0;
LABEL_75:
  if ((v42 & 1) == 0)
  {
    goto LABEL_77;
  }

LABEL_76:
  *(a1 + 60) |= 1u;
LABEL_77:
  if (v44 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 60) |= 8u;
    *(a1 + 60) |= 2u;
    *(a1 + 60) |= 4u;
    goto LABEL_90;
  }

  if (v16)
  {
    do
    {
      while (2)
      {
        while (1)
        {
          v38 = *v16++;
          v37 = v38;
          v39 = v38 == 1;
          if (v38 <= 1)
          {
            break;
          }

          if (v37 == 5)
          {
            LOBYTE(v37) = 4;
            goto LABEL_88;
          }

          if (v37 == 2)
          {
            goto LABEL_88;
          }
        }

        if (v39)
        {
          LOBYTE(v37) = 8;
LABEL_88:
          *(a1 + 60) |= v37;
          continue;
        }

        break;
      }
    }

    while (v37);
  }

LABEL_90:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v44)
  {
    v40 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void GEOConfigRemoveDelegateListenerForKey(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __GEOConfigRemoveDelegateListenerForKey_block_invoke;
  v9[3] = &unk_1E705DB40;
  v11 = a1;
  v12 = a2;
  v10 = v5;
  v6 = v9;
  v7 = _initKeyChangeListeners_onceToken[0];
  v8 = v5;
  if (v7 != -1)
  {
    dispatch_once(_initKeyChangeListeners_onceToken, &__block_literal_global_128);
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = ___withKeyListeners_block_invoke;
  v16 = &unk_1E7073628;
  v17 = v6;
  geo_isolate_sync();
}

void *GEOTileSetReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 84))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOTileSetReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 88));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 80) = objc_msgSend_position(v8);
  *(a1 + 84) = [v8 length];
  if (a3)
  {
    v9 = &GEOTileSetReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOTileSetReadAllFrom_initialTag;
  }

  Specified = GEOTileSetReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOTileSetCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 88));
  return Specified;
}

uint64_t AppleAccountLibraryCore(uint64_t a1)
{
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AppleAccountLibraryCore_frameworkLibrary;
}

void *GEOPDAssociatedAppReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDAssociatedAppReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 48));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 40) = objc_msgSend_position(v8);
  *(a1 + 44) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDAssociatedAppReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDAssociatedAppReadAllFrom_initialTag;
  }

  Specified = GEOPDAssociatedAppReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDAssociatedAppReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 48));
  [v3 setLength:*(a1 + 44)];
  [v3 seekToOffset:*(a1 + 40)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 52) >> 1) & 1) + (*(a1 + 52) & 1) + ((*(a1 + 52) >> 2) & 1);
  while (1)
  {
    v11 = a3[v9];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      goto LABEL_10;
    }

    if (v11 == -3)
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v9;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
LABEL_10:
    v7 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = v10 != 0;
  v13 = v6 | v12;
  LODWORD(v40) = v12 & ~v6 | v7;
  if (((v6 | v12) | v8))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  HIDWORD(v40) = v13 | v7;
  while (1)
  {
    v15 = objc_msgSend_position(v3, v40);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_61:
      v24 = 1;
      goto LABEL_62;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v41 = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v41 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v41 & 0x7F) << v16;
      if ((v41 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      if (v17++ >= 9)
      {
        v18 = 0;
        goto LABEL_31;
      }
    }

    if ([v3 hasError])
    {
      v18 = 0;
    }

LABEL_31:
    v23 = [v3 hasError];
    v24 = 1;
    if ((v23 & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_62;
    }

    v25 = v18 >> 3;
    v26 = v13;
    if (!((v14 == 0) | v13 & 1))
    {
      v27 = v14;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v26 = v29 != 0;
        if (v29)
        {
          v30 = v28 == v25;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
    }

    if (v25 != 2)
    {
      break;
    }

    if (!v26 || (*(a1 + 52) & 2) != 0)
    {
LABEL_56:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_57;
    }

    v33 = PBReaderReadString();
    if (v33)
    {
      [(GEOPDAssociatedApp *)a1 _addNoFlagsAlternateAppAdamId:v33];
    }

LABEL_57:
    if (!(BYTE4(v40) & 1 | (v9 != 0)))
    {
      goto LABEL_61;
    }
  }

  if (v25 != 1)
  {
    if (v40 & 1) == 0 || (*(a1 + 52))
    {
      goto LABEL_56;
    }

    if (!*(a1 + 16))
    {
      v34 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v35 = *(a1 + 16);
      *(a1 + 16) = v34;
    }

    if (!PBUnknownFieldAdd())
    {
      v24 = 0;
      goto LABEL_63;
    }

    goto LABEL_57;
  }

  if (!v26)
  {
    goto LABEL_56;
  }

  if ((*(a1 + 52) & 4) == 0)
  {
    v31 = PBReaderReadString();
    v32 = *(a1 + 32);
    *(a1 + 32) = v31;

    --v9;
    goto LABEL_57;
  }

  if (PBReaderSkipValueWithTag())
  {
    v9 += *(a1 + 52) << 29 >> 31;
    goto LABEL_57;
  }

LABEL_79:
  v24 = 0;
LABEL_62:
  if ((v40 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_63:
  *(a1 + 52) |= 1u;
LABEL_64:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + 52) |= 4u;
    *(a1 + 52) |= 2u;
    goto LABEL_73;
  }

  if (v14)
  {
    while (2)
    {
      while (1)
      {
        v37 = *v14++;
        v36 = v37;
        if (v37 == 1)
        {
          break;
        }

        if (v36 == 2)
        {
          goto LABEL_72;
        }

        if (!v36)
        {
          goto LABEL_73;
        }
      }

      LOBYTE(v36) = 4;
LABEL_72:
      *(a1 + 52) |= v36;
      continue;
    }
  }

LABEL_73:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_77:
    v38 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_77;
    }
  }

  return v3;
}

void *GEOPDAttributionReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 68))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDAttributionReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 72));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 64) = objc_msgSend_position(v8);
  *(a1 + 68) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDAttributionReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDAttributionReadAllFrom_initialTag;
  }

  Specified = GEOPDAttributionReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 72));
  return Specified;
}

void *GEOPDAttributionReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 72));
  [v3 setLength:*(a1 + 68)];
  [v3 seekToOffset:*(a1 + 64)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (vaddv_s16((*&vshl_u16(vdup_n_s16(*(a1 + 76)), 0xFFFFFFFEFFFDFFFBLL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 76) & 0x10) != 0) + (*(a1 + 76) & 1));
  while (1)
  {
    v11 = a3[v7];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v8 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v6 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v7;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 > 3;
  v13 = v9 | v12;
  LODWORD(v42) = v12 & ~v9 | v8;
  HIDWORD(v42) = v9 | v12 | v8;
  if (((v9 | v12) | v6))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  while (1)
  {
    v15 = objc_msgSend_position(v3, v42);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_80:
      v24 = 1;
      goto LABEL_81;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v43 = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v43 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v43 & 0x7F) << v16;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      if (v17++ >= 9)
      {
        v18 = 0;
        goto LABEL_29;
      }
    }

    if ([v3 hasError])
    {
      v18 = 0;
    }

LABEL_29:
    v23 = [v3 hasError];
    v24 = 1;
    if ((v23 & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_81;
    }

    v25 = v18 >> 3;
    v26 = v13;
    if (!((v14 == 0) | v13 & 1))
    {
      v27 = v14;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v26 = v29 != 0;
        if (v29)
        {
          v30 = v28 == v25;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
    }

    if (v25 <= 2)
    {
      break;
    }

    if (v25 == 3)
    {
      if (!v26)
      {
        goto LABEL_68;
      }

      if ((*(a1 + 76) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_104;
        }

        v37 = 16 * *(a1 + 76);
        goto LABEL_78;
      }

      v31 = PBReaderReadString();
      v32 = 40;
      goto LABEL_61;
    }

    if (v25 != 4)
    {
      if (v25 == 5)
      {
        if (!v26)
        {
          goto LABEL_68;
        }

        if ((*(a1 + 76) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_104;
          }

          v37 = *(a1 + 76) << 6;
          goto LABEL_78;
        }

        v31 = PBReaderReadString();
        v32 = 24;
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    if (!v26 || (*(a1 + 76) & 4) != 0)
    {
LABEL_68:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_79;
    }

    v33 = PBReaderReadString();
    if (v33)
    {
      [(GEOPDAttribution *)a1 _addNoFlagsAttributionUrl:v33];
    }

LABEL_79:
    if (!(BYTE4(v42) & 1 | (v7 != 0)))
    {
      goto LABEL_80;
    }
  }

  if (v25 == 1)
  {
    if (!v26)
    {
      goto LABEL_68;
    }

    if ((*(a1 + 76) & 0x20) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_104;
      }

      v37 = 4 * *(a1 + 76);
      goto LABEL_78;
    }

    v31 = PBReaderReadString();
    v32 = 56;
    goto LABEL_61;
  }

  if (v25 != 2)
  {
LABEL_62:
    if (v42 & 1) == 0 || (*(a1 + 76))
    {
      goto LABEL_68;
    }

    if (!*(a1 + 16))
    {
      v35 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v36 = *(a1 + 16);
      *(a1 + 16) = v35;
    }

    if (!PBUnknownFieldAdd())
    {
      v24 = 0;
      goto LABEL_82;
    }

    goto LABEL_79;
  }

  if (!v26)
  {
    goto LABEL_68;
  }

  if ((*(a1 + 76) & 0x10) == 0)
  {
    v31 = PBReaderReadString();
    v32 = 48;
LABEL_61:
    v34 = *(a1 + v32);
    *(a1 + v32) = v31;

    --v7;
    goto LABEL_79;
  }

  if (PBReaderSkipValueWithTag())
  {
    v37 = 8 * *(a1 + 76);
LABEL_78:
    v7 += v37 >> 7;
    goto LABEL_79;
  }

LABEL_104:
  v24 = 0;
LABEL_81:
  if ((v42 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_82:
  *(a1 + 76) |= 1u;
LABEL_83:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + 76) |= 0x20u;
    *(a1 + 76) |= 0x10u;
    *(a1 + 76) |= 8u;
    *(a1 + 76) |= 4u;
    *(a1 + 76) |= 2u;
    goto LABEL_98;
  }

  if (v14)
  {
    while (1)
    {
      v39 = *v14++;
      v38 = v39;
      if (v39 > 2)
      {
        if (v38 == 3)
        {
          LOBYTE(v38) = 8;
        }

        else if (v38 != 4)
        {
          if (v38 != 5)
          {
            continue;
          }

          LOBYTE(v38) = 2;
        }

        goto LABEL_96;
      }

      if (v38 == 1)
      {
        break;
      }

      if (v38 == 2)
      {
        LOBYTE(v38) = 16;
LABEL_96:
        *(a1 + 76) |= v38;
        continue;
      }

      if (!v38)
      {
        goto LABEL_98;
      }
    }

    LOBYTE(v38) = 32;
    goto LABEL_96;
  }

LABEL_98:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_102:
    v40 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_102;
    }
  }

  return v3;
}

void *GEOPDReviewReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 68))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDReviewReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 72));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 64) = objc_msgSend_position(v8);
  *(a1 + 68) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDReviewReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDReviewReadAllFrom_initialTag;
  }

  Specified = GEOPDReviewReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDReviewCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 72));
  return Specified;
}

void *GEOPDReviewReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 72));
  [v3 setLength:*(a1 + 68)];
  [v3 seekToOffset:*(a1 + 64)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 76)) & 0xFF00FF00FF00FFLL), 0xFFFEFFFDFFFCFFFBLL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 76) & 2) != 0));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 2;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v49) = v14;
  HIDWORD(v49) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v50 = (v16 == 0) | v15;
  v51 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v49);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_90:
      v26 = 1;
      goto LABEL_93;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v52) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v52 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v52 & 0x7F) << v18;
      if ((v52 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      if (v19++ >= 9)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_93;
    }

    v27 = v20 >> 3;
    v28 = v51;
    if ((v50 & 1) == 0)
    {
      v29 = v16;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v28 = v31 != 0;
        if (v31)
        {
          v32 = v30 == v27;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    if (v27 > 3)
    {
      switch(v27)
      {
        case 4:
          if (!v28)
          {
            goto LABEL_78;
          }

          if ((*(a1 + 76) & 0x10) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_92;
            }

            v41 = 8 * *(a1 + 76);
LABEL_87:
            v6 += v41 >> 7;
            goto LABEL_79;
          }

          v52 = 0;
          v53 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_92;
          }

          v33 = objc_alloc_init(GEOPDUser);
          if (!GEOPDUserReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_91;
          }

          PBReaderRecallMark();
          v34 = 48;
          goto LABEL_62;
        case 5:
          if (!v28)
          {
            goto LABEL_78;
          }

          if ((*(a1 + 76) & 8) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_92;
            }

            v41 = 16 * *(a1 + 76);
            goto LABEL_87;
          }

          v38 = PBReaderReadString();
          v37 = *(a1 + 32);
          *(a1 + 32) = v38;
          goto LABEL_66;
        case 6:
          if (!v28)
          {
            goto LABEL_78;
          }

          if ((*(a1 + 76) & 4) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_92;
            }

            v41 = 32 * *(a1 + 76);
            goto LABEL_87;
          }

          v52 = 0;
          v53 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_92;
          }

          v33 = objc_alloc_init(GEOPDRating);
          if (!GEOPDRatingReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_91;
          }

          PBReaderRecallMark();
          v34 = 24;
LABEL_62:
          v37 = *(a1 + v34);
          *(a1 + v34) = v33;
LABEL_66:

          --v6;
          goto LABEL_79;
      }

      goto LABEL_72;
    }

    if (v27 == 1)
    {
      break;
    }

    if (v27 == 2)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_78;
      }

      *(a1 + 76) |= 1u;
      v52 = 0;
      v35 = objc_msgSend_position(v3) + 8;
      if (v35 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3) + 8, v36 <= [v3 length]))
      {
        v42 = [v3 data];
        [v42 getBytes:&v52 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      *(a1 + 40) = v52;
      goto LABEL_79;
    }

LABEL_72:
    if ((v49 & 1) == 0 || (*(a1 + 76) & 2) != 0)
    {
      goto LABEL_78;
    }

    if (!*(a1 + 16))
    {
      v39 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v40 = *(a1 + 16);
      *(a1 + 16) = v39;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v48 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
      goto LABEL_94;
    }

LABEL_79:
    if (!(BYTE4(v49) & 1 | (v6 != 0)))
    {
      goto LABEL_90;
    }
  }

  if (!v28 || (*(a1 + 76) & 0x20) != 0)
  {
LABEL_78:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_79;
  }

  v52 = 0;
  v53 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_92;
  }

  v33 = objc_alloc_init(GEOLocalizedString);
  if (GEOLocalizedStringReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDReview *)a1 _addNoFlagsSnippet:v33];

    goto LABEL_79;
  }

LABEL_91:

LABEL_92:
  v26 = 0;
LABEL_93:
  v48 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if ((v49 & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_94:
  *(a1 + v48[267]) |= 2u;
LABEL_95:
  if (v51 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v48[267]) |= 0x20u;
    *(a1 + v48[267]) |= 0x10u;
    *(a1 + v48[267]) |= 8u;
    *(a1 + v48[267]) |= 4u;
    goto LABEL_109;
  }

  if (v16)
  {
    while (1)
    {
      v44 = *v16++;
      v43 = v44;
      if (v44 > 4)
      {
        if (v43 == 5)
        {
          v45 = 8;
        }

        else
        {
          if (v43 != 6)
          {
            continue;
          }

          v45 = 4;
        }

        goto LABEL_107;
      }

      if (v43 == 1)
      {
        break;
      }

      if (v43 == 4)
      {
        v45 = 16;
LABEL_107:
        *(a1 + v48[267]) |= v45;
        continue;
      }

      if (!v43)
      {
        goto LABEL_109;
      }
    }

    v45 = 32;
    goto LABEL_107;
  }

LABEL_109:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v51)
  {
    v46 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOPDAddressReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDAddressReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 56));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 48) = objc_msgSend_position(v8);
  *(a1 + 52) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDAddressReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDAddressReadAllFrom_initialTag;
  }

  Specified = GEOPDAddressReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDAddressCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOPDAddressReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 56));
  [v3 setLength:*(a1 + 52)];
  [v3 seekToOffset:*(a1 + 48)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 64)) & 0xFF00FF00FF00FFLL), 0xFFFFFFFCFFFDFFFELL) & 0xFF01FF01FF01FF01));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 1;
  v53 = v13 & ~v10 | v8;
  v14 = v10 | v13;
  if (((v10 | v13) | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = v6 != 0;
  v17 = objc_msgSend_position(v3);
  if (v17 >= [v3 length])
  {
    v28 = 1;
    LOBYTE(v18) = v14;
    goto LABEL_89;
  }

  v55 = (v15 == 0) | v14;
  v54 = v16 | v8 | v14;
  v18 = v14;
  while (2)
  {
    if ([v3 hasError])
    {
LABEL_87:
      v28 = 1;
      goto LABEL_89;
    }

    v19 = v18;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v56) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v56 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v56 & 0x7F) << v20;
      if ((v56 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v26 = v21++ >= 9;
      if (v26)
      {
        v22 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v22 = 0;
    }

LABEL_33:
    v27 = [v3 hasError];
    v28 = 1;
    v18 = v19;
    if ((v27 & 1) != 0 || (v22 & 7) == 4)
    {
      goto LABEL_89;
    }

    v29 = v22 >> 3;
    v30 = v19;
    if ((v55 & 1) == 0)
    {
      v31 = v15;
      do
      {
        v33 = *v31++;
        v32 = v33;
        v30 = v33 != 0;
        if (v33)
        {
          v34 = v32 == v29;
        }

        else
        {
          v34 = 1;
        }
      }

      while (!v34);
    }

    if (v29 <= 2)
    {
      if (v29 == 1)
      {
        if (!v30 || (*(a1 + 64) & 4) != 0)
        {
          goto LABEL_79;
        }

        v56 = 0;
        v57 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_111;
        }

        v35 = objc_alloc_init(GEOPDLocalizedAddress);
        if (!GEOPDLocalizedAddressReadAllFrom(v35, v3, v9 & 1))
        {
          goto LABEL_110;
        }

        PBReaderRecallMark();
        [(GEOPDAddress *)a1 _addNoFlagsLocalizedAddress:v35];
LABEL_78:
      }

      else
      {
        if (v29 == 2)
        {
          if (v30 && (*(a1 + 64) & 8) == 0)
          {
            v56 = 0;
            v57 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_111;
            }

            v35 = objc_alloc_init(GEOLocalizedString);
            if (!GEOLocalizedStringReadAllFrom(v35, v3, v9 & 1))
            {
              goto LABEL_110;
            }

            PBReaderRecallMark();
            [(GEOPDAddress *)a1 _addNoFlagsSpokenNavigationAddress:v35];
            goto LABEL_78;
          }

LABEL_79:
          v28 = PBReaderSkipValueWithTag();
          if ((v28 & v54 & 1) == 0)
          {
            goto LABEL_89;
          }

LABEL_86:
          v45 = objc_msgSend_position(v3);
          if (v45 >= [v3 length])
          {
            goto LABEL_87;
          }

          continue;
        }

LABEL_62:
        if ((v53 & 1) == 0 || (*(a1 + 64) & 2) != 0)
        {
          goto LABEL_79;
        }

        if (!*(a1 + 16))
        {
          v43 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v44 = *(a1 + 16);
          *(a1 + 16) = v43;
        }

        v28 = PBUnknownFieldAdd();
        if (!v28)
        {
          v52 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
          goto LABEL_90;
        }
      }

      goto LABEL_85;
    }

    break;
  }

  if (v29 != 3)
  {
    if (v29 != 4)
    {
      goto LABEL_62;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_79;
    }

    v36 = 0;
    v37 = 0;
    v38 = 0;
    *(a1 + 64) |= 1u;
    while (1)
    {
      LOBYTE(v56) = 0;
      v39 = objc_msgSend_position(v3) + 1;
      if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
      {
        v41 = [v3 data];
        [v41 getBytes:&v56 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v38 |= (v56 & 0x7F) << v36;
      if ((v56 & 0x80) == 0)
      {
        break;
      }

      v36 += 7;
      v26 = v37++ >= 9;
      if (v26)
      {
        v42 = 0;
        goto LABEL_84;
      }
    }

    if ([v3 hasError])
    {
      v42 = 0;
    }

    else
    {
      v42 = v38;
    }

LABEL_84:
    *(a1 + 60) = v42;
    v18 = v19;
LABEL_85:
    if ((v54 & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (!v30 || (*(a1 + 64) & 0x10) != 0)
  {
    goto LABEL_79;
  }

  v56 = 0;
  v57 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_111;
  }

  v35 = objc_alloc_init(GEOPDLocalizedSpokenStructuredAddress);
  if (GEOPDLocalizedSpokenStructuredAddressReadAllFrom(v35, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDAddress *)a1 _addNoFlagsSpokenStructuredAddress:v35];
    goto LABEL_78;
  }

LABEL_110:

LABEL_111:
  v28 = 0;
LABEL_89:
  v52 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
  if (v53)
  {
LABEL_90:
    *(a1 + v52[616]) |= 2u;
  }

  if (v18 || (v28 & 1) == 0)
  {
    *(a1 + v52[616]) |= 4u;
    *(a1 + v52[616]) |= 8u;
    *(a1 + v52[616]) |= 0x10u;
    goto LABEL_104;
  }

  if (v15)
  {
    while (2)
    {
      while (1)
      {
        v47 = *v15++;
        v46 = v47;
        v48 = v47 == 1;
        if (v47 > 1)
        {
          break;
        }

        if (v48)
        {
          v49 = 4;
LABEL_102:
          *(a1 + v52[616]) |= v49;
          continue;
        }

        if (!v46)
        {
          goto LABEL_104;
        }
      }

      if (v46 == 3)
      {
        v49 = 16;
      }

      else
      {
        if (v46 != 2)
        {
          continue;
        }

        v49 = 8;
      }

      goto LABEL_102;
    }
  }

LABEL_104:
  if (v28)
  {
    v3 = ([v3 hasError] ^ 1);
    if (!v18)
    {
      return v3;
    }

LABEL_108:
    v50 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v18)
    {
      goto LABEL_108;
    }
  }

  return v3;
}

void *GEOMapItemStorageReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 124))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOMapItemStorageReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 128));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 32), a2);
  *(a1 + 120) = objc_msgSend_position(v8);
  *(a1 + 124) = [v8 length];
  if (a3)
  {
    v9 = &GEOMapItemStorageReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOMapItemStorageReadAllFrom_initialTag;
  }

  Specified = GEOMapItemStorageReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOMapItemStorageCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 128));
  return Specified;
}

void *GEOMapItemStorageReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 128));
  [v3 setLength:*(a1 + 124)];
  [v3 seekToOffset:*(a1 + 120)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = ((*(a1 + 132) >> 9) & 1) + (*(a1 + 132) & 1) + ((*(a1 + 132) >> 1) & 1) + (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 132)), 0xFFF9FFFEFFF8FFFALL), 0x1000100010001)) + ((*(a1 + 132) >> 5) & 1) + ((*(a1 + 132) >> 3) & 1) + ((*(a1 + 132) >> 4) & 1));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 6;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v45) = v14;
  HIDWORD(v45) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v46 = (v16 == 0) | v15;
  v47 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v45);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_123:
      v26 = 1;
      goto LABEL_126;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v48) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v48 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v48 & 0x7F) << v18;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      if (v19++ >= 9)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_126;
    }

    v27 = v20 >> 3;
    v28 = v47;
    if ((v46 & 1) == 0)
    {
      v29 = v16;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v28 = v31 != 0;
        if (v31)
        {
          v32 = v30 == v27;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    if (v27 <= 4)
    {
      if (v27 > 2)
      {
        if (v27 == 3)
        {
          if (!v28)
          {
            goto LABEL_103;
          }

          if ((*(a1 + 132) & 4) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_125;
            }

            v39 = *(a1 + 132) << 13;
            goto LABEL_121;
          }

          v48 = 0;
          v49 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_125;
          }

          v33 = objc_alloc_init(GEOMapItemClientAttributes);
          if (!GEOMapItemClientAttributesReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_124;
          }

          PBReaderRecallMark();
          v34 = 56;
        }

        else
        {
          if (!v28)
          {
            goto LABEL_103;
          }

          if ((*(a1 + 132) & 0x80) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_125;
            }

            v39 = *(a1 + 132) << 8;
            goto LABEL_121;
          }

          v48 = 0;
          v49 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_125;
          }

          v33 = objc_alloc_init(GEOPlaceResult);
          if (!GEOPlaceResultReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_124;
          }

          PBReaderRecallMark();
          v34 = 96;
        }

LABEL_95:
        v36 = *(a1 + v34);
        *(a1 + v34) = v33;
LABEL_96:

        --v6;
        goto LABEL_122;
      }

      if (v27 == 1)
      {
        if (!v28)
        {
          goto LABEL_103;
        }

        if ((*(a1 + 132) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_125;
          }

          v39 = *(a1 + 132) << 9;
          goto LABEL_121;
        }

        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_125;
        }

        v33 = objc_alloc_init(GEOPDPlace);
        if (!GEOPDPlaceReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_124;
        }

        PBReaderRecallMark();
        v34 = 88;
        goto LABEL_95;
      }

      if (v27 == 2)
      {
        if (!v28)
        {
          goto LABEL_103;
        }

        if ((*(a1 + 132) & 0x100) == 0)
        {
          v48 = 0;
          v49 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_125;
          }

          v33 = objc_alloc_init(GEOPlace);
          if (!GEOPlaceReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_124;
          }

          PBReaderRecallMark();
          v34 = 104;
          goto LABEL_95;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_125;
        }

        v39 = *(a1 + 132) << 7;
LABEL_121:
        v6 += v39 >> 15;
        goto LABEL_122;
      }

      goto LABEL_97;
    }

    if (v27 <= 6)
    {
      if (v27 == 5)
      {
        if (!v28)
        {
          goto LABEL_103;
        }

        if ((*(a1 + 132) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_125;
          }

          v39 = *(a1 + 132) << 10;
          goto LABEL_121;
        }

        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_125;
        }

        v33 = objc_alloc_init(GEOLatLng);
        if (!GEOLatLngReadAllFrom(v33, v3))
        {
          goto LABEL_124;
        }

        PBReaderRecallMark();
        v34 = 80;
      }

      else
      {
        if (!v28)
        {
          goto LABEL_103;
        }

        if ((*(a1 + 132) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_125;
          }

          v39 = *(a1 + 132) << 12;
          goto LABEL_121;
        }

        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_125;
        }

        v33 = objc_alloc_init(GEOPDResultDetourInfo);
        if (!GEOPDResultDetourInfoReadAllFrom(v33, v3))
        {
          goto LABEL_124;
        }

        PBReaderRecallMark();
        v34 = 64;
      }

      goto LABEL_95;
    }

    if (v27 == 7)
    {
      if (!v28)
      {
        goto LABEL_103;
      }

      if ((*(a1 + 132) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_125;
        }

        v39 = *(a1 + 132) << 11;
        goto LABEL_121;
      }

      v35 = PBReaderReadString();
      v36 = *(a1 + 72);
      *(a1 + 72) = v35;
      goto LABEL_96;
    }

    if (v27 == 8)
    {
      break;
    }

    if (v27 == 9)
    {
      if (!v28 || (*(a1 + 132) & 2) != 0)
      {
        goto LABEL_103;
      }

      v48 = 0;
      v49 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_125;
      }

      v33 = objc_alloc_init(GEOPDPlace);
      if (!GEOPDPlaceReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_124;
      }

      PBReaderRecallMark();
      [(GEOMapItemStorage *)a1 _addNoFlagsAdditionalPlaceDatas:v33];

      goto LABEL_122;
    }

LABEL_97:
    if (v45 & 1) == 0 || (*(a1 + 132))
    {
LABEL_103:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_122;
    }

    if (!*(a1 + 40))
    {
      v37 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v38 = *(a1 + 40);
      *(a1 + 40) = v37;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      goto LABEL_127;
    }

LABEL_122:
    if (!(BYTE4(v45) & 1 | (v6 != 0)))
    {
      goto LABEL_123;
    }
  }

  if (!v28)
  {
    goto LABEL_103;
  }

  if ((*(a1 + 132) & 0x200) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_125;
    }

    v39 = *(a1 + 132) << 6;
    goto LABEL_121;
  }

  v48 = 0;
  v49 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_125;
  }

  v33 = objc_alloc_init(GEOMapItemStorageUserValues);
  if (GEOMapItemStorageUserValuesReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v34 = 112;
    goto LABEL_95;
  }

LABEL_124:

LABEL_125:
  v26 = 0;
LABEL_126:
  if ((v45 & 1) == 0)
  {
    goto LABEL_128;
  }

LABEL_127:
  *(a1 + 132) |= 1u;
LABEL_128:
  if (v47 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 132) |= 0x40u;
    *(a1 + 132) |= 0x100u;
    *(a1 + 132) |= 4u;
    *(a1 + 132) |= 0x80u;
    *(a1 + 132) |= 0x20u;
    *(a1 + 132) |= 8u;
    *(a1 + 132) |= 0x10u;
    *(a1 + 132) |= 0x200u;
    *(a1 + 132) |= 2u;
    goto LABEL_154;
  }

  if (v16)
  {
    while (1)
    {
      v41 = *v16++;
      v40 = v41;
      if (v41 > 4)
      {
        if (v40 <= 6)
        {
          if (v40 == 5)
          {
            v42 = 32;
          }

          else
          {
            if (v40 != 6)
            {
              continue;
            }

            v42 = 8;
          }
        }

        else
        {
          switch(v40)
          {
            case 7:
              v42 = 16;
              break;
            case 8:
              v42 = 512;
              break;
            case 9:
              v42 = 2;
              break;
            default:
              continue;
          }
        }

        goto LABEL_152;
      }

      if (v40 > 2)
      {
        if (v40 == 3)
        {
          v42 = 4;
        }

        else
        {
          if (v40 != 4)
          {
            continue;
          }

          v42 = 128;
        }

        goto LABEL_152;
      }

      if (v40 == 1)
      {
        break;
      }

      if (v40 == 2)
      {
        v42 = 256;
LABEL_152:
        *(a1 + 132) |= v42;
        continue;
      }

      if (!v40)
      {
        goto LABEL_154;
      }
    }

    v42 = 64;
    goto LABEL_152;
  }

LABEL_154:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v47)
  {
    v43 = *(a1 + 32);
    *(a1 + 32) = 0;
  }

  return v3;
}