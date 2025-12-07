uint64_t statistics::StatisticsBucket::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 188);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 188);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 188);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 188);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 188) & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 188);
  if ((v4 & 4) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v4 & 0x20) != 0)
  {
LABEL_11:
    this = PB::Writer::write(a2, *(v3 + 72));
  }

LABEL_12:
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 104);
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(v3 + 160);
  v10 = *(v3 + 168);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = *(v3 + 112);
  v13 = *(v3 + 120);
  while (v12 != v13)
  {
    v14 = *v12++;
    this = PB::Writer::writeSubmessage(a2, v14);
  }

  v15 = *(v3 + 136);
  v16 = *(v3 + 144);
  while (v15 != v16)
  {
    v17 = *v15++;
    this = PB::Writer::writeSubmessage(a2, v17);
  }

  v19 = *(v3 + 40);
  v18 = *(v3 + 48);
  while (v19 != v18)
  {
    v20 = *v19++;
    this = PB::Writer::writeSubmessage(a2, v20);
  }

  return this;
}

BOOL statistics::StatisticsBucket::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 188);
  v5 = *(a2 + 188);
  if ((v4 & 2) != 0)
  {
    if ((v5 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v5 & 2) != 0)
  {
    return 0;
  }

  if (v4)
  {
    if ((v5 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((v4 & 0x10) != 0)
  {
    if ((v5 & 0x10) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    if ((v5 & 0x80) == 0 || *(a1 + 185) != *(a2 + 185))
    {
      return 0;
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 188) & 0x200) != 0)
  {
    if ((*(a2 + 188) & 0x200) == 0 || *(a1 + 187) != *(a2 + 187))
    {
      return 0;
    }
  }

  else if ((*(a2 + 188) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 188) & 0x100) != 0)
  {
    if ((*(a2 + 188) & 0x100) == 0 || *(a1 + 186) != *(a2 + 186))
    {
      return 0;
    }
  }

  else if ((*(a2 + 188) & 0x100) != 0)
  {
    return 0;
  }

  if ((v4 & 0x40) != 0)
  {
    if ((v5 & 0x40) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    return 0;
  }

  if ((v4 & 8) != 0)
  {
    if ((v5 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v5 & 8) != 0)
  {
    return 0;
  }

  if ((v4 & 4) != 0)
  {
    if ((v5 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v5 & 4) != 0)
  {
    return 0;
  }

  if ((v4 & 0x20) != 0)
  {
    if ((v5 & 0x20) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v5 & 0x20) != 0)
  {
    return 0;
  }

  if (!PB::PtrVector<statistics::RawQuantitySample>::operator==((a1 + 80), a2 + 80))
  {
    return 0;
  }

  v6 = *(a1 + 104);
  v7 = *(a2 + 104);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_58;
    }

    return 0;
  }

  if (!v7 || !statistics::Statistics::operator==(v6, v7) && *(a1 + 104) | *(a2 + 104))
  {
    return 0;
  }

LABEL_58:
  if (!PB::PtrVector<statistics::Statistics>::operator==((a1 + 160), *(a2 + 160), *(a2 + 168)) || !PB::PtrVector<statistics::Statistics>::operator==((a1 + 112), *(a2 + 112), *(a2 + 120)) || !PB::PtrVector<statistics::Statistics>::operator==((a1 + 136), *(a2 + 136), *(a2 + 144)))
  {
    return 0;
  }

  return PB::PtrVector<statistics::Interval>::operator==((a1 + 40), a2 + 40);
}

BOOL PB::PtrVector<statistics::RawQuantitySample>::operator==(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = statistics::RawQuantitySample::operator==(v5, v7);
  }

  while (result && v3 != v2);
  return result;
}

BOOL PB::PtrVector<statistics::Statistics>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 - *a1 != a3 - a2)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  v5 = a2;
  do
  {
    result = statistics::Statistics::operator==(*v4, *v5);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 != a1[1]);
  return result;
}

unint64_t statistics::StatisticsBucket::hash_value(statistics::StatisticsBucket *this)
{
  v2 = *(this + 94);
  if ((v2 & 2) == 0)
  {
    v41 = 0.0;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v40 = 0.0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    v39 = 0.0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v8 = *(this + 2);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  v41 = v8;
  if ((v2 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v40 = v3;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v4 = *(this + 8);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  v39 = v4;
  if ((v2 & 0x80) != 0)
  {
LABEL_9:
    v38 = *(this + 185);
    if ((*(this + 94) & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v38 = 0;
  if ((*(this + 94) & 0x200) != 0)
  {
LABEL_10:
    v37 = *(this + 187);
    if ((*(this + 94) & 0x100) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v37 = 0;
  if ((*(this + 94) & 0x100) != 0)
  {
LABEL_11:
    v36 = *(this + 186);
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v36 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_12:
    v35 = *(this + 184);
    if ((v2 & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_32:
    v34 = 0.0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_31:
  v35 = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  v5 = *(this + 4);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  v34 = v5;
  if ((v2 & 4) != 0)
  {
LABEL_16:
    if (*(this + 3) == 0.0)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(this + 3);
    }

    if ((v2 & 0x20) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  v6 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_20:
    if (*(this + 9) == 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(this + 9);
    }

    goto LABEL_35;
  }

LABEL_34:
  v7 = 0;
LABEL_35:
  v9 = *(this + 10);
  v10 = *(this + 11);
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = *v9++;
      v11 ^= statistics::RawQuantitySample::hash_value(v12);
    }

    while (v9 != v10);
  }

  v13 = *(this + 13);
  if (v13)
  {
    v14 = statistics::Statistics::hash_value(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 20);
  v16 = *(this + 21);
  if (v15 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = *v15++;
      v17 ^= statistics::Statistics::hash_value(v18);
    }

    while (v15 != v16);
  }

  v19 = *(this + 14);
  v20 = *(this + 15);
  if (v19 == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v22 = *v19++;
      v21 ^= statistics::Statistics::hash_value(v22);
    }

    while (v19 != v20);
  }

  v23 = *(this + 17);
  v24 = *(this + 18);
  if (v23 == v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0;
    do
    {
      v26 = *v23++;
      v25 ^= statistics::Statistics::hash_value(v26);
    }

    while (v23 != v24);
  }

  v27 = *(this + 5);
  v28 = *(this + 6);
  if (v27 != v28)
  {
    v29 = 0;
    while (1)
    {
      v30 = *v27;
      if ((*(*v27 + 24) & 2) != 0)
      {
        v31 = *(v30 + 16);
        if (v31 == 0.0)
        {
          v31 = 0.0;
        }

        if (*(*v27 + 24))
        {
LABEL_66:
          v32 = *(v30 + 8);
          if (v32 == 0.0)
          {
            v32 = 0.0;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v31 = 0.0;
        if (*(*v27 + 24))
        {
          goto LABEL_66;
        }
      }

      v32 = 0.0;
LABEL_68:
      v29 ^= *&v31 ^ *&v32;
      if (++v27 == v28)
      {
        return *&v40 ^ *&v41 ^ *&v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ *&v34 ^ v6 ^ v7 ^ v11 ^ v14 ^ v17 ^ v21 ^ v25 ^ v29;
      }
    }
  }

  v29 = 0;
  return *&v40 ^ *&v41 ^ *&v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ *&v34 ^ v6 ^ v7 ^ v11 ^ v14 ^ v17 ^ v21 ^ v25 ^ v29;
}

void *statistics::StatisticsBucket::makeStatistics(void *this)
{
  if (!this[13])
  {
    operator new();
  }

  return this;
}

uint64_t HDCodableTinkerPairingResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = objc_alloc_init(HDCodableSharingSetupMetadata);
        objc_storeStrong((a1 + 24), v15);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !HDCodableSharingSetupMetadataReadFrom(v15, a2))
        {
          goto LABEL_31;
        }

LABEL_26:
        PBReaderRecallMark();
        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(HDCodableError);
    objc_storeStrong((a1 + 8), v15);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !HDCodableErrorReadFrom(v15, a2))
    {
LABEL_31:

      return 0;
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void sub_228A5F5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A60FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228A61410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A61D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<BOOL ()(health::DataStore::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_E3__0NS_9allocatorIS2_EEFbRN6health9DataStore16WriteTransactionEEE7__cloneEPNS0_6__baseIS9_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE62A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_E3__0NS_9allocatorIS2_EEFbRN6health9DataStore16WriteTransactionEEEclES8_(uint64_t a1, uint64_t a2)
{
  v4 = [**(a1 + 8) transaction];
  v5 = [v4 protectedDatabase];
  v6 = **(a1 + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionE_block_invoke;
  v10[3] = &__block_descriptor_48_e26_B24__0__HDSQLiteRow__8__16l;
  v7 = *(a1 + 24);
  v10[4] = a2;
  v10[5] = v7;
  v8 = [v5 executeUncachedSQL:@"SELECT data_id FROM data_series ds INNER JOIN samples s USING (data_id) WHERE data_type = 102" error:v6 bindingHandler:0 enumerationHandler:v10];

  return v8;
}

uint64_t _ZNKSt3__110__function6__funcIZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_E3__0NS_9allocatorIS2_EEFbRN6health9DataStore16WriteTransactionEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionE_block_invoke(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v3 = HDSQLiteColumnAsInt64();
  v8.objectType = 0;
  v8.identifier = v3;
  v4 = *(a1 + 32);
  v11 = *(v4 + 32);
  v12 = v4;
  health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v11, &v8, 0, &v9);
  if (v10 == 1)
  {
    v9.objectType = -1;
    v9.identifier = v3;
    health::DataStore::WriteTransaction::renameObjectWithIdentifier(*(a1 + 32), &v8, &v9);
    v5 = *(a1 + 40);
    v6 = *v5;
    v13[0] = &unk_283BE63E8;
    v13[1] = v5;
    v13[2] = &v9;
    v13[3] = v13;
    health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(v6, &v8, 1, v13);
  }

  return 1;
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6328;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = 0u;
  v6 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = a2;
  v11 = a2;
  result = health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::loadHistoryRoot(v5, *(a1 + 8), **(a1 + 16));
  if (result)
  {
    v4 = *(*(a1 + 24) + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v4 + 48))(v4, v5);
  }

  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::_updateHistoryRoot(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 96);
  if (v2 == 56)
  {
    v4 = *(a1 + 56);
    v5 = v3 + 80;

    health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(v5, v4, 0x38uLL, a1);
  }

  else
  {
    health::DataStore::WriteTransaction::storeObjectWithIdentifier<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(v3, a1, (a1 + 72));
    health::DataStore::ReadTransaction::_pointerForObject(v8, *(a1 + 96), (a1 + 72));
    v7 = health::Optional<health::BlockPointer>::get(v8);
    result = *v7;
    *(a1 + 56) = *v7;
  }

  return result;
}

std::runtime_error *_ZN6health15not_found_errorCI1St13runtime_errorEPKc(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_283BE63B0;
  return result;
}

uint64_t health::Optional<health::BlockPointer>::get(uint64_t result)
{
  if ((*(result + 16) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to get the value from an invalid optional.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return result;
}

void health::_HDAssertImplementation<std::out_of_range>(void *a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5, uint64_t **a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a1;
  memset(v40, 0, sizeof(v40));
  v12 = backtrace(v40, 20);
  v13 = backtrace_symbols(v40, v12);
  std::ostringstream::basic_ostringstream[abi:ne200100](v39);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Critical Error: ", 16);
  v15 = *(a6 + 23);
  if (v15 >= 0)
  {
    v16 = a6;
  }

  else
  {
    v16 = *a6;
  }

  if (v15 >= 0)
  {
    v17 = *(a6 + 23);
  }

  else
  {
    v17 = a6[1];
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Failed assertion '", 18);
  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = a2[1];
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "' in '", 6);
  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = a3[1];
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "' at ", 5);
  v30 = *(a4 + 23);
  if (v30 >= 0)
  {
    v31 = a4;
  }

  else
  {
    v31 = *a4;
  }

  if (v30 >= 0)
  {
    v32 = *(a4 + 23);
  }

  else
  {
    v32 = a4[1];
  }

  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ":", 1);
  v35 = MEMORY[0x22AAC83A0](v34, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "\n", 1);
  if (!v12)
  {
    free(v13);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v39, &v38);
    std::logic_error::logic_error(exception, &v38);
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v13);
  health::HDDemangleBacktraceLine();
}

void sub_228A625B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
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

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void health::FormatString<>(std::string *a1@<X0>, std::string *a2@<X8>)
{
  v2 = 0;
  *&a2->__r_.__value_.__r.__words[1] = 0uLL;
  a2->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<>(a1, a2, 0, &v2);
}

void sub_228A62838(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_228A62998(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](v1);
  _Unwind_Resume(a1);
}

void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x22AAC8500](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_228A62AFC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AAC8350](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x22AAC8360](v13);
  return a1;
}

void sub_228A62D6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x22AAC8360](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x228A62D4CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_228A62FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void health::FormatImplementation<>(std::string *a1, std::string *this, std::string::size_type __n, uint64_t a4)
{
  v18 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v8 = 0;
    v9 = 0;
    v10 = a1;
    do
    {
      if (v6 == 123)
      {
        v11 = v10->__r_.__value_.__s.__data_[1];
        if (v11 != 123)
        {
          if (v11 == 42)
          {
            v18 = &v10->__r_.__value_.__s.__data_[2];
            v12 = v10->__r_.__value_.__s.__data_[2];
            if ((v12 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v13 = 0;
              v14 = &v10->__r_.__value_.__s.__data_[3];
              do
              {
                v18 = v14;
                v13 = (v12 & 0xF) + 10 * v13;
                v15 = *v14++;
                LOBYTE(v12) = v15;
              }

              while ((v15 - 58) >= 0xFFFFFFF6);
              v18 = v14;
              if (*(v14 - 1) == 125)
              {
                health::FormatterParameters<0ul>::formatOptionsAtIndex<>();
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(&v17, &v18);
          health::FormatterParameters<0ul>::formatParameterAtIndex<health::FormatterParameters<0ul>>();
        }

        v9 = 1;
        v10 = (v10 + 1);
      }

      v18 = &v10->__r_.__value_.__s.__data_[1];
      v6 = v10->__r_.__value_.__s.__data_[1];
      --v8;
      v10 = (v10 + 1);
    }

    while (v6);
    std::string::resize(this, __n - v8, 0);
    if (v8)
    {

      health::CopyFormatSectionToResult(a1, this, __n, -v8, v9 & 1);
    }
  }

  else
  {

    std::string::resize(this, __n, 0);
  }
}

void health::FormatterParameters<0ul>::formatOptionsAtIndex<>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatterParameters<0ul>::formatParameterAtIndex<health::FormatterParameters<0ul>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v6 = a1[2];
  bzero(v15, 0x223uLL);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(v6 + 24), *a1, a1[1], v15);
  result = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(a1, 0, a1, v15, a2, a3);
  if (result >= 2)
  {
    v8 = a1[2];
    bzero(__src, 0x223uLL);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(v8 + 24), *a1, a1[1], __src);
    memcpy(__dst, __src, sizeof(__dst));
    v9 = *(a1[2] + 24);
    v10 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v9, 547);
    v12 = v11;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(v9, v10, v11, __dst);
    LOWORD(__src[68]) = 1;
    __src[2] = v10;
    __src[3] = v12;
    BYTE2(__src[68]) = 0;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(a1[2] + 24), *a1, a1[1], __src);
    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(a1, a2, a3);
  }

  return result;
}

double health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  if (*(a3 + 544))
  {
    v12 = health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::childForKey(a3, a4);
    v13 = v12;
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKeyInChildAtIndex<health::DataStore::ObjectIdentifier>(a1, (a2 + 1), a3, v12, a4, a5, v16);
    if ((BYTE8(v17) & 1) != 0 || *(a3 + 544) - 1 <= v13)
    {
      v15 = v16[1];
      *a6 = v16[0];
      a6[1] = v15;
      result = *&v17;
      a6[2] = v17;
    }

    else
    {
      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKeyInChildAtIndex<health::DataStore::ObjectIdentifier>(a1, (a2 + 1), a3, (v13 + 1), a4, a5, a6);
    }
  }

  else
  {
    result = 0.0;
    *(a6 + 25) = 0u;
    *a6 = 0u;
    a6[1] = 0u;
  }

  return result;
}

double health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKeyInChildAtIndex<health::DataStore::ObjectIdentifier>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a2;
  if (*(a3 + 544) <= a4)
  {
    v12 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v24, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v23, "_valueForKeyInChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v21);
    health::_HDAssertImplementation<health::btree_access_error>(v12, v24, v23, v22, 158, &v21);
  }

  if (*(a3 + 546) == 1)
  {
    v13 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = *(a1 + 16);
    bzero(v18, 0x222uLL);
    v19 = 0u;
    v20 = 0u;
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v16 + 24), v14, v15, v18);
    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>(v18, a5, a6, a7);
  }

  else
  {
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(a1, a2, a3, a4, v18);
    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>(a1, v9, v18, a5, a6, a7);
  }
}

void sub_228A636EC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  if (*(v1 - 129) < 0)
  {
    operator delete(*(v1 - 152));
  }

  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

void health::_HDAssertImplementation<health::btree_access_error>(void *a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5, uint64_t **a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a1;
  memset(v40, 0, sizeof(v40));
  v12 = backtrace(v40, 20);
  v13 = backtrace_symbols(v40, v12);
  std::ostringstream::basic_ostringstream[abi:ne200100](v39);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Critical Error: ", 16);
  v15 = *(a6 + 23);
  if (v15 >= 0)
  {
    v16 = a6;
  }

  else
  {
    v16 = *a6;
  }

  if (v15 >= 0)
  {
    v17 = *(a6 + 23);
  }

  else
  {
    v17 = a6[1];
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Failed assertion '", 18);
  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = a2[1];
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "' in '", 6);
  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = a3[1];
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "' at ", 5);
  v30 = *(a4 + 23);
  if (v30 >= 0)
  {
    v31 = a4;
  }

  else
  {
    v31 = *a4;
  }

  if (v30 >= 0)
  {
    v32 = *(a4 + 23);
  }

  else
  {
    v32 = a4[1];
  }

  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ":", 1);
  v35 = MEMORY[0x22AAC83A0](v34, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "\n", 1);
  if (!v12)
  {
    free(v13);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v39, &v38);
    std::runtime_error::runtime_error(exception, &v38);
    exception->__vftable = &unk_283BE6650;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v13);
  health::HDDemangleBacktraceLine();
}

void sub_228A639D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);

  _Unwind_Resume(a1);
}

void health::btree_access_error::~btree_access_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x22AAC8590);
}

double health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>@<D0>(uint64_t a1@<X2>, void *a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  if (!*(a1 + 544))
  {
    goto LABEL_16;
  }

  v7 = health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::indexForKey(a1, a2);
  v9 = HIDWORD(v7);
  if (HIDWORD(v7))
  {
    if (a3 == 2)
    {
      if (v9 == 2)
      {
        v13 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, v7);
        v8 = *v13;
        v14 = v13[1];
        *a4 = *v13;
        *(a4 + 16) = v14;
        *(a4 + 32) = 2;
        goto LABEL_4;
      }
    }

    else
    {
      if (a3 == 1)
      {
        if (v9 == 1)
        {
          v12 = v7;
        }

        else
        {
          if (v7 >= *(a1 + 544) - 1)
          {
            goto LABEL_16;
          }

          v12 = v7 + 1;
        }

        v15 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, v12);
        v8 = *v15;
        v16 = v15[1];
        *a4 = *v15;
        *(a4 + 16) = v16;
        *(a4 + 32) = 1;
        goto LABEL_4;
      }

      if (a3)
      {
        return *&v8;
      }
    }

LABEL_16:
    *&v8 = 0;
    *(a4 + 25) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return *&v8;
  }

  v10 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, v7);
  v8 = *v10;
  v11 = v10[1];
  *a4 = *v10;
  *(a4 + 16) = v11;
  *(a4 + 32) = 0;
LABEL_4:
  *(a4 + 40) = 1;
  return *&v8;
}

void *health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  if (*(a3 + 544) <= a4)
  {
    v9 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v34, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v33, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v32, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v31);
    health::_HDAssertImplementation<health::btree_access_error>(v9, v34, v33, v32, 137, &v31);
  }

  if (a2 >= 64)
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v30, "depth < kMaximumRecursionDepth");
    std::string::basic_string[abi:ne200100]<0>(v29, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v28, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Maximum recursion depth reached.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v10, v30, v29, v28, 138, &__p);
  }

  v11 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = *(a1 + 16);
  bzero(a5, 0x223uLL);
  result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(v14 + 24), v12, v13, a5);
  if (*(a5 + 272))
  {
    result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
    if (*a5 <= *result && (*a5 < *result || a5[1] < result[1]))
    {
      v16 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v26, "child.children[0].key >= node.children[index].key");
      std::string::basic_string[abi:ne200100]<0>(v25, "_interiorChildAtIndex");
      std::string::basic_string[abi:ne200100]<0>(v24, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
      health::FormatString<>("Child node's smallest key is < parent's key", &v23);
      health::_HDAssertImplementation<health::btree_access_error>(v16, v26, v25, v24, 144, &v23);
    }

    if (*(a3 + 544) - 1 > a4)
    {
      v17 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, *(a5 + 272) - 1);
      result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, (a4 + 1));
      if (*v17 >= *result && (*v17 > *result || v17[1] >= result[1]))
      {
        v18 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v22, "child.children[child.childCount - 1].key < node.children[index + 1].key");
        std::string::basic_string[abi:ne200100]<0>(v21, "_interiorChildAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v20, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Child node's largest key is >= parent's next key", &v19);
        health::_HDAssertImplementation<health::btree_access_error>(v18, v22, v21, v20, 146, &v19);
      }
    }
  }

  return result;
}

void sub_228A64060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(uint64_t a1, int a2, uint64_t *a3, __n128 *a4, __n128 *a5, __n128 *a6)
{
  if (a4[34].n128_u16[0])
  {
    v10 = a2 + 1;
    if (a4[34].n128_u8[2] == 1)
    {

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKeyWithLeafChildren(a1, v10, a3, a4, a5, a6);
    }

    else
    {

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKeyWithInteriorChildren(a1, v10, a3, a4, a5, a6);
    }
  }

  else
  {
    memset(&v18[2], 0, 512);
    v12 = *(a1 + 16);
    v20 = *v12;
    v21 = *v12;
    v19 = 1;
    v13 = *a6;
    v18[0] = *a5;
    v18[1] = v13;
    v14 = *(v12 + 3);
    v15 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v14, 578);
    v17 = v16;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(v14, v15, v16, v18);
    *a4 = *a5;
    a4[1].n128_u64[0] = v15;
    a4[1].n128_u64[1] = v17;
    a4[34].n128_u16[0] = 1;
    a4[34].n128_u8[2] = 1;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKeyWithLeafChildren(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, __n128 *a5, __n128 *a6)
{
  v12 = health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::childForKey(a4, a5);
  v57 = *(health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) + 16);
  v13 = *(a1 + 16);
  bzero(v53, 0x222uLL);
  v55 = 0u;
  v56 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v13 + 24), v57, *(&v57 + 1), v53);
  v14 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(a1, (a2 + 1), &v57, v53, a5, a6);
  v15 = v14;
  if (v14 > 1)
  {
    v17 = *(a4 + 544);
    if (v17 == 17)
    {
      if (v14 == 4)
      {
        v18 = 4;
      }

      else
      {
        v18 = 2;
      }

      if (v14 == 3)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      if (v12)
      {
        v20 = 2;
      }

      else
      {
        v20 = v19;
      }

      if (v12 == 16)
      {
        return v18;
      }

      else
      {
        return v20;
      }
    }

    else if (v14 == 4 && v17 - 1 == v12)
    {
      memset(&v49[2], 0, 512);
      v50 = 1;
      v21 = *a6;
      v49[0] = *a5;
      v49[1] = v21;
      v51 = v57;
      v52 = v56;
      v22 = *(*(a1 + 16) + 24);
      v23 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v22, 578);
      v25 = v24;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(v22, v23, v24, v49);
      *&v56 = v23;
      *(&v56 + 1) = v25;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v57, *(&v57 + 1), v53);
      v26 = *(a1 + 16);
      v27 = v52;
      if (v52 != *v26)
      {
        bzero(&v44, 0x222uLL);
        v47 = 0u;
        v48 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v26 + 24), v27, *(&v27 + 1), &v44);
        *&v47 = v23;
        *(&v47 + 1) = v25;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v52, *(&v52 + 1), &v44);
      }

      v28 = *(a4 + 544);
      v29 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v28);
      *(v29 + 16) = v23;
      *(v29 + 24) = v25;
      *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v28) = *a5;
      ++*(a4 + 544);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
      return 0;
    }

    else
    {
      v41 = a3;
      v43 = v57;
      bzero(v49, 0x222uLL);
      v51 = v57;
      v52 = v56;
      health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(v49, 0, v53, v54 - 8, 8);
      v54 -= 8;
      v50 = 8;
      v30 = *(*(a1 + 16) + 24);
      v31 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v30, 578);
      v33 = v32;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(v30, v31, v32, v49);
      *&v42 = v31;
      *(&v42 + 1) = v33;
      v56 = v42;
      v34 = *(a1 + 16);
      v35 = v52;
      if (v52 != *v34)
      {
        v40 = *(&v52 + 1);
        bzero(&v44, 0x222uLL);
        v47 = 0u;
        v48 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v34 + 24), v35, v40, &v44);
        v47 = v42;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v52, *(&v52 + 1), &v44);
      }

      v44 = v49[0];
      v45 = v31;
      v46 = v33;
      health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, &v44, v12 + 1);
      ++*(a4 + 544);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v43, *(&v43 + 1), v53);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *v41, v41[1], a4);
      if (a5->n128_u64[0] > *&v49[0] || a5->n128_u64[0] >= *&v49[0] && a5->n128_u64[1] > *(&v49[0] + 1))
      {
        v36 = (a2 + 1);
        v37 = &v42;
        v38 = v49;
      }

      else
      {
        v36 = (a2 + 1);
        v37 = &v43;
        v38 = v53;
      }

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(a1, v36, v37, v38, a5, a6);
    }
  }

  else
  {
    v16 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12);
    if (a5->n128_u64[0] < *v16 || a5->n128_u64[0] <= *v16 && a5->n128_u64[1] < v16[1])
    {
      *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) = *a5;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
    }
  }

  return v15;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKeyWithInteriorChildren(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, void *a5, __int128 *a6)
{
  v12 = health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::childForKey(a4, a5);
  v13 = v12;
  v36 = *(health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) + 16);
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(a1, a2, a4, v12, v33);
  v14 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(a1, a2 + 1, &v36, v33, a5, a6);
  if (v14 > 1)
  {
    if (*(a4 + 544) == 17)
    {
      return 2;
    }

    else
    {
      v32 = v36;
      bzero(&v29, 0x223uLL);
      v31 = v35;
      health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(&v29, 0, v33, v34 - 8, 8);
      v34 -= 8;
      v30 = 8;
      v17 = *(*(a1 + 16) + 24);
      v18 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v17, 547);
      v20 = v19;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(v17, v18, v19, &v29);
      v28[0] = v18;
      v28[1] = v20;
      v25 = v29;
      v26 = v18;
      v27 = v20;
      health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, &v25, v13 + 1);
      ++*(a4 + 544);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v32, *(&v32 + 1), v33);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
      if (*a5 > v29.n128_i64[0] || *a5 >= v29.n128_i64[0] && a5[1] > v29.n128_u64[1])
      {
        v21 = a2 + 1;
        v22 = v28;
        v23 = &v29;
      }

      else
      {
        v21 = a2 + 1;
        v22 = &v32;
        v23 = v33;
      }

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(a1, v21, v22, v23, a5, a6);
    }
  }

  else
  {
    v15 = v14;
    v16 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v13);
    if (*a5 < *v16 || *a5 <= *v16 && a5[1] < v16[1])
    {
      *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v13) = *a5;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
    }
  }

  return v15;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __n128 *a5, __n128 *a6)
{
  v11 = health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::indexForKey(a4, a5);
  if (HIDWORD(v11))
  {
    if (*(a4 + 544) == 17)
    {
      v13 = a5->n128_u64[0];
      if (a5->n128_u64[0] < *a4 || a5->n128_u64[0] <= *a4 && a5->n128_u64[1] < *(a4 + 8))
      {
        return 3;
      }

      else
      {
        v16 = *(a4 + 512);
        if (v13 > v16 || v13 >= v16 && a5->n128_u64[1] > *(a4 + 520))
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }
    }

    else
    {
      if (HIDWORD(v11) == 2)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v11;
      }

      v15 = *a6;
      v17[0] = *a5;
      v17[1] = v15;
      health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, v17, v14);
      ++*(a4 + 544);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
      return 0;
    }
  }

  else
  {
    *(health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v11) + 16) = *a6;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
    return 1;
  }
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 547;
  v10[0] = v11;
  v10[1] = v11;
  v10[2] = 547;
  health::SerializeValues<health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>,unsigned short,BOOL>(v10, a4, (a4 + 544), (a4 + 546));
  if (v13 <= 0x3FF)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  health::RawBuffer::RawBuffer(v9, v7, v13);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v9);
  result = v12;
  v12 = 0;
  if (result)
  {
    return MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  return result;
}

void sub_228A64D00(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void health::SerializeValues<health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>,unsigned short,BOOL>(uint64_t a1, uint64_t a2, _WORD *a3, _BYTE *a4)
{
  for (i = 0; i != 17; ++i)
  {
    v9 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, i);
    v10 = *v9;
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v10);
    v10 = v9[1];
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v10);
    v10 = v9[2];
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v10);
    v10 = v9[3];
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v10);
  }

  LOWORD(v10) = *a3;
  health::SerializationBuffer::appendRaw<unsigned short>(a1, &v10);
  LOBYTE(v10) = *a4;
  health::SerializationBuffer::appendRaw<unsigned char>(a1, &v10);
}

void health::not_found_error::~not_found_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x22AAC8590);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

__n128 _ZNKSt3__110__function6__funcIZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_EUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_NS_9allocatorISB_EEFbSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE63E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_EUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_NS_9allocatorISB_EEFbSA_EEclESA_(uint64_t a1, uint64_t a2)
{
  v3[8] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_283BE64F8;
  v3[1] = a2;
  v3[3] = v3;
  v2 = 0;
  operator new();
}

void sub_228A65070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(health::DataStore::ReadTransaction const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_EUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_NS_9allocatorISB_EEFbSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_EUlRNS1_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6468;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t **a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v16 = 0u;
  v17 = 0;
  v18 = a2;
  v4 = *(a1 + 8);
  health::DataStore::ReadTransaction::_pointerForObject(v19, a2, v4);
  if (v20 == 1)
  {
    v5 = a2[3];
    v6 = health::Optional<health::BlockPointer>::get(v19);
    v7 = *v6;
    v8 = v6[1];
    v26 = 0;
    v27 = 56;
    v21 = v25;
    v22 = 56;
    health::BlockAccessFile::ReadTransaction::retrieveBlock(v5, v7, v8, &v21);
    if (v27 <= 0x3FF)
    {
      v9 = v25;
    }

    else
    {
      v9 = v26;
    }

    v21 = v9;
    v22 = v9;
    v23 = 56;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    v12[0] = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    v12[1] = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    *&v13 = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    *(&v13 + 1) = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    *&v14 = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    *(&v14 + 1) = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<long long>(&v21, &v24);
    v15 = v24;
    v10 = v26;
    v26 = 0;
    if (v10)
    {
      MEMORY[0x22AAC8570](v10, 0x1000C8077774924);
    }

    v17 = *v4;
    v16 = *health::Optional<health::BlockPointer>::get(v19);
    v11 = *(*(a1 + 16) + 24);
    if (!v11)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v11 + 48))(v11, v12);
    **(a1 + 24) = 1;
  }
}

void sub_228A653A4(_Unwind_Exception *a1)
{
  v2 = STACK[0x498];
  STACK[0x498] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(health::DataStore::ReadTransaction const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _ZNKSt3__110__function6__funcIZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_EUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_NS_9allocatorISH_EEFvSG_EE7__cloneEPNS0_6__baseISK_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE64F8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_EUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_NS_9allocatorISH_EEFvSG_EEclESG_(uint64_t a1, void *a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v9[0] = &unk_283BE6578;
  v9[1] = v2;
  v9[3] = v9;
  if (a2[6])
  {
    v3 = *(a2[11] + 24);
    v7[0] = 0;
    v7[1] = 0;
    v7[2] = v3;
    v4 = a2[3];
    v6[0] = a2[2];
    v6[1] = v4;
    v6[2] = v7;
    v10[3] = v10;
    v10[0] = &unk_283BE6578;
    v10[1] = v2;
    memset(v8, 0, 411);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v3, v6[0], v4, v8);
    health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV0>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>)::{lambda(double const&,_HDRawLocationDatumV0 const&)#1}>(v6, 0, v8, v10);
    std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>::~__value_func[abi:ne200100](v10);
  }

  return std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>::~__value_func[abi:ne200100](v9);
}

void sub_228A6567C(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>::~__value_func[abi:ne200100](v1 - 56);
  std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>::~__value_func[abi:ne200100](v1 - 88);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_EUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_NS_9allocatorISH_EEFvSG_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS1_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clES7_EUlRKNS1_13SampleHistoryI25LocationHistoryBehaviorV0EEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV0>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>)::{lambda(double const&,_HDRawLocationDatumV0 const&)#1}>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 408))
  {
    v6 = result;
    if (*(a3 + 410) == 1)
    {
      v7 = *(a3 + 8);
      v8 = *(a3 + 16);
      v36 = result;
      v9 = *(result + 16);
      bzero(__p, 0x222uLL);
      v39 = 0u;
      v40 = 0u;
      result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>>(*(v9 + 16), v7, v8, __p);
      if (v38)
      {
        v10 = 0;
        v11 = MEMORY[0x277CCC2A0];
        v12 = 0.0;
        while (1)
        {
          v13 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](__p, v10);
          v14 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](__p, v10);
          if (v10)
          {
            v15.n128_u64[0] = *v13;
            if (*v13 <= v12)
            {
              v16 = *v11;
              std::string::basic_string[abi:ne200100]<0>(v56, "key > lastKey");
              std::string::basic_string[abi:ne200100]<0>(v55, "_enumerateLeaves");
              std::string::basic_string[abi:ne200100]<0>(&v54, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
              health::FormatString<>("Out of order keys during btree enumeration.", &v53);
              health::_HDAssertImplementation<health::btree_access_error>(v16, v56, v55, &v54, 382, &v53);
            }
          }

          v17 = *(a4 + 24);
          if (!v17)
          {
LABEL_35:
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v12 = *v13;
          result = (*(*v17 + 48))(v17, v13, v14 + 8, v15);
          if ((result & 1) == 0)
          {
            break;
          }

          if (++v10 >= v38)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v12 = 0.0;
LABEL_23:
        v25 = v40;
        v26 = MEMORY[0x277CCC2A0];
        v27 = *(&v40 + 1);
        while (1)
        {
          v28 = *(v36 + 16);
          if (v25 == *v28 && v27 == *(v28 + 8))
          {
            break;
          }

          bzero(v42, 0x222uLL);
          v44 = 0u;
          v45 = 0u;
          health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>>(*(v28 + 16), v25, v27, v42);
          if (!v43)
          {
            v29 = *v26;
            std::string::basic_string[abi:ne200100]<0>(v52, "leaf.valueCount > 0");
            std::string::basic_string[abi:ne200100]<0>(v51, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(&v50, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Empty leaf encountered during enumeration.", &v49);
            health::_HDAssertImplementation<health::btree_access_error>(v29, v52, v51, &v50, 392, &v49);
          }

          for (i = 0; i < v43; ++i)
          {
            v31 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v42, i);
            v32 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v42, i);
            if (*v31 <= v12)
            {
              v34 = *v26;
              std::string::basic_string[abi:ne200100]<0>(v48, "key > lastKey");
              std::string::basic_string[abi:ne200100]<0>(v47, "_enumerateLeaves");
              std::string::basic_string[abi:ne200100]<0>(&v46, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
              health::FormatString<>("Out of order keys during btree enumeration.", &v41);
              health::_HDAssertImplementation<health::btree_access_error>(v34, v48, v47, &v46, 396, &v41);
            }

            v35 = *(a4 + 24);
            if (!v35)
            {
              goto LABEL_35;
            }

            v12 = *v31;
            v33.n128_f64[0] = *v31;
            result = (*(*v35 + 48))(v35, v31, v32 + 8, v33);
            if ((result & 1) == 0)
            {
              return result;
            }
          }

          v27 = *(&v45 + 1);
          v25 = v45;
        }
      }
    }

    else
    {
      if (a2 >= 64)
      {
        v19 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(__p, "depth < kMaximumRecursionDepth");
        std::string::basic_string[abi:ne200100]<0>(v56, "_interiorChildAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v55, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Maximum recursion depth reached.", &v54);
        health::_HDAssertImplementation<health::btree_access_error>(v19, __p, v56, v55, 138, &v54);
      }

      v20 = *(a3 + 8);
      v21 = *(a3 + 16);
      v22 = *(result + 16);
      memset(v42, 0, 411);
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v22 + 16), v20, v21, v42);
      if (WORD4(v42[25]))
      {
        if (*v42 < *a3)
        {
          v23 = *MEMORY[0x277CCC2A0];
          std::string::basic_string[abi:ne200100]<0>(&v53, "child.children[0].key >= node.children[index].key");
          std::string::basic_string[abi:ne200100]<0>(v52, "_interiorChildAtIndex");
          std::string::basic_string[abi:ne200100]<0>(v51, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Child node's smallest key is < parent's key", &v50);
          health::_HDAssertImplementation<health::btree_access_error>(v23, &v53, v52, v51, 144, &v50);
        }

        if (*(a3 + 408) >= 2u && *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v42, WORD4(v42[25]) - 1) >= *(a3 + 24))
        {
          v24 = *MEMORY[0x277CCC2A0];
          std::string::basic_string[abi:ne200100]<0>(&v49, "child.children[child.childCount - 1].key < node.children[index + 1].key");
          std::string::basic_string[abi:ne200100]<0>(v48, "_interiorChildAtIndex");
          std::string::basic_string[abi:ne200100]<0>(v47, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Child node's largest key is >= parent's next key", &v46);
          health::_HDAssertImplementation<health::btree_access_error>(v24, &v49, v48, v47, 146, &v46);
        }
      }

      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV0>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>)::{lambda(double const&,_HDRawLocationDatumV0 const&)#1}>(v6, a2 + 1, v42, a4);
    }
  }

  return result;
}

void sub_228A65DD8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(STACK[0x4C0]);
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(STACK[0x4D8]);
  }

  if (SLOBYTE(STACK[0x507]) < 0)
  {
    operator delete(STACK[0x4F0]);
  }

  if (SLOBYTE(STACK[0x51F]) < 0)
  {
    operator delete(STACK[0x508]);
  }

  _Unwind_Resume(a1);
}

void health::DeserializeValue<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 17; ++i)
  {
    v5 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, i);
    v6 = 0;
    health::DeserializationBuffer::extractRaw<long long>(a2, &v6);
    *v5 = v6;
    v6 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a2, &v6);
    v5[1] = v6;
    v6 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a2, &v6);
    v5[2] = v6;
  }

  LOWORD(v6) = 0;
  health::DeserializationBuffer::extractRaw<unsigned short>(a2, &v6);
  *(a1 + 408) = v6;
  LOBYTE(v6) = 0;
  health::DeserializationBuffer::extractRaw<unsigned char>(a2, &v6);
  *(a1 + 410) = v6 != 0;
}

uint64_t health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>>(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = 578;
  health::RawBuffer::RawBuffer(v12, v14, 578);
  health::BlockAccessFile::ReadTransaction::retrieveBlock(a1, a2, a3, v12);
  v8 = 0;
  v9 = v14;
  if (v16 > 0x3FF)
  {
    v9 = v15;
  }

  v12[0] = v9;
  v12[1] = v9;
  v12[2] = 578;
  do
  {
    v10 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a4, v8);
    v13 = 0;
    health::DeserializationBuffer::extractRaw<long long>(v12, &v13);
    *v10 = v13;
    v13 = 0;
    health::DeserializationBuffer::extractRaw<long long>(v12, &v13);
    *(v10 + 8) = v13;
    v13 = 0;
    health::DeserializationBuffer::extractRaw<long long>(v12, &v13);
    *(v10 + 16) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(v12, &v13);
    *(v10 + 24) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(v12, &v13);
    *(v10 + 28) = v13;
    ++v8;
  }

  while (v8 != 17);
  LOWORD(v13) = 0;
  health::DeserializationBuffer::extractRaw<unsigned short>(v12, &v13);
  *(a4 + 544) = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v12, &v13);
  *(a4 + 552) = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v12, &v13);
  *(a4 + 560) = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v12, &v13);
  *(a4 + 568) = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v12, &v13);
  *(a4 + 576) = v13;
  result = v15;
  v15 = 0;
  if (result)
  {
    return MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  return result;
}

void sub_228A662D0(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 50, &__p);
  }

  return a1 + 32 * a2;
}

{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 43, &__p);
  }

  return a1 + 32 * a2;
}

void sub_228A663EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_228A66538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_ENKUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_clESG_EUldRK21_HDRawLocationDatumV0E_NS_9allocatorISL_EEFbRKdSK_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE6578;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_ENKUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_clESG_EUldRK21_HDRawLocationDatumV0E_NS_9allocatorISL_EEFbRKdSK_EEclESP_SK_(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v8 = *a2;
  v4 = *a3;
  v5 = *(a3 + 2);
  v6 = 3212836864;
  v7 = 0;
  health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::insertSample(*(a1 + 8), &v8, &v4);
  return 1;
}

uint64_t _ZNKSt3__110__function6__funcIZZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_ENKUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_clESG_EUldRK21_HDRawLocationDatumV0E_NS_9allocatorISL_EEFbRKdSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS1_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clES7_ENKUlRKNS1_13SampleHistoryI25LocationHistoryBehaviorV0EEE_clESD_EUldRK21_HDRawLocationDatumV0E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, double *a5, __int128 *a6)
{
  if (*(a4 + 408))
  {
    v11 = (a2 + 1);
    if (*(a4 + 410) == 1)
    {

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKeyWithLeafChildren(a1, v11, a3, a4, a5, a6);
    }

    else
    {

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKeyWithInteriorChildren(a1, v11, a3, a4, a5, a6);
    }
  }

  else
  {
    bzero(v23, 0x300uLL);
    v13 = *(a1 + 16);
    v24 = *v13;
    v25 = *v13;
    v19 = *a5;
    v14 = a6[1];
    v20 = *a6;
    v21 = v14;
    v23[384] = 1;
    v22 = *(a6 + 4);
    v15 = *(v13 + 3);
    v16 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v15, 782);
    v18 = v17;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(v15, v16, v17, &v19);
    *a4 = *a5;
    *(a4 + 8) = v16;
    *(a4 + 16) = v18;
    *(a4 + 408) = 1;
    *(a4 + 410) = 1;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKeyWithLeafChildren(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, double *a5, __int128 *a6)
{
  v12 = health::bplustree::InteriorNode<double,health::BlockPointer,17>::childForKey(a4, a5);
  v61 = *(health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) + 8);
  v13 = *(a1 + 16);
  bzero(v57, 0x332uLL);
  v59 = 0u;
  v60 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v13 + 24), v61, *(&v61 + 1), v57);
  v14 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(a1, (a2 + 1), &v61, v57, a5, a6);
  v15 = v14;
  if (v14 > 1)
  {
    v18 = *(a4 + 408);
    if (v18 == 17)
    {
      if (v14 == 4)
      {
        v19 = 4;
      }

      else
      {
        v19 = 2;
      }

      if (v14 == 3)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      if (v12)
      {
        v21 = 2;
      }

      else
      {
        v21 = v20;
      }

      if (v12 == 16)
      {
        return v19;
      }

      else
      {
        return v21;
      }
    }

    else if (v14 == 4 && v18 - 1 == v12)
    {
      bzero(&v53, 0x300uLL);
      v49 = *a5;
      v22 = *a6;
      v51 = a6[1];
      v54 = 1;
      v52 = *(a6 + 4);
      v50 = v22;
      v55 = v61;
      v56 = v60;
      v23 = *(*(a1 + 16) + 24);
      v24 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v23, 782);
      v26 = v25;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(v23, v24, v25, &v49);
      *&v60 = v24;
      *(&v60 + 1) = v26;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v61, *(&v61 + 1), v57);
      v27 = *(a1 + 16);
      v28 = v56;
      if (v56 != *v27)
      {
        bzero(&v45, 0x332uLL);
        v47 = 0u;
        v48 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v27 + 24), v28, *(&v28 + 1), &v45);
        *&v47 = v24;
        *(&v47 + 1) = v26;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v56, *(&v56 + 1), &v45);
      }

      v29 = *(a4 + 408);
      v30 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v29);
      *(v30 + 8) = v24;
      *(v30 + 16) = v26;
      v31 = *a5;
      *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v29) = v31;
      ++*(a4 + 408);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
      return 0;
    }

    else
    {
      v42 = a3;
      v44 = v61;
      bzero(&v49, 0x332uLL);
      v55 = v61;
      v56 = v60;
      health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(&v49, 0, v57, v58 - 8, 8);
      v58 -= 8;
      v54 = 8;
      v32 = *(*(a1 + 16) + 24);
      v33 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v32, 782);
      v35 = v34;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(v32, v33, v34, &v49);
      *&v43 = v33;
      *(&v43 + 1) = v35;
      v60 = v43;
      v36 = *(a1 + 16);
      v37 = v56;
      if (v56 != *v36)
      {
        v41 = *(&v56 + 1);
        bzero(&v45, 0x332uLL);
        v47 = 0u;
        v48 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v36 + 24), v37, v41, &v45);
        v47 = v43;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v56, *(&v56 + 1), &v45);
      }

      v45.n128_f64[0] = v49;
      v45.n128_u64[1] = v33;
      v46 = v35;
      health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, &v45, v12 + 1);
      ++*(a4 + 408);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v44, *(&v44 + 1), v57);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *v42, v42[1], a4);
      if (*a5 <= v49)
      {
        v38 = &v44;
        v39 = v57;
      }

      else
      {
        v38 = &v43;
        v39 = &v49;
      }

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(a1, (a2 + 1), v38, v39, a5, a6);
    }
  }

  else
  {
    v16 = *a5;
    if (v16 < *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12))
    {
      v17 = *a5;
      *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) = v17;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
    }
  }

  return v15;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKeyWithInteriorChildren(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double *a5, __int128 *a6)
{
  v10 = a2;
  v12 = health::bplustree::InteriorNode<double,health::BlockPointer,17>::childForKey(a4, a5);
  v13 = v12;
  v33 = *(health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) + 8);
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_interiorChildAtIndex(a1, v10, a4, v12, v30);
  v14 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(a1, v10 + 1, &v33, v30, a5, a6);
  if (v14 > 1)
  {
    if (*(a4 + 408) == 17)
    {
      return 2;
    }

    else
    {
      v29 = v33;
      memset(v28, 0, 411);
      BYTE10(v28[25]) = v32;
      health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::copyElementsFromArrayToIndex(v28, 0, v30, v31 - 8, 8);
      v31 -= 8;
      WORD4(v28[25]) = 8;
      v18 = *(*(a1 + 16) + 24);
      v19 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v18, 411);
      v21 = v20;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v18, v19, v20, v28);
      v27[0] = v19;
      v27[1] = v21;
      v25.n128_u64[0] = *&v28[0];
      v25.n128_u64[1] = v19;
      v26 = v21;
      health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, &v25, v13 + 1);
      ++*(a4 + 408);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v29, *(&v29 + 1), v30);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
      if (*a5 <= *v28)
      {
        v22 = &v29;
        v23 = v30;
      }

      else
      {
        v22 = v27;
        v23 = v28;
      }

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(a1, v10 + 1, v22, v23, a5, a6);
    }
  }

  else
  {
    v15 = v14;
    v16 = *a5;
    if (v16 < *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v13))
    {
      v17 = *a5;
      *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v13) = v17;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
    }
  }

  return v15;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double *a5, __int128 *a6)
{
  v11 = health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::indexForKey(a4, a5);
  if (HIDWORD(v11))
  {
    if (*(a4 + 816) == 17)
    {
      if (*a5 >= *a4)
      {
        if (*a5 <= *(a4 + 768))
        {
          return 2;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 3;
      }
    }

    else
    {
      if (HIDWORD(v11) == 2)
      {
        v16 = v11 + 1;
      }

      else
      {
        v16 = v11;
      }

      v17 = *a5;
      v18 = a6[1];
      v20 = *a6;
      v21 = v18;
      v22 = *(a6 + 4);
      v19 = v17;
      health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::insertElementAtIndex(a4, &v19, v16);
      ++*(a4 + 816);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
      return 0;
    }
  }

  else
  {
    v12 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a4, v11);
    v13 = *(a6 + 4);
    v14 = a6[1];
    *(v12 + 8) = *a6;
    *(v12 + 24) = v14;
    *(v12 + 40) = v13;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, a3[1], a4);
    return 1;
  }
}

double *health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_interiorChildAtIndex@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (*(a3 + 408) <= a4)
  {
    v9 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v35, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v34, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v32);
    health::_HDAssertImplementation<health::btree_access_error>(v9, v35, v34, v33, 137, &v32);
  }

  if (a2 >= 64)
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v31, "depth < kMaximumRecursionDepth");
    std::string::basic_string[abi:ne200100]<0>(v30, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Maximum recursion depth reached.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v10, v31, v30, v29, 138, &__p);
  }

  v11 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(a1 + 16);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 240) = 0u;
  *(a5 + 256) = 0u;
  *(a5 + 272) = 0u;
  *(a5 + 288) = 0u;
  *(a5 + 304) = 0u;
  *(a5 + 320) = 0u;
  *(a5 + 336) = 0u;
  *(a5 + 352) = 0u;
  *(a5 + 368) = 0u;
  *(a5 + 384) = 0u;
  *(a5 + 395) = 0u;
  result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v14 + 24), v12, v13, a5);
  if (*(a5 + 408))
  {
    v16 = *a5;
    result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
    if (v16 < *result)
    {
      v17 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v27, "child.children[0].key >= node.children[index].key");
      std::string::basic_string[abi:ne200100]<0>(v26, "_interiorChildAtIndex");
      std::string::basic_string[abi:ne200100]<0>(v25, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
      health::FormatString<>("Child node's smallest key is < parent's key", &v24);
      health::_HDAssertImplementation<health::btree_access_error>(v17, v27, v26, v25, 144, &v24);
    }

    if (*(a3 + 408) - 1 > a4)
    {
      v18 = *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, *(a5 + 408) - 1);
      result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, (a4 + 1));
      if (v18 >= *result)
      {
        v19 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v23, "child.children[child.childCount - 1].key < node.children[index + 1].key");
        std::string::basic_string[abi:ne200100]<0>(v22, "_interiorChildAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Child node's largest key is >= parent's next key", &v20);
        health::_HDAssertImplementation<health::btree_access_error>(v19, v23, v22, v21, 146, &v20);
      }
    }
  }

  return result;
}

void sub_228A67460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::copyElementsFromArrayToIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 + a2) >= 0x12)
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v15, "destinationIndex + elementCount <= Length");
    std::string::basic_string[abi:ne200100]<0>(v14, "copyElementsFromArrayToIndex");
    std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Copy would overflow destination.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v5, v15, v14, v13, 79, &__p);
  }

  if ((a5 + a4) >= 0x12)
  {
    v6 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v11, "sourceIndex + elementCount <= Length");
    std::string::basic_string[abi:ne200100]<0>(v10, "copyElementsFromArrayToIndex");
    std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Copy would overflow source.", &v8);
    health::_HDAssertImplementation<std::out_of_range>(v6, v11, v10, v9, 80, &v8);
  }

  return memcpy((a1 + 24 * a2), (a3 + 24 * a4), 24 * a5);
}

void sub_228A677AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(health::DataStore::WriteTransaction &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_228A67C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A67E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableNanoSyncActivationRestoreReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v29 = PBReaderReadData();
          v30 = 32;
          goto LABEL_46;
        }

        if (v13 != 2)
        {
LABEL_47:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_57;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          v35 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v35 & 0x7F) << v15;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_56:
        *(a1 + 8) = v21;
      }

      else
      {
        if (v13 == 3)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v36 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v36 & 0x7F) << v22;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_52:
          *(a1 + 40) = v28;
          goto LABEL_57;
        }

        if (v13 == 4)
        {
          v29 = PBReaderReadString();
          v30 = 16;
LABEL_46:
          v31 = *(a1 + v30);
          *(a1 + v30) = v29;

          goto LABEL_57;
        }

        if (v13 != 6)
        {
          goto LABEL_47;
        }

        v14 = PBReaderReadData();
        if (v14)
        {
          [a1 addObliteratedHealthPairingUUIDs:v14];
        }
      }

LABEL_57:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDDatabaseCurrentSchemaVersion(uint64_t a1, int a2)
{
  v2 = 100003;
  if (a1 == 2)
  {
    v2 = 100030;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 19102;
  }
}

uint64_t HDCodableRoutineLocationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableRoutineLocation);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableRoutineLocationReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228A6ED74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x248], 8);

  _Block_object_dispose((v66 - 240), 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  v68 = STACK[0x2D8];
  if (STACK[0x2D8])
  {
    STACK[0x2E0] = v68;
    operator delete(v68);
  }

  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose((v66 - 192), 8);

  _Block_object_dispose(&STACK[0x320], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__323(__n128 *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  a1[3].n128_u8[4] = *(a2 + 52);
  a1[3].n128_u32[0] = v2;
  a1[4] = 0uLL;
  a1[3].n128_u64[1] = 0;
  *(a1 + 56) = *(a2 + 56);
  a1[4].n128_u64[1] = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  result = *(a2 + 80);
  a1[5] = result;
  return result;
}

void __Block_byref_object_dispose__324(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

double _overlappingSampleDistanceForInterval(void *a1, double *a2, BOOL *a3)
{
  v5 = a1;
  v6 = [v5 startDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [v5 endDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  if (a3)
  {
    *a3 = v13 < v11;
  }

  v15 = v14 / (v13 - v12);
  if (v11 < v13)
  {
    v13 = v11;
  }

  if (v8 >= v12)
  {
    v12 = v8;
  }

  v16 = v15 * fmax(v13 - v12, 0.0);

  return v16;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawDistanceSample>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void __cxx_global_array_dtor()
{
  v0 = &off_27D864688;
  v1 = -168;
  do
  {

    v0 -= 3;
    v1 += 24;
  }

  while (v1);
}

void sub_228A729CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A72DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id unimplementedError()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v1 = *MEMORY[0x277CCBDB0];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"Unimplemented";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [v0 errorWithDomain:v1 code:100 userInfo:v2];

  return v3;
}

void sub_228A752B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_228A75584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A76214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_228A768E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_228A794D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A7AE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A7D134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228A7EAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228A7F9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDPauseRingsScheduleEntityPredicateForCacheIndexRange(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v5 = [v3 predicateWithProperty:@"start_date_index" value:v4 comparisonType:4];

  v6 = MEMORY[0x277D10B18];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v8 = [v6 predicateWithProperty:@"end_date_index" value:v7 comparisonType:6];

  v9 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v5 otherPredicate:v8];

  return v9;
}

void sub_228A85808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableSharingSetupMetadataReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadData();
            v15 = 32;
            goto LABEL_34;
          case 5:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_34;
          case 0x64:
            v16 = objc_alloc_init(HDCodableSharingSetupInvitationToken);
            [a1 addInvitationToken:v16];
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !HDCodableSharingSetupInvitationTokenReadFrom(v16, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_34;
          case 2:
            v14 = PBReaderReadData();
            v15 = 24;
            goto LABEL_34;
          case 3:
            v14 = PBReaderReadData();
            v15 = 40;
LABEL_34:
            v16 = *&a1[v15];
            *&a1[v15] = v14;
LABEL_35:

            goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228A88E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableStartWorkoutAppResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(HDCodableError);
        objc_storeStrong((a1 + 8), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableErrorReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_36;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDBackgroundObservationSupportedForDataTypeCode(uint64_t a1)
{
  result = 0;
  if (a1 <= 174)
  {
    v3 = a1 - 64;
    if (v3 <= 0x27 && ((1 << v3) & 0x9001730007) != 0)
    {
      return result;
    }

    return 1;
  }

  if ((a1 - 175) >= 3 && a1 != 218 && a1 != 257)
  {
    return 1;
  }

  return result;
}

void sub_228A8A8C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void *health::TransactionalFile::ReadTransaction::ReadTransaction(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_283BE68F8;
  result[1] = a3;
  result[2] = a2;
  result[3] = a4;
  return result;
}

{
  *result = &unk_283BE68F8;
  result[1] = a3;
  result[2] = a2;
  result[3] = a4;
  return result;
}

void health::TransactionalFile::_readBufferAtOffset(uint64_t a1, unint64_t a2, health::RawBuffer *a3, uint64_t a4)
{
  std::mutex::lock((a1 + 416));
  v8 = *(a3 + 1);
  if (v8)
  {
    v9 = 0;
    v10 = *(a1 + 360) + a4;
    do
    {
      health::TransactionalFile::_cacheMutex_pageForOffset(a1, a2, v10, 0, &v14);
      if (v14 - v10 + v15 >= v8)
      {
        v11 = v8;
      }

      else
      {
        v11 = v14 - v10 + v15;
      }

      health::RawBuffer::slice(a3, v9, v11, v13);
      health::FilePage::slice(&v14, v10, v11, v12);
      health::RawBuffer::copyFrom(v13, v12);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v9 += v11;
      v10 += v11;
      v8 -= v11;
    }

    while (v8);
  }

  std::mutex::unlock((a1 + 416));
}

uint64_t health::TransactionalFile::ReadTransaction::size(health::TransactionalFile::ReadTransaction *this)
{
  v2 = (*(**(*(this + 2) + 328) + 48))(*(*(this + 2) + 328));
  v3 = health::WriteAheadLog::maximumCommittedSizeForTransaction((*(this + 2) + 16), *(this + 1));
  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return (v4 - *(this + 3)) & ~((v4 - *(this + 3)) >> 63);
}

health::TransactionalFile::WriteTransaction *health::TransactionalFile::WriteTransaction::WriteTransaction(health::TransactionalFile::WriteTransaction *this, health::TransactionalFile *a2, uint64_t a3, uint64_t a4)
{
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 3) = a4;
  *(this + 4) = a2;
  *this = &unk_283BE6920;
  *(this + 5) = health::TransactionalFile::ReadTransaction::size(this) + a4;
  return this;
}

{
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 3) = a4;
  *(this + 4) = a2;
  *this = &unk_283BE6920;
  *(this + 5) = health::TransactionalFile::ReadTransaction::size(this) + a4;
  return this;
}

void health::TransactionalFile::_writeBufferAtOffset(health::TransactionalFile *this, unint64_t a2, const health::RawBuffer *a3, uint64_t a4)
{
  v8 = *(this + 90);
  v9 = *(a3 + 1);
  std::mutex::lock((this + 416));
  if (v9)
  {
    v10 = 0;
    v11 = v8 + a4;
    v12 = MEMORY[0x277CCC2A0];
    do
    {
      health::TransactionalFile::_cacheMutex_pageForOffset(this, a2, v11, 1, &v21);
      if (v24)
      {
        v13 = *v12;
        std::string::basic_string[abi:ne200100]<0>(v20, "!page.is_mapped()");
        std::string::basic_string[abi:ne200100]<0>(v19, "_writeBufferAtOffset");
        std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
        health::FormatString<>("Attempt to write to a mapped page.", &__p);
        health::_HDAssertImplementation<std::logic_error>(v13, v20, v19, v18, 465, &__p);
      }

      if (v21 - v11 + v22 >= v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = v21 - v11 + v22;
      }

      if (v14 + v10 > *(a3 + 1))
      {
        v15 = *v12;
        std::string::basic_string[abi:ne200100]<0>(v29, "(start + length) <= _length");
        std::string::basic_string[abi:ne200100]<0>(v28, "slice");
        std::string::basic_string[abi:ne200100]<0>(v27, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDRawBuffer.h");
        health::FormatString<>("Slice extends beyond end of buffer.", &v26);
        health::_HDAssertImplementation<std::out_of_range>(v15, v29, v28, v27, 67, &v26);
      }

      health::RawBuffer::RawBuffer(v16, (*a3 + v10), v14);
      health::FilePage::slice(&v21, v11, v14, v29);
      health::RawBuffer::copyFrom(v29, v16);
      health::TransactionalFile::_cacheMutex_writePage(this, a2, &v21);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v11 += v14;
      v10 += v14;
      v9 -= v14;
    }

    while (v9);
  }

  std::mutex::unlock((this + 416));
}

void sub_228A8C548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v48 - 113) < 0)
  {
    operator delete(*(v48 - 136));
  }

  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  health::FilePage::~FilePage(&a36);
  std::mutex::unlock((v47 + 416));
  _Unwind_Resume(a1);
}

uint64_t health::TransactionalFile::TransactionalFile(uint64_t a1, __int128 *a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return health::TransactionalFile::TransactionalFile(a1, a2, v3);
}

{
  v3[0] = 0;
  v3[1] = 0;
  return health::TransactionalFile::TransactionalFile(a1, a2, v3);
}

uint64_t health::TransactionalFile::TransactionalFile(uint64_t a1, __int128 *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!*a3)
  {
    operator new();
  }

  *a1 = *a3;
  v5 = a3[1];
  *(a1 + 8) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 1);
  }

  v7 = __p;
  std::string::basic_string[abi:ne200100](__p, v6 + 4);
  if (v16 < 0)
  {
    v7 = __p[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "-wal");
  v9 = *(a1 + 8);
  v13[0] = *a1;
  v13[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  health::WriteAheadLog::WriteAheadLog(a1 + 16, __p, v13);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 304), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 320) = *(a2 + 2);
    *(a1 + 304) = v10;
  }

  *(a1 + 344) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 352) = 0x1484B5446;
  *(a1 + 360) = 1024;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0u;
  v11 = getpagesize();
  *(a1 + 392) = v11;
  *(a1 + 400) = -v11;
  *(a1 + 408) = 1;
  *(a1 + 416) = 850045863;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = 16 * v11;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 1065353216;
  *(a1 + 576) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 584) = 850045863;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 648) = 1018212795;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 696) = a1 + 704;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 768) = a1 + 776;
  v14[0] = &unk_283BE6970;
  v14[1] = a1;
  v14[3] = v14;
  v17 = __p;
  __p[0] = &unk_283BE6970;
  __p[1] = a1;
  if (__p != (a1 + 552))
  {
    *(a1 + 552) = &unk_283BE6970;
    *(a1 + 560) = a1;
    v17 = 0;
    *(a1 + 576) = a1 + 552;
  }

  std::__function::__value_func<BOOL ()(unsigned long long,unsigned long long const&,health::FilePage const&)>::~__value_func[abi:ne200100](__p);
  std::__function::__value_func<BOOL ()(unsigned long long,unsigned long long const&,health::FilePage const&)>::~__value_func[abi:ne200100](v14);
  return a1;
}

void sub_228A8C984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  health::WriteAheadLog::~WriteAheadLog((v21 + 16));
  v23 = *(v21 + 8);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

uint64_t health::TransactionalFile::open(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v53 = *MEMORY[0x277D85DE8];
  if (a1[41])
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v41, "!isOpen()");
    std::string::basic_string[abi:ne200100]<0>(v40, "open");
    std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("File is already open.", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v4, v41, v40, v39, 101, &__p);
  }

  v5 = 0;
  v6 = 0;
  v7 = a1 + 41;
  v8 = *a1;
  *&v50[0].__padding_ = 0x100000000;
  LODWORD(p_token) = 2;
  do
  {
    padding = v50[v6].__padding_;
    if (padding >= 4)
    {
      std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
    }

    v5 |= 1 << padding;
    ++v6;
  }

  while (v6 != 3);
  (*(*v8 + 16))(&__token);
  v10 = *&__token.__r_.__value_.__l.__data_;
  *&__token.__r_.__value_.__l.__data_ = 0uLL;
  v11 = a1[42];
  *v7 = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (__token.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__token.__r_.__value_.__l.__size_);
    }

    if (!*v7)
    {
LABEL_12:
      v12 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v37, "isOpen()");
      std::string::basic_string[abi:ne200100]<0>(v36, "open");
      std::string::basic_string[abi:ne200100]<0>(v35, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
      health::FormatString<>("File failed to open as expected.", &v34);
      health::_HDAssertImplementation<health::transaction_error>(v12, v37, v36, v35, 106, &v34);
    }
  }

  else if (!v10)
  {
    goto LABEL_12;
  }

  if (v2 == 2)
  {
    *(a1 + 102) = 0;
  }

  if ((*(**v7 + 48))())
  {
    v13 = a1[41];
    v44 = 0;
    v45 = 36;
    *&v50[0].__padding_ = &__token;
    p_token = &__token;
    v52 = 36;
    v14 = (*(*v13 + 32))(v13, 0, &__token, 36);
    LODWORD(v42) = 0;
    health::DeserializationBuffer::extractRaw<unsigned int>(v50, &v42);
    *(a1 + 88) = v42;
    LODWORD(v42) = 0;
    health::DeserializationBuffer::extractRaw<unsigned int>(v50, &v42);
    *(a1 + 89) = v42;
    LODWORD(v42) = 0;
    health::DeserializationBuffer::extractRaw<unsigned int>(v50, &v42);
    *(a1 + 90) = v42;
    v42 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(v50, &v42);
    a1[46] = v42;
    v42 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(v50, &v42);
    a1[47] = v42;
    v42 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(v50, &v42);
    a1[48] = v42;
    v15 = v44;
    v44 = 0;
    if (v15)
    {
      MEMORY[0x22AAC8570](v15, 0x1000C8077774924);
    }

    if (v14 != 36)
    {
      v16 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v33, "headerBytes == _header.serializedSize()");
      std::string::basic_string[abi:ne200100]<0>(v32, "open");
      std::string::basic_string[abi:ne200100]<0>(v31, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
      health::FormatString<>("Failed to read full file header.", &v30);
      health::_HDAssertImplementation<health::file_access_error>(v16, v33, v32, v31, 118, &v30);
    }

    if (*(a1 + 89) == 1)
    {
      if (*(a1 + 88) == 1212896326)
      {
        health::WriteAheadLog::open((a1 + 2), a1[47]);
        v17 = a1[48];
        v18 = a1[49];
        if (v17 == v18)
        {
          if (v2 == 1)
          {
LABEL_37:
            __token.__r_.__value_.__s.__data_[0] = 0;
            v28 = a1[47];
            v49[0] = &unk_283BE6A40;
            v49[3] = v49;
            v48[0] = &unk_283BE6AD0;
            v48[1] = a1;
            v48[2] = &__token;
            v48[3] = v48;
            v47[0] = &unk_283BE6B60;
            v47[1] = a1;
            v47[3] = v47;
            health::WriteAheadLog::checkpoint((a1 + 2), v28, v49, v48, v47);
            std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v47);
            std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](v48);
            std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v49);
            if (__token.__r_.__value_.__s.__data_[0])
            {
              return 2;
            }

            else
            {
              return 1;
            }
          }
        }

        else
        {
          if (v2 != 2 || !v17)
          {
            a1[48] = v18;
            goto LABEL_37;
          }

          health::TransactionalFile::_configurePageSize(a1, v17);
        }

        return 3;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Transactional file header has incorrect magic word.");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid header version for transactional file.");
    }

    exception->__vftable = &unk_283BE6EE8;
  }

  health::WriteAheadLog::discardLog((a1 + 2));
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(v50, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  v19 = arc4random();
  v20 = 1;
  v21 = v19;
  do
  {
    v21 = v20 + 0x5851F42D4C957F2DLL * (v21 ^ (v21 >> 62));
    __token.__r_.__value_.__r.__words[v20++] = v21;
  }

  while (v20 != 312);
  v22 = __token.__r_.__value_.__r.__words[1] & 0x7FFFFFFE | (v19 & 0x80000000);
  v23 = 0xB5026F5AA96619E9;
  if ((__token.__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    v23 = 0;
  }

  v24 = ((v23 ^ v46 ^ (v22 >> 1)) >> 29) & 0x5555555555555555 ^ v23 ^ v46 ^ (v22 >> 1);
  v25 = (((v24 << 17) & 0x71D67FFFEDA60000 ^ v24) << 37) & 0xFFF7EEE000000000 ^ (v24 << 17) & 0x71D67FFFEDA60000 ^ v24;
  v26 = a1[49];
  a1[47] = v25 ^ (v25 >> 43);
  a1[48] = v26;
  health::VirtualFile::write<health::TransactionalFile::FileHeader>(a1[41], (a1 + 44));
  (*(**v7 + 16))();
  health::WriteAheadLog::open((a1 + 2), a1[47]);
  std::random_device::~random_device(v50);
  return 0;
}

void sub_228A8D128(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v4 - 176);
    std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](v4 - 144);
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v4 - 112);
    __cxa_begin_catch(a1);
    v6 = *(v2 + 336);
    *v3 = 0;
    v3[1] = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    health::WriteAheadLog::reset((v2 + 16));
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_228A8D330(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void health::_HDAssertImplementation<health::transaction_error>(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5, uint64_t **a6)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v11 = backtrace(v39, 20);
  v12 = backtrace_symbols(v39, v11);
  std::ostringstream::basic_ostringstream[abi:ne200100](v38);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Critical Error: ", 16);
  v14 = *(a6 + 23);
  if (v14 >= 0)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a6;
  }

  if (v14 >= 0)
  {
    v16 = *(a6 + 23);
  }

  else
  {
    v16 = a6[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Failed assertion '", 18);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = a2[1];
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' in '", 6);
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = a3[1];
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "' at ", 5);
  v29 = *(a4 + 23);
  if (v29 >= 0)
  {
    v30 = a4;
  }

  else
  {
    v30 = *a4;
  }

  if (v29 >= 0)
  {
    v31 = *(a4 + 23);
  }

  else
  {
    v31 = a4[1];
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ":", 1);
  v34 = MEMORY[0x22AAC83A0](v33, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
  if (!v11)
  {
    free(v12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v38, &v37);
    std::runtime_error::runtime_error(exception, &v37);
    exception->__vftable = &unk_283BE6F28;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v12);
  health::HDDemangleBacktraceLine();
}

void sub_228A8D5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);
  _Unwind_Resume(a1);
}

void health::_HDAssertImplementation<health::file_access_error>(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5, uint64_t **a6)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v11 = backtrace(v39, 20);
  v12 = backtrace_symbols(v39, v11);
  std::ostringstream::basic_ostringstream[abi:ne200100](v38);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Critical Error: ", 16);
  v14 = *(a6 + 23);
  if (v14 >= 0)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a6;
  }

  if (v14 >= 0)
  {
    v16 = *(a6 + 23);
  }

  else
  {
    v16 = a6[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Failed assertion '", 18);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = a2[1];
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' in '", 6);
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = a3[1];
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "' at ", 5);
  v29 = *(a4 + 23);
  if (v29 >= 0)
  {
    v30 = a4;
  }

  else
  {
    v30 = *a4;
  }

  if (v29 >= 0)
  {
    v31 = *(a4 + 23);
  }

  else
  {
    v31 = a4[1];
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ":", 1);
  v34 = MEMORY[0x22AAC83A0](v33, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
  if (!v11)
  {
    free(v12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v38, &v37);
    std::runtime_error::runtime_error(exception, &v37);
    exception->__vftable = &unk_283BE6A18;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v12);
  health::HDDemangleBacktraceLine();
}

void sub_228A8D9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);
  _Unwind_Resume(a1);
}

void health::TransactionalFile::_configurePageSize(health::TransactionalFile *this, uint64_t a2)
{
  if (a2 < 2 || (v4 = vcnt_s8(a2), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] >= 2uLL))
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v10, "pageSize > 1 && !(pageSize & (pageSize - 1))");
    std::string::basic_string[abi:ne200100]<0>(v9, "_configurePageSize");
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("pageSize must be a power of 2", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v5, v10, v9, v8, 408, &__p);
  }

  if (*(this + 49) != a2)
  {
    std::mutex::lock((this + 416));
    v6 = *(this + 60);
    *(this + 60) = 0;
    health::TransactionalCache<unsigned long long,health::FilePage>::_pruneIfNeeded(this + 120, 0, 0);
    *(this + 60) = v6;
    *(this + 49) = a2;
    *(this + 50) = -a2;
    std::mutex::unlock((this + 416));
  }
}

void sub_228A8DC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void health::TransactionalFile::invalidate(health::TransactionalFile *this)
{
  __lk.__m_ = (this + 584);
  __lk.__owns_ = 1;
  std::mutex::lock((this + 584));
  v2 = pthread_self();
  v3 = std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(this + 696, v2);
  v4 = MEMORY[0x277CCC2A0];
  if ((this + 704) != v3)
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v16, "_activeReadTransactions.find(threadID) == _activeReadTransactions.end()");
    std::string::basic_string[abi:ne200100]<0>(v15, "invalidate");
    std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("Attempt to invalidate the transactional file from within a read transaction.", &__p);
    health::_HDAssertImplementation<std::logic_error>(v5, v16, v15, v14, 183, &__p);
  }

  if ((this + 776) != std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(this + 768, v2))
  {
    v6 = *v4;
    std::string::basic_string[abi:ne200100]<0>(v12, "_activeWriteTransactions.find(threadID) == _activeWriteTransactions.end()");
    std::string::basic_string[abi:ne200100]<0>(v11, "invalidate");
    std::string::basic_string[abi:ne200100]<0>(v10, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("Attempt to invalidate the transactional file from within a write transaction.", &v9);
    health::_HDAssertImplementation<std::logic_error>(v6, v12, v11, v10, 184, &v9);
  }

  if ((*(this + 344) & 1) == 0)
  {
    *(this + 344) = 1;
    while (*(this + 89) || *(this + 98))
    {
      std::condition_variable::wait((this + 648), &__lk);
    }

    v7 = *(this + 41);
    if (v7)
    {
      (*(*v7 + 64))(v7);
      v8 = *(this + 42);
      *(this + 41) = 0;
      *(this + 42) = 0;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      health::WriteAheadLog::reset((this + 16));
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_228A8DF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  std::mutex::unlock(v44);
  _Unwind_Resume(a1);
}

void health::_HDAssertImplementation<std::logic_error>(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5, uint64_t **a6)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v11 = backtrace(v39, 20);
  v12 = backtrace_symbols(v39, v11);
  std::ostringstream::basic_ostringstream[abi:ne200100](v38);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Critical Error: ", 16);
  v14 = *(a6 + 23);
  if (v14 >= 0)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a6;
  }

  if (v14 >= 0)
  {
    v16 = *(a6 + 23);
  }

  else
  {
    v16 = a6[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Failed assertion '", 18);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = a2[1];
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' in '", 6);
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = a3[1];
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "' at ", 5);
  v29 = *(a4 + 23);
  if (v29 >= 0)
  {
    v30 = a4;
  }

  else
  {
    v30 = *a4;
  }

  if (v29 >= 0)
  {
    v31 = *(a4 + 23);
  }

  else
  {
    v31 = a4[1];
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ":", 1);
  v34 = MEMORY[0x22AAC83A0](v33, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
  if (!v11)
  {
    free(v12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v38, &v37);
    std::logic_error::logic_error(exception, &v37);
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v12);
  health::HDDemangleBacktraceLine();
}

void sub_228A8E26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);
  _Unwind_Resume(a1);
}

void health::TransactionalFile::setCacheSize(health::TransactionalFile *this, unint64_t a2)
{
  std::mutex::lock((this + 416));
  if (!a2)
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v13, "maxSize > 0");
    std::string::basic_string[abi:ne200100]<0>(v12, "setMaxSize");
    std::string::basic_string[abi:ne200100]<0>(v11, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDTransactionalCache.hpp");
    health::FormatString<>("Cache max size must be greater than 0.", &__p);
    health::_HDAssertImplementation<std::logic_error>(v4, v13, v12, v11, 30, &__p);
  }

  *(this + 60) = a2;
  v5 = *(this + 68);
  if (v5)
  {
    do
    {
      v6 = *(this + 61);
      if (v6 <= a2)
      {
        break;
      }

      v7 = *(v5 + 88);
      if (!*v5)
      {
        *(this + 61) = v6 - *(v5 + 16);
        v8 = *(v5 + 80);
        if (v8)
        {
          *(v8 + 88) = v7;
        }

        if (v7)
        {
          *(v7 + 80) = v8;
        }

        if (*(this + 68) == v5)
        {
          *(this + 68) = v7;
        }

        if (*(this + 67) == v5)
        {
          *(this + 67) = *(v5 + 80);
        }

        v14 = *(v5 + 24);
        v15 = &v14;
        v9 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 124, v14, &v15);
        health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine::removeEntry(v9 + 3, v5);
        if (v9[4] == v9[3])
        {
          std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__erase_unique<unsigned long long>(this + 62, v14);
        }
      }

      v5 = v7;
    }

    while (v7);
  }

  health::TransactionalCache<unsigned long long,health::FilePage>::_pruneIfNeeded(this + 120, 0, 0);

  std::mutex::unlock((this + 416));
}

void sub_228A8E5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  std::mutex::unlock((v32 + 416));
  _Unwind_Resume(a1);
}

uint64_t health::TransactionalFile::readTransactionWithLambda(uint64_t a1, uint64_t a2)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v4 = pthread_self();
  v22[3] = v4;
  std::mutex::lock((a1 + 584));
  if (*(a1 + 344) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Read transaction attempted after file was closed.");
    exception->__vftable = &unk_283BE6F28;
  }

  if (!*(a1 + 328))
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v22, "isOpen()");
    std::string::basic_string[abi:ne200100]<0>(v21, "readTransactionWithLambda");
    std::string::basic_string[abi:ne200100]<0>(v20, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("File has not yet been opened.", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v5, v22, v21, v20, 220, &__p);
  }

  v6 = std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(a1 + 696, v4);
  if (a1 + 704 == v6)
  {
    v10 = *(a1 + 776);
    if (!v10)
    {
      goto LABEL_23;
    }

    v7 = a1 + 776;
    do
    {
      v11 = v4 != 0;
      v12 = *(v10 + 32);
      v13 = v12 != v4;
      if (v12)
      {
        v11 = v12 < v4;
      }

      v14 = !v13 || !v11;
      if (v13 && v11)
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        v7 = v10;
      }

      v10 = *(v10 + v15);
    }

    while (v10);
    if (v7 == a1 + 776)
    {
      goto LABEL_23;
    }

    v16 = *(v7 + 32);
    v17 = v16 != 0;
    if (v4)
    {
      v17 = v16 > v4;
    }

    if (v16 != v4 && v17)
    {
LABEL_23:
      std::mutex::unlock((a1 + 584));
      operator new();
    }

    std::mutex::unlock((a1 + 584));
    v8 = *(a2 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  else
  {
    v7 = v6;
    std::mutex::unlock((a1 + 584));
    v8 = *(a2 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  return (*(*v8 + 48))(v8, *(v7 + 40));
}

void std::unique_lock<std::mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    health::TransactionalFile::_transactionMutex_waitForAvailableWriteTransaction(v2, v3);
  }
}

void health::TransactionalFile::_transactionMutex_waitForAvailableWriteTransaction(uint64_t a1, std::unique_lock<std::mutex> *a2)
{
  v4 = pthread_self();
  v5 = *(a1 + 736);
  v6 = *(a1 + 728);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = *(a1 + 752);
  v9 = *(a1 + 760);
  v10 = v9 + v8;
  if (v7 == v9 + v8)
  {
    v11 = v8 >= 0x200;
    v12 = v8 - 512;
    if (!v11)
    {
      v13 = *(a1 + 744);
      v14 = *(a1 + 720);
      if (v5 - v6 < (v13 - v14))
      {
        operator new();
      }

      if (v13 == v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = (v13 - v14) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v15);
    }

    *(a1 + 752) = v12;
    v17 = *v6;
    *(a1 + 728) = v6 + 8;
    std::__split_buffer<std::__thread_id *>::emplace_back<std::__thread_id *&>((a1 + 720), &v17);
    v9 = *(a1 + 760);
    v6 = *(a1 + 728);
    v8 = *(a1 + 752);
    v10 = v8 + v9;
  }

  *(*&v6[(v10 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v10 & 0x1FF)) = v4;
  v16 = v9 + 1;
  *(a1 + 760) = v16;
  if ((*(a1 + 344) & 1) == 0 && (*(a1 + 784) || v16 && *(*(*(a1 + 728) + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) != v4))
  {
    do
    {
      if (!*(a1 + 784) && (!*(a1 + 760) || *(*(*(a1 + 728) + ((*(a1 + 752) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 752) & 0x1FFLL)) == v4))
      {
        break;
      }

      std::condition_variable::wait((a1 + 648), a2);
    }

    while (*(a1 + 344) != 1);
  }
}

void sub_228A8EF50(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void health::TransactionalFile::configurePageSize(health::TransactionalFile *this, uint64_t a2)
{
  if (*(this + 41))
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v6, "!isOpen()");
    std::string::basic_string[abi:ne200100]<0>(v5, "configurePageSize");
    std::string::basic_string[abi:ne200100]<0>(v4, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("Page size must be configured before the file is opened.", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v2, v6, v5, v4, 423, &__p);
  }

  health::TransactionalFile::_configurePageSize(this, a2);
}

void sub_228A8F0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void health::TransactionalFile::_cacheMutex_writePage(health::TransactionalFile *this, unint64_t a2, health::FilePage *a3)
{
  v12 = *a3;
  v7 = *a3;
  v3 = *(a3 + 3);
  v8 = *(a3 + 2);
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a3 + 4);
  v5 = *(a3 + 5);
  v10 = v4;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a3 + 4);
  }

  if (v4)
  {
    v6 = 48;
  }

  else
  {
    v6 = *(a3 + 1);
  }

  health::TransactionalCache<unsigned long long,health::FilePage>::setValueForKey(this + 480, a2, &v12, &v7, v6, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void health::FilePage::~FilePage(health::FilePage *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void health::TransactionalFile::_cacheMutex_pageForOffset(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v9 = -*(a1 + 392) & a3;
  v51 = v9;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 496), v9);
  if (v10)
  {
    v11 = v10[4];
    do
    {
      if (v11 == v10[3])
      {
        goto LABEL_11;
      }

      v13 = *(v11 - 8);
      v11 -= 8;
      v12 = v13;
    }

    while (*(v13 + 8) > a2);
    health::TransactionalCache<unsigned long long,health::FilePage>::_touchCacheEntry(a1 + 480, v12);
    v14 = *(v12 + 8);
    v47 = *(v12 + 32);
    v16 = *(v12 + 48);
    v15 = *(v12 + 56);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(v12 + 64);
    v17 = *(v12 + 72);
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    *(v50 + 8) = v47;
    *&v50[0] = v14;
    *(&v50[1] + 1) = v16;
    *&v50[2] = v15;
    *(&v50[2] + 1) = v18;
    *&v50[3] = v17;
    BYTE8(v50[3]) = 1;
    v19 = health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::operator->(v50);
    if (*&v50[0] == a2)
    {
      health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::operator->(v19);
      health::TransactionalFile::_sanitizedPageForTransaction(v50 + 1, v5, a5);
      goto LABEL_41;
    }

    v9 = v51;
  }

  else
  {
LABEL_11:
    memset(v50, 0, 57);
  }

  health::WriteAheadLog::pageAtOffset(&v47, (a1 + 16), a2, v9);
  v20 = v49;
  if (v48 | v49)
  {
    v44[0] = v47;
    v21 = *(&v48 + 1);
    v44[1] = v48;
    if (*(&v48 + 1))
    {
      atomic_fetch_add_explicit((*(&v48 + 1) + 8), 1uLL, memory_order_relaxed);
      v20 = v49;
    }

    v22 = *(&v49 + 1);
    v45 = v20;
    v46 = *(&v49 + 1);
    if (*(&v49 + 1))
    {
      atomic_fetch_add_explicit((*(&v49 + 1) + 8), 1uLL, memory_order_relaxed);
      v20 = v49;
    }

    if (v20)
    {
      v23 = 48;
    }

    else
    {
      v23 = *(&v47 + 1);
    }

    health::TransactionalCache<unsigned long long,health::FilePage>::setValueForKey(a1 + 480, a2, &v51, v44, v23, 0);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    v24 = v48;
    *a5 = v47;
    *(a5 + 16) = v24;
    v48 = 0uLL;
    *(a5 + 32) = v49;
    v49 = 0uLL;
  }

  else
  {
    if (BYTE8(v50[3]) != 1)
    {
      v25 = *(a1 + 392);
      if (v5)
      {
        v26 = v51;
      }

      else
      {
        v29 = (*(**(a1 + 328) + 48))(*(a1 + 328));
        v26 = v51;
        if (v29 >= v51 + v25)
        {
          (*(**(a1 + 328) + 40))(&v42);
          v31 = v42;
          v30 = v43;
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *a5 = *(v31 + 8);
          *(a5 + 16) = 0;
          *(a5 + 24) = 0;
          *(a5 + 32) = v31;
          *(a5 + 40) = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            v33 = *(a5 + 16);
            v32 = *(a5 + 24);
            v37 = *a5;
            v38 = v33;
            v39 = v32;
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v37 = *a5;
            v38 = 0;
            v39 = 0;
          }

          v34 = *(a5 + 32);
          v35 = *(a5 + 40);
          v40 = v34;
          v41 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            v34 = *(a5 + 32);
          }

          if (v34)
          {
            v36 = 48;
          }

          else
          {
            v36 = *(a5 + 8);
          }

          health::TransactionalCache<unsigned long long,health::FilePage>::setValueForKey(a1 + 480, a2, &v51, &v37, v36, 0);
          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          }

          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          }

          goto LABEL_37;
        }
      }

      *a5 = v26;
      *(a5 + 8) = v25;
      operator new[]();
    }

    if (v5 == 1)
    {
      health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::operator->(v50);
      health::FilePage::copy(a5, v50 + 1);
    }

    health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::operator->(v50);
    *a5 = *(v50 + 8);
    v27 = *&v50[2];
    *(a5 + 16) = *(&v50[1] + 1);
    *(a5 + 24) = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = *&v50[3];
    *(a5 + 32) = *(&v50[2] + 1);
    *(a5 + 40) = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }
  }

LABEL_37:
  if (*(&v49 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v49 + 1));
  }

  if (*(&v48 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v48 + 1));
  }

LABEL_41:
  if (*&v50[3])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v50[3]);
  }

  if (*&v50[2])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v50[2]);
  }
}

void sub_228A8F6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  health::FilePage::~FilePage(&a9);
  health::FilePage::~FilePage(v22);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  health::FilePage::~FilePage(va);
  health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::~Optional(v23 - 144);
  _Unwind_Resume(a1);
}

void health::TransactionalFile::_sanitizedPageForTransaction(void *a1@<X1>, int a2@<W2>, health::FilePage *a3@<X8>)
{
  v3 = a1[2];
  v4 = a1[4];
  if (v3 | v4)
  {
    if (a2 == 1 && v4)
    {
      health::FilePage::copy(a3, a1);
    }

    *a3 = *a1;
    v7 = a1[3];
    *(a3 + 2) = v3;
    *(a3 + 3) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[4];
    }

    v8 = a1[5];
    *(a3 + 4) = v4;
    *(a3 + 5) = v8;
    if (v8)
    {
      v9 = (v8 + 8);
LABEL_14:
      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = *a1;
    v5 = a1[3];
    *(a3 + 2) = 0;
    *(a3 + 3) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v6 = a1[4];
    }

    else
    {
      v6 = 0;
    }

    v10 = a1[5];
    *(a3 + 4) = v6;
    *(a3 + 5) = v10;
    if (v10)
    {
      v9 = (v10 + 8);
      goto LABEL_14;
    }
  }
}

uint64_t health::TransactionalFile::_finishCheckpoint(health::TransactionalFile *this)
{
  health::VirtualFile::write<health::TransactionalFile::FileHeader>(*(this + 41), this + 352);
  v2 = *(**(this + 41) + 16);

  return v2();
}

void health::_HDAssertImplementation<std::out_of_range>(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5, uint64_t **a6)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v11 = backtrace(v39, 20);
  v12 = backtrace_symbols(v39, v11);
  std::ostringstream::basic_ostringstream[abi:ne200100](v38);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Critical Error: ", 16);
  v14 = *(a6 + 23);
  if (v14 >= 0)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a6;
  }

  if (v14 >= 0)
  {
    v16 = *(a6 + 23);
  }

  else
  {
    v16 = a6[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Failed assertion '", 18);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = a2[1];
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' in '", 6);
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = a3[1];
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "' at ", 5);
  v29 = *(a4 + 23);
  if (v29 >= 0)
  {
    v30 = a4;
  }

  else
  {
    v30 = *a4;
  }

  if (v29 >= 0)
  {
    v31 = *(a4 + 23);
  }

  else
  {
    v31 = a4[1];
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ":", 1);
  v34 = MEMORY[0x22AAC83A0](v33, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
  if (!v11)
  {
    free(v12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v38, &v37);
    std::logic_error::logic_error(exception, &v37);
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v12);
  health::HDDemangleBacktraceLine();
}

void sub_228A8FAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);
  _Unwind_Resume(a1);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

uint64_t std::deque<std::__thread_id>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<std::__thread_id *>::~__split_buffer(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 3);
      std::vector<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    JUMPOUT(0x22AAC8590);
  }

  return result;
}

void health::data_corruption_error::~data_corruption_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x22AAC8590);
}

void health::transaction_error::~transaction_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x22AAC8590);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_228A9005C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x22AAC8570](v1, 0x1000C8077774924);
  }

  __cxa_rethrow();
}

void std::__shared_ptr_pointer<unsigned char  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__shared_ptr_pointer<unsigned char  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::~Optional(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(unsigned long long,unsigned long long const&,health::FilePage const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::__function::__func<health::TransactionalFile::TransactionalFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>)::$_0,std::allocator<health::TransactionalFile::TransactionalFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>)::$_0>,BOOL ()(unsigned long long,unsigned long long const&,health::FilePage const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE6970;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::TransactionalFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>)::$_0,std::allocator<health::TransactionalFile::TransactionalFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>)::$_0>,BOOL ()(unsigned long long,unsigned long long const&,health::FilePage const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void health::file_access_error::~file_access_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_0,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1>,void ()(unsigned long long,health::FilePage const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6AD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1>,void ()(unsigned long long,health::FilePage const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(*(a1 + 8) + 328);
  v6 = *a3;
  v7 = a3[2];
  if (!v7)
  {
    v7 = (*(*a3[4] + 16))(a3[4], a2);
  }

  result = (*(*v5 + 24))(v5, v6, v7, a3[1]);
  **(a1 + 16) = 1;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1>,void ()(unsigned long long,health::FilePage const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE6B60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2>,void ()(unsigned long long)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  health::VirtualFile::write<health::TransactionalFile::FileHeader>(*(v1 + 328), v1 + 352);
  v2 = *(**(v1 + 328) + 16);

  return v2();
}

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = v2;
  do
  {
    v6 = a2 != 0;
    v7 = *(v3 + 32);
    v8 = v7 != a2;
    if (v7)
    {
      v6 = v7 < a2;
    }

    v9 = !v8 || !v6;
    if (v8 && v6)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v5 = v3;
    }

    v3 = *(v3 + v10);
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  v11 = *(v5 + 32);
  v12 = v11 != 0;
  if (a2)
  {
    v12 = v11 > a2;
  }

  if (v11 != a2 && v12)
  {
    return v2;
  }

  return v5;
}

void health::TransactionalCache<unsigned long long,health::FilePage>::_pruneIfNeeded(float *result, int a2, unint64_t a3)
{
  if (*result >= a3)
  {
    v3 = *result - a3;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(result + 8);
  while (v4)
  {
    while (1)
    {
      v7 = *(result + 1);
      if (v7 <= v3)
      {
        return;
      }

      v8 = v4;
      v4 = *(v4 + 88);
      if (*v8)
      {
        break;
      }

      v10 = v4;
LABEL_12:
      *(result + 1) = v7 - *(v8 + 16);
      v11 = *(v8 + 80);
      if (v11)
      {
        *(v11 + 88) = v10;
      }

      if (v10)
      {
        *(v10 + 80) = v11;
      }

      if (*(result + 8) == v8)
      {
        *(result + 8) = v10;
      }

      if (*(result + 7) == v8)
      {
        *(result + 7) = *(v8 + 80);
      }

      v13 = *(v8 + 24);
      v14 = &v13;
      v12 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 4, v13, &v14);
      health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine::removeEntry(v12 + 3, v8);
      if (v12[4] != v12[3])
      {
        goto LABEL_21;
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__erase_unique<unsigned long long>(result + 2, v13);
      if (!v4)
      {
        return;
      }
    }

    if (a2 != 1)
    {
      v9 = *(result + 12);
      v10 = v4;
      if (!v9)
      {
        goto LABEL_12;
      }

      v14 = *(v8 + 8);
      if ((*(*v9 + 48))(v9, &v14, v8 + 24, v8 + 32))
      {
        v7 = *(result + 1);
        v10 = *(v8 + 88);
        goto LABEL_12;
      }
    }

LABEL_21:
    ;
  }
}

uint64_t *health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine::removeEntry(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = *result;
  v4 = result[1];
  if (*result != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        return result;
      }
    }

    if (v3 != v4)
    {
      v6 = v3 + 1;
      if (v3 + 1 != v4)
      {
        do
        {
          v7 = *v6;
          if (*v6 != a2)
          {
            *v6 = 0;
            result = std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>::reset[abi:ne200100](v3++, v7);
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = v2[1];
      }
    }
  }

  if (v3 != v4)
  {
    while (v4 != v3)
    {
      result = std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>::reset[abi:ne200100](--v4, 0);
    }

    v2[1] = v3;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(float *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__erase_unique<unsigned long long>(void *a1, unint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = a1[1];
    v6 = *v3;
    v7 = v3[1];
    v8 = vcnt_s8(v5);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      if (v7 >= *&v5)
      {
        v7 %= *&v5;
      }
    }

    else
    {
      v7 &= *&v5 - 1;
    }

    v9 = *(*a1 + 8 * v7);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9 != v3);
    if (v10 == a1 + 2)
    {
      goto LABEL_19;
    }

    v11 = v10[1];
    if (v8.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
LABEL_19:
      if (v6)
      {
        v12 = v6[1];
        if (v8.u32[0] > 1uLL)
        {
          v13 = v6[1];
          if (v12 >= *&v5)
          {
            v13 = v12 % *&v5;
          }
        }

        else
        {
          v13 = v12 & (*&v5 - 1);
        }

        if (v13 == v7)
        {
          goto LABEL_23;
        }
      }

      *(*a1 + 8 * v7) = 0;
      v6 = *v3;
    }

    if (!v6)
    {
LABEL_29:
      *v10 = v6;
      *v3 = 0;
      --a1[3];
      v14 = v3 + 3;
      std::vector<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>::__destroy_vector::operator()[abi:ne200100](&v14);
      operator delete(v4);
      return;
    }

    v12 = v6[1];
LABEL_23:
    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v5)
      {
        v12 %= *&v5;
      }
    }

    else
    {
      v12 &= *&v5 - 1;
    }

    if (v12 != v7)
    {
      *(*a1 + 8 * v12) = v10;
      v6 = *v3;
    }

    goto LABEL_29;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= *&v2)
        {
          v7 %= *&v2;
        }
      }

      else
      {
        v7 &= *&v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0,std::allocator<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0>,void ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6BE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0,std::allocator<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0>,void ()(unsigned long long)>::operator()(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a1[1];
  v17 = (v4 + 584);
  v18 = 1;
  std::mutex::lock((v4 + 584));
  v5 = *(v4 + 360);
  v16[0] = &unk_283BE68F8;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(v4 + 704);
  if (!v8)
  {
LABEL_20:
    operator new();
  }

  v9 = *v6;
  while (1)
  {
    while (1)
    {
      v10 = v8;
      v11 = v8[4];
      v12 = v11 != 0;
      if (v9)
      {
        v12 = v11 > v9;
      }

      if (v11 == v9 || !v12)
      {
        break;
      }

      v8 = *v10;
      if (!*v10)
      {
        goto LABEL_20;
      }
    }

    v14 = v9 != 0;
    if (v11)
    {
      v14 = v11 < v9;
    }

    if (v11 == v9 || !v14)
    {
      break;
    }

    v8 = v10[1];
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  v10[5] = v16;
  std::mutex::unlock(v17);
  v18 = 0;
  v15 = *(v7 + 24);
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v15 + 48))(v15, v16);
  std::unique_lock<std::mutex>::lock[abi:ne200100](&v17);
  std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::__erase_unique<std::__thread_id>((v4 + 696), *v6);
  std::condition_variable::notify_all((v4 + 648));
  if (v18)
  {
    std::mutex::unlock(v17);
  }
}

uint64_t std::__function::__func<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0,std::allocator<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0::operator() const(unsigned long long)::{lambda(void)#2}::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  std::unique_lock<std::mutex>::lock[abi:ne200100](*a1);
  std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::__erase_unique<std::__thread_id>((v2 + 696), **(a1 + 16));

  std::condition_variable::notify_all((v2 + 648));
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::__erase_unique<std::__thread_id>(v3, v4);
}

void std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::__erase_unique<std::__thread_id>(uint64_t **a1, unint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    a1[2] = (a1[2] - 1);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);

    operator delete(v4);
  }
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  *(v7 + 8) = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = *(v7 + 16);
  *(v24 + 16) = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  *(v7 + 16) = v24;
  v23 = v7;
LABEL_68:
  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_1::operator()(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if ((*(v2 + 8) & 1) == 0)
  {
    std::unique_lock<std::mutex>::lock[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::__erase_unique<std::__thread_id>((v3 + 768), **(a1 + 16));

  std::condition_variable::notify_all((v3 + 648));
}

__n128 std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6C60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::operator()(void *a1, unint64_t *a2)
{
  v3 = a1[1];
  v4 = *(v3 + 360);
  v27 = *a2;
  v28 = v3;
  v29 = v4;
  v30 = v3;
  v26 = &unk_283BE6920;
  v5 = (*(**(v3 + 328) + 48))(*(v3 + 328));
  v6 = health::WriteAheadLog::maximumCommittedSizeForTransaction((v3 + 16), v27);
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v31 = ((v7 - v29) & ~((v7 - v29) >> 63)) + v4;
  v8 = *(v3 + 776);
  if (!v8)
  {
LABEL_20:
    operator new();
  }

  v9 = *a1[2];
  while (1)
  {
    while (1)
    {
      v10 = v8;
      v11 = v8[4];
      v12 = v11 != 0;
      if (v9)
      {
        v12 = v11 > v9;
      }

      if (v11 == v9 || !v12)
      {
        break;
      }

      v8 = *v10;
      if (!*v10)
      {
        goto LABEL_20;
      }
    }

    v14 = v9 != 0;
    if (v11)
    {
      v14 = v11 < v9;
    }

    if (v11 == v9 || !v14)
    {
      break;
    }

    v8 = v10[1];
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  v10[5] = &v26;
  v15 = *(*(*(v3 + 728) + ((*(v3 + 752) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v3 + 752) & 0x1FFLL));
  if (pthread_self() != v15)
  {
    v16 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v25, "_waitingWriterThreads.front() == std::this_thread::get_id()");
    std::string::basic_string[abi:ne200100]<0>(v24, "operator()");
    std::string::basic_string[abi:ne200100]<0>(v23, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("Improper thread at write transaction start.", &__p);
    health::_HDAssertImplementation<std::logic_error>(v16, v25, v24, v23, 309, &__p);
  }

  v17 = vaddq_s64(*(v3 + 752), xmmword_229166A20);
  *(v3 + 752) = v17;
  if (v17.i64[0] >= 0x400uLL)
  {
    operator delete(**(v3 + 728));
    *(v3 + 728) += 8;
    *(v3 + 752) -= 512;
  }

  std::unique_lock<std::mutex>::unlock[abi:ne200100](a1[3]);
  v18 = *(a1[4] + 24);
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v19 = (*(*v18 + 48))(v18, &v26);
  if (v19)
  {
    std::mutex::lock((v3 + 416));
    for (i = *(v3 + 536); i; i = *(i + 80))
    {
      if (*i == 1)
      {
        health::WriteAheadLog::updatedPage((v3 + 16), *(i + 8), (i + 32));
        *i = 0;
      }
    }
  }

  else
  {
    std::mutex::lock((v3 + 416));
    health::TransactionalCache<unsigned long long,health::FilePage>::discardEntriesForTransaction(v3 + 480, v27);
  }

  std::mutex::unlock((v3 + 416));
  return v19;
}

void sub_228A92174()
{
  std::mutex::unlock((v0 + 416));
  __cxa_end_catch();
  JUMPOUT(0x228A9218CLL);
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::TransactionalCache<unsigned long long,health::FilePage>::discardEntriesForTransaction(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    do
    {
      v5 = v2[11];
      if (v2[1] == a2)
      {
        v6 = v2[3];
        *(a1 + 8) -= v2[2];
        v9 = v6;
        v7 = v2[10];
        if (v7)
        {
          *(v7 + 88) = v5;
        }

        if (v5)
        {
          v5[10] = v7;
        }

        if (*(a1 + 64) == v2)
        {
          *(a1 + 64) = v5;
        }

        if (*(a1 + 56) == v2)
        {
          *(a1 + 56) = v2[10];
        }

        v10 = &v9;
        v8 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 16), v6, &v10);
        health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine::removeEntry(v8 + 3, v2);
        if (v8[4] == v8[3])
        {
          std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__erase_unique<unsigned long long>((a1 + 16), v9);
        }
      }

      v2 = v5;
    }

    while (v5);
  }
}

__n128 std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2}>,void ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6CF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2}>,void ()(unsigned long long)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  std::unique_lock<std::mutex>::lock[abi:ne200100](*(a1 + 8));
  health::VirtualFile::write<health::TransactionalFile::FileHeader>(*(v1 + 328), v1 + 352);
  v2 = *(**(v1 + 328) + 16);

  return v2();
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2}>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1}>,void ()(unsigned long long,health::FilePage const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE6D70;
  a2[1] = v2;
  return result;
}

void std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1}>,void ()(unsigned long long,health::FilePage const&)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  v6 = v5[41];
  v7 = *a3;
  v8 = *(a3 + 16);
  if (!v8)
  {
    v8 = (*(**(a3 + 32) + 16))(*(a3 + 32));
  }

  (*(*v6 + 24))(v6, v7, v8, *(a3 + 8));
  v9 = *a3;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>(v5 + 62, *a3);
  if (v10)
  {
    v11 = v10[3];
    v12 = v10[4];
    if (v11 != v12)
    {
      v13 = v5[61];
      v14 = v5[68];
      v15 = v5[67];
      do
      {
        v16 = *v11;
        v17 = *(*v11 + 16);
        v19 = *(*v11 + 80);
        v18 = *(*v11 + 88);
        if (v19)
        {
          *(v19 + 88) = v18;
        }

        if (v18)
        {
          *(v18 + 80) = v19;
        }

        if (v14 == v16)
        {
          v5[68] = v18;
          v14 = v18;
        }

        if (v15 == v16)
        {
          v15 = *(v16 + 80);
          v5[67] = v15;
        }

        v13 -= v17;
        ++v11;
      }

      while (v11 != v12);
      v5[61] = v13;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__erase_unique<unsigned long long>(v5 + 62, v9);
    v9 = *a3;
  }

  v29 = v9;
  v24 = *a3;
  v20 = *(a3 + 24);
  v25 = *(a3 + 16);
  v26 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(a3 + 32);
  v22 = *(a3 + 40);
  v27 = v21;
  v28 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = *(a3 + 32);
  }

  if (v21)
  {
    v23 = 48;
  }

  else
  {
    v23 = *(a3 + 8);
  }

  health::TransactionalCache<unsigned long long,health::FilePage>::setValueForKey((v5 + 60), v4, &v29, &v24, v23, 0);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1}>,void ()(unsigned long long,health::FilePage const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3}>,void ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6DF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3}>,void ()(unsigned long long)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  health::VirtualFile::write<health::TransactionalFile::FileHeader>(*(v2 + 328), v2 + 352);
  (*(**(v2 + 328) + 16))(*(v2 + 328));
  v3 = *(a1 + 16);

  std::unique_lock<std::mutex>::unlock[abi:ne200100](v3);
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3}>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__split_buffer<std::__thread_id *>::emplace_back<std::__thread_id *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_228A956C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *a26, void *a27, uint64_t a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _Unwind_Exception *exception_objecta, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{
  _Block_object_dispose(&STACK[0x228], 8);
  v48 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v48;
    operator delete(v48);
  }

  _Block_object_dispose(&a41, 8);
  std::__tree<long>::destroy(a48);

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__24(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

__n128 __Block_byref_object_copy__319(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__320(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::__tree<long>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<long>::destroy(*a1);
    std::__tree<long>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::__tree<long>::__emplace_unique_key_args<long,long const&>(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *HKIntervalMask<double>::_insertInterval(uint64_t *result, double a2, double a3)
{
  v3 = result;
  v4 = 0;
  v13.n128_f64[0] = a2;
  v13.n128_f64[1] = a3;
  v5 = *result;
  v6 = result[1];
  do
  {
    if ((v6 + v4) == v5)
    {
      v11 = std::vector<HKRawInterval<double>>::insert(result, v5, &v13);
      return HKIntervalMask<double>::_compactIntervalsForwardFrom<std::__wrap_iter<HKRawInterval<double> *>>(v3, v11);
    }

    v7 = *(v6 + v4 - 16);
    v4 -= 16;
  }

  while (v7 > a2);
  v8 = v6 + v4;
  v9 = *(v6 + v4 + 8);
  if (v9 >= a2)
  {
    if (a3 <= v9)
    {
      return result;
    }

    *(v8 + 8) = a3;
    if (v4 == -16)
    {
      return result;
    }

    v12 = v6 + v4;
    goto LABEL_15;
  }

  if (v4 == -16)
  {
    return std::vector<HKRawInterval<double>>::insert(result, (v8 + 16), &v13);
  }

  v10 = v6 + v4;
  if (a3 < *(v10 + 16))
  {
    return std::vector<HKRawInterval<double>>::insert(result, (v8 + 16), &v13);
  }

  *(v10 + 16) = a2;
  if (a3 > *(v10 + 24))
  {
    *(v10 + 24) = a3;
    v12 = v8 + 16;
LABEL_15:

    return HKIntervalMask<double>::_compactIntervalsForwardFrom<std::__wrap_iter<HKRawInterval<double> *>>(result, v12);
  }

  return result;
}

uint64_t *HKIntervalMask<double>::_compactIntervalsForwardFrom<std::__wrap_iter<HKRawInterval<double> *>>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2 - *result;
  v5 = (v4 >> 4) + 1;
  if (v5 < (v3 - *result) >> 4)
  {
    v6 = result;
    v7 = v4 + 16;
    v8 = v3 - 16;
    v9 = v2 - a2;
    do
    {
      v10 = (v2 + v4);
      v11 = *(v2 + v4 + 8);
      v12 = (v2 + 16 * v5);
      if (v11 < *v12)
      {
        break;
      }

      v13 = *v10;
      if (v11 < v12[1])
      {
        v11 = v12[1];
      }

      if (v11 >= v13)
      {
        v14 = *v10;
      }

      else
      {
        v14 = v11;
      }

      if (v13 >= v11)
      {
        v11 = *v10;
      }

      *v10 = v14;
      v10[1] = v11;
      result = (v2 + v7);
      v15 = (v2 + v7 + 16);
      if (v3 != v15)
      {
        result = memmove(result, v15, v9 + v8 - v2 - 16);
        v2 = *v6;
      }

      v3 = v8;
      v6[1] = v8;
      v16 = v8 - v2;
      v8 -= 16;
    }

    while (v5 < v16 >> 4);
  }

  return result;
}

char *std::vector<HKRawInterval<double>>::insert(void *a1, char *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HKRawInterval<double>>>(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    std::__split_buffer<HKRawInterval<double>>::emplace_back<HKRawInterval<double> const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 16;
  }

  else
  {
    v8 = __src + 16;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = (v6 + 16);
      *v6 = *(v6 - 1);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 16, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_228A96764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__split_buffer<HKRawInterval<double>>::emplace_back<HKRawInterval<double> const&>(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<HKRawInterval<double>>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = v5[v7].n128_u64;
    a1[2] = v9->n128_u64 + v10;
  }

  result = *a2;
  *v4 = *a2;
  a1[2] += 16;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HKRawInterval<double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void _HDMakeSleepIntervalAverageInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  *(a1 + 16) = 0;
  *a1 = vrndmq_f64(vdivq_f64(*(a2 + 16), vdupq_lane_s64(COERCE__INT64(v3), 0)));
  *(a1 + 16) = objc_msgSend_copy(*(a2 + 32));
  v4 = *(a2 + 32);
}

void sub_228A994C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 232), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A9DEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A9E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A9EC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228AA0AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HDCodableSharingAuthorizationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_278616E68[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableNotificationInstructionRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HDCodableNotificationInstructionMessage);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !HDCodableNotificationInstructionMessageReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

id getSOSUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_196;
  v7 = _MergedGlobals_196;
  if (!_MergedGlobals_196)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOSUtilitiesClass_block_invoke;
    v3[3] = &unk_278616E90;
    v3[4] = &v4;
    __getSOSUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_228AA6A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSOSUtilitiesClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!qword_280D67B20)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SOSLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278616EB0;
    v8 = 0;
    qword_280D67B20 = _sl_dlopen();
  }

  if (!qword_280D67B20)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SOSLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"HDMedicalIDDataManager.m" lineNumber:42 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSOSUtilitiesClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"HDMedicalIDDataManager.m" lineNumber:43 description:{@"Unable to find class %s", "SOSUtilities"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_196 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SOSLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_280D67B20 = result;
  return result;
}

void sub_228AA8D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228AAA4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,HKSample * {__strong}>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::tuple<long long,HKSample * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::tuple<long long,HKSample * {__strong}>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,HKSample * {__strong}>>>(a1, a2);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::tuple<long long,HKSample * {__strong}>>::__vdeallocate(id **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 2;

        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::vector<std::tuple<long long,HKSample * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKSample * {__strong}>*,std::tuple<long long,HKSample * {__strong}>*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::tuple<long long,HKSample * {__strong}>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t *std::vector<std::tuple<long long,HKDeletedObject * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKDeletedObject * {__strong}>*,std::tuple<long long,HKDeletedObject * {__strong}>*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::tuple<long long,HKSample * {__strong}>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t HDCloudSyncCodableSharedSummaryParticipantRecordReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 144;
          goto LABEL_86;
        case 2u:
          v13 = PBReaderReadString();
          v14 = 96;
          goto LABEL_86;
        case 3u:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_86;
        case 4u:
          v13 = PBReaderReadString();
          v14 = 88;
          goto LABEL_86;
        case 5u:
          v13 = PBReaderReadString();
          v14 = 112;
          goto LABEL_86;
        case 0xAu:
          v13 = PBReaderReadString();
          v14 = 104;
          goto LABEL_86;
        case 0xBu:
          v13 = PBReaderReadString();
          v14 = 120;
          goto LABEL_86;
        case 0xCu:
          v33 = PBReaderReadString();
          if (v33)
          {
            [a1 addAllContactIdentifiers:v33];
          }

          goto LABEL_115;
        case 0x14u:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          a1[152] |= 0x40u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v62 & 0x7F) << v42;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v44;
          }

LABEL_102:
          v55 = 56;
          goto LABEL_107;
        case 0x15u:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          a1[152] |= 1u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v62 & 0x7F) << v36;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v38;
          }

LABEL_98:
          v55 = 8;
          goto LABEL_107;
        case 0x16u:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          a1[152] |= 0x20u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v62 & 0x7F) << v17;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_90;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_90:
          v55 = 48;
          goto LABEL_107;
        case 0x17u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          a1[152] |= 0x10u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v62 & 0x7F) << v26;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v28;
          }

LABEL_94:
          v55 = 40;
          goto LABEL_107;
        case 0x1Eu:
          a1[152] |= 8u;
          v62 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v57 = v62;
          v58 = 32;
          goto LABEL_114;
        case 0x1Fu:
          a1[152] |= 4u;
          v62 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v57 = v62;
          v58 = 24;
          goto LABEL_114;
        case 0x20u:
          a1[152] |= 2u;
          v62 = 0;
          v34 = [a2 position] + 8;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v57 = v62;
          v58 = 16;
LABEL_114:
          *&a1[v58] = v57;
          goto LABEL_115;
        case 0x21u:
          v13 = PBReaderReadData();
          v14 = 128;
          goto LABEL_86;
        case 0x28u:
          v13 = PBReaderReadData();
          v14 = 136;
LABEL_86:
          v54 = *&a1[v14];
          *&a1[v14] = v13;

          goto LABEL_115;
        case 0x29u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          a1[152] |= 0x80u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_115;
      }

      while (1)
      {
        LOBYTE(v62) = 0;
        v51 = [a2 position] + 1;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
        {
          v53 = [a2 data];
          [v53 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v50 |= (v62 & 0x7F) << v48;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v48 += 7;
        v11 = v49++ >= 9;
        if (v11)
        {
          v23 = 0;
          goto LABEL_106;
        }
      }

      v23 = [a2 hasError] ? 0 : v50;
LABEL_106:
      v55 = 64;
LABEL_107:
      *&a1[v55] = v23;
LABEL_115:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}