uint64_t *sub_1952D20B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    icu::UnicodeString::~UnicodeString(a2, (v3 + 8));
    MEMORY[0x19A8B2600](v3, 0x1092C40F9D2A717);
  }

  return a1;
}

uint64_t icu::CollationDataReader::read(uint64_t this, const icu::CollationTailoring *a2, const unsigned __int8 *a3, uint64_t a4, UErrorCode *a5, UErrorCode *a6)
{
  v91 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    return this;
  }

  v8 = a3;
  v9 = a2;
  v10 = this;
  if (this)
  {
    if (!a2 || a3 <= 0x17)
    {
      goto LABEL_13;
    }

    if (*(a2 + 2) != 218)
    {
      goto LABEL_30;
    }

    if (*(a2 + 3) != 39)
    {
      goto LABEL_30;
    }

    this = icu::CollationDataReader::isAcceptable((a4 + 328), a2, a3, a2 + 2);
    if (!this)
    {
      goto LABEL_30;
    }

    UCAVersion = icu::CollationTailoring::getUCAVersion(v10);
    this = icu::CollationTailoring::getUCAVersion(a4);
    if (UCAVersion != this)
    {
      v13 = U_COLLATOR_VERSION_MISMATCH;
      goto LABEL_31;
    }

    v12 = *v9;
    v9 = (v9 + v12);
    if (v8 < 0)
    {
      v14 = 0;
      goto LABEL_15;
    }

    v8 -= v12;
  }

  else if (!a2)
  {
LABEL_13:
    v13 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_31:
    *a5 = v13;
    return this;
  }

  if (v8 <= 7)
  {
    goto LABEL_13;
  }

  v14 = v8 >= 0;
LABEL_15:
  v15 = *v9;
  if (*v9 < 2)
  {
    goto LABEL_30;
  }

  if (v8 < 4 * v15 && v14)
  {
    goto LABEL_30;
  }

  if (v15 >= 0x14)
  {
    v17 = (v9 + 76);
LABEL_24:
    v18 = *v17;
    goto LABEL_27;
  }

  if (v15 >= 6)
  {
    v17 = (v9 + 4 * (v15 - 1));
    goto LABEL_24;
  }

  v18 = 0;
LABEL_27:
  if (v8 >= v18)
  {
    v14 = 0;
  }

  if (v14)
  {
    goto LABEL_30;
  }

  if (v10)
  {
    v19 = *(v10 + 3);
  }

  else
  {
    v19 = 0;
  }

  if (v15 < 6)
  {
    v21 = 0;
    v20 = -1;
    goto LABEL_40;
  }

  v20 = *(v9 + 5);
  if (v15 == 6)
  {
    v21 = 0;
LABEL_40:
    v22 = -1;
    goto LABEL_43;
  }

  v22 = *(v9 + 6);
  v21 = 1;
LABEL_43:
  v23 = v22 - v20;
  if (v22 - v20 < 4)
  {
    LODWORD(v28) = 0;
    v29 = 0;
    LODWORD(v26) = 0;
    v25 = 0;
    if (v21)
    {
LABEL_50:
      v30 = *(v9 + 6);
      goto LABEL_55;
    }
  }

  else
  {
    if (!v19)
    {
      goto LABEL_30;
    }

    v24 = 0;
    v25 = v9 + v20;
    v26 = v23 >> 2;
    v27 = v9 + 4 * v26 + v20 - 4;
    while (*(v27 + 4 * v24) >= 0x10000u)
    {
      if (-v26 == --v24)
      {
        LODWORD(v28) = v23 >> 2;
        goto LABEL_53;
      }
    }

    if (v24)
    {
      v28 = -v24;
LABEL_53:
      LODWORD(v26) = v26 - v28;
      v29 = &v25[4 * v26];
      if (v21)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }

    LODWORD(v28) = 0;
    v29 = 0;
    if (v21)
    {
      goto LABEL_50;
    }
  }

LABEL_54:
  v30 = -1;
LABEL_55:
  if (v15 < 8)
  {
    v31 = -1;
  }

  else
  {
    v31 = *(v9 + 7);
  }

  if (v31 - v30 < 256)
  {
    v32 = 0;
  }

  else
  {
    if (!v26)
    {
      goto LABEL_30;
    }

    v32 = v9 + v30;
  }

  if (v19 && *(v19 + 56) != *(v9 + 7) << 24)
  {
    goto LABEL_30;
  }

  if (v15 < 8)
  {
    v33 = -1;
  }

  else
  {
    v33 = *(v9 + 7);
    if (v15 != 8)
    {
      v34 = *(v9 + 8);
      goto LABEL_69;
    }
  }

  v34 = -1;
LABEL_69:
  v35 = v34 - v33;
  if (v34 - v33 < 8)
  {
    if (!v19)
    {
      goto LABEL_30;
    }

    v38 = 0;
    *(a4 + 24) = v19;
  }

  else
  {
    v86 = v32;
    __s1 = v25;
    v36 = v19;
    v85 = v26;
    v37 = v28;
    this = icu::CollationTailoring::ensureOwnedData(a4, a5);
    if (!this)
    {
      return this;
    }

    v26 = *(a4 + 336);
    *(v26 + 32) = v36;
    *(v26 + 56) = *(v9 + 7) << 24;
    this = utrie2_openFromSerialized(1u, v9 + v33, v35, 0, a5);
    *(a4 + 368) = this;
    *v26 = this;
    if (*a5 >= 1)
    {
      return this;
    }

    v38 = v26;
    LODWORD(v28) = v37;
    LODWORD(v26) = v85;
    v32 = v86;
    v19 = v36;
    v25 = __s1;
  }

  if (v15 < 10)
  {
    v39 = -1;
  }

  else
  {
    v39 = *(v9 + 9);
    if (v15 != 10)
    {
      v40 = *(v9 + 10);
      goto LABEL_80;
    }
  }

  v40 = -1;
LABEL_80:
  v41 = v40 - v39;
  if (v41 >= 8)
  {
    if (!v38)
    {
      goto LABEL_30;
    }

    *(v38 + 16) = v9 + v39;
    *(v38 + 64) = v41 >> 3;
  }

  if (v15 < 12)
  {
    v43 = 0;
    v42 = -1;
    goto LABEL_87;
  }

  v42 = *(v9 + 11);
  if (v15 == 12)
  {
    v43 = 0;
LABEL_87:
    v44 = -1;
    goto LABEL_91;
  }

  v44 = *(v9 + 12);
  v43 = 1;
LABEL_91:
  v45 = v44 - v42;
  if (v45 >= 4)
  {
    if (!v38)
    {
      goto LABEL_30;
    }

    *(v38 + 8) = v9 + v42;
    *(v38 + 60) = v45 >> 2;
  }

  if (v15 <= 4 || (v46 = *(v9 + 4), (v46 & 0x80000000) != 0))
  {
    if (!v38)
    {
      goto LABEL_103;
    }

    if (!v19)
    {
      goto LABEL_30;
    }

    v48 = *(v19 + 40);
  }

  else
  {
    if (!v38)
    {
      goto LABEL_30;
    }

    v47 = *(v38 + 8);
    if (!v47)
    {
      goto LABEL_30;
    }

    v48 = v47 + 4 * v46;
  }

  *(v38 + 40) = v48;
LABEL_103:
  if (v43)
  {
    v49 = *(v9 + 12);
  }

  else
  {
    v49 = -1;
  }

  if (v15 < 14)
  {
    v50 = -1;
  }

  else
  {
    v50 = *(v9 + 13);
  }

  v51 = v50 - v49;
  if (v51 >= 4)
  {
    if (!v38)
    {
      goto LABEL_30;
    }

    if (v51 <= 0x13)
    {
      goto LABEL_30;
    }

    v52 = v9 + v49;
    *(v38 + 128) = v52;
    *(v38 + 136) = v51 >> 2;
    if (*(v52 + 3) != 83887360 || v52[19] <= 0x44u)
    {
      goto LABEL_30;
    }
  }

  if (v15 < 14)
  {
    v54 = 0;
    v53 = -1;
    goto LABEL_118;
  }

  v53 = *(v9 + 13);
  if (v15 == 14)
  {
    v54 = 0;
LABEL_118:
    v55 = -1;
    goto LABEL_120;
  }

  v55 = *(v9 + 14);
  v54 = 1;
LABEL_120:
  v56 = v55 - v53;
  if (v56 >= 2)
  {
    if (!v38)
    {
      goto LABEL_30;
    }

    *(v38 + 24) = v9 + v53;
    *(v38 + 68) = v56 >> 1;
  }

  if (v54)
  {
    v57 = *(v9 + 14);
  }

  else
  {
    v57 = -1;
  }

  if (v15 < 16)
  {
    v58 = -1;
  }

  else
  {
    v58 = *(v9 + 15);
  }

  v87 = v32;
  __s1a = v25;
  v84 = v28;
  if (v58 - v57 >= 2)
  {
    if (v38)
    {
      if (v19)
      {
        icu::UnicodeSet::cloneAsThawed(*(v19 + 80));
      }

      operator new();
    }

    goto LABEL_30;
  }

  if (!v38)
  {
    v59 = v19;
    v60 = 0;
    goto LABEL_149;
  }

  if (!v19)
  {
    goto LABEL_30;
  }

  v59 = v19;
  *(v38 + 80) = *(v19 + 80);
  *(v38 + 88) = 0;
  *(v38 + 96) = 0;
  if (*(v9 + 6) << 16 == 0x20000)
  {
    if (v15 < 16)
    {
      v61 = -1;
    }

    else
    {
      v61 = *(v9 + 15);
      if (v15 != 16)
      {
        v62 = *(v9 + 16);
        goto LABEL_144;
      }
    }

    v62 = -1;
LABEL_144:
    v63 = v62 - v61;
    if (v63 < 2)
    {
      *(v38 + 88) = *(v19 + 88);
      *(v38 + 96) = *(v19 + 96);
    }

    else
    {
      v64 = v9 + v61;
      *(v38 + 88) = v64;
      *(v38 + 96) = v63 >> 1;
      if (v64[1] << 8 != 512)
      {
        goto LABEL_30;
      }
    }
  }

  v60 = 1;
LABEL_149:
  if (v15 < 17)
  {
    v66 = 0;
    v65 = -1;
    goto LABEL_153;
  }

  v65 = *(v9 + 16);
  if (v15 == 17)
  {
    v66 = 0;
LABEL_153:
    v67 = -1;
    goto LABEL_155;
  }

  v67 = *(v9 + 17);
  v66 = 1;
LABEL_155:
  v68 = v67 - v65;
  if (v67 - v65 < 2)
  {
    v76 = v60 ^ 1;
    if (!v59)
    {
      v76 = 1;
    }

    if ((v76 & 1) == 0)
    {
      *(v38 + 100) = *(v59 + 100);
      *(v38 + 104) = *(v59 + 104);
      *(v38 + 120) = *(v59 + 120);
    }
  }

  else
  {
    if (!v38)
    {
      goto LABEL_30;
    }

    v69 = (v9 + v65);
    v70 = *v69;
    *(v38 + 100) = v70;
    v71 = (v68 >> 1) - v70;
    v72 = v71 - 17;
    *(v38 + 120) = v71 - 17;
    if ((v71 - 274) <= 0xFFFFFF01)
    {
      goto LABEL_30;
    }

    v73 = v69 + 1;
    *(v38 + 104) = v73;
    v74 = &v73[v70];
    v75 = v74[16];
    *(v38 + 112) = v74 + 16;
    if (v75 || v74[17] != 768 || v74[v72 + 15] != -256)
    {
      goto LABEL_30;
    }
  }

  if (v66)
  {
    v77 = *(v9 + 17);
  }

  else
  {
    v77 = -1;
  }

  if (v15 < 19)
  {
    v78 = -1;
  }

  else
  {
    v78 = *(v9 + 18);
  }

  if (v78 - v77 < 256)
  {
    if (!v38)
    {
      goto LABEL_179;
    }

    if (v59)
    {
      v79 = *(v59 + 72);
      goto LABEL_178;
    }

LABEL_30:
    v13 = U_INVALID_FORMAT_ERROR;
    goto LABEL_31;
  }

  if (!v38)
  {
    goto LABEL_30;
  }

  v79 = v9 + v77;
LABEL_178:
  *(v38 + 72) = v79;
LABEL_179:
  v80 = *(a4 + 32);
  v81 = *(v9 + 1);
  bzero(&v90, 0x300uLL);
  this = icu::CollationFastLatin::getOptions(*(a4 + 24), v80, &v90, 0x180);
  if (v81 != *(v80 + 24) || !*(v80 + 28) || v26 != *(v80 + 72) || (v82 = this, v26) && (this = memcmp(__s1a, *(v80 + 64), 4 * v26), this) || v82 != *(v80 + 80) || (v82 & 0x80000000) == 0 && (this = memcmp(&v90, (v80 + 84), 0x300uLL), this))
  {
    this = sub_1952C9150((a4 + 32));
    if (!this)
    {
      v13 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_31;
    }

    v83 = this;
    *(this + 24) = v81;
    this = icu::CollationData::getLastPrimaryForGroup(*(a4 + 24), (v81 >> 4) & 7 | 0x1000);
    *(v83 + 28) = this;
    if (!this)
    {
      goto LABEL_30;
    }

    if (v26)
    {
      icu::CollationSettings::aliasReordering(v83, v59, __s1a, v26, v29, v84, v87, a5);
    }

    this = icu::CollationFastLatin::getOptions(*(a4 + 24), v83, (v83 + 84), 0x180);
    *(v83 + 80) = this;
  }

  return this;
}

uint64_t icu::CollationDataReader::isAcceptable(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  if (*a4 < 0x14u || *(a4 + 4) || *(a4 + 5) || *(a4 + 8) != 85 || *(a4 + 9) != 67 || *(a4 + 10) != 111 || *(a4 + 11) != 108 || *(a4 + 12) != 5)
  {
    return 0;
  }

  if (a1)
  {
    *a1 = *(a4 + 4);
  }

  return 1;
}

int *icu::RuleBasedCollator::cloneRuleData(icu::RuleBasedCollator *this, int *a2, UErrorCode *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v7 = malloc_type_malloc(0x4E20uLL, 0x100004077774924uLL);
    if (v7)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      *v16 = 0u;
      LODWORD(v14) = 20000;
      v8 = icu::CollationDataWriter::write(0, (*(this + 3) + 328), *(*(this + 3) + 24), *(this + 2), 0, 0, v16, v7, v14, a3, 0);
      *a2 = v8;
      v9 = *a3;
      if (*a3 != U_BUFFER_OVERFLOW_ERROR)
      {
LABEL_8:
        if (v9 >= U_ILLEGAL_ARGUMENT_ERROR)
        {
          v3 = 0;
        }

        else
        {
          v3 = v7;
        }

        if (v9 < U_ILLEGAL_ARGUMENT_ERROR)
        {
          v7 = 0;
        }

        goto LABEL_15;
      }

      if (v8 >= 1)
      {
        v10 = malloc_type_malloc(v8, 0x100004077774924uLL);
        if (v10)
        {
          v11 = v10;
          free(v7);
          *a3 = U_ZERO_ERROR;
          v12 = *a2;
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          *v16 = 0u;
          LODWORD(v15) = v12;
          *a2 = icu::CollationDataWriter::write(0, (*(this + 3) + 328), *(*(this + 3) + 24), *(this + 2), 0, 0, v16, v11, v15, a3, 0);
          v9 = *a3;
          v7 = v11;
          goto LABEL_8;
        }
      }
    }

    v3 = 0;
    *a3 = U_MEMORY_ALLOCATION_ERROR;
LABEL_15:
    free(v7);
    return v3;
  }

  return 0;
}

uint64_t icu::RuleBasedCollator::cloneBinary(icu::RuleBasedCollator *this, unsigned __int8 *a2, int a3, UErrorCode *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *v6 = 0u;
  LODWORD(v5) = a3;
  return icu::CollationDataWriter::write(0, (*(this + 3) + 328), *(*(this + 3) + 24), *(this + 2), 0, 0, v6, a2, v5, a4, 0);
}

uint64_t icu::CollationDataWriter::write(icu::CollationDataWriter *this, int *a2, unsigned __int8 *a3, const icu::CollationData *a4, const icu::CollationSettings *a5, const void *a6, int *a7, int *a8, unsigned __int8 *a9, UErrorCode *a10, UErrorCode *a11)
{
  v99 = *MEMORY[0x1E69E9840];
  if (*a10 <= 0)
  {
    if ((a9 & 0x80000000) != 0 || (v14 = a6, v18 = this, !a8) && a9)
    {
      v11 = 0;
      *a10 = U_ILLEGAL_ARGUMENT_ERROR;
      return v11;
    }

    v88 = a9;
    v92 = 0;
    memset(v91, 0, sizeof(v91));
    icu::UnicodeSet::UnicodeSet(v91);
    v19 = *(a3 + 4);
    v20 = *(a3 + 11) != 0;
    __dst = a8;
    v80 = v19;
    if (v18)
    {
      icu::UnicodeSet::operator=(v91, *(a3 + 10));
      v87 = 0;
      v84 = *(a3 + 24);
      v85 = 20;
    }

    else if (v19)
    {
      v81 = *(a3 + 11) != 0;
      if (*(a3 + 17))
      {
        v21 = 15;
      }

      else
      {
        v21 = 13;
      }

      v22 = icu::UnicodeSet::addAll(v91, *(a3 + 10));
      icu::UnicodeSet::removeAll(v22, *(v19 + 80));
      if (icu::UnicodeSet::isEmpty(v91))
      {
        v23 = v21;
      }

      else
      {
        v23 = 16;
      }

      if (*(a3 + 11) == *(v19 + 88))
      {
        v84 = 0;
        v85 = v23;
        v87 = 0;
      }

      else
      {
        v87 = 0;
        v84 = *(a3 + 24);
        v85 = 17;
      }

      v20 = v81;
    }

    else
    {
      if (*(a4 + 18))
      {
        v24 = 8;
      }

      else
      {
        v24 = 2;
      }

      v84 = 0;
      v85 = v24;
      v87 = 1;
    }

    v89 = 0u;
    v90 = 0u;
    icu::UVector32::UVector32(&v89, a10);
    v26 = *(a4 + 8);
    v27 = *(a4 + 18);
    v28 = *(a4 + 4);
    if (v28 && icu::CollationSettings::reorderTableHasSplitBytes(v28, v25))
    {
      v82 = v20;
      icu::CollationData::makeReorderRanges(a3, v26, v27, &v89, a10);
      if (v27 >= 1)
      {
        for (i = 0; i != v27; ++i)
        {
          icu::UVector32::insertElementAt(&v89, v26[i], i, a10);
        }
      }

      v30 = v87;
      v31 = v85;
      if (*a10 >= 1)
      {
        v11 = 0;
LABEL_113:
        icu::UVector32::~UVector32(&v89);
        icu::UnicodeSet::~UnicodeSet(v77, v91);
        return v11;
      }

      v26 = *(&v90 + 1);
      LODWORD(v27) = DWORD2(v89);
      v20 = v82;
    }

    else
    {
      v30 = v87;
      v31 = v85;
    }

    v32 = v20 << 17;
    if (v18)
    {
      v83 = 0;
    }

    else
    {
      if (*(a3 + 16))
      {
        v33 = v30;
      }

      else
      {
        v33 = 1;
      }

      if (((v27 + v31) & 1) == 0)
      {
        v33 = 1;
      }

      if (v33)
      {
        v34 = 24;
      }

      else
      {
        v34 = 28;
      }

      v83 = v34;
      if (a9 >= v34)
      {
        v88 = a9 - v34;
        v35 = *a2;
        *__dst = v34;
        *(__dst + 1) = 10202;
        *(__dst + 1) = xmmword_1954881A0;
        __dst[5] = v35;
        bzero(__dst + 6, (v34 - 24));
        v31 = v85;
        v30 = v87;
        __dst = (__dst + v83);
      }

      else
      {
        v88 = 0;
        __dst = 0;
      }
    }

    *a7 = v31;
    v36 = *(a3 + 14) | v32 | *(a4 + 6);
    *(a7 + 1) = 0;
    a7[1] = v36;
    v37 = (4 * v31);
    if ((v30 & 1) != 0 || (v39 = *(a3 + 5), !v18) && v39 == *(v80 + 40))
    {
      LODWORD(v38) = -1;
    }

    else
    {
      v38 = (v39 - *(a3 + 1)) >> 2;
    }

    a7[4] = v38;
    a7[5] = v37;
    v40 = 4 * (v27 + v31);
    a7[6] = v40;
    if (*(a4 + 4))
    {
      v41 = v40 + 256;
    }

    else
    {
      v41 = 4 * (v27 + v31);
    }

    a7[7] = v41;
    if (v30)
    {
      a7[8] = v41;
      a7[9] = v41;
    }

    else
    {
      v94[0] = U_ZERO_ERROR;
      v42 = v88 - v41;
      if (v88 <= v41)
      {
        v43 = 0;
        v42 = 0;
      }

      else
      {
        v43 = __dst + v41;
      }

      v44 = utrie2_serialize(*a3, v43, v42, v94);
      v45 = v94[0];
      if (v94[0] >= U_ILLEGAL_ARGUMENT_ERROR && v94[0] != U_BUFFER_OVERFLOW_ERROR)
      {
        goto LABEL_78;
      }

      a7[8] = v44 + v41;
      a7[9] = v44 + v41;
      v46 = *(a3 + 16);
      if (v46)
      {
        v41 += v44 + 8 * v46;
      }

      else
      {
        v41 += v44;
      }

      v30 = v87;
    }

    a7[10] = v41;
    a7[11] = v41;
    v47 = 4 * *(a3 + 15);
    if (v30)
    {
      v47 = 0;
    }

    v48 = v47 + v41;
    v49 = v47 + v41 + 4 * v14;
    a7[12] = v48;
    a7[13] = v49;
    v50 = 2 * *(a3 + 17) + v49;
    if (v30)
    {
      v51 = v49;
    }

    else
    {
      v51 = 2 * *(a3 + 17) + v49;
    }

    a7[14] = v51;
    if (v30)
    {
      goto LABEL_80;
    }

    if (icu::UnicodeSet::isEmpty(v91))
    {
      v49 = v50;
LABEL_80:
      a7[15] = v49;
      v55 = v49 + 2 * v84;
      v95 = 0u;
      v98 = 0;
      v97 = 0u;
      v96 = 0u;
      *v94 = &unk_1F0935D00;
      LOWORD(v95) = 2;
      a7[16] = v55;
      if (v18)
      {
        v93 = *(a3 + 25);
        icu::UnicodeString::doAppend(v94, &v93, 0, 1);
        icu::UnicodeString::doAppend(v94, *(a3 + 13), 0, (*(a3 + 25) + 16));
        icu::UnicodeString::doAppend(v94, *(a3 + 14), 0, *(a3 + 30));
        v56 = v95 >> 5;
        if ((v95 & 0x8000u) != 0)
        {
          v56 = DWORD1(v95);
        }

        v55 += 2 * v56;
      }

      if (v18)
      {
        v57 = v55 + 256;
      }

      else
      {
        v57 = v55;
      }

      a7[17] = v55;
      a7[18] = v57;
      a7[19] = v57;
      if (v57 <= v88)
      {
        memcpy(__dst, a7, v37);
        v58 = a7[6];
        v59 = a7[5];
        if (v58 > v59)
        {
          memcpy(__dst + v59, v26, v58 - v59);
          v58 = a7[6];
        }

        v60 = a7[7];
        v61 = __OFSUB__(v60, v58);
        v62 = v60 - v58;
        if (!((v62 < 0) ^ v61 | (v62 == 0)))
        {
          memcpy(__dst + v58, *(a4 + 4), v62);
        }

        v63 = a7[10];
        v64 = a7[9];
        if (v63 > v64)
        {
          memcpy(__dst + v64, *(a3 + 2), v63 - v64);
        }

        v65 = a7[12];
        v66 = a7[11];
        if (v65 > v66)
        {
          memcpy(__dst + v66, *(a3 + 1), v65 - v66);
          v65 = a7[12];
        }

        v67 = a7[13];
        if (v67 > v65)
        {
          memcpy(__dst + v65, a5, v67 - v65);
          v67 = a7[13];
        }

        v68 = a7[14];
        v61 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (!((v69 < 0) ^ v61 | (v69 == 0)))
        {
          memcpy(__dst + v67, *(a3 + 3), v69);
        }

        v70 = a7[16];
        v71 = a7[15];
        if (v70 > v71)
        {
          memcpy(__dst + v71, *(a3 + 11), v70 - v71);
        }

        if ((v95 & 0x11) != 0)
        {
          v72 = 0;
        }

        else if ((v95 & 2) != 0)
        {
          v72 = &v95 + 2;
        }

        else
        {
          v72 = v96;
        }

        v73 = a7[17];
        v74 = a7[16];
        if (v73 > v74)
        {
          memcpy(__dst + v74, v72, v73 - v74);
          v73 = a7[17];
        }

        v75 = a7[18];
        v61 = __OFSUB__(v75, v73);
        v76 = v75 - v73;
        if (!((v76 < 0) ^ v61 | (v76 == 0)))
        {
          memcpy(__dst + v73, *(a3 + 9), v76);
        }
      }

      else
      {
        *a10 = U_BUFFER_OVERFLOW_ERROR;
      }

      v11 = v57 + v83;
      icu::UnicodeString::~UnicodeString(v83, v94);
      goto LABEL_113;
    }

    v94[0] = U_ZERO_ERROR;
    if (v88 <= v50)
    {
      v53 = 0;
      v52 = 0;
    }

    else
    {
      v52 = (v88 - v50) / 2;
      v53 = (__dst + v50);
    }

    v54 = icu::UnicodeSet::serialize(v91, v53, v52, v94);
    v45 = v94[0];
    if (v94[0] < U_ILLEGAL_ARGUMENT_ERROR || v94[0] == U_BUFFER_OVERFLOW_ERROR)
    {
      v49 = v50 + 2 * v54;
      goto LABEL_80;
    }

LABEL_78:
    v11 = 0;
    *a10 = v45;
    goto LABEL_113;
  }

  return 0;
}

char *icu::CollationDataWriter::copyData(char *this, const int *a2, void *__src, char *a4, unsigned __int8 *a5)
{
  v5 = &this[4 * a2];
  v7 = *v5;
  v6 = *(v5 + 1);
  if (v6 > v7)
  {
    return memcpy(&a4[v7], __src, v6 - v7);
  }

  return this;
}

uint64_t icu::CollationFastLatin::getOptions(icu::CollationFastLatin *this, const icu::CollationData *a2, const icu::CollationSettings *a3, unsigned __int16 *a4)
{
  result = 0xFFFFFFFFLL;
  if (a4 == 384)
  {
    v6 = *(this + 11);
    if (v6)
    {
      v9 = *(a2 + 6);
      if ((v9 & 0xC) != 0)
      {
        v10 = ((v9 >> 4) & 7) + 1;
        if (v10 >= *v6)
        {
          return result;
        }

        v11 = *&v6[2 * v10];
      }

      else
      {
        v11 = 3071;
      }

      if (*(a2 + 4))
      {
        v31 = *(this + 11);
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        for (i = 4096; i != 4104; ++i)
        {
          FirstPrimaryForGroup = icu::CollationData::getFirstPrimaryForGroup(this, i);
          if (FirstPrimaryForGroup < 2 || *(*(a2 + 4) + (FirstPrimaryForGroup >> 24)))
          {
            v18 = FirstPrimaryForGroup & 0xFFFFFF | (*(*(a2 + 4) + (FirstPrimaryForGroup >> 24)) << 24);
          }

          else
          {
            v18 = icu::CollationSettings::reorderEx(a2, FirstPrimaryForGroup);
          }

          if (i == 4100)
          {
            v14 = v15;
            v13 = v18;
          }

          else if (v18)
          {
            if (v18 < v15)
            {
              return 0xFFFFFFFFLL;
            }

            if (v15 == v14)
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            if (v12)
            {
              v19 = v12;
            }

            if (v13)
            {
              v12 = v19;
            }

            v15 = v18;
          }
        }

        v20 = icu::CollationData::getFirstPrimaryForGroup(this, 25);
        if (v20 < 2 || *(*(a2 + 4) + (v20 >> 24)))
        {
          v21 = v20 & 0xFFFFFF | (*(*(a2 + 4) + (v20 >> 24)) << 24);
        }

        else
        {
          v21 = icu::CollationSettings::reorderEx(a2, v20);
        }

        if (v21 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        if (v12)
        {
          v23 = v12;
        }

        else
        {
          v23 = v21;
        }

        v22 = v14 < v13 && v13 < v23;
        v6 = v31;
      }

      else
      {
        v22 = 1;
      }

      v25 = 0;
      v26 = &v6[2 * *v6];
      do
      {
        v27 = *&v26[v25];
        v28 = v27 & 0xFF8;
        if (v11 >= v27)
        {
          v28 = 0;
        }

        if (v27 <= 0xFFF)
        {
          v29 = v28;
        }

        else
        {
          v29 = v27 & 0xFC00;
        }

        *(a3 + v25) = v29;
        v25 += 2;
      }

      while (v25 != 768);
      v30 = *(a2 + 6);
      if ((v30 & 2) != 0)
      {
        v22 = 0;
      }

      if (!v22)
      {
        *(a3 + 12) = 0;
        *(a3 + 13) = 0;
        *(a3 + 28) = 0;
      }

      return v30 | (v11 << 16);
    }
  }

  return result;
}

uint64_t icu::CollationFastLatin::compareUTF16(unsigned __int8 *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v9 = a3;
  v11 = 0;
  v12 = 0;
  v91 = a7;
  v92 = a5;
  v13 = &a1[2 * *a1];
  v14 = HIWORD(a3);
  v89 = a3;
  v90 = 0;
  v15 = v13 - 15616;
  while (2)
  {
    if (!v12)
    {
      while (1)
      {
        v19 = SHIDWORD(v90);
        if (HIDWORD(v90) == v92)
        {
          v12 = 2;
          goto LABEL_3;
        }

        ++HIDWORD(v90);
        v20 = *(a4 + 2 * v19);
        if (v20 <= 0x17F)
        {
          break;
        }

        if ((v20 & 0xFFC0) == 0x2000)
        {
          v21 = &v15[2 * v20];
LABEL_24:
          v18 = *v21;
          goto LABEL_25;
        }

        if (v20 == 0xFFFF)
        {
          v18 = 64680;
        }

        else
        {
          v18 = 1;
        }

        if (v20 == 65534)
        {
          v18 = 3;
          goto LABEL_26;
        }

LABEL_25:
        if (v18 >= 0x1000)
        {
          v12 = v18 & 0xFC00;
          goto LABEL_3;
        }

LABEL_26:
        if (v18 > v14)
        {
          v12 = v18 & 0xFF8;
          goto LABEL_3;
        }

        v22 = icu::CollationFastLatin::nextPair(v13, v20, v18, a4, 0, &v90 + 1, &v92);
        if (v22 == 1)
        {
          return 4294967294;
        }

        if (v22 <= 0xBFFu)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (v22 > v14)
        {
          v23 = v22 & 0xFFF8FFF8;
        }

        if (v22 >= 0x1000u)
        {
          v12 = v22 & 0xFC00FC00;
        }

        else
        {
          v12 = v23;
        }

        if (v12)
        {
          goto LABEL_3;
        }
      }

      v12 = *(a2 + 2 * v20);
      if (*(a2 + 2 * v20))
      {
        goto LABEL_3;
      }

      if ((v9 & 2) != 0 && (v20 - 58) > 0xFFFFFFF5)
      {
        return 4294967294;
      }

      v21 = &v13[2 * v20];
      goto LABEL_24;
    }

LABEL_3:
    if (v11)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v25 = v90;
      if (v90 == v91)
      {
        v11 = 2;
        goto LABEL_4;
      }

      LODWORD(v90) = v90 + 1;
      v26 = *(a6 + 2 * v25);
      if (v26 <= 0x17F)
      {
        v11 = *(a2 + 2 * v26);
        if (*(a2 + 2 * v26))
        {
          goto LABEL_4;
        }

        if ((v9 & 2) != 0 && (v26 - 58) > 0xFFFFFFF5)
        {
          return 4294967294;
        }

        v27 = &v13[2 * v26];
        goto LABEL_51;
      }

      if ((v26 & 0xFFC0) == 0x2000)
      {
        v27 = &v15[2 * v26];
LABEL_51:
        v24 = *v27;
        goto LABEL_52;
      }

      if (v26 == 0xFFFF)
      {
        v24 = 64680;
      }

      else
      {
        v24 = 1;
      }

      if (v26 == 65534)
      {
        v24 = 3;
        goto LABEL_53;
      }

LABEL_52:
      if (v24 >= 0x1000)
      {
        break;
      }

LABEL_53:
      if (v24 > v14)
      {
        v11 = v24 & 0xFF8;
        goto LABEL_4;
      }

      v28 = icu::CollationFastLatin::nextPair(v13, v26, v24, a6, 0, &v90, &v91);
      if (v28 == 1)
      {
        return 4294967294;
      }

      if (v28 <= 0xBFFu)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      if (v28 > v14)
      {
        v29 = v28 & 0xFFF8FFF8;
      }

      if (v28 >= 0x1000u)
      {
        v11 = v28 & 0xFC00FC00;
      }

      else
      {
        v11 = v29;
      }

      if (v11)
      {
        goto LABEL_4;
      }
    }

    v11 = v24 & 0xFC00;
LABEL_4:
    if (v12 == v11)
    {
      v11 = 0;
      v16 = v12 == 2;
      v12 = 0;
      if (!v16)
      {
        continue;
      }
    }

    else
    {
      v17 = v12;
      if (v12 != v11)
      {
        v44 = v11;
        goto LABEL_117;
      }

      if (v12 != 2)
      {
        v12 >>= 16;
        v11 >>= 16;
        continue;
      }
    }

    break;
  }

  if (v89 >= 0x1000)
  {
    v45 = 0;
    v46 = 0;
    v90 = 0;
    while (v46)
    {
LABEL_122:
      if (v45)
      {
        goto LABEL_123;
      }

      while (1)
      {
        v55 = v90;
        if (v90 == v91)
        {
          v45 = 2;
          goto LABEL_123;
        }

        LODWORD(v90) = v90 + 1;
        v56 = *(a6 + 2 * v55);
        v53 = v13;
        if (v56 < 0x180 || (v53 = v13 - 15616, (v56 & 0xFFC0) == 0x2000))
        {
          v54 = *&v53[2 * v56];
        }

        else
        {
          if (v56 == 0xFFFF)
          {
            v54 = 64680;
          }

          else
          {
            v54 = 1;
          }

          if (v56 == 65534)
          {
            v54 = 3;
            goto LABEL_150;
          }
        }

        if (v54 >= 0x1000)
        {
          break;
        }

LABEL_150:
        if (v54 > v14)
        {
          v45 = 192;
          goto LABEL_123;
        }

        v57 = icu::CollationFastLatin::nextPair(v13, v56, v54, a6, 0, &v90, &v91);
        Secondaries = icu::CollationFastLatin::getSecondaries(v14, v57);
        if (Secondaries)
        {
          v45 = Secondaries;
          goto LABEL_123;
        }
      }

      if ((v54 & 0x3E0u) >= 0x180)
      {
        v45 = ((v54 & 0x3E0) << 16) + 2097344;
      }

      else
      {
        v45 = (v54 & 0x3E0) + 32;
      }

LABEL_123:
      if (v46 != v45)
      {
        if (v46 != v45)
        {
          if (v46 < v45)
          {
            v72 = -1;
          }

          else
          {
            v72 = 1;
          }

          if ((v9 & 0x800) != 0)
          {
            return 4294967294;
          }

          else
          {
            return v72;
          }
        }

        if (v46 != 2)
        {
          v46 >>= 16;
          v45 >>= 16;
          continue;
        }

        goto LABEL_73;
      }

      v45 = 0;
      v16 = v46 == 2;
      v46 = 0;
      if (v16)
      {
        goto LABEL_73;
      }
    }

    while (1)
    {
      v49 = SHIDWORD(v90);
      if (HIDWORD(v90) == v92)
      {
        v46 = 2;
        goto LABEL_122;
      }

      ++HIDWORD(v90);
      v50 = *(a4 + 2 * v49);
      v47 = v13;
      if (v50 < 0x180 || (v47 = v13 - 15616, (v50 & 0xFFC0) == 0x2000))
      {
        v48 = *&v47[2 * v50];
      }

      else
      {
        if (v50 == 0xFFFF)
        {
          v48 = 64680;
        }

        else
        {
          v48 = 1;
        }

        if (v50 == 65534)
        {
          v48 = 3;
          goto LABEL_137;
        }
      }

      if (v48 >= 0x1000)
      {
        if ((v48 & 0x3E0u) >= 0x180)
        {
          v46 = ((v48 & 0x3E0) << 16) + 2097344;
        }

        else
        {
          v46 = (v48 & 0x3E0) + 32;
        }

        goto LABEL_122;
      }

LABEL_137:
      if (v48 > v14)
      {
        v46 = 192;
        goto LABEL_122;
      }

      v51 = icu::CollationFastLatin::nextPair(v13, v50, v48, a4, 0, &v90 + 1, &v92);
      v52 = icu::CollationFastLatin::getSecondaries(v14, v51);
      if (v52)
      {
        v46 = v52;
        goto LABEL_122;
      }
    }
  }

LABEL_73:
  if ((v9 & 0x400) == 0)
  {
    goto LABEL_74;
  }

  v59 = 0;
  v60 = 0;
  v61 = v89 < 0x1000;
  v90 = 0;
  while (1)
  {
LABEL_167:
    if (v60)
    {
      goto LABEL_182;
    }

    do
    {
      v62 = SHIDWORD(v90);
      if (HIDWORD(v90) == v92)
      {
        v60 = 2;
        if (v59)
        {
          goto LABEL_200;
        }

        while (1)
        {
LABEL_183:
          v67 = v90;
          if (v90 == v91)
          {
            v59 = 2;
            goto LABEL_200;
          }

          LODWORD(v90) = v90 + 1;
          v68 = *(a6 + 2 * v67);
          v69 = v13;
          if (v68 < 0x180)
          {
            break;
          }

          v69 = v13 - 15616;
          if ((v68 & 0xFFC0) == 0x2000)
          {
            break;
          }

          if (v68 == 0xFFFF)
          {
            v70 = 64680;
          }

          else
          {
            v70 = 1;
          }

          if (v68 != 65534)
          {
            goto LABEL_187;
          }

          v70 = 3;
LABEL_194:
          LODWORD(v70) = icu::CollationFastLatin::nextPair(v13, v68, v70, a6, 0, &v90, &v91);
LABEL_195:
          Cases = icu::CollationFastLatin::getCases(v14, v61, v70);
          if (Cases)
          {
            v59 = Cases;
            goto LABEL_200;
          }
        }

        v70 = *&v69[2 * v68];
LABEL_187:
        if (v70 > 0xBFF)
        {
          goto LABEL_195;
        }

        goto LABEL_194;
      }

      ++HIDWORD(v90);
      v63 = *(a4 + 2 * v62);
      v64 = v13;
      if (v63 < 0x180 || (v64 = v13 - 15616, (v63 & 0xFFC0) == 0x2000))
      {
        v65 = *&v64[2 * v63];
      }

      else
      {
        if (v63 == 0xFFFF)
        {
          v65 = 64680;
        }

        else
        {
          v65 = 1;
        }

        if (v63 == 65534)
        {
          v65 = 3;
LABEL_179:
          LODWORD(v65) = icu::CollationFastLatin::nextPair(v13, v63, v65, a4, 0, &v90 + 1, &v92);
          goto LABEL_180;
        }
      }

      if (v65 <= 0xBFF)
      {
        goto LABEL_179;
      }

LABEL_180:
      v66 = icu::CollationFastLatin::getCases(v14, v61, v65);
    }

    while (!v66);
    v60 = v66;
LABEL_182:
    if (!v59)
    {
      goto LABEL_183;
    }

LABEL_200:
    if (v60 == v59)
    {
      break;
    }

    if (v60 != v59)
    {
      if (v60 < v59)
      {
        v73 = 1;
      }

      else
      {
        v73 = -1;
      }

      if (v60 < v59)
      {
        v74 = -1;
      }

      else
      {
        v74 = 1;
      }

      if ((v9 & 0x100) != 0)
      {
        return v73;
      }

      else
      {
        return v74;
      }
    }

    if (v60 == 2)
    {
      goto LABEL_74;
    }

    v60 >>= 16;
    v59 >>= 16;
  }

  v59 = 0;
  v16 = v60 == 2;
  v60 = 0;
  if (!v16)
  {
    goto LABEL_167;
  }

LABEL_74:
  if (v89 < 0x2000)
  {
    return 0;
  }

  v31 = 0;
  v32 = 0;
  v33 = (v9 & 0x600) == 512;
  v90 = 0;
  while (2)
  {
    while (2)
    {
      if (v32)
      {
        goto LABEL_91;
      }

      while (2)
      {
        v34 = SHIDWORD(v90);
        if (HIDWORD(v90) == v92)
        {
          v32 = 2;
          if (v31)
          {
            goto LABEL_109;
          }

          while (1)
          {
LABEL_92:
            v39 = v90;
            if (v90 == v91)
            {
              v31 = 2;
              goto LABEL_109;
            }

            LODWORD(v90) = v90 + 1;
            v40 = *(a6 + 2 * v39);
            v41 = v13;
            if (v40 < 0x180)
            {
              break;
            }

            v41 = v13 - 15616;
            if ((v40 & 0xFFC0) == 0x2000)
            {
              break;
            }

            if (v40 == 0xFFFF)
            {
              v42 = 64680;
            }

            else
            {
              v42 = 1;
            }

            if (v40 != 65534)
            {
              goto LABEL_96;
            }

            v42 = 3;
LABEL_103:
            LODWORD(v42) = icu::CollationFastLatin::nextPair(v13, v40, v42, a6, 0, &v90, &v91);
LABEL_104:
            Tertiaries = icu::CollationFastLatin::getTertiaries(v14, v33, v42);
            if (Tertiaries)
            {
              v31 = Tertiaries;
              goto LABEL_109;
            }
          }

          v42 = *&v41[2 * v40];
LABEL_96:
          if (v42 > 0xBFF)
          {
            goto LABEL_104;
          }

          goto LABEL_103;
        }

        ++HIDWORD(v90);
        v35 = *(a4 + 2 * v34);
        v36 = v13;
        if (v35 < 0x180 || (v36 = v13 - 15616, (v35 & 0xFFC0) == 0x2000))
        {
          v37 = *&v36[2 * v35];
          goto LABEL_81;
        }

        if (v35 == 0xFFFF)
        {
          v37 = 64680;
        }

        else
        {
          v37 = 1;
        }

        if (v35 == 65534)
        {
          v37 = 3;
LABEL_88:
          LODWORD(v37) = icu::CollationFastLatin::nextPair(v13, v35, v37, a4, 0, &v90 + 1, &v92);
        }

        else
        {
LABEL_81:
          if (v37 <= 0xBFF)
          {
            goto LABEL_88;
          }
        }

        v38 = icu::CollationFastLatin::getTertiaries(v14, v33, v37);
        if (!v38)
        {
          continue;
        }

        break;
      }

      v32 = v38;
LABEL_91:
      if (!v31)
      {
        goto LABEL_92;
      }

LABEL_109:
      if (v32 != v31)
      {
        v17 = v32;
        if (v32 != v31)
        {
          v44 = v31;
          v75 = v32 ^ 0x18;
          if (v32 <= 3u)
          {
            v75 = v32;
          }

          v76 = v31 ^ 0x18;
          if (v31 <= 3u)
          {
            v76 = v31;
          }

          if ((v9 & 0x700) == 0x300)
          {
            v17 = v75;
            v44 = v76;
          }

          goto LABEL_117;
        }

        if (v32 == 2)
        {
          goto LABEL_207;
        }

        v32 >>= 16;
        v31 >>= 16;
        continue;
      }

      break;
    }

    v31 = 0;
    v16 = v32 == 2;
    v32 = 0;
    if (!v16)
    {
      continue;
    }

    break;
  }

LABEL_207:
  if (v89 < 0x3000)
  {
    return 0;
  }

  v77 = 0;
  v78 = 0;
  v90 = 0;
  while (2)
  {
    while (2)
    {
      if (!v78)
      {
        while (1)
        {
          v79 = SHIDWORD(v90);
          if (HIDWORD(v90) == v92)
          {
            v78 = 2;
            goto LABEL_232;
          }

          ++HIDWORD(v90);
          v80 = *(a4 + 2 * v79);
          v81 = v13;
          if (v80 < 0x180)
          {
            break;
          }

          v81 = v13 - 15616;
          if ((v80 & 0xFFC0) == 0x2000)
          {
            break;
          }

          if (v80 == 0xFFFF)
          {
            v82 = 64680;
          }

          else
          {
            v82 = 1;
          }

          if (v80 == 65534)
          {
            v82 = 3;
LABEL_248:
            v83 = icu::CollationFastLatin::nextPair(v13, v80, v82, a4, 0, &v90 + 1, &v92);
            LODWORD(v82) = v83;
            if (!HIWORD(v83))
            {
              goto LABEL_249;
            }

            if (v14 < v83)
            {
              v78 = -67044352;
              goto LABEL_232;
            }

            v78 = v83 & 0xFFF8FFF8;
            if ((v83 & 0xFFF8FFF8) != 0)
            {
              goto LABEL_232;
            }
          }

          else
          {
LABEL_241:
            if (v82 <= 0xBFF)
            {
              goto LABEL_248;
            }

LABEL_249:
            if (v82 >= 0x1000)
            {
              if ((v82 & 0x380u) <= 0x17F)
              {
                v78 = 64512;
              }

              else
              {
                v78 = -67044352;
              }

              goto LABEL_232;
            }

            if (v82 > v14)
            {
              v78 = 64512;
              goto LABEL_232;
            }

            if (v82 <= 0xBFF)
            {
              v78 = v82;
            }

            else
            {
              v78 = v82 & 0xFF8;
            }

            if (v78)
            {
              goto LABEL_232;
            }
          }
        }

        v82 = *&v81[2 * v80];
        goto LABEL_241;
      }

LABEL_232:
      if (v77)
      {
        goto LABEL_233;
      }

      while (2)
      {
        while (2)
        {
          v84 = v90;
          if (v90 == v91)
          {
            v77 = 2;
            goto LABEL_233;
          }

          LODWORD(v90) = v90 + 1;
          v85 = *(a6 + 2 * v84);
          v86 = v13;
          if (v85 < 0x180 || (v86 = v13 - 15616, (v85 & 0xFFC0) == 0x2000))
          {
            v87 = *&v86[2 * v85];
LABEL_263:
            if (v87 > 0xBFF)
            {
              break;
            }
          }

          else
          {
            if (v85 == 0xFFFF)
            {
              v87 = 64680;
            }

            else
            {
              v87 = 1;
            }

            if (v85 != 65534)
            {
              goto LABEL_263;
            }

            v87 = 3;
          }

          v88 = icu::CollationFastLatin::nextPair(v13, v85, v87, a6, 0, &v90, &v91);
          LODWORD(v87) = v88;
          if (HIWORD(v88))
          {
            if (v14 < v88)
            {
              v77 = -67044352;
              goto LABEL_233;
            }

            v77 = v88 & 0xFFF8FFF8;
            if ((v88 & 0xFFF8FFF8) != 0)
            {
              goto LABEL_233;
            }

            continue;
          }

          break;
        }

        if (v87 < 0x1000)
        {
          if (v87 > v14)
          {
            v77 = 64512;
            goto LABEL_233;
          }

          if (v87 <= 0xBFF)
          {
            v77 = v87;
          }

          else
          {
            v77 = v87 & 0xFF8;
          }

          if (v77)
          {
            goto LABEL_233;
          }

          continue;
        }

        break;
      }

      if ((v87 & 0x380u) <= 0x17F)
      {
        v77 = 64512;
      }

      else
      {
        v77 = -67044352;
      }

LABEL_233:
      if (v78 == v77)
      {
        v77 = 0;
        result = 0;
        v16 = v78 == 2;
        v78 = 0;
        if (v16)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v17 = v78;
    if (v78 == v77)
    {
      if (v78 != 2)
      {
        v78 >>= 16;
        v77 >>= 16;
        continue;
      }

      return 0;
    }

    break;
  }

  v44 = v77;
LABEL_117:
  if (v17 < v44)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t icu::CollationFastLatin::lookup(icu::CollationFastLatin *this, const unsigned __int16 *a2)
{
  if ((a2 & 0xFFFFFFC0) == 0x2000)
  {
    return *(this + a2 - 7808);
  }

  if (a2 == 0xFFFF)
  {
    v3 = 64680;
  }

  else
  {
    v3 = 1;
  }

  if (a2 == 65534)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t icu::CollationFastLatin::nextPair(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, int *a7)
{
  if ((a3 - 3072) < 0xFFFFF800)
  {
    return a3;
  }

  if (a3 >= 0x800)
  {
    return *(a1 + 2 * (a3 & 0x3FF) + 896);
  }

  v7 = *a7;
  if (!a2 && v7 < 0)
  {
    *a7 = *a6 - 1;
    return 2;
  }

  v8 = (a3 & 0x3FF) + 448;
  v9 = *a6;
  if (*a6 != v7)
  {
    v10 = v9 + 1;
    if (a4)
    {
      v11 = *(a4 + 2 * v9);
      if (v11 >= 0x180)
      {
        if ((v11 & 0xFFC0) != 0x2000)
        {
          if (v11 <= 0xFFFD)
          {
            return 1;
          }

          goto LABEL_17;
        }

        v11 -= 7808;
        if (v11)
        {
          goto LABEL_18;
        }

LABEL_15:
        if (v7 < 0)
        {
          *a7 = v9;
LABEL_17:
          v11 = -1;
        }

LABEL_18:
        v12 = *(a1 + 2 * v8);
        v13 = (a3 & 0x3FF) + 448;
        do
        {
          v13 += v12 >> 9;
          v12 = *(a1 + 2 * v13);
        }

        while ((v12 & 0x1FF) < v11);
        if ((v12 & 0x1FF) == v11)
        {
          *a6 = v10;
          v8 = v13;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v11 = *(a5 + v9);
      if (*(a5 + v9) < 0)
      {
        v17 = v11 - 198 < 0xFFFFFFFC || v10 == v7;
        if (v17 || *(a5 + v10) > -65)
        {
          v18 = v9 + 2;
          if ((v7 & 0x80000000) == 0 && v18 >= v7)
          {
            return 1;
          }

          if (v11 == 239)
          {
            if (*(a5 + v10) != 191 || (*(a5 + v18) & 0xFE) != 0xBE)
            {
              return 1;
            }

            v11 = -1;
          }

          else
          {
            if (v11 != 226 || *(a5 + v10) != 128 || *(a5 + v18) > -65)
            {
              return 1;
            }

            v11 = *(a5 + v18) | 0x100;
          }

          LODWORD(v10) = v9 + 3;
          goto LABEL_18;
        }

        v11 = *(a5 + v10) + (v11 << 6) - 12416;
        LODWORD(v10) = v9 + 2;
        if (v11)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }

    if (v11)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_22:
  v14 = (a1 + 2 * v8);
  v15 = *v14 >> 9;
  if (v15 == 1)
  {
    return 1;
  }

  a3 = v14[1];
  if (v15 != 2)
  {
    return a3 | (v14[2] << 16);
  }

  return a3;
}

uint64_t icu::CollationFastLatin::getSecondaries(icu::CollationFastLatin *this, unsigned int a2)
{
  if (a2 <= this)
  {
    v2 = 0;
  }

  else
  {
    v2 = 12583104;
  }

  if ((a2 & 0xF000) != 0)
  {
    v2 = (a2 & 0x3E003E0) + 2097184;
  }

  if (a2 <= 0xBFF)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (a2 <= this)
  {
    v4 = v3;
  }

  else
  {
    v4 = 192;
  }

  v5 = ((a2 & 0x3E0) << 16) + 2097344;
  if ((a2 & 0x3E0) < 0x180)
  {
    v5 = (a2 & 0x3E0) + 32;
  }

  if (a2 >= 0x1000)
  {
    v4 = v5;
  }

  if (HIWORD(a2))
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t icu::CollationFastLatin::getCases(icu::CollationFastLatin *this, int a2, unsigned int a3)
{
  if (HIWORD(a3))
  {
    if (a3 < 0x1000u)
    {
      if (a3 <= this)
      {
        return 0;
      }

      else
      {
        return 524296;
      }
    }

    else if (!a2 || a3 >> 26)
    {
      return a3 & 0x180018;
    }

    else
    {
      return a3 & 0x18;
    }
  }

  else
  {
    if (a3 <= 0xBFF)
    {
      v3 = a3;
    }

    else
    {
      v3 = 0;
    }

    if (a3 <= this)
    {
      v4 = v3;
    }

    else
    {
      v4 = 8;
    }

    v5 = a3 & 0x18;
    if ((a3 & 0x380) > 0x17F && a2 == 0)
    {
      v5 |= 0x80000u;
    }

    if (a3 >= 0x1000)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t icu::CollationFastLatin::getTertiaries(icu::CollationFastLatin *this, int a2, unsigned int a3)
{
  if (HIWORD(a3))
  {
    if (a2)
    {
      v10 = 2621480;
    }

    else
    {
      v10 = 2097184;
    }

    v11 = a3 & 0x70007 | v10;
    if (a3 <= this)
    {
      v11 = 0;
    }

    if (a2)
    {
      v12 = 2031647;
    }

    else
    {
      v12 = 458759;
    }

    v13 = v12 & a3 | 0x200020;
    if (a3 >= 0x1000u)
    {
      return v13;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    if (a3 <= 0xBFF)
    {
      v3 = a3;
    }

    else
    {
      v3 = 0;
    }

    if (a2)
    {
      v4 = 40;
    }

    else
    {
      v4 = 32;
    }

    v5 = v4 & 0xFFFFFFF8 | a3 & 7;
    if (a3 > this)
    {
      v3 = v5;
    }

    if ((a3 & 0x380) <= 0x17F)
    {
      v6 = 32;
    }

    else
    {
      v6 = 2097184;
    }

    v7 = 2621472;
    if ((a3 & 0x380) <= 0x17F)
    {
      v7 = 32;
    }

    v8 = v7 | a3 & 0x1F;
    if (!a2)
    {
      v8 = v6 | a3 & 7;
    }

    if (a3 >= 0x1000)
    {
      return v8;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t icu::CollationFastLatin::getQuaternaries(icu::CollationFastLatin *this, unsigned int a2)
{
  v2 = a2 & 0xFFF8FFF8;
  if (this < a2)
  {
    v2 = -67044352;
  }

  v3 = a2 & 0xFF8;
  if (a2 <= 0xBFF)
  {
    v3 = a2;
  }

  if (a2 > this)
  {
    v3 = 64512;
  }

  if ((a2 & 0x380) <= 0x17F)
  {
    v4 = 64512;
  }

  else
  {
    v4 = -67044352;
  }

  if (a2 < 0x1000)
  {
    v4 = v3;
  }

  if (HIWORD(a2))
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t icu::CollationFastLatin::compareUTF8(icu::CollationFastLatin *this, const unsigned __int16 *a2, const unsigned __int16 *a3, uint64_t a4, const unsigned __int8 *a5, uint64_t a6, const unsigned __int8 *a7)
{
  v9 = a3;
  v11 = 0;
  v12 = 0;
  v118[0] = a7;
  v118[1] = a5;
  v13 = (this + 2 * *this);
  v14 = (a3 >> 16);
  v114 = a3;
  *v117 = 0;
  while (2)
  {
    while (2)
    {
      if (!v12)
      {
        while (1)
        {
          v15 = *&v117[4];
          if (*&v117[4] == v118[1])
          {
            v12 = 2;
            goto LABEL_3;
          }

          v16 = *&v117[4] + 1;
          ++*&v117[4];
          v17 = *(a4 + v15);
          if ((v17 & 0x80) == 0)
          {
            break;
          }

          v18 = v17 - 198 < 0xFFFFFFFC || v16 == v118[1];
          if (!v18)
          {
            v19 = *(a4 + v16);
            if (v19 <= -65)
            {
              *&v117[4] = v15 + 2;
              v17 = v19 + (v17 << 6) - 12416;
              v12 = a2[v17];
              if (a2[v17])
              {
                goto LABEL_3;
              }

LABEL_20:
              v20 = *(v13 + v17);
              goto LABEL_22;
            }
          }

          v20 = icu::CollationFastLatin::lookupUTF8(v13, *(a4 + v15), a4, &v117[4], v118[1]);
LABEL_22:
          if (v20 >= 0x1000)
          {
            v12 = v20 & 0xFC00;
            goto LABEL_3;
          }

          if (v20 > v14)
          {
            v12 = v20 & 0xFF8;
            goto LABEL_3;
          }

          Pair = icu::CollationFastLatin::nextPair(v13, v17, v20, 0, a4, &v117[4], &v118[1]);
          if (Pair == 1)
          {
            return 4294967294;
          }

          if (Pair <= 0xBFFu)
          {
            v22 = Pair;
          }

          else
          {
            v22 = 0;
          }

          if (Pair > v14)
          {
            v22 = Pair & 0xFFF8FFF8;
          }

          if (Pair >= 0x1000u)
          {
            v12 = Pair & 0xFC00FC00;
          }

          else
          {
            v12 = v22;
          }

          if (v12)
          {
            goto LABEL_3;
          }
        }

        v12 = a2[*(a4 + v15)];
        if (a2[*(a4 + v15)])
        {
          goto LABEL_3;
        }

        if ((v9 & 2) != 0 && v17 - 58 > 0xFFFFFFF5)
        {
          return 4294967294;
        }

        goto LABEL_20;
      }

LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

      while (1)
      {
        v23 = *v117;
        if (*v117 == v118[0])
        {
          v11 = 2;
          goto LABEL_4;
        }

        v24 = *v117 + 1;
        ++*v117;
        v25 = *(a6 + v23);
        if ((v25 & 0x80) == 0)
        {
          v11 = a2[*(a6 + v23)];
          if (a2[*(a6 + v23)])
          {
            goto LABEL_4;
          }

          if ((v9 & 2) != 0 && v25 - 58 > 0xFFFFFFF5)
          {
            return 4294967294;
          }

          goto LABEL_47;
        }

        if (v25 - 198 >= 0xFFFFFFFC && v24 != v118[0])
        {
          v27 = *(a6 + v24);
          if (v27 <= -65)
          {
            *v117 = v23 + 2;
            v25 = v27 + (v25 << 6) - 12416;
            v11 = a2[v25];
            if (a2[v25])
            {
              goto LABEL_4;
            }

LABEL_47:
            v28 = *(v13 + v25);
            goto LABEL_49;
          }
        }

        v28 = icu::CollationFastLatin::lookupUTF8(v13, *(a6 + v23), a6, v117, v118[0]);
LABEL_49:
        if (v28 >= 0x1000)
        {
          v11 = v28 & 0xFC00;
          goto LABEL_4;
        }

        if (v28 > v14)
        {
          break;
        }

        v29 = icu::CollationFastLatin::nextPair(v13, v25, v28, 0, a6, v117, v118);
        if (v29 == 1)
        {
          return 4294967294;
        }

        if (v29 <= 0xBFFu)
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        if (v29 > v14)
        {
          v30 = v29 & 0xFFF8FFF8;
        }

        if (v29 >= 0x1000u)
        {
          v11 = v29 & 0xFC00FC00;
        }

        else
        {
          v11 = v30;
        }

        if (v11)
        {
          goto LABEL_4;
        }
      }

      v11 = v28 & 0xFF8;
LABEL_4:
      if (v12 != v11)
      {
        v31 = v12;
        if (v12 == v11)
        {
          if (v12 != 2)
          {
            v12 >>= 16;
            v11 >>= 16;
            continue;
          }

          goto LABEL_72;
        }

        v52 = v11;
LABEL_119:
        if (v31 < v52)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return 1;
        }
      }

      break;
    }

    v11 = 0;
    v18 = v12 == 2;
    v12 = 0;
    if (!v18)
    {
      continue;
    }

    break;
  }

LABEL_72:
  if (v114 < 0x1000)
  {
    goto LABEL_73;
  }

  v53 = 0;
  v54 = 0;
  *v117 = 0;
  while (2)
  {
    if (v54)
    {
      goto LABEL_124;
    }

    while (2)
    {
      v56 = *&v117[4];
      if (*&v117[4] == v118[1])
      {
        v54 = 2;
        goto LABEL_124;
      }

      v57 = *&v117[4] + 1;
      ++*&v117[4];
      v58 = *(a4 + v56);
      if ((v58 & 0x80) == 0)
      {
        v59 = *(a4 + v56);
LABEL_141:
        v55 = *(v13 + v59);
        if (v55 >= 0x1000)
        {
          goto LABEL_163;
        }

LABEL_142:
        if (v55 > v14)
        {
          v54 = 192;
          goto LABEL_124;
        }

        v62 = icu::CollationFastLatin::nextPair(v13, v58, v55, 0, a4, &v117[4], &v118[1]);
        Secondaries = icu::CollationFastLatin::getSecondaries(v14, v62);
        if (Secondaries)
        {
          v54 = Secondaries;
          goto LABEL_124;
        }

        continue;
      }

      break;
    }

    if (v58 <= 0xC5)
    {
      v60 = *(a4 + v57) + (v58 << 6);
      *&v117[4] = v56 + 2;
      v59 = v60 - 12416;
      goto LABEL_141;
    }

    v61 = *(a4 + 1 + v57);
    *&v117[4] = v56 + 3;
    if (v58 == 226)
    {
      v59 = v61 | 0x100;
      goto LABEL_141;
    }

    if (v61 == 190)
    {
      v55 = 3;
      goto LABEL_142;
    }

    LOWORD(v55) = -856;
LABEL_163:
    if ((v55 & 0x3E0u) >= 0x180)
    {
      v54 = ((v55 & 0x3E0) << 16) + 2097344;
    }

    else
    {
      v54 = (v55 & 0x3E0) + 32;
    }

LABEL_124:
    if (v53)
    {
      goto LABEL_125;
    }

    while (2)
    {
      v65 = *v117;
      if (*v117 == v118[0])
      {
        v53 = 2;
        goto LABEL_125;
      }

      v66 = *v117 + 1;
      ++*v117;
      v67 = *(a6 + v65);
      if ((v67 & 0x80) == 0)
      {
        v68 = *(a6 + v65);
LABEL_154:
        v64 = *(v13 + v68);
        if (v64 >= 0x1000)
        {
          goto LABEL_167;
        }

LABEL_155:
        if (v64 > v14)
        {
          v53 = 192;
          goto LABEL_125;
        }

        v71 = icu::CollationFastLatin::nextPair(v13, v67, v64, 0, a6, v117, v118);
        v72 = icu::CollationFastLatin::getSecondaries(v14, v71);
        if (v72)
        {
          v53 = v72;
          goto LABEL_125;
        }

        continue;
      }

      break;
    }

    if (v67 <= 0xC5)
    {
      v69 = *(a6 + v66) + (v67 << 6);
      *v117 = v65 + 2;
      v68 = v69 - 12416;
      goto LABEL_154;
    }

    v70 = *(a6 + 1 + v66);
    *v117 = v65 + 3;
    if (v67 == 226)
    {
      v68 = v70 | 0x100;
      goto LABEL_154;
    }

    if (v70 == 190)
    {
      v64 = 3;
      goto LABEL_155;
    }

    LOWORD(v64) = -856;
LABEL_167:
    if ((v64 & 0x3E0u) >= 0x180)
    {
      v53 = ((v64 & 0x3E0) << 16) + 2097344;
    }

    else
    {
      v53 = (v64 & 0x3E0) + 32;
    }

LABEL_125:
    if (v54 == v53)
    {
      v53 = 0;
      v18 = v54 == 2;
      v54 = 0;
      if (!v18)
      {
        continue;
      }
    }

    else
    {
      if (v54 != v53)
      {
        if (v54 < v53)
        {
          v91 = -1;
        }

        else
        {
          v91 = 1;
        }

        if ((v9 & 0x800) != 0)
        {
          return 4294967294;
        }

        else
        {
          return v91;
        }
      }

      if (v54 != 2)
      {
        v54 >>= 16;
        v53 >>= 16;
        continue;
      }
    }

    break;
  }

LABEL_73:
  if ((v9 & 0x400) == 0)
  {
    goto LABEL_74;
  }

  v73 = 0;
  v74 = 0;
  *v117 = 0;
  while (2)
  {
    while (2)
    {
      if (v74)
      {
        goto LABEL_187;
      }

      while (2)
      {
        v76 = *&v117[4];
        if (*&v117[4] == v118[1])
        {
          v74 = 2;
          if (v73)
          {
            goto LABEL_206;
          }

          while (1)
          {
LABEL_194:
            v84 = *v117;
            if (*v117 == v118[0])
            {
              v73 = 2;
              goto LABEL_206;
            }

            v85 = *v117 + 1;
            ++*v117;
            v86 = *(a6 + v84);
            if ((v86 & 0x80) == 0)
            {
              v87 = *(a6 + v84);
              goto LABEL_201;
            }

            if (v86 <= 0xC5)
            {
              break;
            }

            v89 = *(a6 + 1 + v85);
            *v117 = v84 + 3;
            if (v86 == 226)
            {
              v87 = v89 | 0x100;
LABEL_201:
              v83 = *(v13 + v87);
              if (v83 <= 0xBFF)
              {
                goto LABEL_202;
              }

              goto LABEL_203;
            }

            if (v89 == 190)
            {
              v83 = 3;
LABEL_202:
              LODWORD(v83) = icu::CollationFastLatin::nextPair(v13, v86, v83, 0, a6, v117, v118);
              goto LABEL_203;
            }

            LODWORD(v83) = 64680;
LABEL_203:
            Cases = icu::CollationFastLatin::getCases(v14, v114 < 0x1000, v83);
            if (Cases)
            {
              v73 = Cases;
              goto LABEL_206;
            }
          }

          v88 = *(a6 + v85) + (v86 << 6);
          *v117 = v84 + 2;
          v87 = v88 - 12416;
          goto LABEL_201;
        }

        v77 = *&v117[4] + 1;
        ++*&v117[4];
        v78 = *(a4 + v76);
        if ((v78 & 0x80) == 0)
        {
          v79 = *(a4 + v76);
          goto LABEL_183;
        }

        if (v78 <= 0xC5)
        {
          v80 = *(a4 + v77) + (v78 << 6);
          *&v117[4] = v76 + 2;
          v79 = v80 - 12416;
          goto LABEL_183;
        }

        v81 = *(a4 + 1 + v77);
        *&v117[4] = v76 + 3;
        if (v78 == 226)
        {
          v79 = v81 | 0x100;
LABEL_183:
          v75 = *(v13 + v79);
          if (v75 <= 0xBFF)
          {
LABEL_184:
            LODWORD(v75) = icu::CollationFastLatin::nextPair(v13, v78, v75, 0, a4, &v117[4], &v118[1]);
          }
        }

        else
        {
          if (v81 == 190)
          {
            v75 = 3;
            goto LABEL_184;
          }

          LODWORD(v75) = 64680;
        }

        v82 = icu::CollationFastLatin::getCases(v14, v114 < 0x1000, v75);
        if (!v82)
        {
          continue;
        }

        break;
      }

      v74 = v82;
LABEL_187:
      if (!v73)
      {
        goto LABEL_194;
      }

LABEL_206:
      if (v74 != v73)
      {
        if (v74 != v73)
        {
          if (v74 < v73)
          {
            v92 = 1;
          }

          else
          {
            v92 = -1;
          }

          if (v74 < v73)
          {
            v93 = -1;
          }

          else
          {
            v93 = 1;
          }

          if ((v9 & 0x100) != 0)
          {
            return v92;
          }

          else
          {
            return v93;
          }
        }

        if (v74 == 2)
        {
          goto LABEL_74;
        }

        v74 >>= 16;
        v73 >>= 16;
        continue;
      }

      break;
    }

    v73 = 0;
    v18 = v74 == 2;
    v74 = 0;
    if (!v18)
    {
      continue;
    }

    break;
  }

LABEL_74:
  if (v114 < 0x2000)
  {
    return 0;
  }

  v33 = 0;
  v34 = 0;
  v35 = (v9 & 0x600) == 512;
  v116 = a4 + 1;
  *v117 = 0;
  v115 = a6 + 1;
  while (2)
  {
    while (2)
    {
      if (v34)
      {
        goto LABEL_92;
      }

      while (2)
      {
        v37 = *&v117[4];
        if (*&v117[4] == v118[1])
        {
          v34 = 2;
          if (v33)
          {
            goto LABEL_111;
          }

          while (1)
          {
LABEL_99:
            v45 = *v117;
            if (*v117 == v118[0])
            {
              v33 = 2;
              goto LABEL_111;
            }

            v46 = *v117 + 1;
            ++*v117;
            v47 = *(a6 + v45);
            if ((v47 & 0x80) == 0)
            {
              v48 = *(a6 + v45);
              goto LABEL_106;
            }

            if (v47 <= 0xC5)
            {
              break;
            }

            v50 = *(v115 + v46);
            *v117 = v45 + 3;
            if (v47 == 226)
            {
              v48 = v50 | 0x100;
LABEL_106:
              v44 = *(v13 + v48);
              if (v44 <= 0xBFF)
              {
                goto LABEL_107;
              }

              goto LABEL_108;
            }

            if (v50 == 190)
            {
              v44 = 3;
LABEL_107:
              LODWORD(v44) = icu::CollationFastLatin::nextPair(v13, v47, v44, 0, a6, v117, v118);
              goto LABEL_108;
            }

            LODWORD(v44) = 64680;
LABEL_108:
            Tertiaries = icu::CollationFastLatin::getTertiaries(v14, v35, v44);
            if (Tertiaries)
            {
              v33 = Tertiaries;
              goto LABEL_111;
            }
          }

          v49 = *(a6 + v46) + (v47 << 6);
          *v117 = v45 + 2;
          v48 = v49 - 12416;
          goto LABEL_106;
        }

        v38 = *&v117[4] + 1;
        ++*&v117[4];
        v39 = *(a4 + v37);
        if ((v39 & 0x80) == 0)
        {
          v40 = *(a4 + v37);
          goto LABEL_88;
        }

        if (v39 <= 0xC5)
        {
          v41 = *(a4 + v38) + (v39 << 6);
          *&v117[4] = v37 + 2;
          v40 = v41 - 12416;
          goto LABEL_88;
        }

        v42 = *(v116 + v38);
        *&v117[4] = v37 + 3;
        if (v39 == 226)
        {
          v40 = v42 | 0x100;
LABEL_88:
          v36 = *(v13 + v40);
          if (v36 <= 0xBFF)
          {
LABEL_89:
            LODWORD(v36) = icu::CollationFastLatin::nextPair(v13, v39, v36, 0, a4, &v117[4], &v118[1]);
          }
        }

        else
        {
          if (v42 == 190)
          {
            v36 = 3;
            goto LABEL_89;
          }

          LODWORD(v36) = 64680;
        }

        v43 = icu::CollationFastLatin::getTertiaries(v14, v35, v36);
        if (!v43)
        {
          continue;
        }

        break;
      }

      v34 = v43;
LABEL_92:
      if (!v33)
      {
        goto LABEL_99;
      }

LABEL_111:
      if (v34 != v33)
      {
        v31 = v34;
        if (v34 == v33)
        {
          if (v34 == 2)
          {
            goto LABEL_213;
          }

          v34 >>= 16;
          v33 >>= 16;
          continue;
        }

        v52 = v33;
        v94 = v34 ^ 0x18;
        if (v34 <= 3u)
        {
          v94 = v34;
        }

        v95 = v33 ^ 0x18;
        if (v33 <= 3u)
        {
          v95 = v33;
        }

        if ((v9 & 0x700) == 0x300)
        {
          v31 = v94;
          v52 = v95;
        }

        goto LABEL_119;
      }

      break;
    }

    v33 = 0;
    v18 = v34 == 2;
    v34 = 0;
    if (!v18)
    {
      continue;
    }

    break;
  }

LABEL_213:
  if (v114 < 0x3000)
  {
    return 0;
  }

  v96 = 0;
  v97 = 0;
  *v117 = 0;
  while (2)
  {
    while (2)
    {
      if (v97)
      {
        goto LABEL_238;
      }

      while (2)
      {
        v98 = *&v117[4];
        if (*&v117[4] == v118[1])
        {
          v97 = 2;
          goto LABEL_238;
        }

        v99 = *&v117[4] + 1;
        ++*&v117[4];
        v100 = *(a4 + v98);
        if ((v100 & 0x80) == 0)
        {
          v101 = *(a4 + v98);
          goto LABEL_250;
        }

        if (v100 <= 0xC5)
        {
          v102 = *(a4 + v99) + (v100 << 6);
          *&v117[4] = v98 + 2;
          v101 = v102 - 12416;
          goto LABEL_250;
        }

        v103 = *(v116 + v99);
        *&v117[4] = v98 + 3;
        if (v100 == 226)
        {
          v101 = v103 | 0x100;
LABEL_250:
          v104 = *(v13 + v101);
          if (v104 <= 0xBFF)
          {
LABEL_251:
            v105 = icu::CollationFastLatin::nextPair(v13, v100, v104, 0, a4, &v117[4], &v118[1]);
            LODWORD(v104) = v105;
            if (HIWORD(v105))
            {
              if (v14 < v105)
              {
                v97 = -67044352;
                goto LABEL_238;
              }

              v97 = v105 & 0xFFF8FFF8;
              if ((v105 & 0xFFF8FFF8) != 0)
              {
                goto LABEL_238;
              }

              continue;
            }
          }

          if (v104 >= 0x1000)
          {
            goto LABEL_295;
          }

          if (v104 > v14)
          {
            v97 = 64512;
            goto LABEL_238;
          }

          if (v104 <= 0xBFF)
          {
            v97 = v104;
          }

          else
          {
            v97 = v104 & 0xFF8;
          }

          if (v97)
          {
            goto LABEL_238;
          }

          continue;
        }

        break;
      }

      if (v103 == 190)
      {
        v104 = 3;
        goto LABEL_251;
      }

      LOWORD(v104) = -856;
LABEL_295:
      if ((v104 & 0x380u) <= 0x17F)
      {
        v97 = 64512;
      }

      else
      {
        v97 = -67044352;
      }

LABEL_238:
      if (v96)
      {
        goto LABEL_239;
      }

      while (2)
      {
        v106 = *v117;
        if (*v117 == v118[0])
        {
          v96 = 2;
          goto LABEL_239;
        }

        v107 = *v117 + 1;
        ++*v117;
        v108 = *(a6 + v106);
        if ((v108 & 0x80) == 0)
        {
          v109 = *(a6 + v106);
          goto LABEL_271;
        }

        if (v108 <= 0xC5)
        {
          v110 = *(a6 + v107) + (v108 << 6);
          *v117 = v106 + 2;
          v109 = v110 - 12416;
          goto LABEL_271;
        }

        v111 = *(v115 + v107);
        *v117 = v106 + 3;
        if (v108 == 226)
        {
          v109 = v111 | 0x100;
LABEL_271:
          v112 = *(v13 + v109);
          if (v112 <= 0xBFF)
          {
LABEL_272:
            v113 = icu::CollationFastLatin::nextPair(v13, v108, v112, 0, a6, v117, v118);
            LODWORD(v112) = v113;
            if (HIWORD(v113))
            {
              if (v14 < v113)
              {
                v96 = -67044352;
                goto LABEL_239;
              }

              v96 = v113 & 0xFFF8FFF8;
              if ((v113 & 0xFFF8FFF8) != 0)
              {
                goto LABEL_239;
              }

              continue;
            }
          }

          if (v112 >= 0x1000)
          {
            goto LABEL_299;
          }

          if (v112 > v14)
          {
            v96 = 64512;
            goto LABEL_239;
          }

          if (v112 <= 0xBFF)
          {
            v96 = v112;
          }

          else
          {
            v96 = v112 & 0xFF8;
          }

          if (v96)
          {
            goto LABEL_239;
          }

          continue;
        }

        break;
      }

      if (v111 == 190)
      {
        v112 = 3;
        goto LABEL_272;
      }

      LOWORD(v112) = -856;
LABEL_299:
      if ((v112 & 0x380u) <= 0x17F)
      {
        v96 = 64512;
      }

      else
      {
        v96 = -67044352;
      }

LABEL_239:
      if (v97 != v96)
      {
        v31 = v97;
        if (v97 == v96)
        {
          if (v97 != 2)
          {
            v97 >>= 16;
            v96 >>= 16;
            continue;
          }

          return 0;
        }

        v52 = v96;
        goto LABEL_119;
      }

      break;
    }

    v96 = 0;
    result = 0;
    v18 = v97 == 2;
    v97 = 0;
    if (!v18)
    {
      continue;
    }

    return result;
  }
}

uint64_t icu::CollationFastLatin::lookupUTF8(icu::CollationFastLatin *this, const unsigned __int16 *a2, uint64_t a3, unsigned __int8 *a4, int *a5)
{
  v5 = *a4;
  v6 = v5 + 1;
  if ((a5 & 0x80000000) == 0 && v6 >= a5)
  {
    return 1;
  }

  v8 = *(a3 + v5);
  v9 = *(a3 + v6);
  v10 = *(a3 + v6);
  *a4 = v5 + 2;
  if (a2 == 226 && v8 == 128 && v9 <= -65)
  {
    return *(this + v10 + 256);
  }

  result = 1;
  if (a2 == 239 && v8 == 191)
  {
    if (v10 == 190)
    {
      return 3;
    }

    else if (v10 == 191)
    {
      return 64680;
    }
  }

  return result;
}

uint64_t icu::CollationFastLatin::lookupUTF8Unsafe(icu::CollationFastLatin *this, const unsigned __int16 *a2, uint64_t a3, unsigned __int8 *a4, int *a5)
{
  if (a2 > 197)
  {
    v7 = *a4;
    v8 = *(a3 + v7 + 1);
    *a4 = v7 + 2;
    if (a2 == 226)
    {
      return *(this + v8 + 256);
    }

    else if (v8 == 190)
    {
      return 3;
    }

    else
    {
      return 64680;
    }
  }

  else
  {
    v5 = *a4;
    *a4 = v5 + 1;
    return *(this + 64 * a2 + *(a3 + v5) - 12416);
  }
}

icu::CollationFastLatinBuilder *icu::CollationFastLatinBuilder::CollationFastLatinBuilder(icu::CollationFastLatinBuilder *this, UErrorCode *a2)
{
  *this = &unk_1F09383C0;
  *(this + 8) = 0u;
  icu::UVector64::UVector64((this + 7192), a2);
  icu::UVector64::UVector64((this + 7224), a2);
  *(this + 907) = 0;
  *(this + 455) = 0u;
  *(this + 7296) = 0;
  *(this + 913) = &unk_1F0935D00;
  *(this + 3656) = 2;
  *(this + 1842) = 0;
  return this;
}

void icu::CollationFastLatinBuilder::~CollationFastLatinBuilder(void **this)
{
  *this = &unk_1F09383C0;
  free(this[907]);
  icu::UnicodeString::~UnicodeString(0x1C88, (this + 913));
  icu::UVector64::~UVector64(this + 903);
  icu::UVector64::~UVector64(this + 899);

  icu::UObject::~UObject(this);
}

{
  icu::CollationFastLatinBuilder::~CollationFastLatinBuilder(this);

  JUMPOUT(0x19A8B2600);
}

BOOL icu::CollationFastLatinBuilder::forData(icu::CollationFastLatinBuilder *this, const icu::CollationData *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (*(this + 3656) >= 0x20u)
    {
      v3 = 0;
      *a3 = U_INVALID_STATE_ERROR;
      return v3;
    }

    if (icu::CollationFastLatinBuilder::loadGroups(this, a2, a3))
    {
      *(this + 1823) = *(this + 1820);
      icu::CollationFastLatinBuilder::getCEs(this, a2, a3);
      if (icu::CollationFastLatinBuilder::encodeUniqueCEs(this, a3))
      {
        if (!*(this + 7296))
        {
LABEL_11:
          if (icu::CollationFastLatinBuilder::encodeCharCEs(this, a3))
          {
            v3 = icu::CollationFastLatinBuilder::encodeContractions(this, a3) != 0;
LABEL_14:
            icu::UVector64::removeAllElements(this + 7192);
            icu::UVector64::removeAllElements(this + 7224);
            return v3;
          }

LABEL_13:
          v3 = 0;
          goto LABEL_14;
        }

        *(this + 1823) = *(this + 1821);
        icu::CollationFastLatinBuilder::resetCEs(this);
        icu::CollationFastLatinBuilder::getCEs(this, a2, a3);
        if (icu::CollationFastLatinBuilder::encodeUniqueCEs(this, a3))
        {
          if (*(this + 7296))
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }
      }
    }
  }

  return 0;
}

uint64_t icu::CollationFastLatinBuilder::loadGroups(icu::CollationFastLatinBuilder *this, const icu::CollationData *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v11 = v3;
  v12 = v4;
  *(this + 1842) = 5;
  v9 = 517;
  icu::UnicodeString::doAppend(this + 7304, &v9, 0, 1);
  v8 = 0;
  while (1)
  {
    result = icu::CollationData::getLastPrimaryForGroup(a2, v8 | 0x1000);
    *(this + v8 + 1816) = result;
    if (!result)
    {
      break;
    }

    v10 = 0;
    icu::UnicodeString::doAppend(this + 7304, &v10, 0, 1);
    if (++v8 == 4)
    {
      *(this + 1820) = icu::CollationData::getFirstPrimaryForGroup(a2, 4100);
      *(this + 1821) = icu::CollationData::getFirstPrimaryForGroup(a2, 25);
      *(this + 1822) = icu::CollationData::getLastPrimaryForGroup(a2, 25);
      return *(this + 1820) && *(this + 1821) != 0;
    }
  }

  return result;
}

uint64_t icu::CollationFastLatinBuilder::getCEs(uint64_t this, const icu::CollationData *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return this;
  }

  v5 = this;
  v6 = 0;
  v7 = 24;
  while (v6 == 384)
  {
    v6 = 0x2000;
LABEL_7:
    v8 = v6;
    v9 = sub_1952C6CA0(a2, v6);
    v10 = a2;
    if (v9 == 192)
    {
      v10 = *(a2 + 4);
      v9 = sub_1952C6CA0(v10, v8);
    }

    this = icu::CollationFastLatinBuilder::getCEsFromCE32(v5, v10, v8, v9, a3);
    if (this)
    {
      v11 = *(v5 + 8);
      *(v5 + v7) = v11;
      icu::CollationFastLatinBuilder::addUniqueCE(v5, v11, a3);
      this = icu::CollationFastLatinBuilder::addUniqueCE(v5, *(v5 + 16), a3);
      if (v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *(v5 + 8) = xmmword_1954881C0;
      *(v5 + v7) = xmmword_1954881C0;
      if (v8)
      {
        goto LABEL_16;
      }
    }

    v12 = *(v5 + 8);
    if (v12 == 0x101000100 || (v12 & 0xFFFFFFFF00000000) != 0x100000000)
    {
      this = icu::CollationFastLatinBuilder::addContractionEntry(v5, 511, v12, *(v5 + 16), a3);
      *(v5 + 24) = xmmword_1954881D0;
    }

LABEL_16:
    v6 = v8 + 1;
    v7 += 16;
  }

  if (v6 != 8256)
  {
    goto LABEL_7;
  }

  v13 = *(v5 + 7200);
  v14 = v13 + 1;
  if (v13 >= -1 && *(v5 + 7204) > v13)
  {
LABEL_21:
    *(*(v5 + 7216) + 8 * v13) = 511;
    *(v5 + 7200) = v14;
  }

  else
  {
    this = icu::UVector64::expandCapacity((v5 + 7192), v14, a3);
    if (this)
    {
      v13 = *(v5 + 7200);
      v14 = v13 + 1;
      goto LABEL_21;
    }
  }

  return this;
}

void *icu::CollationFastLatinBuilder::encodeUniqueCEs(void **this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  free(this[907]);
  result = malloc_type_malloc(2 * *(this + 1808), 0x1000040BDFB0063uLL);
  this[907] = result;
  if (result)
  {
    v23 = a2;
    if (*(this + 1808) >= 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = *(this + 1816);
      while (1)
      {
        v13 = *(this[906] + v5);
        v14 = HIDWORD(v13);
        if (v7 == HIDWORD(v13))
        {
          v15 = v8;
          v14 = v7;
          v16 = v6;
          goto LABEL_30;
        }

        if (v12 >= HIDWORD(v13))
        {
          v16 = v6;
        }

        else
        {
          v25 = v10;
          v26 = v9;
          v17 = v6;
          v18 = v6 <= 3 ? 3 : v6;
          v24 = v18 + 1;
          if (v6 <= 3)
          {
            v17 = 3;
          }

          v19 = v17 - v6;
          v20 = this + v6 + 1817;
          while (1)
          {
            v6 = (v6 + 1);
            icu::UnicodeString::setCharAt((this + 913), v6, v11);
            if (!v19)
            {
              break;
            }

            v21 = *v20++;
            v12 = v21;
            --v19;
            if (v21 >= HIDWORD(v13))
            {
              v16 = v6;
              v10 = v25;
              v9 = v26;
              goto LABEL_20;
            }
          }

          v12 = -1;
          v10 = v25;
          v9 = v26;
          v16 = v24;
        }

LABEL_20:
        if (*(this + 1823) <= HIDWORD(v13))
        {
          break;
        }

        if (v11)
        {
          if (v11 > 0xFF7)
          {
            v22 = 1;
LABEL_54:
            v14 = v7;
            goto LABEL_58;
          }

          v9 = 0;
          v11 += 8;
LABEL_28:
          v15 = 1280;
          v10 = 160;
          goto LABEL_30;
        }

        v9 = 0;
        v15 = 1280;
        v10 = 160;
        v11 = 3072;
LABEL_30:
        v8 = WORD1(v13);
        if (WORD1(v13) == v15)
        {
          v8 = v15;
        }

        else
        {
          if (!v11)
          {
            if (!v10)
            {
              v9 = 0;
              v10 = 384;
              goto LABEL_32;
            }

            if (v10 > 0x3DF)
            {
              v11 = 0;
LABEL_57:
              v22 = 1;
              v8 = v15;
              goto LABEL_58;
            }

            goto LABEL_50;
          }

          if (BYTE3(v13) > 4u)
          {
            if (WORD1(v13) != 1280)
            {
              if (v10 < 0xC0)
              {
                v9 = 0;
                v10 = 192;
                goto LABEL_32;
              }

              if (v10 > 0x15F)
              {
                goto LABEL_57;
              }

              goto LABEL_50;
            }

            v9 = 0;
            v8 = 1280;
            v10 = 160;
          }

          else
          {
            if (v10 != 160)
            {
              if (v10 > 0x7F)
              {
                goto LABEL_57;
              }

LABEL_50:
              v9 = 0;
              v10 += 32;
              goto LABEL_32;
            }

            v10 = 0;
            v9 = 0;
          }
        }

LABEL_32:
        if ((v13 & 0x3F3F) < 0x501)
        {
          goto LABEL_35;
        }

        if (v9 <= 6)
        {
          ++v9;
LABEL_35:
          v22 = v9 | v11;
          if (v11 - 3072 > 0x3F8)
          {
            v22 = v10 | v11 | v9;
          }

          goto LABEL_58;
        }

        v22 = 1;
LABEL_58:
        *(this[907] + v5++) = v22;
        v6 = v16;
        v7 = v14;
        if (v5 >= *(this + 1808))
        {
          return (*v23 < U_ILLEGAL_ARGUMENT_ERROR);
        }
      }

      if (v11 < 0x1000)
      {
        v9 = 0;
        v15 = 1280;
        v10 = 160;
        v11 = 4096;
        goto LABEL_30;
      }

      if (v11 >> 11 > 0x1E)
      {
        v22 = 1;
        *(this + 7296) = 1;
        goto LABEL_54;
      }

      v9 = 0;
      v11 += 1024;
      goto LABEL_28;
    }

    return (*v23 < U_ILLEGAL_ARGUMENT_ERROR);
  }

  else
  {
    *a2 = U_MEMORY_ALLOCATION_ERROR;
  }

  return result;
}

uint64_t icu::CollationFastLatinBuilder::resetCEs(icu::CollationFastLatinBuilder *this)
{
  icu::UVector64::removeAllElements(this + 7192);
  result = icu::UVector64::removeAllElements(this + 7224);
  *(this + 7296) = 0;
  v3 = *(this + 1842);
  v4 = *(this + 3656);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = (v4 & 1) == 0;
  }

  if (v5)
  {
    if ((v4 & 0x8000) != 0)
    {
      v6 = *(this + 1829);
    }

    else
    {
      v6 = v4 >> 5;
    }

    if (v6 > v3)
    {
      if (v3 > 1023)
      {
        *(this + 3656) = v4 | 0xFFE0;
        *(this + 1829) = v3;
      }

      else
      {
        *(this + 3656) = *(this + 3656) & 0x1F | (32 * v3);
      }
    }
  }

  else
  {

    return icu::UnicodeString::unBogus(this + 7304);
  }

  return result;
}

BOOL icu::CollationFastLatinBuilder::encodeCharCEs(icu::CollationFastLatinBuilder *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v21 = v2;
  v22 = v3;
  if (*(this + 3656) < 0)
  {
    v7 = *(this + 1829);
  }

  else
  {
    v7 = *(this + 3656) >> 5;
  }

  v8 = 448;
  do
  {
    v18 = 0;
    icu::UnicodeString::doAppend(this + 7304, &v18, 0, 1);
    --v8;
  }

  while (v8);
  if (*(this + 3656) < 0)
  {
    v9 = *(this + 1829);
  }

  else
  {
    v9 = *(this + 3656) >> 5;
  }

  v10 = -7168;
  do
  {
    v11 = *(this + v10 + 7192);
    if (v11 == 0x101000100 || (v11 & 0xFFFFFFFF00000000) != 0x100000000)
    {
      v13 = icu::CollationFastLatinBuilder::encodeTwoCEs(this, v11, *(this + v10 + 7200));
      v14 = v13;
      if (v13 >= 0x10000)
      {
        if (*(this + 3656) < 0)
        {
          v15 = *(this + 1829);
        }

        else
        {
          v15 = *(this + 3656) >> 5;
        }

        v16 = v15 - v9;
        if (v15 - v9 <= 1023)
        {
          v19 = HIWORD(v13);
          v17 = icu::UnicodeString::doAppend(this + 7304, &v19, 0, 1);
          v20 = v14;
          icu::UnicodeString::doAppend(v17, &v20, 0, 1);
          v14 = v16 | 0x800;
        }

        else
        {
          v14 = 1;
        }
      }

      icu::UnicodeString::setCharAt((this + 7304), v7, v14);
    }

    ++v7;
    v10 += 16;
  }

  while (v10);
  return *a2 < U_ILLEGAL_ARGUMENT_ERROR;
}

uint64_t icu::CollationFastLatinBuilder::encodeContractions(icu::CollationFastLatinBuilder *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v36 = v2;
  v37 = v3;
  if (*(this + 3656) < 0)
  {
    v6 = *(this + 1829);
  }

  else
  {
    v6 = *(this + 3656) >> 5;
  }

  v7 = 0;
  v8 = *(this + 1842);
  v27 = v6;
  v28 = v8;
  do
  {
    v9 = *(this + 2 * v7 + 3);
    if (v9 != 0x101000100 && (v9 & 0xFFFFFFFF00000000) == 0x100000000)
    {
      if (*(this + 3656) < 0)
      {
        v11 = *(this + 1829);
      }

      else
      {
        v11 = *(this + 3656) >> 5;
      }

      v12 = v11 - v8 - 448;
      if (v12 >= 1024)
      {
        icu::UnicodeString::setCharAt((this + 7304), *(this + 1842) + v7, 1);
        goto LABEL_34;
      }

      v13 = *(this + 2 * v7 + 3) & 0x7FFFFFFFLL;
      for (i = 1; ; i = 0)
      {
        v15 = *(this + 1800);
        if (v13 >= v15)
        {
          LOWORD(v16) = 0;
        }

        else
        {
          v16 = *(*(this + 902) + 8 * v13);
          if (((v16 == 511) & ~i) != 0)
          {
            icu::UnicodeString::setCharAt((this + 7304), *(this + 1842) + v7, v12 | 0x400);
            v8 = v28;
            break;
          }
        }

        if (v15 <= v13 + 1)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(*(this + 902) + 8 * v13 + 8);
        }

        if (v15 <= v13 + 2)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(*(this + 902) + 8 * v13 + 16);
        }

        v19 = icu::CollationFastLatinBuilder::encodeTwoCEs(this, v17, v18);
        if (v19 == 1)
        {
          v29 = v16 | 0x200;
          v20 = this + 7304;
          v21 = &v29;
        }

        else
        {
          v22 = v19;
          v23 = HIWORD(v19);
          if (HIWORD(v19))
          {
            v32 = v16 | 0x600;
            icu::UnicodeString::doAppend(this + 7304, &v32, 0, 1);
            v33 = v23;
            v20 = icu::UnicodeString::doAppend(this + 7304, &v33, 0, 1);
            v34 = v22;
            v21 = &v34;
          }

          else
          {
            v30 = v16 | 0x400;
            icu::UnicodeString::doAppend(this + 7304, &v30, 0, 1);
            v31 = v22;
            v20 = this + 7304;
            v21 = &v31;
          }
        }

        icu::UnicodeString::doAppend(v20, v21, 0, 1);
        v13 += 3;
      }
    }

LABEL_34:
    ++v7;
  }

  while (v7 != 448);
  v24 = *(this + 3656);
  if (*(this + 3656) < 0)
  {
    v25 = *(this + 1829);
  }

  else
  {
    v25 = v24 >> 5;
  }

  if (v25 > v27)
  {
    v35 = 511;
    icu::UnicodeString::doAppend(this + 7304, &v35, 0, 1);
    LOWORD(v24) = *(this + 3656);
  }

  if ((v24 & 1) == 0)
  {
    return 1;
  }

  result = 0;
  *a2 = U_MEMORY_ALLOCATION_ERROR;
  return result;
}

BOOL icu::CollationFastLatinBuilder::inSameGroup(icu::CollationFastLatinBuilder *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 1823);
  if (v3 <= a2)
  {
    return v3 <= a3;
  }

  if (v3 <= a3)
  {
    return 0;
  }

  v4 = *(this + 1819);
  v5 = v4 < a3 && v4 < a2;
  if (v4 >= a2 && v4 >= a3)
  {
    v7 = *(this + 1816);
    if (v7 >= a2)
    {
      return v7 >= a3;
    }

    v8 = (this + 7268);
    while (v7 < a3)
    {
      v9 = *v8++;
      v7 = v9;
      if (v9 >= a2)
      {
        return v7 >= a3;
      }
    }

    return 0;
  }

  return v5;
}

uint64_t icu::CollationFastLatinBuilder::getCEsFromCE32(icu::CollationFastLatinBuilder *this, const icu::CollationData *a2, icu::Collation *a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  FinalCE32 = icu::CollationData::getFinalCE32(a2, a4);
  v11 = FinalCE32;
  *(this + 2) = 0;
  v12 = FinalCE32 & 0xF;
  if ((~FinalCE32 & 0xC0) != 0 || (v12 - 3) >= 0xFFFFFFFE)
  {
    v19 = v12 == 1;
    v14 = ((FinalCE32 & 0xFFFFFF00) << 32) | 0x5000500;
    if (!v19)
    {
      v14 = FinalCE32 & 0xFFFFFF00;
    }

    if (FinalCE32 <= 0xBFu)
    {
      v13 = (FinalCE32 << 16) & 0xFF000000 | (((FinalCE32 & 0xFFFF0000) >> 16) << 48) | (FinalCE32 << 8);
    }

    else
    {
      v13 = v14;
    }

    *(this + 1) = v13;
LABEL_17:
    if (!v13)
    {
      return *(this + 2) == 0;
    }

    goto LABEL_18;
  }

  result = 0;
  if (v12 <= 5)
  {
    if (v12 == 4)
    {
      v13 = (v11 >> 8) & 0xFF00 | (((v11 & 0xFF000000) >> 24) << 56) | 0x5000000;
      *(this + 1) = v13;
      *(this + 2) = (BYTE1(v11) << 24) | 0x500u;
      goto LABEL_18;
    }

    if (v12 != 5)
    {
      return result;
    }

    v20 = (v11 >> 8) & 0x1F;
    if (v20 > 2)
    {
      return 0;
    }

    v21 = (*(a2 + 1) + 4 * (v11 >> 13));
    v13 = sub_1952D6514(*v21);
    *(this + 1) = v13;
    if (v20 == 2)
    {
      *(this + 2) = sub_1952D6514(v21[1]);
      v13 = *(this + 1);
    }

    goto LABEL_17;
  }

  if (v12 == 6)
  {
    v22 = (v11 >> 8) & 0x1F;
    if (v22 > 2)
    {
      return 0;
    }

    v23 = (*(a2 + 2) + 8 * (v11 >> 13));
    v13 = *v23;
    *(this + 1) = *v23;
    if (v22 == 2)
    {
      *(this + 2) = v23[1];
    }

    goto LABEL_17;
  }

  if (v12 == 9)
  {

    return icu::CollationFastLatinBuilder::getCEsFromContractionCE32(this, a2, v11, a5);
  }

  if (v12 != 14)
  {
    return result;
  }

  v13 = (icu::Collation::getThreeBytePrimaryForOffsetData(a3, *(*(a2 + 2) + 8 * (v11 >> 13))) << 32) | 0x5000500;
  *(this + 1) = v13;
LABEL_18:
  if (!HIDWORD(v13) || *(this + 1822) < HIDWORD(v13))
  {
    return 0;
  }

  result = 0;
  v15 = *(this + 1823);
  v17 = v13 >> 14 != 5120 && v15 > HIDWORD(v13);
  if ((v13 & 0x3F00) >= 0x500 && !v17)
  {
    v18 = *(this + 2);
    if (!v18)
    {
      return ((v18 | v13) & 0xC0) == 0;
    }

    if (HIDWORD(v18))
    {
      result = icu::CollationFastLatinBuilder::inSameGroup(this, HIDWORD(v13), HIDWORD(v18));
      if (!result)
      {
        return result;
      }

      if (v18 < 0x10000 || v15 > HIDWORD(v18) && (v18 & 0xFFFFC000) != 0x5000000)
      {
        return 0;
      }

      goto LABEL_32;
    }

    result = 0;
    if (v15 <= HIDWORD(v13) && v18 >= 0x10000)
    {
LABEL_32:
      if ((v18 & 0x3F00) >= 0x500)
      {
        return ((v18 | v13) & 0xC0) == 0;
      }

      return 0;
    }
  }

  return result;
}

icu::UVector64 *icu::CollationFastLatinBuilder::addUniqueCE(icu::UVector64 *this, unint64_t a2, UErrorCode *a3)
{
  if (HIDWORD(a2) == 1 || a2 == 0 || *a3 > U_ZERO_ERROR)
  {
    return this;
  }

  v5 = a2 & 0xFFFFFFFFFFFF3FFFLL;
  v6 = *(this + 1808);
  if (!v6)
  {
    v8 = -1;
    return icu::UVector64::insertElementAt((this + 7224), v5, ~v8, a3);
  }

  v7 = *(this + 906);
  v8 = v6 / 2;
  v9 = *(v7 + 8 * (v6 / 2));
  if (v9 == v5)
  {
LABEL_21:
    if (v8 < 0)
    {
      return icu::UVector64::insertElementAt((this + 7224), v5, ~v8, a3);
    }

    return this;
  }

  v10 = 0;
  while (v9 <= v5)
  {
    if (v8 == v10)
    {
      v8 = -2 - v8;
      goto LABEL_21;
    }

    v10 = v8;
LABEL_17:
    v8 = (v6 + v10) / 2;
    v9 = *(v7 + 8 * v8);
    if (v9 == v5)
    {
      goto LABEL_21;
    }
  }

  if (v8 != v10)
  {
    v6 = v8;
    goto LABEL_17;
  }

  v8 = ~v8;
  if (v8 < 0)
  {
    return icu::UVector64::insertElementAt((this + 7224), v5, ~v8, a3);
  }

  return this;
}

icu::UVector64 *icu::CollationFastLatinBuilder::addContractionEntry(icu::CollationFastLatinBuilder *this, int a2, unint64_t a3, unint64_t a4, UErrorCode *a5)
{
  v10 = *(this + 1800);
  v11 = v10 + 1;
  if (v10 >= -1 && *(this + 1801) > v10)
  {
    goto LABEL_5;
  }

  v12 = icu::UVector64::expandCapacity((this + 7192), v11, a5);
  v10 = *(this + 1800);
  if (v12)
  {
    v11 = v10 + 1;
LABEL_5:
    *(*(this + 902) + 8 * v10) = a2;
    *(this + 1800) = v11;
    v10 = v11;
  }

  v13 = v10 + 1;
  if (v10 >= -1 && *(this + 1801) > v10)
  {
    goto LABEL_10;
  }

  v14 = icu::UVector64::expandCapacity((this + 7192), v13, a5);
  v10 = *(this + 1800);
  if (v14)
  {
    v13 = v10 + 1;
LABEL_10:
    *(*(this + 902) + 8 * v10) = a3;
    *(this + 1800) = v13;
    v10 = v13;
  }

  v15 = v10 + 1;
  if (v10 < -1 || *(this + 1801) <= v10)
  {
    if (!icu::UVector64::expandCapacity((this + 7192), v15, a5))
    {
      goto LABEL_16;
    }

    v10 = *(this + 1800);
    v15 = v10 + 1;
  }

  *(*(this + 902) + 8 * v10) = a4;
  *(this + 1800) = v15;
LABEL_16:
  icu::CollationFastLatinBuilder::addUniqueCE(this, a3, a5);

  return icu::CollationFastLatinBuilder::addUniqueCE(this, a4, a5);
}

unint64_t sub_1952D6514(int a1)
{
  v1 = a1 & 0xFFFFFF00;
  if ((a1 & 0xF) == 1)
  {
    v1 = (v1 << 32) | 0x5000500;
  }

  if (a1 <= 0xBFu)
  {
    return (a1 << 16) & 0xFF000000 | (((a1 & 0xFFFF0000) >> 16) << 48) | (a1 << 8);
  }

  else
  {
    return v1;
  }
}

uint64_t icu::CollationFastLatinBuilder::getCEsFromContractionCE32(icu::CollationFastLatinBuilder *this, const icu::CollationData *a2, unsigned int a3, UErrorCode *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    return 0;
  }

  v8 = (*(a2 + 3) + 2 * (a3 >> 13));
  v9 = *(this + 1800);
  if (icu::CollationFastLatinBuilder::getCEsFromCE32(this, a2, 0xFFFFFFFFLL, v8[1] | (*v8 << 16), a4))
  {
    v10 = *(this + 1);
    v11 = *(this + 2);
    v12 = this;
  }

  else
  {
    v12 = this;
    v10 = 0x101000100;
    v11 = 0;
  }

  icu::CollationFastLatinBuilder::addContractionEntry(v12, 511, v10, v11, a4);
  v30 = 0;
  v28 = 0u;
  *v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v25, 0, sizeof(v25));
  v24 = v8 + 2;
  icu::UCharsTrie::Iterator::Iterator(v25, &v24, 0, a4);
  if (!icu::UCharsTrie::Iterator::next(v25, a4))
  {
    goto LABEL_34;
  }

  v13 = 0;
  v14 = 0xFFFFFFFFLL;
  do
  {
    while (1)
    {
      v15 = v26;
      v16 = v26 >> 5;
      v17 = DWORD1(v26);
      if ((v26 & 0x8000u) == 0)
      {
        v18 = v26 >> 5;
      }

      else
      {
        v18 = DWORD1(v26);
      }

      if (!v18)
      {
        goto LABEL_31;
      }

      v19 = v27;
      if ((v26 & 2) != 0)
      {
        v19 = &v26 + 1;
      }

      v20 = *v19;
      if (v20 >= 0x180)
      {
        break;
      }

LABEL_18:
      if (v20 == v14)
      {
        if (!v13)
        {
          goto LABEL_31;
        }

        v20 = v14;
LABEL_30:
        icu::CollationFastLatinBuilder::addContractionEntry(this, v20, 0x101000100uLL, 0, a4);
        v13 = 0;
        v14 = v20;
        goto LABEL_31;
      }

      if (v13)
      {
        icu::CollationFastLatinBuilder::addContractionEntry(this, v14, *(this + 1), *(this + 2), a4);
        v15 = v26;
        v17 = DWORD1(v26);
        v16 = v26 >> 5;
      }

      if (v15 >= 0)
      {
        v21 = v16;
      }

      else
      {
        v21 = v17;
      }

      if (v21 != 1 || !icu::CollationFastLatinBuilder::getCEsFromCE32(this, a2, 0xFFFFFFFFLL, v29[3], a4))
      {
        goto LABEL_30;
      }

      v13 = 1;
      v14 = v20;
      if (!icu::UCharsTrie::Iterator::next(v25, a4))
      {
        goto LABEL_33;
      }
    }

    if ((v20 & 0xFFC0) == 0x2000 && v20 >> 7 >= 0x3D)
    {
      v20 = (v20 - 7808);
      goto LABEL_18;
    }

LABEL_31:
    ;
  }

  while (icu::UCharsTrie::Iterator::next(v25, a4));
  LODWORD(v20) = v14;
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_33:
  icu::CollationFastLatinBuilder::addContractionEntry(this, v20, *(this + 1), *(this + 2), a4);
LABEL_34:
  v22 = *a4;
  if (v22 <= 0)
  {
    v22 = v9 | 0x180000000;
    *(this + 1) = v9 | 0x180000000;
    *(this + 2) = 0;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  icu::UCharsTrie::Iterator::~Iterator(v25, v22);
  return v4;
}

uint64_t icu::CollationFastLatinBuilder::getMiniCE(icu::CollationFastLatinBuilder *this, uint64_t a2)
{
  v2 = *(this + 1808);
  if (v2)
  {
    v3 = a2 & 0xFFFFFFFFFFFF3FFFLL;
    v4 = *(this + 906);
    v5 = v2 / 2;
    v6 = *(v4 + 8 * (v2 / 2));
    if (v6 != (a2 & 0xFFFFFFFFFFFF3FFFLL))
    {
      v7 = 0;
      do
      {
        if (v6 <= v3)
        {
          if (v5 == v7)
          {
            v5 = -2 - v5;
            return *(*(this + 907) + 2 * v5);
          }

          v7 = v5;
        }

        else
        {
          if (v5 == v7)
          {
            v5 = ~v5;
            return *(*(this + 907) + 2 * v5);
          }

          v2 = v5;
        }

        v5 = (v2 + v7) / 2;
        v6 = *(v4 + 8 * v5);
      }

      while (v6 != v3);
    }
  }

  else
  {
    v5 = -1;
  }

  return *(*(this + 907) + 2 * v5);
}

uint64_t icu::CollationFastLatinBuilder::encodeTwoCEs(icu::CollationFastLatinBuilder *this, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (a2 == 0x101000100)
    {
      return 1;
    }

    MiniCE = icu::CollationFastLatinBuilder::getMiniCE(this, a2);
    if (MiniCE == 1)
    {
      return 1;
    }

    v7 = MiniCE;
    v8 = ((v3 >> 11) & 0x18) + 8;
    if (MiniCE <= 0xFFF)
    {
      v8 = 0;
    }

    v3 = v8 | MiniCE;
    if (a3)
    {
      v9 = icu::CollationFastLatinBuilder::getMiniCE(this, a3);
      if (v9 == 1)
      {
        return 1;
      }

      v11 = a3 & 0xC000;
      if (v7 < 0x1000 || (v3 & 0x3E0) != 0xA0 || (v9 & 0x3E0) < 0x180 || v9 & 7 | v11)
      {
        v12 = (v11 >> 11) + 8;
        if (v9 - 4096 >= 0xFFFFF3E1)
        {
          v12 = 0;
        }

        return v12 | (v3 << 16) | v9;
      }

      else
      {
        return v9 & 0x3E0 | v3 & 0xFC1F;
      }
    }
  }

  return v3;
}

void icu::CollationIterator::CEBuffer::~CEBuffer(void **this)
{
  if (*(this + 20))
  {
    free(this[1]);
  }
}

{
  if (*(this + 20))
  {
    free(this[1]);
  }
}

uint64_t icu::CollationIterator::CEBuffer::ensureAppendCapacity(icu::CollationIterator::CEBuffer *this, int a2, UErrorCode *a3)
{
  v3 = *(this + 4);
  v4 = *this;
  v5 = *this + a2;
  if (v5 <= v3)
  {
    return 1;
  }

  if (*a3 > 0)
  {
    return 0;
  }

  do
  {
    v9 = v3;
    if (v3 >= 1000)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v3 <<= v10;
  }

  while (v3 < v5);
  if (v9 >= 1 && (v11 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL)) != 0)
  {
    v12 = v11;
    if (v4 >= 1)
    {
      v13 = *(this + 4);
      if (v13 >= v4)
      {
        v13 = v4;
      }

      if (v13 >= v3)
      {
        v13 = v3;
      }

      memcpy(v11, *(this + 1), 8 * v13);
    }

    if (*(this + 20))
    {
      free(*(this + 1));
    }

    *(this + 1) = v12;
    *(this + 4) = v3;
    result = 1;
    *(this + 20) = 1;
  }

  else
  {
    result = 0;
    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  return result;
}

uint64_t icu::CollationIterator::CollationIterator(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0938400;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  v3 = (a1 + 24);
  *(a1 + 32) = a1 + 48;
  *(a1 + 40) = 40;
  *(a1 + 44) = 0;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = 0;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 388) = *(a2 + 388);
  v11 = U_ZERO_ERROR;
  v4 = *(a2 + 24);
  if (v4 >= 1 && icu::CollationIterator::CEBuffer::ensureAppendCapacity((a1 + 24), *(a2 + 24), &v11))
  {
    v6 = *(a2 + 32);
    v7 = *(a1 + 32);
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
    *v3 = v4;
  }

  else
  {
    *(a1 + 368) = 0;
  }

  return a1;
}

void icu::CollationIterator::~CollationIterator(icu::CollationIterator *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F0938400;
  v3 = *(this + 47);
  if (v3)
  {
    icu::UnicodeString::~UnicodeString(a2, (v3 + 72));
    icu::UnicodeString::~UnicodeString(v4, (v3 + 8));
    MEMORY[0x19A8B2600](v3, 0x10D2C4051426601);
  }

  if (*(this + 44))
  {
    free(*(this + 4));
  }

  icu::UObject::~UObject(this);
}

BOOL icu::CollationIterator::operator==(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    v5 = *(a1 + 24);
    if (v5 == *(a2 + 24) && *(a1 + 368) == *(a2 + 368) && *(a1 + 384) == *(a2 + 384) && *(a1 + 388) == *(a2 + 388))
    {
      if (v5 < 1)
      {
        return 1;
      }

      else
      {
        v6 = *(a1 + 32);
        v7 = *(a2 + 32);
        v8 = v5 - 1;
        do
        {
          v10 = *v6++;
          v9 = v10;
          v11 = *v7++;
          result = v9 == v11;
        }

        while (v9 == v11 && v8-- != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t icu::CollationIterator::reset(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 368) = 0;
  v1 = *(this + 376);
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 16) & 0x1E;
    }

    *(v1 + 16) = v2;
    *(v1 + 136) = 0;
  }

  return this;
}

uint64_t icu::CollationIterator::fetchCEs(icu::CollationIterator *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    do
    {
      if (sub_1952C5F10(this, a2) == 0x101000100)
      {
        break;
      }

      *(this + 92) = *(this + 6);
    }

    while (*a2 < 1);
  }

  return *(this + 6);
}

uint64_t icu::CollationIterator::handleNextCE32(uint64_t **this, int *a2, UErrorCode *a3)
{
  v5 = ((*this)[6])(this, a3);
  *a2 = v5;
  if (v5 < 0)
  {
    return 192;
  }

  v6 = v5;
  v7 = this[2];

  return sub_1952C6CA0(v7, v6);
}

uint64_t icu::CollationIterator::getCE32FromBuilderData(icu::CollationIterator *this, unsigned int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    *a3 = U_INTERNAL_PROGRAM_ERROR;
  }

  return 0;
}

uint64_t icu::CollationIterator::nextCEFromCE32(icu::CollationIterator *this, const icu::CollationData *a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  --*(this + 6);
  v7 = 1;
  icu::CollationIterator::appendCEsFromCE32(this, a2, a3, a4, 1, a5);
  if (*a5 <= 0)
  {
    v8 = *(this + 92);
    *(this + 92) = v8 + 1;
    return *(*(this + 4) + 8 * v8);
  }

  return v7;
}

void icu::CollationIterator::appendCEsFromCE32(void *this, const icu::CollationData *a2, uint64_t a3, uint64_t a4, int a5, UErrorCode *a6)
{
  v7 = a4;
  if ((~a4 & 0xC0) == 0)
  {
    while (1)
    {
      switch(v7 & 0xF)
      {
        case 1:
          v43 = *(this + 6);
          if (v43 < 40)
          {
            goto LABEL_78;
          }

          if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 3), 1, a6))
          {
            v43 = *(this + 6);
LABEL_78:
            v44 = (((v7 & 0xFFFFFF00) >> 8) << 40) | 0x5000500;
            *(this + 6) = v43 + 1;
            v45 = this[4];
            goto LABEL_122;
          }

          return;
        case 2:
          v32 = *(this + 6);
          if (v32 < 40)
          {
            goto LABEL_74;
          }

          if (!icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 3), 1, a6))
          {
            return;
          }

          v32 = *(this + 6);
LABEL_74:
          v33 = v7 & 0xFFFFFF00;
          goto LABEL_60;
        case 4:
          if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 3), 2, a6))
          {
            v35 = *(this + 6);
            v36 = (this[4] + 8 * v35);
            *v36 = (v7 >> 8) & 0xFF00 | (((v7 & 0xFF000000) >> 24) << 56) | 0x5000000;
            v36[1] = (BYTE1(v7) << 24) | 0x500u;
            *(this + 6) = v35 + 2;
          }

          return;
        case 5:
          v46 = *(a2 + 1);
          if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 3), (v7 >> 8) & 0x1F, a6))
          {
            v47 = (v46 + 4 * (v7 >> 13));
            v48 = *(this + 6);
            v49 = (this[4] + 8 * v48);
            v50 = v48 + 1;
            v51 = ((v7 >> 8) & 0x1F) + 1;
            do
            {
              v53 = *v47++;
              v52 = v53;
              v54 = v53;
              v55 = v53 & 0xFFFFFF00;
              if ((v53 & 0xF) == 1)
              {
                v55 = (v55 << 32) | 0x5000500;
              }

              v56 = (v52 << 16) & 0xFF000000 | (((v52 & 0xFFFF0000) >> 16) << 48) | (v54 << 8);
              if (v54 > 0xBF)
              {
                v56 = v55;
              }

              *(this + 6) = v50;
              *v49++ = v56;
              ++v50;
              --v51;
            }

            while (v51 > 1);
          }

          return;
        case 6:
          v37 = *(a2 + 2);
          if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 3), (v7 >> 8) & 0x1F, a6))
          {
            v38 = (v37 + 8 * (v7 >> 13));
            v39 = *(this + 6);
            v40 = (this[4] + 8 * v39);
            v41 = ((v7 >> 8) & 0x1F) + 1;
            do
            {
              v42 = *v38++;
              *v40++ = v42;
              LODWORD(v39) = v39 + 1;
              --v41;
            }

            while (v41 > 1);
            *(this + 6) = v39;
          }

          return;
        case 7:
          v12 = (*(*this + 120))(this, v7, a6);
          if (*a6 > 0)
          {
            return;
          }

          CE32FromPrefix = v12;
          if (v12 != 192)
          {
            goto LABEL_31;
          }

          a2 = *(this[2] + 32);
          CE32FromContraction = sub_1952C6CA0(a2, a3);
          goto LABEL_30;
        case 8:
          if (a5)
          {
            (*(*this + 104))(this, 1, a6);
            CE32FromPrefix = icu::CollationIterator::getCE32FromPrefix(this, a2, v7, a6);
            (*(*this + 96))(this, 1, a6);
            goto LABEL_31;
          }

          CE32FromContraction = icu::CollationIterator::getCE32FromPrefix(this, a2, v7, a6);
          goto LABEL_30;
        case 9:
          v24 = (*(a2 + 3) + 2 * (v7 >> 13));
          CE32FromPrefix = v24[1] | (*v24 << 16);
          if (!a5)
          {
            goto LABEL_31;
          }

          if (!this[47] && (this[48] & 0x80000000) != 0)
          {
            v28 = (*(*this + 48))(this, a6);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_31;
            }

            v26 = v28;
            if ((v7 & 0x200) != 0)
            {
              if (v28 < 0x300 || (!WORD1(v28) ? (v29 = v28) : (v29 = ((v28 >> 10) - 10304)), !icu::CollationFCD::lcccIndex[v29 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v29 >> 5]] >> v29) & 1) == 0))
              {
                (*(*this + 104))(this, 1, a6);
                goto LABEL_31;
              }
            }
          }

          else
          {
            SkippedCodePoint = icu::CollationIterator::nextSkippedCodePoint(this, a6);
            if ((SkippedCodePoint & 0x80000000) != 0)
            {
              goto LABEL_31;
            }

            v26 = SkippedCodePoint;
            if ((v7 & 0x200) != 0)
            {
              if (SkippedCodePoint < 0x300 || (!WORD1(SkippedCodePoint) ? (v27 = SkippedCodePoint) : (v27 = ((SkippedCodePoint >> 10) - 10304)), !icu::CollationFCD::lcccIndex[v27 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v27 >> 5]] >> v27) & 1) == 0))
              {
                icu::CollationIterator::backwardNumSkipped(this, 1, a6);
                goto LABEL_31;
              }
            }
          }

          CE32FromContraction = icu::CollationIterator::nextCE32FromContraction(this, a2, v7, (v24 + 2), CE32FromPrefix, v26, a6);
          if (CE32FromContraction == 1)
          {
            return;
          }

LABEL_30:
          CE32FromPrefix = CE32FromContraction;
          goto LABEL_31;
        case 0xALL:
          if (*(this + 388))
          {

            icu::CollationIterator::appendNumericCEs(this, v7, a5, a6);
            return;
          }

          CE32FromPrefix = *(*(a2 + 1) + 4 * (v7 >> 13));
          goto LABEL_31;
        case 0xBLL:
          if (a5 && (*(*this + 80))(this))
          {
            v43 = *(this + 6);
            if (v43 < 40)
            {
LABEL_121:
              *(this + 6) = v43 + 1;
              v45 = this[4];
              v44 = 0x101000100;
LABEL_122:
              *(v45 + 8 * v43) = v44;
            }

            else if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 3), 1, a6))
            {
              v43 = *(this + 6);
              goto LABEL_121;
            }

            return;
          }

          CE32FromPrefix = **(a2 + 1);
LABEL_31:
          v7 = CE32FromPrefix;
          if ((~CE32FromPrefix & 0xC0) != 0)
          {
            goto LABEL_56;
          }

          break;
        case 0xCLL:
          v18 = *(a2 + 5);
          v19 = a3 - 44032;
          v20 = (a3 - 44032) / 28;
          v21 = (a3 - 44032) % 28;
          v22 = v20 % 21;
          v23 = v19 / 588;
          if ((v7 & 0x100) != 0)
          {
            if (v21)
            {
              v57 = 3;
            }

            else
            {
              v57 = 2;
            }

            if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 3), v57, a6))
            {
              v58 = *(this + 6);
              v59 = *(v18 + 4 * v23);
              v60 = v59;
              v61 = v59 & 0xFFFFFF00;
              if ((v59 & 0xF) == 1)
              {
                v61 = ((v59 & 0xFFFFFF00) << 32) | 0x5000500;
              }

              v62 = (v59 << 16) & 0xFF000000 | (((v59 & 0xFFFF0000) >> 16) << 48) | (v59 << 8);
              if (v60 <= 0xBF)
              {
                v63 = v62;
              }

              else
              {
                v63 = v61;
              }

              v64 = this[4];
              v65 = *(v18 + 4 * v22 + 76);
              v66 = v65 & 0xFFFFFF00;
              if ((v65 & 0xF) == 1)
              {
                v66 = ((v65 & 0xFFFFFF00) << 32) | 0x5000500;
              }

              v67 = (v65 << 16) & 0xFF000000 | (((v65 & 0xFFFF0000) >> 16) << 48);
              v68 = (v64 + 8 * v58);
              v69 = *(v18 + 4 * v22 + 76);
              v70 = v67 | (v69 << 8);
              if (v69 <= 0xBF)
              {
                v71 = v70;
              }

              else
              {
                v71 = v66;
              }

              *v68 = v63;
              v68[1] = v71;
              *(this + 6) = v58 + 2;
              if (v21)
              {
                v72 = *(v18 + 4 * v21 + 156);
                v73 = v72;
                v74 = v72 & 0xFFFFFF00;
                if ((v72 & 0xF) == 1)
                {
                  v74 = ((v72 & 0xFFFFFF00) << 32) | 0x5000500;
                }

                v75 = (v72 << 16) & 0xFF000000 | (((v72 & 0xFFFF0000) >> 16) << 48) | (v72 << 8);
                if (v73 > 0xBF)
                {
                  v75 = v74;
                }

                *(this + 6) = v58 + 3;
                *(v64 + 8 * (v58 + 2)) = v75;
              }
            }

            return;
          }

          icu::CollationIterator::appendCEsFromCE32(this, a2, 0xFFFFFFFFLL, *(v18 + 4 * v23), a5, a6);
          icu::CollationIterator::appendCEsFromCE32(this, a2, 0xFFFFFFFFLL, *(v18 + 4 * v22 + 76), a5, a6);
          if (!v21)
          {
            return;
          }

          CE32FromPrefix = *(v18 + 4 * v21 + 156);
          a3 = 0xFFFFFFFFLL;
          goto LABEL_31;
        case 0xDLL:
          v15 = (*(*this + 72))(this);
          if ((v15 & 0xFC00) == 0xDC00 && (a3 = (v15 + (a3 << 10) - 56613888), (v7 & 0x300) != 0))
          {
            if ((v7 & 0x300) == 0x100 || ((v16 = *a2, *(*a2 + 44) <= a3) ? (v17 = v16[12]) : (v17 = (v15 & 0x1F) + 4 * *(*v16 + 2 * (((a3 >> 5) & 0x3F) + *(*v16 + 2 * (a3 >> 11) + 4160)))), CE32FromPrefix = *(*(v16 + 2) + 4 * v17), CE32FromPrefix == 192))
            {
              a2 = *(a2 + 4);
              v30 = *a2;
              if (*(*a2 + 44) <= a3)
              {
                v31 = v30[12];
              }

              else
              {
                v31 = (v15 & 0x1F) + 4 * *(*v30 + 2 * (((a3 >> 5) & 0x3F) + *(*v30 + 2 * (a3 >> 11) + 4160)));
              }

              CE32FromPrefix = *(*(v30 + 2) + 4 * v31);
            }
          }

          else
          {
            CE32FromPrefix = 0xFFFFFFFFLL;
          }

          goto LABEL_31;
        case 0xELL:
          ThreeBytePrimaryForOffsetData = icu::Collation::getThreeBytePrimaryForOffsetData(a3, *(*(a2 + 2) + 8 * (v7 >> 13)));
          goto LABEL_114;
        case 0xFLL:
          if (a3 >> 11 == 27 && (*(*this + 88))(this))
          {
            LODWORD(CE32FromPrefix) = -195323;
            goto LABEL_56;
          }

          ThreeBytePrimaryForOffsetData = icu::Collation::unassignedPrimaryFromCodePoint(a3);
LABEL_114:
          v76 = ThreeBytePrimaryForOffsetData;
          v32 = *(this + 6);
          if (v32 < 40)
          {
            goto LABEL_117;
          }

          if (!icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 3), 1, a6))
          {
            return;
          }

          v32 = *(this + 6);
LABEL_117:
          v33 = (v76 << 32) | 0x5000500;
          goto LABEL_60;
        default:
          if (*a6 <= 0)
          {
            *a6 = U_INTERNAL_PROGRAM_ERROR;
          }

          return;
      }
    }
  }

  LODWORD(CE32FromPrefix) = a4;
LABEL_56:
  v32 = *(this + 6);
  if (v32 >= 40)
  {
    if (!icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 3), 1, a6))
    {
      return;
    }

    v32 = *(this + 6);
  }

  v33 = (CE32FromPrefix << 16) & 0xFF000000 | (((CE32FromPrefix & 0xFFFF0000) >> 16) << 48) | (CE32FromPrefix << 8);
LABEL_60:
  *(this + 6) = v32 + 1;
  *(this[4] + 8 * v32) = v33;
}

uint64_t icu::CollationIterator::getCE32FromPrefix(icu::CollationIterator *this, const icu::CollationData *a2, unsigned int a3, UErrorCode *a4)
{
  v6 = 0;
  v7 = (*(a2 + 3) + 2 * (a3 >> 13));
  v8 = v7[1] | (*v7 << 16);
  v16[0] = 0;
  v16[1] = v7 + 2;
  v17 = v7 + 2;
  v18 = 0xFFFFFFFFLL;
  do
  {
    v9 = (*(*this + 56))(this, a4);
    if ((v9 & 0x80000000) != 0)
    {
      break;
    }

    v10 = icu::UCharsTrie::nextForCodePoint(v16, v9);
    if (v10 >= 2)
    {
      v11 = v17 + 1;
      v12 = *v17;
      if (*v17 < 0)
      {
        v8 = v12 & 0x7FFF;
        if (v8 >= 0x4000)
        {
          if (v8 == 0x7FFF)
          {
            v14 = v17[1] << 16;
            v11 = v17 + 2;
          }

          else
          {
            v14 = (v8 << 16) - 0x40000000;
          }

          v8 = v14 | *v11;
        }
      }

      else
      {
        v13 = v12 >> 6;
        if (v13 > 0x100)
        {
          if (v13 > 0x1FE)
          {
            v8 = v17[2] | (v17[1] << 16);
          }

          else
          {
            v8 = (*v11 | ((v13 & 0x1FF) << 16)) - 16842752;
          }
        }

        else
        {
          v8 = v13 - 1;
        }
      }
    }

    v6 = (v6 + 1);
  }

  while ((v10 & 1) != 0);
  (*(*this + 96))(this, v6, a4);
  icu::UCharsTrie::~UCharsTrie(v16);
  return v8;
}

unint64_t icu::CollationIterator::nextSkippedCodePoint(icu::CollationIterator *this, UErrorCode *a2)
{
  v3 = *(this + 47);
  if (v3 && (*(v3 + 16) < 0 ? (v4 = *(v3 + 20)) : (v4 = *(v3 + 16) >> 5), *(v3 + 136) < v4))
  {
    result = icu::UnicodeString::char32At((v3 + 8), *(v3 + 136));
    if (result < 0x10000)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    *(v3 + 136) += v6;
  }

  else if (*(this + 96))
  {
    result = (*(*this + 48))(this, a2);
    v7 = *(this + 47);
    if (v7 && *(v7 + 16) >= 0x20u && (result & 0x80000000) == 0)
    {
      ++*(v7 + 136);
    }

    v8 = *(this + 96);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v10 < 0 == v9 && (result & 0x80000000) == 0)
    {
      *(this + 96) = v10;
    }
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t icu::CollationIterator::backwardNumSkipped(icu::CollationIterator *this, uint64_t a2, UErrorCode *a3)
{
  v4 = a2;
  v6 = *(this + 47);
  if (v6 && *(v6 + 16) >= 0x20u)
  {
    v4 = sub_1952D8114(v6, a2);
  }

  result = (*(*this + 104))(this, v4, a3);
  v8 = *(this + 96);
  if ((v8 & 0x80000000) == 0)
  {
    *(this + 96) = v8 + v4;
  }

  return result;
}

uint64_t icu::CollationIterator::nextCE32FromContraction(icu::CollationIterator *a1, const icu::CollationData *a2, __int16 a3, uint64_t a4, uint64_t CE32FromDiscontiguousContraction, uint64_t a6, UErrorCode *a7)
{
  LODWORD(v8) = a6;
  v26 = 0;
  *&v27 = a4;
  *(&v27 + 1) = a4;
  v28 = 0xFFFFFFFFLL;
  v12 = *(a1 + 47);
  if (v12 && *(v12 + 16) >= 0x20u)
  {
    *(v12 + 144) = a4;
    *(v12 + 152) = a4;
    *(v12 + 160) = -1;
  }

  v13 = icu::UCharsTrie::firstForCodePoint(&v26, a6);
  v14 = 1;
  v15 = 2;
  while (v13 >= 2)
  {
    v16 = (*(&v27 + 1) + 2);
    v17 = **(&v27 + 1);
    if (**(&v27 + 1) < 0)
    {
      CE32FromDiscontiguousContraction = v17 & 0x7FFF;
      if (CE32FromDiscontiguousContraction >= 0x4000)
      {
        if (CE32FromDiscontiguousContraction == 0x7FFF)
        {
          v20 = *(*(&v27 + 1) + 2) << 16;
          v16 = (*(&v27 + 1) + 4);
        }

        else
        {
          v20 = (CE32FromDiscontiguousContraction << 16) - 0x40000000;
        }

        CE32FromDiscontiguousContraction = v20 | *v16;
      }
    }

    else
    {
      v18 = v17 >> 6;
      if (v18 > 0x100)
      {
        if (v18 > 0x1FE)
        {
          CE32FromDiscontiguousContraction = *(*(&v27 + 1) + 4) | (*(*(&v27 + 1) + 2) << 16);
        }

        else
        {
          CE32FromDiscontiguousContraction = (*v16 | ((v18 & 0x1FF) << 16)) - 16842752;
        }
      }

      else
      {
        CE32FromDiscontiguousContraction = v18 - 1;
      }
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_35;
    }

    SkippedCodePoint = icu::CollationIterator::nextSkippedCodePoint(a1, a7);
    if ((SkippedCodePoint & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v8 = SkippedCodePoint;
    v22 = *(a1 + 47);
    if (v22)
    {
      if (*(v22 + 16) >= 0x20u)
      {
        *(v22 + 144) = v27;
        *(v22 + 160) = v28;
      }
    }

    v14 = 1;
LABEL_26:
    v13 = icu::UCharsTrie::nextForCodePoint(&v26, v8);
    ++v15;
  }

  if (v13)
  {
    v19 = icu::CollationIterator::nextSkippedCodePoint(a1, a7);
    if ((v19 & 0x80000000) == 0)
    {
      v14 = (v14 + 1);
      v8 = v19;
      goto LABEL_26;
    }
  }

  if ((a3 & 0x400) == 0)
  {
    goto LABEL_34;
  }

  v23 = v15 - 1;
  if ((a3 & 0x100) != 0 && v14 >= v23)
  {
    goto LABEL_34;
  }

  if (v14 >= 2)
  {
    icu::CollationIterator::backwardNumSkipped(a1, v14, a7);
    LODWORD(v8) = icu::CollationIterator::nextSkippedCodePoint(a1, a7);
    v23 = v15 - v14;
    v14 = 1;
  }

  if (sub_1951FAB08(*(a2 + 6), v8) < 0x100)
  {
LABEL_34:
    icu::CollationIterator::backwardNumSkipped(a1, v14, a7);
  }

  else
  {
    CE32FromDiscontiguousContraction = icu::CollationIterator::nextCE32FromDiscontiguousContraction(a1, a2, &v26, CE32FromDiscontiguousContraction, v23, v8, a7);
  }

LABEL_35:
  icu::UCharsTrie::~UCharsTrie(&v26);
  return CE32FromDiscontiguousContraction;
}

void icu::CollationIterator::appendNumericCEs(uint64_t **this, __int16 a2, int a3, UErrorCode *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  memset(&v26[1], 0, 48);
  v27 = 0;
  v26[0] = &v26[1] + 5;
  LODWORD(v26[1]) = 40;
  if (a3)
  {
    icu::CharString::append(v26, HIBYTE(a2) & 0xF, a4);
    while (*(this + 96))
    {
      v6 = ((*this)[6])(this, a4);
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      v7 = v6;
      v8 = sub_1952C6CA0(this[2], v6);
      if (v8 == 192)
      {
        LOWORD(v8) = sub_1952C6CA0(this[2][4], v7);
      }

      if ((v8 & 0xCF) != 0xCA)
      {
        ((*this)[13])(this, 1, a4);
        break;
      }

      v9 = *(this + 96);
      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v11 < 0 == v10)
      {
        *(this + 96) = v11;
      }

      icu::CharString::append(v26, BYTE1(v8) & 0xF, a4);
    }
  }

  else
  {
    while (1)
    {
      icu::CharString::append(v26, HIBYTE(a2) & 0xF, a4);
      v12 = ((*this)[7])(this, a4);
      if ((v12 & 0x80000000) != 0)
      {
        break;
      }

      v13 = v12;
      v14 = sub_1952C6CA0(this[2], v12);
      a2 = v14;
      if (v14 == 192)
      {
        a2 = sub_1952C6CA0(this[2][4], v13);
      }

      if ((a2 & 0xCF) != 0xCA)
      {
        ((*this)[12])(this, 1, a4);
        break;
      }
    }

    v15 = v26[0] + v27 - 1;
    if (v26[0] < v15)
    {
      v16 = v26[0] + 1;
      do
      {
        v17 = *(v16 - 1);
        *(v16 - 1) = *v15;
        *v15-- = v17;
      }

      while (v16++ < v15);
    }
  }

  if (*a4 <= 0)
  {
    v19 = 0;
    v20 = v27;
    do
    {
      if (v19 < v20 - 1)
      {
        v21 = v26[0] + v19;
        v22 = ~v19 + v20;
        while (!*v21++)
        {
          ++v19;
          if (!--v22)
          {
            v19 = v20 - 1;
            break;
          }
        }
      }

      v24 = v20 - v19;
      if (v24 >= 254)
      {
        v25 = 254;
      }

      else
      {
        v25 = v24;
      }

      icu::CollationIterator::appendNumericSegmentCEs(this, v26[0] + v19, v25, a4);
      if (*a4 > 0)
      {
        break;
      }

      v19 += v25;
      v20 = v27;
    }

    while (v19 < v27);
  }

  if (BYTE4(v26[1]))
  {
    free(v26[0]);
  }
}

uint64_t sub_1952D8114(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < 0)
  {
    v4 = *(a1 + 20);
  }

  else
  {
    v4 = *(a1 + 16) >> 5;
  }

  v5 = *(a1 + 136);
  v6 = (v5 - v4);
  if (v6 < 1)
  {
    v7 = icu::UnicodeString::moveIndex32((a1 + 8), *(a1 + 136), -a2);
    a2 = 0;
  }

  else if (v6 >= a2)
  {
    v7 = v5 - a2;
  }

  else
  {
    v7 = icu::UnicodeString::moveIndex32((a1 + 8), v4, v6 - a2);
    a2 = v6;
  }

  *(a1 + 136) = v7;
  return a2;
}

uint64_t icu::CollationIterator::nextCE32FromDiscontiguousContraction(icu::CollationIterator *this, const icu::CollationData *a2, icu::UCharsTrie *a3, uint64_t a4, int a5, unsigned int a6, UErrorCode *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  v7 = a4;
  v12 = a2;
  v14 = sub_1951FAB08(*(a2 + 6), a6);
  SkippedCodePoint = icu::CollationIterator::nextSkippedCodePoint(this, a7);
  if ((SkippedCodePoint & 0x80000000) != 0)
  {
    v18 = this;
    v19 = 1;
    goto LABEL_7;
  }

  v16 = SkippedCodePoint;
  v17 = sub_1951FAB08(*(v12 + 6), SkippedCodePoint);
  if (v17 <= 0xFF)
  {
    v18 = this;
    v19 = 2;
LABEL_7:
    icu::CollationIterator::backwardNumSkipped(v18, v19, a7);
    return v7;
  }

  v21 = v17;
  v55 = v14;
  v22 = *(this + 47);
  if (!v22)
  {
    operator new();
  }

  if (v22[1].u16[0] <= 0x1Fu)
  {
    v24 = *(a3 + 1);
    *(a3 + 2) = v24;
    v25 = -1;
    *(a3 + 6) = -1;
    if (a5 < 2)
    {
      v29 = vdupq_n_s64(v24);
    }

    else
    {
      (*(*this + 104))(this, (a5 + 1), a7);
      v26 = (*(*this + 48))(this, a7);
      icu::UCharsTrie::firstForCodePoint(a3, v26);
      v27 = a5 - 2;
      if (a5 != 2)
      {
        do
        {
          v28 = (*(*this + 48))(this, a7);
          icu::UCharsTrie::nextForCodePoint(a3, v28);
          --v27;
        }

        while (v27);
      }

      (*(*this + 96))(this, 2, a7);
      v22 = *(this + 47);
      v29 = *(a3 + 8);
      v25 = *(a3 + 6);
    }

    v22[9] = v29;
    v22[10].i32[0] = v25;
  }

  else
  {
    v23 = *(a3 + 1);
    if (v23 && v23 == v22[9].i64[0])
    {
      *(a3 + 2) = v22[9].i64[1];
      *(a3 + 6) = v22[10].i32[0];
    }
  }

  v30 = v55;
  v22[8].i32[3] = 0;
  icu::UnicodeString::unBogus(&v22[4].i64[1]);
  if (v22[5].i16[0] < 0)
  {
    v31 = v22[5].u32[1];
  }

  else
  {
    v31 = v22[5].u16[0] >> 5;
  }

  icu::UnicodeString::replace(&v22[4].u64[1], 0, v31, a6);
  v32 = 2;
  while (1)
  {
    if (HIBYTE(v21) <= v30 || (v33 = icu::UCharsTrie::nextForCodePoint(a3, v16), v33 < 2))
    {
      icu::UnicodeString::append(*(this + 47) + 72, v16);
      v38 = *(this + 47);
      v39 = *(a3 + 1);
      if (v39)
      {
        v40 = v39 == *(v38 + 144);
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        *(a3 + 2) = *(v38 + 152);
        *(a3 + 6) = *(v38 + 160);
      }

      v30 = v21;
      goto LABEL_50;
    }

    v34 = *(a3 + 2);
    v35 = v34 + 1;
    v36 = *v34;
    if (*v34 < 0)
    {
      v7 = v36 & 0x7FFF;
      if (v7 >= 0x4000)
      {
        if (v7 == 0x7FFF)
        {
          v41 = v34[1] << 16;
          v35 = v34 + 2;
        }

        else
        {
          v41 = (v7 << 16) - 0x40000000;
        }

        v7 = v41 | *v35;
      }
    }

    else
    {
      v37 = v36 >> 6;
      if (v37 > 0x100)
      {
        v7 = v37 > 0x1FE ? v34[2] | (v34[1] << 16) : (*v35 | ((v37 & 0x1FF) << 16)) - 16842752;
      }

      else
      {
        v7 = v37 - 1;
      }
    }

    v42 = *(this + 47);
    v43 = *(v42 + 80) < 0 ? *(v42 + 84) : *(v42 + 80) >> 5;
    *(v42 + 140) = v43;
    v32 = 0;
    if ((v33 & 1) == 0)
    {
      break;
    }

    *(v42 + 144) = *(a3 + 1);
    *(v42 + 152) = v34;
    *(v42 + 160) = *(a3 + 6);
LABEL_50:
    v44 = icu::CollationIterator::nextSkippedCodePoint(this, a7);
    if ((v44 & 0x80000000) == 0)
    {
      v16 = v44;
      v32 = (v32 + 1);
      v45 = sub_1951FAB08(*(v12 + 6), v44);
      v21 = v45;
      if (v45 > 0xFF)
      {
        continue;
      }
    }

    break;
  }

  icu::CollationIterator::backwardNumSkipped(this, v32, a7);
  v46 = *(this + 47);
  v47 = *(v46 + 16);
  icu::UnicodeString::doReplace((v46 + 8), 0, *(v46 + 136), (v46 + 72), 0, *(v46 + 140));
  *(v46 + 136) = 0;
  if (v47 <= 0x1F && *(*(this + 47) + 16) >= 0x20u)
  {
    v48 = 0xFFFFFFFFLL;
    while (1)
    {
      icu::CollationIterator::appendCEsFromCE32(this, v12, v48, v7, 1, a7);
      v49 = *(this + 47);
      v50 = *(v49 + 136);
      v51 = *(v49 + 16);
      v52 = *(v49 + 16) < 0 ? *(v49 + 20) : v51 >> 5;
      if (v50 >= v52)
      {
        break;
      }

      v48 = icu::UnicodeString::char32At((v49 + 8), v50);
      if (v48 < 0x10000)
      {
        v53 = 1;
      }

      else
      {
        v53 = 2;
      }

      *(v49 + 136) += v53;
      v7 = (*(*this + 112))(this, v48);
      v12 = *(this + 2);
      if (v7 == 192)
      {
        v12 = *(v12 + 4);
        v7 = sub_1952C6CA0(v12, v48);
      }
    }

    if (v51)
    {
      v54 = 2;
    }

    else
    {
      v54 = *(v49 + 16) & 0x1E;
    }

    *(v49 + 16) = v54;
    *(v49 + 136) = 0;
    return 1;
  }

  return v7;
}

uint64_t icu::CollationIterator::appendNumericSegmentCEs(uint64_t this, const char *a2, int a3, UErrorCode *a4)
{
  v5 = this;
  v6 = *(*(this + 16) + 56);
  if (a3 <= 7)
  {
    v7 = *a2;
    if (a3 >= 2)
    {
      v8 = a2 + 1;
      v9 = a3 - 1;
      do
      {
        v10 = *v8++;
        v7 = v10 + 10 * v7;
        --v9;
      }

      while (v9);
    }

    v11 = v7 - 74;
    if (v7 < 74)
    {
      v12 = ((v7 << 16) + 0x20000) | v6;
      goto LABEL_31;
    }

    if (v7 <= 0x27F9)
    {
      v13 = ((v11 % 0xFEu) << 8) + 512;
      v14 = (((v11 / 0xFEu) << 16) + 4980736) | v6;
LABEL_11:
      v12 = v13 | v14;
      goto LABEL_31;
    }

    if (v7 <= 0xFE839)
    {
      v15 = v7 - 10234;
      v14 = ((v15 / 0xFE + (((33027 * ((v15 / 0xFE) >> 1)) >> 21) & 0xFE)) << 8) + 512;
      v13 = (v15 % 0xFE + ((v15 / 0xFC04) << 16) + 7602178) | v6;
      goto LABEL_11;
    }
  }

  v16 = v6 | ((((a3 + 1 + ((a3 + 1) >> 31)) << 15) & 0xFFFF0000) + 0x800000);
  v17 = &a2[a3 - 1];
  v18 = v17;
  do
  {
    v19 = a3;
    v20 = *v18;
    v18 -= 2;
    if (v20)
    {
      break;
    }

    v21 = *(v17 - 1);
    a3 -= 2;
    v17 = v18;
  }

  while (!v21);
  v22 = *a2;
  if (v19)
  {
    v23 = 1;
  }

  else
  {
    v22 = a2[1] + 10 * v22;
    v23 = 2;
  }

  v24 = 2 * v22;
  if (v23 < v19)
  {
    v25 = &a2[v23 + 1];
    v26 = 8;
    while (1)
    {
      v27 = v24 + 11;
      if (!v26)
      {
        break;
      }

      v16 |= v27 << v26;
      v26 -= 8;
LABEL_27:
      v24 = 2 * (*v25 + 10 * *(v25 - 1));
      v25 += 2;
      v23 += 2;
      if (v23 >= v19)
      {
        goto LABEL_30;
      }
    }

    v28 = *(v5 + 24);
    if (v28 >= 40)
    {
      this = icu::CollationIterator::CEBuffer::ensureAppendCapacity((v5 + 24), 1, a4);
      if (!this)
      {
LABEL_26:
        v26 = 16;
        v16 = v6;
        goto LABEL_27;
      }

      v28 = *(v5 + 24);
    }

    *(v5 + 24) = v28 + 1;
    *(*(v5 + 32) + 8 * v28) = ((v27 | v16) << 32) | 0x5000500;
    goto LABEL_26;
  }

  LOBYTE(v26) = 8;
LABEL_30:
  v12 = ((v24 + 10) << v26) | v16;
LABEL_31:
  v29 = *(v5 + 24);
  v30 = (v12 << 32) | 0x5000500;
  if (v29 >= 40)
  {
    this = icu::CollationIterator::CEBuffer::ensureAppendCapacity((v5 + 24), 1, a4);
    if (!this)
    {
      return this;
    }

    v29 = *(v5 + 24);
  }

  *(v5 + 24) = v29 + 1;
  *(*(v5 + 32) + 8 * v29) = v30;
  return this;
}

uint64_t icu::CollationIterator::previousCE(icu::CollationIterator *this, icu::UVector32 *a2, UErrorCode *a3)
{
  v4 = *(this + 6);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v6 < 0 != v5)
  {
    icu::UVector32::removeAllElements(a2);
    v10 = (*(*this + 40))(this);
    v11 = (*(*this + 56))(this, a3);
    if ((v11 & 0x80000000) != 0)
    {
      return 0x101000100;
    }

    else
    {
      v12 = v11;
      if (sub_1952D8C08(*(this + 2), v11, *(this + 388)))
      {

        return icu::CollationIterator::previousCEUnsafe(this, v13, a2, a3);
      }

      else
      {
        v14 = sub_1952C6CA0(*(this + 2), v12);
        v15 = *(this + 2);
        if (v14 == 192)
        {
          v15 = v15[4];
          v14 = sub_1952C6CA0(v15, v12);
        }

        v16 = v14 & 0xF;
        if ((~v14 & 0xC0) != 0 || (v14 & 0xF) - 3 >= 0xFFFFFFFE)
        {
          if (v14 > 0xBFu)
          {
            result = v14 & 0xFFFFFF00;
            if (v16 == 1)
            {
              return (result << 32) | 0x5000500;
            }
          }

          else
          {
            return (v14 << 16) & 0xFF000000 | (((v14 & 0xFFFF0000) >> 16) << 48) | (v14 << 8);
          }
        }

        else
        {
          icu::CollationIterator::appendCEsFromCE32(this, v15, v12, v14, 0, a3);
          if (*a3 <= 0)
          {
            v18 = *(this + 6);
            if (v18 >= 2)
            {
              v19 = (*(*this + 40))(this);
              sub_1951D6BD0(a2, v19, a3);
              v20 = *(a2 + 2);
              while (1)
              {
                v18 = *(this + 6);
                if (v20 > v18)
                {
                  break;
                }

                if (v20 < -1 || *(a2 + 3) <= v20)
                {
                  v21 = icu::UVector32::expandCapacity(a2, v20 + 1, a3);
                  v20 = *(a2 + 2);
                  if (!v21)
                  {
                    continue;
                  }
                }

                *(*(a2 + 3) + 4 * v20) = v10;
                v20 = *(a2 + 2) + 1;
                *(a2 + 2) = v20;
              }
            }

            *(this + 6) = v18 - 1;
            return *(*(this + 4) + 8 * (v18 - 1));
          }

          else
          {
            return 1;
          }
        }
      }
    }
  }

  else
  {
    *(this + 6) = v6;
    return *(*(this + 4) + 8 * v6);
  }

  return result;
}

BOOL sub_1952D8C08(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (icu::UnicodeSet::contains(*(a1 + 80), a2))
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  if (v4 > 1631)
  {
    return (sub_1952C6CA0(a1, v4) & 0xCF) == 202;
  }

  return (v4 - 48) < 0xA;
}

uint64_t icu::CollationIterator::previousCEUnsafe(icu::CollationIterator *this, int a2, icu::UVector32 *a3, UErrorCode *a4)
{
  v7 = 1;
  do
  {
    v8 = (*(*this + 56))(this, a4);
    if ((v8 & 0x80000000) != 0)
    {
      break;
    }

    v7 = (v7 + 1);
  }

  while (sub_1952D8C08(*(this + 2), v8, *(this + 388)));
  *(this + 96) = v7;
  *(this + 92) = 0;
  v9 = (*(*this + 40))(this);
  v10 = *(this + 96);
  if (v10 > 0)
  {
    while (1)
    {
      *(this + 96) = v10 - 1;
      sub_1952C5F10(this, a4);
      *(this + 92) = *(this + 6);
      v11 = *(a3 + 2);
      if (v11 < -1 || *(a3 + 3) <= v11)
      {
        if (!icu::UVector32::expandCapacity(a3, v11 + 1, a4))
        {
          goto LABEL_13;
        }

        v11 = *(a3 + 2);
      }

      *(*(a3 + 3) + 4 * v11) = v9;
      ++*(a3 + 2);
LABEL_13:
      v9 = (*(*this + 40))(this);
      v13 = *(a3 + 2);
      while (v13 < *(this + 6))
      {
        if (v13 < -1 || *(a3 + 3) <= v13)
        {
          v14 = icu::UVector32::expandCapacity(a3, v13 + 1, a4);
          v13 = *(a3 + 2);
          if (!v14)
          {
            continue;
          }
        }

        *(*(a3 + 3) + 4 * v13) = v9;
        v13 = *(a3 + 2) + 1;
        *(a3 + 2) = v13;
      }

      v10 = *(this + 96);
      if (v10 < 1)
      {
        goto LABEL_22;
      }
    }
  }

  v13 = *(a3 + 2);
LABEL_22:
  if (v13 < -1 || *(a3 + 3) <= v13)
  {
    if (!icu::UVector32::expandCapacity(a3, v13 + 1, a4))
    {
      goto LABEL_27;
    }

    v13 = *(a3 + 2);
  }

  *(*(a3 + 3) + 4 * v13) = v9;
  ++*(a3 + 2);
LABEL_27:
  *(this + 96) = -1;
  (*(*this + 104))(this, v7, a4);
  *(this + 92) = 0;
  if (*a4 > 0)
  {
    return 1;
  }

  v16 = *(this + 6) - 1;
  *(this + 6) = v16;
  return *(*(this + 4) + 8 * v16);
}

_DWORD *sub_1952D8EE4(_DWORD *result, char *a2, size_t __n)
{
  if (a2 && __n >= 1)
  {
    v3 = result[6];
    if (v3 >= 1)
    {
      result[6] = (v3 - __n) & ~((v3 - __n) >> 31);
      if (((v3 - __n) & 0x80000000) == 0)
      {
        return result;
      }

      a2 += v3;
      LODWORD(__n) = __n - v3;
    }

    v4 = result[5];
    result[5] = v4 + __n;
    if ((*(result + 1) + v4) != a2)
    {
      if (__n <= result[4] - v4)
      {
        return memcpy((*(result + 1) + v4), a2, __n);
      }

      else
      {
        return (*(*result + 40))();
      }
    }
  }

  return result;
}

uint64_t sub_1952D8F74(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  if (a2 < 1 || a5 < a2)
  {
    a4 = 0;
    *a6 = 0;
    return a4;
  }

  if (*(a1 + 24) < 1)
  {
    v10 = *(a1 + 16) - *(a1 + 20);
    if (v10 >= a2)
    {
      *a6 = v10;
    }

    else
    {
      if (!(*(*a1 + 48))(a1, a3, *(a1 + 20)))
      {
        goto LABEL_4;
      }

      *a6 = *(a1 + 16) - *(a1 + 20);
    }

    return *(a1 + 8) + *(a1 + 20);
  }

LABEL_4:
  *a6 = a5;
  return a4;
}

void icu::CollationKeys::writeSortKeyUpToQuaternary(icu::CollationIterator::CEBuffer *this, uint64_t a2, uint64_t a3, _DWORD *a4, char a5, uint64_t a6, int a7, UErrorCode *a8)
{
  v133 = *MEMORY[0x1E69E9840];
  if (*a8 > 0)
  {
    return;
  }

  v9 = *(a3 + 24);
  v10 = (v9 >> 7) & 8 | dword_195489530[v9 >> 12];
  v11 = v10 & (-1 << a5);
  if ((v10 & (-1 << a5)) == 0)
  {
    return;
  }

  v14 = 0;
  v104 = 0;
  v15 = 0;
  v116 = 0;
  v118 = 0;
  v121 = 0;
  v16 = *(a3 + 28);
  memset(&v131[1], 0, 48);
  v132 = 0;
  LODWORD(v131[1]) = 40;
  v106 = v9 & 0xC;
  v107 = 0;
  if ((v9 & 0xC) != 0)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v132) = 0;
  v109 = v9;
  BYTE4(v132) = 1;
  v105 = v9 & 0x600;
  v129[0] = 0uLL;
  if (v105 == 512)
  {
    v18 = 65343;
  }

  else
  {
    v18 = 16191;
  }

  v108 = v18;
  v130 = 0x100000000;
  v131[0] = &v131[1] + 5;
  memset(&v129[1], 0, 32);
  v128 = v129 + 5;
  LODWORD(v129[0]) = 40;
  memset(&v126[1], 0, 48);
  v127 = 0x100000000;
  v125 = 0x100000000;
  v126[0] = &v126[1] + 5;
  LODWORD(v126[1]) = 40;
  memset(&v124[1], 0, 48);
  v124[0] = &v124[1] + 5;
  LODWORD(v124[1]) = 40;
  do
  {
    v117 = v14;
    do
    {
      if (*(this + 92) == *(this + 6))
      {
        *(this + 6) = 0;
        *(this + 92) = 0;
      }

      v19 = sub_1952C5F10(this, a8);
      v20 = HIDWORD(v19);
      if (v19 > 0x2000000FFFFFFFFLL && v17 > HIDWORD(v19))
      {
        if (v15)
        {
          if (v15 < 114)
          {
            v22 = v15 - 1;
          }

          else
          {
            v21 = v15 + 112;
            do
            {
              sub_1952D9DE8(v124, 140);
              v21 -= 113;
            }

            while (v21 > 0xE1);
            v22 = v21 - 113;
          }

          sub_1952D9DE8(v124, v22 + 28);
        }

        while (1)
        {
          if ((v11 & 0x20) != 0)
          {
            v23 = *(a3 + 32);
            if (v23)
            {
              v24 = *(v23 + (v20 >> 24));
              if (v20 < 2 || v24)
              {
                LODWORD(v20) = v20 & 0xFFFFFF | (v24 << 24);
              }

              else
              {
                LODWORD(v20) = icu::CollationSettings::reorderEx(a3, v20);
              }
            }

            if (BYTE3(v20) >= 0x1Bu)
            {
              sub_1952D9DE8(v124, 27);
            }

            if (v20)
            {
              v25 = 4;
            }

            else
            {
              v25 = 3;
            }

            if ((v20 & 0xFF00) == 0)
            {
              v25 = 2;
            }

            if ((v20 & 0xFF0000) != 0)
            {
              v26 = v25;
            }

            else
            {
              v26 = 1;
            }

            v27 = v125;
            if (v125 + v26 <= SLODWORD(v124[1]))
            {
              goto LABEL_42;
            }

            if (sub_1952D9F54(v124, v26))
            {
              break;
            }
          }

          do
          {
LABEL_46:
            v31 = sub_1952C5F10(this, a8);
            v20 = HIDWORD(v31);
          }

          while (!HIDWORD(v31));
          LODWORD(v19) = v31;
          v15 = 0;
          if (v31 <= 0x2000000FFFFFFFFLL || v17 <= HIDWORD(v31))
          {
            goto LABEL_49;
          }
        }

        v27 = v125;
LABEL_42:
        LODWORD(v125) = v27 + 1;
        *(v124[0] + v27) = BYTE3(v20);
        if ((v20 & 0xFF0000) != 0)
        {
          v28 = v125;
          LODWORD(v125) = v125 + 1;
          *(v124[0] + v28) = BYTE2(v20);
          if ((v20 & 0xFF00) != 0)
          {
            v29 = v125;
            LODWORD(v125) = v125 + 1;
            *(v124[0] + v29) = BYTE1(v20);
            if (v20)
            {
              v30 = v125;
              LODWORD(v125) = v125 + 1;
              *(v124[0] + v30) = v20;
            }
          }
        }

        goto LABEL_46;
      }

LABEL_49:
      if ((v11 & 2) != 0 && v20 >= 2)
      {
        v32 = v20 >> 24;
        v33 = *(a2 + v32);
        v34 = *(a3 + 32);
        if (v34)
        {
          v35 = *(v34 + v32);
          if (v35)
          {
            LODWORD(v20) = v20 & 0xFFFFFF | (v35 << 24);
          }

          else
          {
            LODWORD(v20) = icu::CollationSettings::reorderEx(a3, v20);
          }
        }

        v36 = BYTE3(v20);
        if (v33)
        {
          v37 = v36 == HIBYTE(v121);
        }

        else
        {
          v37 = 0;
        }

        if (v37)
        {
LABEL_69:
          if ((v20 & 0xFF0000) != 0)
          {
            v123[0] = BYTE2(v20);
            v123[1] = BYTE1(v20);
            v123[2] = v20;
            if (v20)
            {
              v40 = 3;
            }

            else
            {
              v40 = 2;
            }

            if ((v20 & 0xFF00) != 0)
            {
              v41 = v40;
            }

            else
            {
              v41 = 1;
            }

            (*(*a4 + 16))(a4, v123, v41);
          }

          if (!a7 && a4[5] > a4[4])
          {
            if (*a8 <= 0)
            {
              goto LABEL_247;
            }

            goto LABEL_249;
          }

          continue;
        }

        if (v121)
        {
          if (v20 >= v121)
          {
            v38 = -1;
            goto LABEL_64;
          }

          if (v36 >= 3)
          {
            v38 = 3;
LABEL_64:
            sub_1952D9E40(a4, v38);
          }
        }

        sub_1952D9E40(a4, SBYTE3(v20));
        if (v33)
        {
          v39 = v20;
        }

        else
        {
          v39 = 0;
        }

        v121 = v39;
        goto LABEL_69;
      }
    }

    while (!v19);
    v42 = BYTE3(v19);
    if ((v11 & 4) == 0)
    {
      goto LABEL_81;
    }

    v43 = v118;
    if (v19 < 0x10000)
    {
LABEL_93:
      if ((v11 & 8) == 0)
      {
        goto LABEL_165;
      }

      goto LABEL_94;
    }

    v44 = WORD1(v19);
    v46 = (v109 & 0x800) == 0 || v20 != 0x2000000;
    if (v44 == 1280 && v46)
    {
      ++v107;
      goto LABEL_93;
    }

    if ((v109 & 0x800) == 0)
    {
      if (v107)
      {
        if (v107 < 34)
        {
          v51 = v107 - 1;
        }

        else
        {
          v50 = v107 + 32;
          do
          {
            sub_1952D9DE8(&v128, 37);
            v50 -= 33;
          }

          while (v50 > 0x41);
          v51 = v50 - 33;
          v42 = BYTE3(v19);
        }

        v66 = v51 + 5;
        v67 = 69 - v51;
        if (v42 >= 5)
        {
          v68 = v67;
        }

        else
        {
          v68 = v66;
        }

        sub_1952D9DE8(&v128, v68);
        LOWORD(v44) = WORD1(v19);
      }

      sub_1952D9ECC(&v128, v44);
      v107 = 0;
      goto LABEL_81;
    }

    if (v107)
    {
      v54 = (v107 - 1) % 33;
      if (v104 >= 0x500)
      {
        v55 = 69 - v54;
      }

      else
      {
        v55 = v54 + 5;
      }

      sub_1952D9DE8(&v128, v55);
      v56 = 33 * ((v107 - 1) / 33);
      if (v56 >= 1)
      {
        v57 = v107 - v54 + 32;
        do
        {
          sub_1952D9DE8(&v128, 37);
          v57 -= 33;
          v56 = v57 - 33;
        }

        while (v57 > 0x21);
      }

      v107 = v56;
      v44 = WORD1(v19);
    }

    else
    {
      v107 = 0;
    }

    if ((v20 - 1) >> 25)
    {
      if ((v19 & 0xFF0000) != 0)
      {
        v62 = 2;
      }

      else
      {
        v62 = 1;
      }

      v63 = v130;
      if (v130 + v62 <= SLODWORD(v129[0]))
      {
LABEL_144:
        if ((v19 & 0xFF0000) != 0)
        {
          v128[v63] = v44;
          v128[v130 + 1] = BYTE3(v19);
          LODWORD(v130) = v130 + 2;
        }

        else
        {
          LODWORD(v130) = v63 + 1;
          v128[v63] = BYTE3(v19);
        }

        v104 = v44;
      }

      else
      {
        v102 = v44;
        if (sub_1952D9F54(&v128, v62))
        {
          v63 = v130;
          v44 = v102;
          goto LABEL_144;
        }

        v104 = v102;
      }

      v43 = v118;
      v42 = BYTE3(v19);
      if ((v11 & 8) == 0)
      {
        goto LABEL_165;
      }

LABEL_94:
      if (v109 > 0xFFF)
      {
        if (v19 < 0x10000)
        {
          goto LABEL_165;
        }
      }

      else if (!v20)
      {
        goto LABEL_165;
      }

      v47 = BYTE1(v19);
      if ((v19 & 0xC000) == 0 && BYTE1(v19) >= 2u)
      {
        ++v43;
        goto LABEL_165;
      }

      if ((v109 & 0x100) != 0)
      {
        if (v43)
        {
          if (v43 < 14)
          {
            v53 = v43 - 1;
          }

          else
          {
            v111 = v42;
            v52 = v43 + 12;
            do
            {
              sub_1952D9DE8(v131, 48);
              v52 -= 13;
            }

            while (v52 > 0x19);
            v53 = v52 - 13;
            v42 = v111;
          }

          sub_1952D9DE8(v131, 16 * v53 + 48);
        }

        v64 = BYTE1(v19) >= 2u;
        v65 = ~(v19 >> 10) & 0x30;
      }

      else
      {
        if (v43)
        {
          if (BYTE1(v19) <= 1u && !v132)
          {
LABEL_164:
            sub_1952D9DE8(v131, v47);
            v43 = v118;
            goto LABEL_165;
          }

          if (v43 < 8)
          {
            v49 = v43 - 1;
          }

          else
          {
            v110 = v42;
            v48 = v43 + 6;
            do
            {
              sub_1952D9DE8(v131, 112);
              v48 -= 7;
            }

            while (v48 > 0xD);
            v49 = v48 - 7;
            v42 = v110;
          }

          if (BYTE1(v19) < 2u)
          {
            v69 = v49 + 1;
          }

          else
          {
            v69 = 13 - v49;
          }

          sub_1952D9DE8(v131, 16 * v69);
        }

        v64 = BYTE1(v19) >= 2u;
        v65 = ((v19 >> 10) & 0x30) + 208;
      }

      v118 = 0;
      if (v64)
      {
        v47 = v65;
      }

      goto LABEL_164;
    }

    v42 = BYTE3(v19);
    if (v117 < v130 - 1)
    {
      v58 = &v128[v117];
      v59 = &v128[v130 - 2];
      do
      {
        v60 = *v58;
        *v58++ = v59[1];
        v59[1] = v60;
        v64 = v58 >= v59--;
      }

      while (!v64);
    }

    if (v20 == 1)
    {
      v61 = 1;
    }

    else
    {
      v61 = 2;
    }

    sub_1952D9DE8(&v128, v61);
    v104 = 0;
    v117 = v130;
LABEL_81:
    v43 = v118;
    if ((v11 & 8) != 0)
    {
      goto LABEL_94;
    }

LABEL_165:
    v118 = v43;
    if ((v11 & 0x10) == 0)
    {
      v70 = v116;
      v14 = v117;
      goto LABEL_216;
    }

    v71 = v108 & v19;
    v72 = v116;
    if ((v108 & v19) != 0x500)
    {
      if (v105 == 512)
      {
        if ((v109 & 0x100) == 0)
        {
          if (v116)
          {
            if (v116 < 34)
            {
              v74 = v116 - 1;
            }

            else
            {
              v112 = v42;
              v73 = v116 + 32;
              do
              {
                sub_1952D9DE8(v126, 37);
                v73 -= 33;
              }

              while (v73 > 0x41);
              v74 = v73 - 33;
              v42 = v112;
            }

            v81 = v74 + 5;
            v82 = 69 - v74;
            if (v71 >= 0x500)
            {
              v83 = v82;
            }

            else
            {
              v83 = v81;
            }

            sub_1952D9DE8(v126, v83);
          }

          v80 = v71 + 0x4000;
          goto LABEL_199;
        }

        if (v71 >= 0x101)
        {
          if (v19 < 0x10000)
          {
            v71 += 0x4000;
          }

          else
          {
            if ((v71 ^ 0xC000) >> 8 >= 0xC5)
            {
              v71 ^= 0xC000u;
            }

            else
            {
              v71 = (v71 ^ 0xC000) - 0x4000;
            }

            v72 = v116;
          }
        }

        if (v72)
        {
          if (v72 < 34)
          {
            v86 = v72 - 1;
          }

          else
          {
            v114 = v42;
            v85 = v72 + 32;
            do
            {
              sub_1952D9DE8(v126, 165);
              v85 -= 33;
            }

            while (v85 > 0x41);
            v86 = v85 - 33;
            v42 = v114;
          }

          v87 = v86 - 123;
          v88 = -59 - v86;
          if (v71 >> 8 >= 0x85)
          {
            v89 = v88;
          }

          else
          {
            v89 = v87;
          }

          sub_1952D9DE8(v126, v89);
        }

        v84 = v71;
      }

      else
      {
        if (v116)
        {
          if (v116 < 98)
          {
            v76 = v116 - 1;
          }

          else
          {
            v113 = v42;
            v75 = v116 + 96;
            do
            {
              sub_1952D9DE8(v126, 101);
              v75 -= 97;
            }

            while (v75 > 0xC1);
            v76 = v75 - 97;
            v42 = v113;
          }

          v77 = v76 + 5;
          v78 = -59 - v76;
          if (v71 >= 0x500)
          {
            v79 = v78;
          }

          else
          {
            v79 = v77;
          }

          sub_1952D9DE8(v126, v79);
        }

        v80 = v71 - 0x4000;
LABEL_199:
        if (v71 <= 0x500)
        {
          v84 = v108 & v19;
        }

        else
        {
          v84 = v80;
        }
      }

      sub_1952D9ECC(v126, v84);
      v70 = 0;
      goto LABEL_215;
    }

    v70 = v116 + 1;
LABEL_215:
    v14 = v117;
LABEL_216:
    v116 = v70;
    if ((v11 & 0x20) != 0)
    {
      v115 = v42;
      v90 = v19;
      if ((v19 & 0xC0) != 0 || v19 < 0x101u)
      {
        if (v106 || v19 != 256 || v125)
        {
          if (v19 == 256)
          {
            v91 = 1;
          }

          else
          {
            v91 = (v19 >> 6) | 0xFC;
          }

          if (v15)
          {
            if (v15 < 114)
            {
              v93 = v15 - 1;
            }

            else
            {
              v92 = v15 + 112;
              do
              {
                sub_1952D9DE8(v124, 140);
                v92 -= 113;
              }

              while (v92 > 0xE1);
              v93 = v92 - 113;
            }

            v94 = v93 + 28;
            v95 = -4 - v93;
            if (v90 == 256)
            {
              v96 = v94;
            }

            else
            {
              v96 = v95;
            }

            sub_1952D9DE8(v124, v96);
          }

          sub_1952D9DE8(v124, v91);
          v15 = 0;
        }

        else
        {
          sub_1952D9DE8(v124, 1);
        }
      }

      else
      {
        ++v15;
      }

      v42 = v115;
    }
  }

  while (v42 != 1);
  if (*a8 > 0)
  {
    goto LABEL_249;
  }

  if ((v11 & 4) != 0)
  {
    if (!(*(*a6 + 16))(a6, 2))
    {
      goto LABEL_249;
    }

    v97 = BYTE4(v130) & 1;
    sub_1952D9E40(a4, 1);
    (*(*a4 + 16))(a4, v128, (v130 - 1));
  }

  else
  {
    v97 = 1;
  }

  if ((v11 & 8) != 0)
  {
    if (!(*(*a6 + 16))(a6, 3))
    {
      goto LABEL_249;
    }

    v97 = (BYTE4(v132) & v97);
    sub_1952D9E40(a4, 1);
    if (v132 >= 2)
    {
      v98 = 0;
      v99 = 0;
      v100 = (v132 - 1);
      do
      {
        v101 = *(v131[0] + v98);
        if (v99)
        {
          sub_1952D9E40(a4, v99 | (*(v131[0] + v98) >> 4));
          v101 = 0;
        }

        ++v98;
        v99 = v101;
      }

      while (v100 != v98);
      if (v101)
      {
        sub_1952D9E40(a4, v101);
      }
    }
  }

  if ((v11 & 0x10) != 0)
  {
    if (!(*(*a6 + 16))(a6, 4))
    {
      goto LABEL_249;
    }

    v97 = (BYTE4(v127) & v97);
    sub_1952D9E40(a4, 1);
    (*(*a4 + 16))(a4, v126[0], (v127 - 1));
  }

  if ((v11 & 0x20) != 0)
  {
    if (!(*(*a6 + 16))(a6, 5))
    {
      goto LABEL_249;
    }

    v97 = (BYTE4(v125) & v97);
    sub_1952D9E40(a4, 1);
    (*(*a4 + 16))(a4, v124[0], (v125 - 1));
  }

  if (v97)
  {
LABEL_247:
    if (*(a4 + 1))
    {
      goto LABEL_249;
    }
  }

  *a8 = U_MEMORY_ALLOCATION_ERROR;
LABEL_249:
  if (BYTE4(v124[1]))
  {
    free(v124[0]);
  }

  if (BYTE4(v126[1]))
  {
    free(v126[0]);
  }

  if (BYTE4(v129[0]))
  {
    free(v128);
  }

  if (BYTE4(v131[1]))
  {
    free(v131[0]);
  }
}

uint64_t sub_1952D9DE8(uint64_t result, char a2)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4 >= *(result + 8))
  {
    result = sub_1952D9F54(result, 1);
    if (!result)
    {
      return result;
    }

    v4 = *(v3 + 56);
  }

  *(v3 + 56) = v4 + 1;
  *(*v3 + v4) = a2;
  return result;
}

_DWORD *sub_1952D9E40(_DWORD *result, char a2)
{
  v2 = result;
  v3 = result[6];
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v5 < 0 == v4)
  {
    result[6] = v5;
    return result;
  }

  v7 = result[5];
  if (v7 < result[4])
  {
    goto LABEL_6;
  }

  result = (*(*result + 48))(result, 1);
  if (result)
  {
    v7 = v2[5];
LABEL_6:
    *(*(v2 + 1) + v7) = a2;
  }

  ++v2[5];
  return result;
}

uint64_t sub_1952D9ECC(uint64_t result, __int16 a2)
{
  v3 = result;
  v4 = a2;
  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(result + 56);
  if (v6 + v5 > *(result + 8))
  {
    result = sub_1952D9F54(result, v5);
    if (!result)
    {
      return result;
    }

    v6 = *(v3 + 56);
  }

  *(v3 + 56) = v6 + 1;
  *(*v3 + v6) = HIBYTE(a2);
  if (v4)
  {
    v7 = *(v3 + 56);
    *(v3 + 56) = v7 + 1;
    *(*v3 + v7) = a2;
  }

  return result;
}

uint64_t sub_1952D9F54(uint64_t a1, int a2)
{
  if (!*(a1 + 60))
  {
    return 0;
  }

  v3 = 2 * *(a1 + 8);
  v4 = *(a1 + 56);
  if (v3 <= v4 + 2 * a2)
  {
    v3 = v4 + 2 * a2;
  }

  if (v3 <= 200)
  {
    v5 = 200;
  }

  else
  {
    v5 = v3;
  }

  result = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (result)
  {
    v7 = result;
    if (v4 >= 1)
    {
      v8 = *(a1 + 8);
      if (v8 >= v4)
      {
        v8 = v4;
      }

      if (v8 >= v5)
      {
        v8 = v5;
      }

      memcpy(result, *a1, v8);
    }

    if (*(a1 + 12))
    {
      free(*a1);
    }

    *a1 = v7;
    *(a1 + 8) = v5;
    result = 1;
    *(a1 + 12) = 1;
  }

  else
  {
    *(a1 + 60) = 0;
  }

  return result;
}

void *icu::CollationRoot::loadFromFile(icu::CollationRoot *this, char *a2, UErrorCode *a3)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v8 = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  if (!uprv_mapFile(v6, this, a2))
  {
    result = 0;
    v5 = 2;
    goto LABEL_10;
  }

  if (__PAIR64__(*(*(&v6[0] + 1) + 3), *(*(&v6[0] + 1) + 2)) != 0x27000000DALL || !icu::CollationDataReader::isAcceptable(0, "icu", "ucadata", (*(&v6[0] + 1) + 4)))
  {
    result = 0;
    v5 = 3;
LABEL_10:
    *a2 = v5;
    return result;
  }

  result = UDataMemory_createNewInstance(a2);
  if (*a2 > 0)
  {
    return 0;
  }

  result[1] = *(&v6[0] + 1);
  *(result + 2) = v7;
  return result;
}

void icu::CollationRoot::load(icu::CollationRoot *this, char *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }
}

uint64_t sub_1952DA29C()
{
  if (qword_1ED442B88)
  {
    icu::SharedObject::removeRef(qword_1ED442B88);
    qword_1ED442B88 = 0;
  }

  atomic_store(0, dword_1ED442B90);
  return 1;
}

uint64_t icu::CollationRoot::getRootCacheEntry(icu::CollationRoot *this, UErrorCode *a2)
{
  sub_1951D10A4(dword_1ED442B90, icu::CollationRoot::load, 0, this);
  if (*this >= 1)
  {
    return 0;
  }

  else
  {
    return qword_1ED442B88;
  }
}

uint64_t icu::CollationRoot::getRoot(icu::CollationRoot *this, UErrorCode *a2)
{
  sub_1951D10A4(dword_1ED442B90, icu::CollationRoot::load, 0, this);
  result = 0;
  if (*this <= 0)
  {
    return *(qword_1ED442B88 + 248);
  }

  return result;
}

uint64_t icu::CollationRoot::getData(icu::CollationRoot *this, UErrorCode *a2)
{
  sub_1951D10A4(dword_1ED442B90, icu::CollationRoot::load, 0, this);
  result = 0;
  if (*this <= 0)
  {
    return *(*(qword_1ED442B88 + 248) + 24);
  }

  return result;
}

uint64_t icu::CollationRoot::getSettings(icu::CollationRoot *this, UErrorCode *a2)
{
  sub_1951D10A4(dword_1ED442B90, icu::CollationRoot::load, 0, this);
  result = 0;
  if (*this <= 0)
  {
    return *(*(qword_1ED442B88 + 248) + 32);
  }

  return result;
}

void *sub_1952DA480(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0938628;
  icu::Locale::Locale((a1 + 3), a2);
  a1[31] = a3;
  if (a3)
  {
    icu::SharedObject::addRef(a3);
  }

  return a1;
}

unint64_t icu::CollationRootElements::lastCEWithPrimaryBefore(icu::CollationRootElements *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = icu::CollationRootElements::findP(this, a2);
  v5 = *this;
  v6 = (*this + 4 * v4);
  v7 = *v6 & 0xFFFFFF00;
  if (v7 == a2)
  {
    v8 = *(v6 - 1);
    if ((v8 & 0x80) != 0)
    {
      v13 = (v5 + 4 * (v4 - 2));
      do
      {
        v15 = *v13--;
        v14 = v15;
      }

      while ((v15 & 0x80) != 0);
      v7 = v14 & 0xFFFFFF00;
    }

    else
    {
      v7 = v8 & 0xFFFFFF00;
      v8 = 83887360;
    }
  }

  else
  {
    v10 = 83887360;
    v11 = (v5 + 4 * v4 + 4);
    do
    {
      v8 = v10;
      v12 = *v11++;
      v10 = v12;
    }

    while ((v12 & 0x80) != 0);
  }

  return v8 & 0xFFFFFF7F | (v7 << 32);
}

uint64_t icu::CollationRootElements::findP(icu::CollationRootElements *this, unsigned int a2)
{
  v3 = *this;
  result = *(*this + 8);
  v5 = *(this + 2) - 1;
  while (result + 1 < v5)
  {
    LODWORD(v6) = (v5 + result) / 2;
    v7 = *(v3 + 4 * v6);
    if ((v7 & 0x80) != 0)
    {
      if (v6 + 1 == v5)
      {
LABEL_8:
        LODWORD(v6) = v6 - 1;
        if (v6 == result)
        {
          return result;
        }

        v6 = v6;
        while (1)
        {
          v7 = *(v3 + 4 * v6);
          if ((v7 & 0x80) == 0)
          {
            break;
          }

          if (result == --v6)
          {
            return result;
          }
        }
      }

      else
      {
        v8 = ((v5 + result + ((v5 + result) >> 31)) >> 1) + 1;
        while (1)
        {
          v7 = *(v3 + 4 * v8);
          if ((v7 & 0x80) == 0)
          {
            break;
          }

          if (v5 == ++v8)
          {
            goto LABEL_8;
          }
        }

        LODWORD(v6) = v8;
      }
    }

    v9 = v7 & 0xFFFFFF00;
    if (v9 <= a2)
    {
      result = v6;
    }

    else
    {
      result = result;
    }

    if (v9 > a2)
    {
      v5 = v6;
    }
  }

  return result;
}

uint64_t icu::CollationRootElements::firstCEWithPrimaryAtLeast(icu::CollationRootElements *this, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = icu::CollationRootElements::findP(this, a2);
  if ((*(*this + 4 * v4) & 0xFFFFFF00) != v2)
  {
    v5 = (*this + 4 * v4 + 4);
    do
    {
      v6 = *v5++;
      v2 = v6;
    }

    while ((v6 & 0x80) != 0);
  }

  return (v2 << 32) | 0x5000500;
}

uint64_t icu::CollationRootElements::getPrimaryBefore(icu::CollationRootElements *this, icu::Collation *a2, int a3)
{
  v6 = icu::CollationRootElements::findP(this, a2);
  v7 = (*this + 4 * v6);
  if ((*v7 & 0xFFFFFF00) == a2)
  {
    v8 = *v7 & 0x7F;
    if ((*v7 & 0x7F) == 0)
    {
      v9 = (*this + 4 * v6 - 4);
      do
      {
        v11 = *v9--;
        v10 = v11;
      }

      while ((v11 & 0x80) != 0);
      return v10 & 0xFFFFFF00;
    }
  }

  else
  {
    v8 = v7[1] & 0x7F;
  }

  if (a2)
  {

    return icu::Collation::decThreeBytePrimaryByOneStep(a2, a3, v8);
  }

  else
  {

    return icu::Collation::decTwoBytePrimaryByOneStep(a2, a3, v8);
  }
}

uint64_t icu::CollationRootElements::getSecondaryBefore(icu::CollationRootElements *this, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    LODWORD(v5) = icu::CollationRootElements::findP(this, a2) + 1;
    v6 = *this;
    v7 = *(*this + 4 * v5);
    if (v7 >= 0x5000500)
    {
      v8 = 83887360;
    }

    else
    {
      v8 = *(*this + 4 * v5);
    }

    if ((v7 & 0x80) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 83887360;
    }

    result = 256;
  }

  else
  {
    result = 0;
    v6 = *this;
    v5 = *(*this + 4);
    v9 = *(*this + 4 * v5);
  }

  v11 = HIWORD(v9);
  if (v11 < a3)
  {
    v12 = (v6 + 4 * v5);
    do
    {
      result = v11;
      v13 = *v12++;
      v11 = HIWORD(v13);
    }

    while (v11 < a3);
  }

  return result;
}

uint64_t icu::CollationRootElements::getFirstSecTerForPrimary(icu::CollationRootElements *this, int a2)
{
  v2 = *(*this + 4 * a2);
  v3 = v2 & 0xFFFFFF7F;
  if ((v2 & 0xFFFFFF7F) >= 0x5000500)
  {
    v3 = 83887360;
  }

  if ((v2 & 0x80) != 0)
  {
    return v3;
  }

  else
  {
    return 83887360;
  }
}

uint64_t icu::CollationRootElements::getTertiaryBefore(icu::CollationRootElements *this, unsigned int a2, int a3, int a4)
{
  if (a2)
  {
    LODWORD(v7) = icu::CollationRootElements::findP(this, a2) + 1;
    v8 = *this;
    v9 = *(*this + 4 * v7);
    v10 = v9 & 0xFFFFFF7F;
    if ((v9 & 0xFFFFFF7F) >= 0x5000500)
    {
      v10 = 83887360;
    }

    if ((v9 & 0x80) == 0)
    {
      v10 = 83887360;
    }

    v11 = 256;
  }

  else
  {
    v8 = *this;
    v11 = (a3 != 0) << 8;
    v7 = *(*this + 4 * (a3 != 0));
    v10 = *(*this + 4 * v7) & 0xFFFFFF7F;
  }

  v12 = a4 | (a3 << 16);
  if (v12 > v10)
  {
    v13 = (v8 + 4 * v7);
    do
    {
      if (a3 == HIWORD(v10))
      {
        v11 = v10;
      }

      v14 = *v13++;
      v10 = v14 & 0xFFFFFF7F;
    }

    while (v12 > (v14 & 0xFFFFFF7F));
  }

  return v11;
}

uint64_t icu::CollationRootElements::getPrimaryAfter(icu::CollationRootElements *this, icu::Collation *a2, int a3, int a4)
{
  v4 = *this;
  result = *(*this + 4 * a3 + 4);
  if ((result & 0x80) != 0)
  {
    v7 = (v4 + 4 * a3 + 8);
    do
    {
      v8 = *v7++;
      result = v8;
    }

    while ((v8 & 0x80) != 0);
  }

  else
  {
    v6 = result & 0x7F;
    if ((result & 0x7F) != 0)
    {
      if (a2)
      {
        return icu::Collation::incThreeBytePrimaryByOffset(a2, a4, v6);
      }

      else
      {
        return icu::Collation::incTwoBytePrimaryByOffset(a2, a4, v6);
      }
    }
  }

  return result;
}

uint64_t icu::CollationRootElements::getSecondaryAfter(icu::CollationRootElements *this, int a2, unsigned int a3)
{
  v3 = *this;
  if (a2)
  {
    v4 = a2;
    v5 = *(v3 + 4 * a2 + 4);
    if (v5 >= 0x5000500)
    {
      v6 = 83887360;
    }

    else
    {
      v6 = *(v3 + 4 * a2 + 4);
    }

    if ((v5 & 0x80) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 83887360;
    }

    result = *(v3 + 18) << 8;
  }

  else
  {
    v4 = *(v3 + 4);
    v7 = *(v3 + 4 * v4);
    result = 0x10000;
  }

  for (i = (v3 + 4 * v4 + 4); ; ++i)
  {
    v10 = HIWORD(v7);
    if (v10 > a3)
    {
      break;
    }

    v11 = *i;
    v7 = v11;
    if ((v11 & 0x80) == 0)
    {
      return result;
    }
  }

  return v10;
}

uint64_t icu::CollationRootElements::getTertiaryAfter(int **this, uint64_t a2, unsigned int a3, int a4)
{
  if (a2)
  {
    v4 = *this;
    v5 = (*this)[a2 + 1];
    v6 = v5 & 0xFFFFFF7F;
    if ((v5 & 0xFFFFFF7F) >= 0x5000500)
    {
      v6 = 83887360;
    }

    if ((v5 & 0x80) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 83887360;
    }

    result = v4[4] << 8;
  }

  else
  {
    v4 = *this;
    if (a3)
    {
      v9 = v4 + 1;
      result = v4[4] << 8;
    }

    else
    {
      result = 0x4000;
      v9 = v4;
    }

    a2 = *v9;
    v7 = v4[a2] & 0xFFFFFF7F;
  }

  v10 = a4 | (a3 << 16);
  if (v7 > v10)
  {
    return v7;
  }

  v11 = &v4[a2 + 1];
  while (1)
  {
    v13 = *v11++;
    v12 = v13;
    if ((v13 & 0x80) == 0 || HIWORD(v12) > a3)
    {
      break;
    }

    v7 = v12 & 0xFFFFFF7F;
    if (v7 > v10)
    {
      return v7;
    }
  }

  return result;
}

icu::CollationRuleParser *icu::CollationRuleParser::CollationRuleParser(icu::CollationRuleParser *this, UErrorCode *a2, UErrorCode *a3)
{
  *this = icu::Normalizer2::getNFDInstance(a3, a2);
  *(this + 1) = icu::Normalizer2::getNFCInstance(a3, v6);
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  return this;
}

{
  *this = icu::Normalizer2::getNFDInstance(a3, a2);
  *(this + 1) = icu::Normalizer2::getNFCInstance(a3, v6);
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  return this;
}

icu::CollationRuleParser *icu::CollationRuleParser::parse(icu::CollationRuleParser *this, const icu::UnicodeString *a2, icu::CollationSettings *a3, UParseError *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    *(this + 4) = a3;
    *(this + 5) = a4;
    if (a4)
    {
      *&a4->line = 0xFFFFFFFF00000000;
      a4->preContext[0] = 0;
      a4->postContext[0] = 0;
    }

    *(this + 6) = 0;
    return icu::CollationRuleParser::parse(this, a2, a5);
  }

  return this;
}

uint64_t icu::CollationRuleParser::parse(uint64_t this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    v5 = 0;
    *(this + 16) = a2;
    *(this + 72) = 0;
    while (1)
    {
      v6 = *(a2 + 4);
      if (*(a2 + 4) < 0)
      {
        v7 = *(a2 + 3);
        if (v5 >= v7)
        {
          return this;
        }
      }

      else
      {
        if (v5 >= (v6 >> 5))
        {
          return this;
        }

        v7 = v6 >> 5;
      }

      if (v7 <= v5)
      {
        v9 = 0xFFFFLL;
      }

      else
      {
        if ((v6 & 2) != 0)
        {
          v8 = a2 + 10;
        }

        else
        {
          v8 = *(a2 + 3);
        }

        v9 = *&v8[2 * v5];
      }

      this = icu::PatternProps::isWhiteSpace(v9);
      if (this)
      {
        v5 = *(v4 + 72) + 1;
        *(v4 + 72) = v5;
        goto LABEL_31;
      }

      if (v9 <= 37)
      {
        if (v9 == 33)
        {
          goto LABEL_25;
        }

        if (v9 != 35)
        {
LABEL_26:
          if (*a3 > 0)
          {
            return this;
          }

          *a3 = U_INVALID_FORMAT_ERROR;
          *(v4 + 48) = "expected a reset or setting or comment";
          if (!*(v4 + 40))
          {
            return this;
          }

          this = icu::CollationRuleParser::setErrorContext(v4);
          goto LABEL_29;
        }

        this = icu::CollationRuleParser::skipComment(v4, *(v4 + 72) + 1);
        *(v4 + 72) = this;
      }

      else
      {
        switch(v9)
        {
          case '[':
            this = icu::CollationRuleParser::parseSetting(v4, a3);
            break;
          case '@':
            this = icu::CollationSettings::setFlag(*(v4 + 32), 2048, 17, 0, a3);
LABEL_25:
            ++*(v4 + 72);
            break;
          case '&':
            this = icu::CollationRuleParser::parseRuleChain(v4, a3);
            break;
          default:
            goto LABEL_26;
        }
      }

LABEL_29:
      if (*a3 > 0)
      {
        return this;
      }

      v5 = *(v4 + 72);
LABEL_31:
      a2 = *(v4 + 16);
    }
  }

  return this;
}

uint64_t icu::CollationRuleParser::parseRuleChain(icu::CollationRuleParser *this, UErrorCode *a2)
{
  v4 = icu::CollationRuleParser::parseResetAndPosition(this, a2);
  result = icu::CollationRuleParser::parseRelationOperator(this, a2);
  if (*a2 > 0)
  {
    return result;
  }

  v6 = 1;
  while ((result & 0x80000000) == 0)
  {
    v7 = result & 0xF;
    if (v4 <= 14)
    {
      if (v6)
      {
        if (v7 != v4)
        {
          *a2 = U_INVALID_FORMAT_ERROR;
          v14 = "reset-before strength differs from its first relation";
          goto LABEL_30;
        }
      }

      else if (v7 < v4)
      {
        *a2 = U_INVALID_FORMAT_ERROR;
        v14 = "reset-before strength followed by a stronger relation";
        goto LABEL_30;
      }
    }

    v13 = *(this + 18) + (result >> 8);
    if ((result & 0x10) != 0)
    {
      result = icu::CollationRuleParser::parseStarredCharacters(this, v7, v13, a2);
    }

    else
    {
      result = icu::CollationRuleParser::parseRelationStrings(this, v7, v13, a2);
    }

    if (*a2 > 0)
    {
      return result;
    }

    v6 = 0;
LABEL_25:
    result = icu::CollationRuleParser::parseRelationOperator(this, a2);
    if (*a2 >= 1)
    {
      return result;
    }
  }

  v8 = *(this + 18);
  v9 = *(this + 2);
  v10 = *(v9 + 8);
  if (*(v9 + 8) < 0)
  {
    v11 = *(v9 + 12);
    if (v8 >= v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v8 >= (v10 >> 5))
    {
      goto LABEL_27;
    }

    v11 = v10 >> 5;
  }

  if (v11 > v8)
  {
    v12 = (v10 & 2) != 0 ? v9 + 10 : *(v9 + 24);
    if (*(v12 + 2 * v8) == 35)
    {
      *(this + 18) = icu::CollationRuleParser::skipComment(this, v8 + 1);
      goto LABEL_25;
    }
  }

LABEL_27:
  if (!v6)
  {
    return result;
  }

  *a2 = U_INVALID_FORMAT_ERROR;
  v14 = "reset not followed by a relation";
LABEL_30:
  *(this + 6) = v14;
  if (*(this + 5))
  {

    return icu::CollationRuleParser::setErrorContext(this);
  }

  return result;
}

icu::CollationRuleParser *icu::CollationRuleParser::parseSetting(icu::CollationRuleParser *this, UErrorCode *a2)
{
  v171[5] = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v3 = this;
    v170 = 0u;
    memset(v171, 0, 40);
    v169 = &unk_1F0935D00;
    LOWORD(v170) = 2;
    v4 = *(this + 18) + 1;
    Words = icu::CollationRuleParser::readWords(this, v4, &v169);
    if (Words <= v4)
    {
      if (*a2 > 0)
      {
        goto LABEL_9;
      }
    }

    else if (v170 > 0x1Fu || *a2 >= 1)
    {
      goto LABEL_9;
    }

    *a2 = U_INVALID_FORMAT_ERROR;
    *(v3 + 6) = "expected a setting/option at '['";
    if (*(v3 + 5))
    {
      icu::CollationRuleParser::setErrorContext(v3);
    }

LABEL_9:
    v6 = *(v3 + 2);
    v7 = *(v6 + 8);
    v8 = v7 >> 5;
    if (*(v6 + 8) < 0)
    {
      v9 = *(v6 + 12);
    }

    else
    {
      v9 = v7 >> 5;
    }

    if (v9 > Words)
    {
      v10 = (v7 & 2) != 0 ? v6 + 10 : *(v6 + 24);
      if (*(v10 + 2 * Words) == 93)
      {
        v11 = Words + 1;
        v138 = L"reorder";
        icu::UnicodeString::UnicodeString(&__src, 1, &v138, -1);
        if ((SWORD4(__src) & 0x8000u) == 0)
        {
          v12 = WORD4(__src) >> 5;
        }

        else
        {
          v12 = HIDWORD(__src);
        }

        if (BYTE8(__src))
        {
          v14 = v170 & 1;
          if (v170)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if ((v170 & 1) == 0)
          {
            if ((BYTE8(__src) & 2) != 0)
            {
              v13 = &__src + 10;
            }

            else
            {
              v13 = *(&v140 + 1);
            }

            v14 = icu::UnicodeString::doEqualsSubstring(&v169, 0, v12, v13, v12 & (v12 >> 31), v12 & ~(v12 >> 31));
            if (!v14)
            {
              goto LABEL_53;
            }

LABEL_49:
            if (v170 < 0)
            {
              v25 = DWORD1(v170);
              if (DWORD1(v170) != 7)
              {
                goto LABEL_57;
              }
            }

            else if ((v170 & 0x7FE0) != 0xE0)
            {
              v25 = v170 >> 5;
LABEL_57:
              if (v25 < 8)
              {
                icu::UnicodeString::~UnicodeString(v170, &__src);
                v114[16] = v138;
                goto LABEL_64;
              }

              if ((v170 & 2) != 0)
              {
                v27 = v171;
              }

              else
              {
                v27 = (v171[0] + 14);
              }

              v28 = *v27;
              icu::UnicodeString::~UnicodeString(v27, &__src);
              v114[15] = v138;
              if (v28 != 32)
              {
LABEL_64:
                v137 = L"backwards 2";
                icu::UnicodeString::UnicodeString(&__src, 1, &v137, -1);
                if (v170)
                {
                  v32 = WORD4(__src);
                  v33 = BYTE8(__src) & 1;
                }

                else
                {
                  if ((v170 & 0x8000u) == 0)
                  {
                    v29 = v170 >> 5;
                  }

                  else
                  {
                    v29 = DWORD1(v170);
                  }

                  if ((SWORD4(__src) & 0x8000u) == 0)
                  {
                    v30 = WORD4(__src) >> 5;
                  }

                  else
                  {
                    v30 = HIDWORD(__src);
                  }

                  if ((BYTE8(__src) & 1) != 0 || v29 != v30)
                  {
                    icu::UnicodeString::~UnicodeString(WORD4(__src), &__src);
                    v114[12] = v137;
                    goto LABEL_82;
                  }

                  if ((BYTE8(__src) & 2) != 0)
                  {
                    v31 = &__src + 10;
                  }

                  else
                  {
                    v31 = *(&v140 + 1);
                  }

                  v33 = icu::UnicodeString::doEquals(&v169, v31, v29);
                }

                icu::UnicodeString::~UnicodeString(v32, &__src);
                v114[11] = v137;
                if (v33)
                {
                  icu::CollationSettings::setFlag(*(v3 + 4), 2048, 17, 0, a2);
                  goto LABEL_80;
                }

LABEL_82:
                v165 = 0u;
                v168 = 0;
                v167 = 0u;
                v166 = 0u;
                v164 = &unk_1F0935D00;
                LOWORD(v165) = 2;
                if ((v170 & 0x8000u) == 0)
                {
                  v34 = v170 >> 5;
                }

                else
                {
                  v34 = DWORD1(v170);
                }

                IndexOf = icu::UnicodeString::doLastIndexOf(&v169, 0x20u, 0, v34);
                if ((IndexOf & 0x80000000) != 0)
                {
                  goto LABEL_117;
                }

                v36 = IndexOf;
                v37 = IndexOf + 1;
                icu::UnicodeString::unBogus(&v164);
                if (v170 < 0)
                {
                  v38 = DWORD1(v170);
                  if (SDWORD1(v170) <= v36)
                  {
                    goto LABEL_93;
                  }
                }

                else if (v36 >= v170 >> 5)
                {
                  v38 = v170 >> 5;
LABEL_93:
                  v37 = v38;
                }

                if ((v165 & 0x8000u) == 0)
                {
                  v40 = v165 >> 5;
                }

                else
                {
                  v40 = DWORD1(v165);
                }

                v41 = v170 >> 5;
                if ((v170 & 0x8000u) != 0)
                {
                  v41 = DWORD1(v170);
                }

                icu::UnicodeString::doReplace(&v164, 0, v40, &v169, v37, (v41 - v37));
                if (v36 || (v170 & 1) == 0)
                {
                  if ((v170 & 0x8000u) == 0)
                  {
                    v42 = v170 >> 5;
                  }

                  else
                  {
                    v42 = DWORD1(v170);
                  }

                  if (v42 > v36)
                  {
                    if (v36 > 0x3FF)
                    {
                      LOWORD(v170) = v170 | 0xFFE0;
                      DWORD1(v170) = v36;
                    }

                    else
                    {
                      LOWORD(v170) = v170 & 0x1F | (32 * v36);
                    }
                  }
                }

                else
                {
                  icu::UnicodeString::unBogus(&v169);
                }

LABEL_117:
                v136 = L"strength";
                icu::UnicodeString::UnicodeString(&__src, 1, &v136, -1);
                if (v170)
                {
                  v46 = WORD4(__src);
                  if (BYTE8(__src))
                  {
                    goto LABEL_130;
                  }
                }

                else
                {
                  if ((v170 & 0x8000u) == 0)
                  {
                    v45 = v170 >> 5;
                  }

                  else
                  {
                    v45 = DWORD1(v170);
                  }

                  v46 = WORD4(__src);
                  if ((SWORD4(__src) & 0x8000u) == 0)
                  {
                    v47 = WORD4(__src) >> 5;
                  }

                  else
                  {
                    v47 = HIDWORD(__src);
                  }

                  if ((BYTE8(__src) & 1) == 0 && v45 == v47)
                  {
                    v48 = (BYTE8(__src) & 2) != 0 ? (&__src + 10) : *(&v140 + 1);
                    if (icu::UnicodeString::doEquals(&v169, v48, v45))
                    {
LABEL_130:
                      if ((v165 & 0x8000u) == 0)
                      {
                        v49 = v165 >> 5;
                      }

                      else
                      {
                        v49 = DWORD1(v165);
                      }

                      icu::UnicodeString::~UnicodeString((v165 >> 5), &__src);
                      v114[10] = v136;
                      if (v49 == 1)
                      {
                        v50 = v165;
                        if ((v165 & 0x8000u) == 0)
                        {
                          v51 = v165 >> 5;
                        }

                        else
                        {
                          v51 = DWORD1(v165);
                        }

                        if (v51)
                        {
                          if ((v165 & 2) != 0)
                          {
                            v52 = &v165 + 1;
                          }

                          else
                          {
                            v52 = v166;
                          }

                          v53 = *v52;
                          v50 = *v52;
                          if (v50 == 73)
                          {
                            v54 = 15;
LABEL_180:
                            icu::CollationSettings::setStrength(*(v3 + 4), v54, 0, a2);
                            goto LABEL_196;
                          }

                          if ((v53 - 53) >= 0xFFFCu)
                          {
                            v54 = v50 - 49;
                            if (v50 != 48)
                            {
                              goto LABEL_180;
                            }
                          }
                        }

                        goto LABEL_218;
                      }

LABEL_145:
                      v135 = "a";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v135, -1);
                      if (v170)
                      {
                        v58 = WORD4(__src);
                        v59 = BYTE8(__src) & 1;
                      }

                      else
                      {
                        if ((v170 & 0x8000u) == 0)
                        {
                          v55 = v170 >> 5;
                        }

                        else
                        {
                          v55 = DWORD1(v170);
                        }

                        if ((SWORD4(__src) & 0x8000u) == 0)
                        {
                          v56 = WORD4(__src) >> 5;
                        }

                        else
                        {
                          v56 = HIDWORD(__src);
                        }

                        if ((BYTE8(__src) & 1) != 0 || v55 != v56)
                        {
                          icu::UnicodeString::~UnicodeString(WORD4(__src), &__src);
                          v114[8] = v135;
                          goto LABEL_163;
                        }

                        if ((BYTE8(__src) & 2) != 0)
                        {
                          v57 = &__src + 10;
                        }

                        else
                        {
                          v57 = *(&v140 + 1);
                        }

                        v59 = icu::UnicodeString::doEquals(&v169, v57, v55);
                      }

                      icu::UnicodeString::~UnicodeString(v58, &__src);
                      v114[7] = v135;
                      if (v59)
                      {
                        v134 = "n";
                        icu::UnicodeString::UnicodeString(&__src, 1, &v134, -1);
                        v60 = sub_195213DE4(&v164, &__src);
                        icu::UnicodeString::~UnicodeString(v61, &__src);
                        v111[1] = v134;
                        if (v60)
                        {
                          v62 = 21;
LABEL_171:
                          icu::CollationSettings::setAlternateHandling(*(v3 + 4), v62, 0, a2);
LABEL_196:
                          *(v3 + 18) = v11;
LABEL_197:
                          icu::UnicodeString::~UnicodeString(v50, &v164);
                          return icu::UnicodeString::~UnicodeString(v26, &v169);
                        }

                        v133 = "s";
                        icu::UnicodeString::UnicodeString(&__src, 1, &v133, -1);
                        v73 = sub_195213DE4(&v164, &__src);
                        icu::UnicodeString::~UnicodeString(v74, &__src);
                        v111[0] = v133;
                        v50 = v111;
                        if (v73)
                        {
                          v62 = 20;
                          goto LABEL_171;
                        }

                        goto LABEL_218;
                      }

LABEL_163:
                      v132 = "m";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v132, -1);
                      v63 = sub_195213DE4(&v169, &__src);
                      icu::UnicodeString::~UnicodeString(v64, &__src);
                      v114[6] = v132;
                      if (v63)
                      {
                        v131 = "s";
                        icu::UnicodeString::UnicodeString(&__src, 1, &v131, -1);
                        v65 = sub_195213DE4(&v164, &__src);
                        icu::UnicodeString::~UnicodeString(v66, &__src);
                        v112[3] = v131;
                        if (v65)
                        {
                          v67 = 0;
                        }

                        else
                        {
                          v130 = "p";
                          v67 = 1;
                          icu::UnicodeString::UnicodeString(&__src, 1, &v130, -1);
                          v75 = sub_195213DE4(&v164, &__src);
                          icu::UnicodeString::~UnicodeString(v76, &__src);
                          v112[2] = v130;
                          if (!v75)
                          {
                            v129 = "s";
                            icu::UnicodeString::UnicodeString(&__src, 1, &v129, -1);
                            v77 = sub_195213DE4(&v164, &__src);
                            icu::UnicodeString::~UnicodeString(v78, &__src);
                            v112[1] = v129;
                            if (v77)
                            {
                              v67 = 2;
                            }

                            else
                            {
                              v128 = L"currency";
                              icu::UnicodeString::UnicodeString(&__src, 1, &v128, -1);
                              v90 = sub_195213DE4(&v164, &__src);
                              icu::UnicodeString::~UnicodeString(v91, &__src);
                              v112[0] = v128;
                              v50 = v112;
                              if (!v90)
                              {
                                goto LABEL_218;
                              }

                              v67 = 3;
                            }
                          }
                        }

                        icu::CollationSettings::setMaxVariable(*(v3 + 4), v67, 0, a2);
                        LastPrimaryForGroup = icu::CollationData::getLastPrimaryForGroup(*(v3 + 3), v67 | 0x1000);
                        v50 = *(v3 + 4);
                        *(v50 + 28) = LastPrimaryForGroup;
                        goto LABEL_196;
                      }

                      v127 = "c";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v127, -1);
                      v68 = sub_195213DE4(&v169, &__src);
                      icu::UnicodeString::~UnicodeString(v69, &__src);
                      v114[5] = v127;
                      if (v68)
                      {
                        v126 = "o";
                        icu::UnicodeString::UnicodeString(&__src, 1, &v126, -1);
                        v70 = sub_195213DE4(&v164, &__src);
                        icu::UnicodeString::~UnicodeString(v71, &__src);
                        v113[2] = v126;
                        if (v70)
                        {
                          v72 = 16;
                        }

                        else
                        {
                          v125 = "l";
                          icu::UnicodeString::UnicodeString(&__src, 1, &v125, -1);
                          v85 = sub_195213DE4(&v164, &__src);
                          icu::UnicodeString::~UnicodeString(v86, &__src);
                          v113[1] = v125;
                          if (v85)
                          {
                            v72 = 24;
                          }

                          else
                          {
                            v124 = "u";
                            icu::UnicodeString::UnicodeString(&__src, 1, &v124, -1);
                            v93 = sub_195213DE4(&v164, &__src);
                            icu::UnicodeString::~UnicodeString(v94, &__src);
                            v113[0] = v124;
                            v50 = v113;
                            if (!v93)
                            {
                              goto LABEL_218;
                            }

                            v72 = 25;
                          }
                        }

                        icu::CollationSettings::setCaseFirst(*(v3 + 4), v72, 0, a2);
                        goto LABEL_196;
                      }

                      v123 = "c";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v123, -1);
                      v79 = sub_195213DE4(&v169, &__src);
                      icu::UnicodeString::~UnicodeString(v80, &__src);
                      v114[4] = v123;
                      if (v79)
                      {
                        v81 = icu::CollationRuleParser::getOnOffValue(&v164);
                        if (v81 == -1)
                        {
                          goto LABEL_218;
                        }

                        v82 = v81;
                        v83 = *(v3 + 4);
                        v84 = 1024;
LABEL_195:
                        icu::CollationSettings::setFlag(v83, v84, v82, 0, a2);
                        goto LABEL_196;
                      }

                      v122 = "n";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v122, -1);
                      v87 = sub_195213DE4(&v169, &__src);
                      icu::UnicodeString::~UnicodeString(v88, &__src);
                      v114[3] = v122;
                      if (v87)
                      {
                        v89 = icu::CollationRuleParser::getOnOffValue(&v164);
                        if (v89 == -1)
                        {
                          goto LABEL_218;
                        }

                        v82 = v89;
                        v83 = *(v3 + 4);
                        v84 = 1;
                        goto LABEL_195;
                      }

                      v121 = "n";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v121, -1);
                      v95 = sub_195213DE4(&v169, &__src);
                      icu::UnicodeString::~UnicodeString(v96, &__src);
                      v114[2] = v121;
                      if (v95)
                      {
                        v97 = icu::CollationRuleParser::getOnOffValue(&v164);
                        if (v97 == -1)
                        {
                          goto LABEL_218;
                        }

                        v82 = v97;
                        v83 = *(v3 + 4);
                        v84 = 2;
                        goto LABEL_195;
                      }

                      v120 = "h";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v120, -1);
                      v98 = sub_195213DE4(&v169, &__src);
                      icu::UnicodeString::~UnicodeString(v99, &__src);
                      v114[1] = v120;
                      if (v98)
                      {
                        v100 = icu::CollationRuleParser::getOnOffValue(&v164);
                        if (v100 != -1)
                        {
                          if (v100 == 17)
                          {
                            v50 = *a2;
                            if (v50 <= 0)
                            {
                              *a2 = U_INVALID_FORMAT_ERROR;
                              *(v3 + 6) = "[hiraganaQ on] is not supported";
                              v50 = *(v3 + 5);
                              if (v50)
                              {
                                icu::CollationRuleParser::setErrorContext(v3);
                              }
                            }
                          }

                          goto LABEL_196;
                        }

                        goto LABEL_218;
                      }

                      v119 = "i";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v119, -1);
                      v101 = sub_195213DE4(&v169, &__src);
                      icu::UnicodeString::~UnicodeString(v102, &__src);
                      v114[0] = v119;
                      v50 = v114;
                      if (!v101)
                      {
LABEL_218:
                        icu::UnicodeString::~UnicodeString(v50, &v164);
LABEL_219:
                        v26 = *a2;
                        if (v26 <= 0)
                        {
                          *a2 = U_INVALID_FORMAT_ERROR;
                          *(v3 + 6) = "not a valid setting/option";
                          v26 = *(v3 + 5);
                          if (v26)
                          {
                            icu::CollationRuleParser::setErrorContext(v3);
                          }
                        }

                        return icu::UnicodeString::~UnicodeString(v26, &v169);
                      }

                      memset(&v162[1], 0, 48);
                      v162[0] = &v162[1] + 5;
                      LODWORD(v162[1]) = 40;
                      v163 = 0;
                      icu::CharString::appendInvariantChars(v162, &v164, a2);
                      if (*a2 == U_MEMORY_ALLOCATION_ERROR)
                      {
LABEL_228:
                        v50 = BYTE4(v162[1]);
                        if (BYTE4(v162[1]))
                        {
                          free(v162[0]);
                        }

                        goto LABEL_197;
                      }

                      v118 = 0;
                      v160 = 0u;
                      v161 = 0u;
                      *v158 = 0u;
                      v159 = 0u;
                      ulocimp_forLanguageTag(v158, v162[0], &v118, a2, -1);
                      if (*a2 > 0 || v118 != v163 || (v146 = 0u, memset(v147, 0, 29), v144 = 0u, v145 = 0u, v142 = 0u, v143 = 0u, v140 = 0u, v141 = 0u, __src = 0u, BaseName = uloc_getBaseName(v158[0], &__src, 157, a2), *a2 > 0) || BaseName >= 96)
                      {
                        *a2 = U_INVALID_FORMAT_ERROR;
                        *(v3 + 6) = "expected language tag in [import langTag]";
                        if (*(v3 + 5))
                        {
                          icu::CollationRuleParser::setErrorContext(v3);
                        }

                        goto LABEL_226;
                      }

                      if (!BaseName || BaseName == 3 && (__src == 28277 ? (v104 = BYTE2(__src) == 100) : (v104 = 0), v104))
                      {
                        strcpy(&__src, "root");
                      }

                      else if (__src == 95)
                      {
                        memmove(&__src + 3, &__src, BaseName + 1);
                        qmemcpy(&__src, "und", 3);
                      }

                      v156 = 0u;
                      v157 = 0u;
                      *v154 = 0u;
                      v155 = 0u;
                      ulocimp_getKeywordValue(v158[0], "collation", 9, a2, v154);
                      if (*a2 < 1)
                      {
                        v106 = *(v3 + 8);
                        if (v106)
                        {
                          v150 = 0u;
                          v153 = 0;
                          v152 = 0u;
                          v151 = 0u;
                          v149 = &unk_1F0935D00;
                          LOWORD(v150) = 2;
                          if (DWORD2(v157))
                          {
                            v107 = v154[0];
                          }

                          else
                          {
                            v107 = "standard";
                          }

                          (*(*v106 + 24))(v106, &__src, v107, &v149, v3 + 48, a2);
                          if (*a2 < 1)
                          {
                            v109 = *(v3 + 2);
                            v110 = *(v3 + 18);
                            icu::CollationRuleParser::parse(v3, &v149, a2);
                            v108 = *a2;
                            if (v108 >= 1)
                            {
                              v108 = *(v3 + 5);
                              if (v108)
                              {
                                v108[1] = v110;
                              }
                            }

                            *(v3 + 2) = v109;
                            *(v3 + 18) = v11;
                          }

                          else
                          {
                            if (!*(v3 + 6))
                            {
                              *(v3 + 6) = "[import langTag] failed";
                            }

                            icu::CollationRuleParser::setErrorContext(v3);
                          }

                          icu::UnicodeString::~UnicodeString(v108, &v149);
                          goto LABEL_249;
                        }

                        *a2 = U_INVALID_FORMAT_ERROR;
                        v105 = "[import langTag] is not supported";
                      }

                      else
                      {
                        *a2 = U_INVALID_FORMAT_ERROR;
                        v105 = "expected language tag in [import langTag]";
                      }

                      *(v3 + 6) = v105;
                      if (*(v3 + 5))
                      {
                        icu::CollationRuleParser::setErrorContext(v3);
                      }

LABEL_249:
                      if (BYTE4(v154[1]))
                      {
                        free(v154[0]);
                      }

LABEL_226:
                      if (BYTE4(v158[1]))
                      {
                        free(v158[0]);
                      }

                      goto LABEL_228;
                    }
                  }
                }

                icu::UnicodeString::~UnicodeString(v46, &__src);
                v114[9] = v136;
                goto LABEL_145;
              }

LABEL_56:
              icu::CollationRuleParser::parseReordering(v3, &v169, a2);
LABEL_80:
              *(v3 + 18) = v11;
              return icu::UnicodeString::~UnicodeString(v26, &v169);
            }

            icu::UnicodeString::~UnicodeString(v170, &__src);
            v114[14] = v138;
            goto LABEL_56;
          }

          v14 = 0;
        }

LABEL_53:
        icu::UnicodeString::~UnicodeString(v14, &__src);
        v114[13] = v138;
        goto LABEL_64;
      }
    }

    if ((v7 & 0x8000) != 0)
    {
      v8 = *(v6 + 12);
    }

    if (v8 <= Words)
    {
      goto LABEL_219;
    }

    v15 = (v7 & 2) != 0 ? v6 + 10 : *(v6 + 24);
    if (*(v15 + 2 * Words) != 91)
    {
      goto LABEL_219;
    }

    v148 = 0;
    memset(v147, 0, sizeof(v147));
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    __src = 0u;
    v140 = 0u;
    icu::UnicodeSet::UnicodeSet(&__src);
    v16 = icu::CollationRuleParser::parseUnicodeSet(v3, Words, &__src, a2);
    v17 = *a2;
    if (v17 > 0)
    {
LABEL_114:
      icu::UnicodeSet::~UnicodeSet(v17, &__src);
      return icu::UnicodeString::~UnicodeString(v26, &v169);
    }

    v18 = v16;
    v117 = L"optimize";
    v19 = icu::UnicodeString::UnicodeString(&v164, 1, &v117, -1);
    if (v170)
    {
      v23 = v165;
      v24 = v165 & 1;
    }

    else
    {
      if ((v170 & 0x8000u) == 0)
      {
        v20 = v170 >> 5;
      }

      else
      {
        v20 = DWORD1(v170);
      }

      if ((v165 & 0x8000u) == 0)
      {
        v21 = v165 >> 5;
      }

      else
      {
        v21 = DWORD1(v165);
      }

      if ((v165 & 1) != 0 || v20 != v21)
      {
        v39 = icu::UnicodeString::~UnicodeString(v165, v19);
        v115[2] = v117;
        goto LABEL_109;
      }

      if ((v165 & 2) != 0)
      {
        v22 = &v165 + 2;
      }

      else
      {
        v22 = v166;
      }

      v24 = icu::UnicodeString::doEquals(&v169, v22, v20);
    }

    v39 = icu::UnicodeString::~UnicodeString(v23, &v164);
    v115[1] = v117;
    if (v24)
    {
      (*(**(v3 + 7) + 48))(*(v3 + 7), &__src, v3 + 48, a2);
LABEL_111:
      v17 = *a2;
      if (v17 >= 1)
      {
        icu::CollationRuleParser::setErrorContext(v3);
      }

      *(v3 + 18) = v18;
      goto LABEL_114;
    }

LABEL_109:
    v116 = "s";
    icu::UnicodeString::UnicodeString(v39, 1, &v116, -1);
    v43 = sub_195213DE4(&v169, &v164);
    icu::UnicodeString::~UnicodeString(v44, &v164);
    v115[0] = v116;
    if (!v43)
    {
      icu::UnicodeSet::~UnicodeSet(v115, &__src);
      goto LABEL_219;
    }

    (*(**(v3 + 7) + 40))(*(v3 + 7), &__src, v3 + 48, a2);
    goto LABEL_111;
  }

  return this;
}