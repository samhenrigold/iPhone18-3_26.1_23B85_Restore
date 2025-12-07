uint64_t equalChannels(const AudioChannelLayout *a1, const AudioChannelLayout *a2, int a3)
{
  mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions != a2->mNumberChannelDescriptions)
  {
    v13 = 0;
    return v13 & 1;
  }

  if (!mNumberChannelDescriptions)
  {
    v4 = 1;
    goto LABEL_41;
  }

  v4 = 0;
  mChannelDescriptions = a1->mChannelDescriptions;
  v6 = a2->mChannelDescriptions;
  v7 = 1;
  v8 = a1->mNumberChannelDescriptions;
  while (1)
  {
    mChannelLabel = mChannelDescriptions->mChannelLabel;
    ++mChannelDescriptions;
    v9 = mChannelLabel;
    v12 = v6->mChannelLabel;
    ++v6;
    v11 = v12;
    if (!a3)
    {
      goto LABEL_36;
    }

    if (v9 <= 207)
    {
      switch(v9)
      {
        case 42:
          v9 = 3;
          break;
        case 206:
          goto LABEL_17;
        case 207:
          goto LABEL_16;
      }
    }

    else
    {
      if (v9 > 300)
      {
        if (v9 != 301)
        {
          if (v9 != 302)
          {
            goto LABEL_19;
          }

LABEL_16:
          v9 = 2;
          goto LABEL_19;
        }

LABEL_17:
        v9 = 1;
        goto LABEL_19;
      }

      if (v9 == 208)
      {
        goto LABEL_17;
      }

      if (v9 == 209)
      {
        goto LABEL_16;
      }
    }

LABEL_19:
    if (v11 > 207)
    {
      if (v11 > 300)
      {
        if (v11 != 301)
        {
          if (v11 != 302)
          {
            goto LABEL_33;
          }

          goto LABEL_30;
        }
      }

      else if (v11 != 208)
      {
        if (v11 != 209)
        {
          goto LABEL_33;
        }

LABEL_30:
        v11 = 2;
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    if (v11 == 42)
    {
      break;
    }

    if (v11 != 206)
    {
      if (v11 != 207)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

LABEL_31:
    v11 = 1;
LABEL_36:
    if (v9 == v11)
    {
      v4 = v7++ >= mNumberChannelDescriptions;
      if (--v8)
      {
        continue;
      }
    }

    LOBYTE(mNumberChannelDescriptions) = 0;
    goto LABEL_41;
  }

  v11 = 3;
LABEL_33:
  if (v9 != 3 || v11 != 3 || mNumberChannelDescriptions != 1)
  {
    goto LABEL_36;
  }

  v15 = 0;
  do
  {
    v16 = fabsf(a1->mChannelDescriptions[0].mCoordinates[v15]);
    LOBYTE(mNumberChannelDescriptions) = v16 < 0.00000011921;
  }

  while (v16 < 0.00000011921 && v15++ != 2);
LABEL_41:
  v13 = v4 | mNumberChannelDescriptions;
  return v13 & 1;
}

uint64_t octagonalCompatibility(AudioChannelLayout *a1, AudioChannelLayout *a2)
{
  OctagonalStyle = getOctagonalStyle(a1);
  result = getOctagonalStyle(a2);
  if (OctagonalStyle > 1)
  {
    if (OctagonalStyle == 2)
    {
      if (result != 3)
      {
        if (result != 1)
        {
          return result;
        }

        mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
        if (!mNumberChannelDescriptions)
        {
          return result;
        }

        for (i = a1->mChannelDescriptions[0].mCoordinates; ; i += 5)
        {
          v13 = *(i - 2);
          if (v13 > 5)
          {
            switch(v13)
            {
              case 6:
                v13 = 36;
                v14 = 1119092736;
                goto LABEL_41;
              case 33:
                v13 = 5;
                v14 = -1022951424;
                goto LABEL_41;
              case 34:
                v13 = 6;
                v14 = 1124532224;
                goto LABEL_41;
            }
          }

          else
          {
            switch(v13)
            {
              case 1:
                v14 = -1036779520;
                goto LABEL_41;
              case 2:
                v14 = 1110704128;
                goto LABEL_41;
              case 5:
                v13 = 35;
                v14 = -1028390912;
LABEL_41:
                v15 = v14;
                goto LABEL_42;
            }
          }

          v15 = *i;
LABEL_42:
          *(i - 2) = v13;
          if ((*(i - 1) & 2) != 0)
          {
            *i = v15;
          }

          if (!--mNumberChannelDescriptions)
          {
            return result;
          }
        }
      }

      v26 = a1->mNumberChannelDescriptions;
      if (!v26)
      {
        return result;
      }

      for (j = a1->mChannelDescriptions[0].mCoordinates; ; j += 5)
      {
        v28 = *(j - 2);
        if (v28 > 5)
        {
          switch(v28)
          {
            case 6:
              v28 = 11;
              v29 = 1119092736;
              goto LABEL_98;
            case 33:
              v28 = 5;
              v29 = -1022951424;
              goto LABEL_98;
            case 34:
              v28 = 6;
              v29 = 1124532224;
              goto LABEL_98;
          }
        }

        else
        {
          switch(v28)
          {
            case 1:
              v29 = -1036779520;
              goto LABEL_98;
            case 2:
              v29 = 1110704128;
              goto LABEL_98;
            case 5:
              v28 = 10;
              v29 = -1028390912;
LABEL_98:
              v30 = v29;
              goto LABEL_99;
          }
        }

        v30 = *j;
LABEL_99:
        *(j - 2) = v28;
        if ((*(j - 1) & 2) != 0)
        {
          *j = v30;
        }

        if (!--v26)
        {
          return result;
        }
      }
    }

    if (result == 2)
    {
      v31 = a1->mNumberChannelDescriptions;
      if (v31)
      {
        mCoordinates = a1->mChannelDescriptions[0].mCoordinates;
        do
        {
          v33 = *(mCoordinates - 2);
          v34 = v33 - 5;
          if ((v33 - 5) > 6)
          {
            v35 = mCoordinates;
          }

          else
          {
            v35 = mCoordinates;
            if ((0x63u >> v34))
            {
              v33 = *&asc_18F916968[4 * v34];
              v35 = (&unk_18F916984 + 4 * v34);
            }
          }

          v36 = *v35;
          *(mCoordinates - 2) = v33;
          if ((*(mCoordinates - 1) & 2) != 0)
          {
            *mCoordinates = v36;
          }

          mCoordinates += 5;
          --v31;
        }

        while (v31);
      }

      return result;
    }

    if (result != 1)
    {
      return result;
    }

    v16 = a1->mNumberChannelDescriptions;
    if (!v16)
    {
      return result;
    }

    for (k = a1->mChannelDescriptions[0].mCoordinates; ; k += 5)
    {
      v18 = *(k - 2);
      if (v18 > 9)
      {
        if (v18 == 10)
        {
          v18 = 35;
          v19 = -1028390912;
          goto LABEL_60;
        }

        if (v18 == 11)
        {
          v18 = 36;
          v19 = 1119092736;
          goto LABEL_60;
        }
      }

      else
      {
        if (v18 == 1)
        {
          v19 = -1036779520;
          goto LABEL_60;
        }

        if (v18 == 2)
        {
          v19 = 1110704128;
LABEL_60:
          v20 = v19;
          goto LABEL_61;
        }
      }

      v20 = *k;
LABEL_61:
      *(k - 2) = v18;
      if ((*(k - 1) & 2) != 0)
      {
        *k = v20;
      }

      if (!--v16)
      {
        return result;
      }
    }
  }

  if (!OctagonalStyle)
  {
    return result;
  }

  if (result == 3)
  {
    v21 = a1->mNumberChannelDescriptions;
    if (!v21)
    {
      return result;
    }

    for (m = a1->mChannelDescriptions[0].mCoordinates; ; m += 5)
    {
      v23 = *(m - 2);
      if (v23 > 34)
      {
        if (v23 == 35)
        {
          v23 = 10;
          v24 = -1028390912;
          goto LABEL_77;
        }

        if (v23 == 36)
        {
          v23 = 11;
          v24 = 1119092736;
          goto LABEL_77;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v24 = -1036779520;
          goto LABEL_77;
        }

        if (v23 == 2)
        {
          v24 = 1110704128;
LABEL_77:
          v25 = v24;
          goto LABEL_78;
        }
      }

      v25 = *m;
LABEL_78:
      *(m - 2) = v23;
      if ((*(m - 1) & 2) != 0)
      {
        *m = v25;
      }

      if (!--v21)
      {
        return result;
      }
    }
  }

  if (result == 2)
  {
    v6 = a1->mNumberChannelDescriptions;
    if (v6)
    {
      v7 = a1->mChannelDescriptions[0].mCoordinates;
      do
      {
        v8 = *(v7 - 2);
        if (v8 > 34)
        {
          if (v8 == 35)
          {
            v8 = 5;
            v9 = -1025769472;
            goto LABEL_17;
          }

          if (v8 == 36)
          {
            v8 = 6;
            v9 = 1121714176;
            goto LABEL_17;
          }
        }

        else
        {
          if (v8 == 5)
          {
            v8 = 33;
            v9 = -1021968384;
            goto LABEL_17;
          }

          if (v8 == 6)
          {
            v8 = 34;
            v9 = 1125515264;
LABEL_17:
            v10 = v9;
            goto LABEL_18;
          }
        }

        v10 = *v7;
LABEL_18:
        *(v7 - 2) = v8;
        if ((*(v7 - 1) & 2) != 0)
        {
          *v7 = v10;
        }

        v7 += 5;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t getOctagonalStyle(const AudioChannelLayout *a1)
{
  mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
  if (!mNumberChannelDescriptions)
  {
    return 0;
  }

  v2 = 0;
  mChannelDescriptions = a1->mChannelDescriptions;
  do
  {
    mChannelLabel = mChannelDescriptions->mChannelLabel;
    ++mChannelDescriptions;
    v4 = mChannelLabel;
    v6 = v2 | 0x200;
    v7 = v2 | 0x10;
    v8 = v2 | 0x20;
    if (mChannelLabel != 36)
    {
      v8 = v2;
    }

    if (v4 != 35)
    {
      v7 = v8;
    }

    if (v4 != 34)
    {
      v6 = v7;
    }

    v9 = v2 | 0x40;
    v10 = v2 | 0x80;
    v11 = v2 | 0x100;
    if (v4 != 33)
    {
      v11 = v2;
    }

    if (v4 != 11)
    {
      v10 = v11;
    }

    if (v4 != 10)
    {
      v9 = v10;
    }

    if (v4 <= 33)
    {
      v6 = v9;
    }

    v12 = v2 | 4;
    v13 = v2 | 8;
    v14 = v2 | 0x800;
    if (v4 != 9)
    {
      v14 = v2;
    }

    if (v4 != 6)
    {
      v13 = v14;
    }

    if (v4 != 5)
    {
      v12 = v13;
    }

    v15 = v2 | 1;
    v16 = v2 | 2;
    if (v4 == 3)
    {
      v2 |= 0x400u;
    }

    if (v4 == 2)
    {
      v2 = v16;
    }

    if (v4 == 1)
    {
      v2 = v15;
    }

    if (v4 > 4)
    {
      v2 = v12;
    }

    if (v4 > 9)
    {
      v2 = v6;
    }

    --mNumberChannelDescriptions;
  }

  while (mNumberChannelDescriptions);
  if ((~v2 & 0xC0F) != 0)
  {
    return 0;
  }

  if (v2 == 3135)
  {
    return 1;
  }

  if (v2 != 3855)
  {
    if (v2 == 3279)
    {
      return 3;
    }

    return 0;
  }

  return 2;
}

uint64_t AT::RingBuffer::Store(AT::RingBuffer *this, const AudioBufferList *a2, unsigned int a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(this + 6);
  if (*(v5 + 40) < a3)
  {
    return 3;
  }

  if ((*(v5 + 168) & 1) == 0 && **(v5 + 64) != a2->mNumberBuffers)
  {
    return 4294967291;
  }

  v9 = a4 + a3;
  v10 = v5 + 176;
  v11 = (v5 + 944);
  v12 = atomic_load((v5 + 944));
  if (*(v5 + 176 + 24 * (v12 & 0x1F) + 8) > a4 || *(v5 + 948) == 1 && *(v5 + 949) == 1)
  {
    v13 = atomic_load(v11);
    v14 = v10 + 24 * (++v13 & 0x1F);
    *v14 = a4;
    *(v14 + 8) = a4;
    *(v14 + 16) = v13;
    atomic_store(v13, v11);
    *(v5 + 948) = 0;
  }

  else
  {
    v15 = (v5 + 944);
    v16 = atomic_load((v5 + 944));
    v17 = *(v5 + 40);
    if (v9 - *(v10 + 24 * (v16 & 0x1F)) > v17)
    {
      v18 = v9 - v17;
      v19 = atomic_load(v15);
      v20 = *(v10 + 24 * (v19 & 0x1F) + 8);
      v21 = atomic_load(v15);
      v22 = v21 + 1;
      v23 = v10 + 24 * (v22 & 0x1F);
      *v23 = v18;
      if (v18 <= v20)
      {
        v18 = v20;
      }

      *(v23 + 8) = v18;
      *(v23 + 16) = v22;
      atomic_store(v22, v15);
    }
  }

  v24 = atomic_load((v5 + 944));
  v25 = *(v10 + 24 * (v24 & 0x1F) + 8);
  v26 = *(v5 + 40);
  v27 = *(v5 + 48);
  if (v25 >= a4)
  {
    v29 = ((((a4 % v26) >> 63) & v26) + (a4 % v26)) * v27;
  }

  else
  {
    v28 = ((((v25 % v26) >> 63) & v26) + (v25 % v26)) * v27;
    v29 = ((((a4 % v26) >> 63) & v26) + (a4 % v26)) * v27;
    v30 = *(v5 + 64);
    if (v28 >= v29)
    {
      if (*v30)
      {
        v103 = v5 + 176;
        v104 = a4 + a3;
        v33 = 0;
        v34 = *(v5 + 52) - v28;
        v35 = 4;
        do
        {
          bzero((*&v30[v35] + v28), v34);
          ++v33;
          v35 += 4;
        }

        while (v33 < *v30);
        v36 = *(v5 + 64);
        if (*v36)
        {
          v37 = 0;
          v38 = 4;
          v10 = v5 + 176;
          do
          {
            bzero(*&v36[v38], v29);
            ++v37;
            v38 += 4;
          }

          while (v37 < *v36);
          v9 = v104;
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    else if (*v30)
    {
      v103 = v5 + 176;
      v104 = a4 + a3;
      v31 = 0;
      v32 = 4;
      do
      {
        bzero((*&v30[v32] + v28), v29 - v28);
        ++v31;
        v32 += 4;
      }

      while (v31 < *v30);
LABEL_30:
      v10 = v103;
      v9 = v104;
    }
  }

LABEL_31:
  LODWORD(v39) = *(v5 + 40);
  v40 = v9 % v39;
  v41 = (((v40 >> 63) & v39) + v40) * *(v5 + 48);
  v42 = v41 - v29;
  if (v41 <= v29)
  {
    if (*(v5 + 168))
    {
      v56 = (((a4 % v39) >> 63) & v39) + a4 % v39;
      v57 = v39 - v56;
      if (v39 != v56)
      {
        v58 = *(v5 + 112);
        v59 = *v58;
        if (v59)
        {
          v60 = *(v5 + 96) * v57;
          v61 = v58 + 4;
          p_mData = &a2->mBuffers[0].mData;
          do
          {
            v63 = *p_mData;
            p_mData += 2;
            *v61 = v63;
            *(v61 - 1) = v60;
            v61 += 2;
            --v59;
          }

          while (v59);
        }

        v64 = *(v5 + 136);
        v65 = *v64;
        if (v65)
        {
          v66 = *(v5 + 24) * v57;
          v67 = v64 + 4;
          v68 = (*(v5 + 64) + 16);
          do
          {
            v69 = *v68;
            v68 += 2;
            *v67 = v69 + v29;
            *(v67 - 1) = v66;
            v67 += 2;
            --v65;
          }

          while (v65);
        }

        v70 = *(v5 + 160);
        v112 = v57;
        v110 = v64;
        v111 = v58;
        v105 = &v112;
        v106 = &v111;
        v107 = &v110;
        v108 = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>;
        v109 = &v105;
        with_resolved_rt(v70, &v108);
        v39 = *(v5 + 40);
        v40 = v9 % v39;
      }

      v71 = ((v40 >> 63) & v39) + v40;
      if (v71)
      {
        v72 = *(v5 + 112);
        v73 = *v72;
        if (v73)
        {
          v74 = *(v5 + 96);
          v75 = v74 * v57;
          v76 = v74 * v71;
          v77 = v72 + 4;
          v78 = &a2->mBuffers[0].mData;
          do
          {
            v79 = *v78;
            v78 += 2;
            *v77 = &v79[v75];
            *(v77 - 1) = v76;
            v77 += 2;
            --v73;
          }

          while (v73);
        }

        v80 = *(v5 + 136);
        v81 = *v80;
        if (v81)
        {
          v82 = *(v5 + 24) * v71;
          v83 = v80 + 4;
          v84 = (*(v5 + 64) + 16);
          do
          {
            v85 = *v84;
            v84 += 2;
            *v83 = v85;
            *(v83 - 1) = v82;
            v83 += 2;
            --v81;
          }

          while (v81);
        }

        v86 = *(v5 + 160);
        v112 = v71;
        v110 = v80;
        v111 = v72;
        v105 = &v112;
        v106 = &v111;
        v107 = &v110;
        v108 = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>;
        v109 = &v105;
        with_resolved_rt(v86, &v108);
      }
    }

    else
    {
      v90 = *(v5 + 64);
      if (*v90)
      {
        v91 = v10;
        v92 = v9;
        v93 = 0;
        v94 = *(v5 + 52) - v29;
        v95 = 4;
        do
        {
          memcpy((*&v90[v95] + v29), *(&a2->mNumberBuffers + v95 * 4), v94);
          ++v93;
          v95 += 4;
        }

        while (v93 < *v90);
        v96 = *(v5 + 64);
        v9 = v92;
        v10 = v91;
        if (*v96)
        {
          v97 = 0;
          v98 = 4;
          do
          {
            memcpy(*&v96[v98], (*(&a2->mNumberBuffers + v98 * 4) + v94), v41);
            ++v97;
            v98 += 4;
          }

          while (v97 < *v96);
        }
      }
    }
  }

  else if (*(v5 + 168))
  {
    v43 = *(v5 + 112);
    v44 = *v43;
    if (v44)
    {
      v45 = *(v5 + 96) * a3;
      v46 = v43 + 4;
      v47 = &a2->mBuffers[0].mData;
      do
      {
        v48 = *v47;
        v47 += 2;
        *v46 = v48;
        *(v46 - 1) = v45;
        v46 += 2;
        --v44;
      }

      while (v44);
    }

    v49 = *(v5 + 136);
    v50 = *v49;
    if (v50)
    {
      v51 = *(v5 + 24) * a3;
      v52 = v49 + 4;
      v53 = (*(v5 + 64) + 16);
      do
      {
        v54 = *v53;
        v53 += 2;
        *v52 = v54 + v29;
        *(v52 - 1) = v51;
        v52 += 2;
        --v50;
      }

      while (v50);
    }

    v55 = *(v5 + 160);
    v112 = a3;
    v110 = v49;
    v111 = v43;
    v105 = &v112;
    v106 = &v111;
    v107 = &v110;
    v108 = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>;
    v109 = &v105;
    with_resolved_rt(v55, &v108);
  }

  else
  {
    v87 = *(v5 + 64);
    if (*v87)
    {
      v88 = 0;
      v89 = 4;
      do
      {
        memcpy((*&v87[v89] + v29), *(&a2->mNumberBuffers + v89 * 4), v42);
        ++v88;
        v89 += 4;
      }

      while (v88 < *v87);
    }
  }

  result = 0;
  v99 = atomic_load((v5 + 944));
  v100 = *(v10 + 24 * (v99 & 0x1F));
  v101 = atomic_load((v5 + 944));
  v102 = v10 + 24 * (++v101 & 0x1F);
  *v102 = v100;
  *(v102 + 8) = v9;
  *(v102 + 16) = v101;
  atomic_store(v101, (v5 + 944));
  return result;
}

uint64_t singleSurroundPairCompatibility(AudioChannelLayout *a1, AudioChannelLayout *a2)
{
  SingleSurroundPairStyle = getSingleSurroundPairStyle(a1);
  result = getSingleSurroundPairStyle(a2);
  if (SingleSurroundPairStyle <= 1)
  {
    if (!SingleSurroundPairStyle)
    {
      return result;
    }

    if (result != 3)
    {
      if (result != 2)
      {
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (SingleSurroundPairStyle == 2)
  {
    if (result == 3)
    {
LABEL_8:

      return transformSurroundsToRear(a1);
    }
  }

  else if (result == 2)
  {
LABEL_17:

    return transformSurroundsToSideDirect(a1);
  }

  if (result == 1)
  {

    return transformSurroundsToSide(a1);
  }

  return result;
}

uint64_t getSingleSurroundPairStyle(const AudioChannelLayout *a1)
{
  mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions - 7 < 0xFFFFFFFE)
  {
    return 0;
  }

  v2 = 0;
  mChannelDescriptions = a1->mChannelDescriptions;
  v4 = a1->mNumberChannelDescriptions;
  do
  {
    mChannelLabel = mChannelDescriptions->mChannelLabel;
    ++mChannelDescriptions;
    v5 = mChannelLabel;
    v7 = v2 | 0x80;
    v8 = v2 | 0x100;
    v9 = v2 | 0x200;
    if (mChannelLabel != 34)
    {
      v9 = v2;
    }

    if (v5 != 33)
    {
      v8 = v9;
    }

    if (v5 != 11)
    {
      v7 = v8;
    }

    v10 = v2 | 0x20;
    v11 = v2 | 0x40;
    if (v5 != 10)
    {
      v11 = v2;
    }

    if (v5 != 6)
    {
      v10 = v11;
    }

    if (v5 <= 10)
    {
      v7 = v10;
    }

    v12 = v2 | 4;
    v13 = v2 | 8;
    v14 = v2 | 0x10;
    if (v5 != 5)
    {
      v14 = v2;
    }

    if (v5 != 4)
    {
      v13 = v14;
    }

    if (v5 != 3)
    {
      v12 = v13;
    }

    v15 = v2 | 1;
    if (v5 == 2)
    {
      v2 |= 2u;
    }

    if (v5 == 1)
    {
      v2 = v15;
    }

    if (v5 > 2)
    {
      v2 = v12;
    }

    if (v5 > 5)
    {
      v2 = v7;
    }

    --v4;
  }

  while (v4);
  v16 = mNumberChannelDescriptions == 6 ? v2 & 0xFFFFFFF7 : v2;
  if ((~v16 & 7) != 0)
  {
    return 0;
  }

  if (v16 == 55)
  {
    return 1;
  }

  if (v16 != 775)
  {
    if (v16 == 199)
    {
      return 2;
    }

    return 0;
  }

  return 3;
}

uint64_t ChannelLabelReduceMatrixStereo(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = (result + 12);
    v7 = (result + 12);
    v8 = *(result + 8);
    do
    {
      v10 = *v7;
      v7 += 5;
      v9 = v10;
      if (v10 > 37)
      {
        if (v9 == 39)
        {
          v3 = 1;
        }

        else if (v9 == 38)
        {
          v5 = 1;
        }
      }

      else if (v9 == 1)
      {
        v2 = 1;
      }

      else if (v9 == 2)
      {
        v4 = 1;
      }

      --v8;
    }

    while (v8);
    if ((v2 & v5 & 1) == 0 && (v4 & v3 & 1) == 0)
    {
      do
      {
        if (*v6 == 39)
        {
          v11 = 2;
        }

        else
        {
          v11 = *v6;
        }

        if (*v6 == 38)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        *v6 = v12;
        v6 += 5;
        --v1;
      }

      while (v1);
    }
  }

  return result;
}

uint64_t AudioFormatProperty_GetABitmapForCompare(const AudioChannelLayout *a1)
{
  mChannelLayoutTag = a1->mChannelLayoutTag;
  if (!a1->mChannelLayoutTag)
  {
    mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
    if (!mNumberChannelDescriptions)
    {
      return 0;
    }

    LODWORD(result) = 0;
    mChannelDescriptions = a1->mChannelDescriptions;
    do
    {
      mChannelLabel = mChannelDescriptions->mChannelLabel;
      ++mChannelDescriptions;
      v6 = mChannelLabel;
      if (mChannelLabel > 207)
      {
        if (v6 == 302)
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }

        if (v6 == 301)
        {
          v8 = 1;
        }

        if (v6 == 209)
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        if (v6 == 208)
        {
          v9 = 1;
        }

        if (v6 <= 300)
        {
          v8 = v9;
        }
      }

      else
      {
        v8 = 0;
        switch(v6)
        {
          case 1:
          case 38:
            v8 = 1;
            break;
          case 2:
          case 39:
            v8 = 2;
            break;
          case 3:
          case 42:
            v8 = 4;
            break;
          case 4:
          case 37:
            v8 = 8;
            break;
          case 5:
            v8 = 16;
            break;
          case 6:
            v8 = 32;
            break;
          case 7:
            v8 = 64;
            break;
          case 8:
            v8 = 128;
            break;
          case 9:
            v8 = 256;
            break;
          case 10:
            v8 = 512;
            break;
          case 11:
            v8 = 1024;
            break;
          case 12:
            v8 = 2048;
            break;
          case 13:
            v8 = 4096;
            break;
          case 14:
            v8 = 0x2000;
            break;
          case 15:
            v8 = 0x4000;
            break;
          case 16:
            v8 = 0x8000;
            break;
          case 17:
            v8 = 0x10000;
            break;
          case 18:
            v8 = 0x20000;
            break;
          case 33:
            v8 = 0x20000000;
            break;
          case 34:
            v8 = 0x40000000;
            break;
          case 35:
            v8 = 0x8000000;
            break;
          case 36:
            v8 = 0x10000000;
            break;
          case 49:
            v8 = 0x200000;
            break;
          case 51:
            v8 = 0x800000;
            break;
          case 52:
            v8 = 0x1000000;
            break;
          case 53:
            v8 = 0x2000000;
            break;
          case 54:
            v8 = 0x4000000;
            break;
          default:
            break;
        }
      }

      result = v8 | result;
      --mNumberChannelDescriptions;
    }

    while (mNumberChannelDescriptions);
    return result;
  }

  if (mChannelLayoutTag == 0x10000)
  {
    return a1->mChannelBitmap;
  }

  if (mChannelLayoutTag <= 10223622)
  {
    if (mChannelLayoutTag <= 8323079)
    {
      if (mChannelLayoutTag <= 7471106)
      {
        if (mChannelLayoutTag > 7012355)
        {
          if (mChannelLayoutTag > 7208965)
          {
            if (mChannelLayoutTag <= 7340039)
            {
              if (mChannelLayoutTag != 7208966)
              {
                if (mChannelLayoutTag == 7274504)
                {
                  return 1847;
                }

                return 0;
              }

              return 311;
            }

            if (mChannelLayoutTag == 7340040)
            {
              return 83906611;
            }

            if (mChannelLayoutTag != 7405571)
            {
              return 0;
            }

            return 7;
          }

          if (mChannelLayoutTag == 7012356)
          {
            return 0;
          }

          if (mChannelLayoutTag != 7077892)
          {
            v15 = 7143429;
LABEL_180:
            if (mChannelLayoutTag != v15)
            {
              return 0;
            }

            return 55;
          }

          return 51;
        }

        if (mChannelLayoutTag > 6750209)
        {
          if (mChannelLayoutTag == 6750210 || mChannelLayoutTag == 6881282)
          {
            return 3;
          }

          v11 = 6946818;
        }

        else
        {
          if (mChannelLayoutTag == 6553601)
          {
            return 4;
          }

          if (mChannelLayoutTag == 6619138)
          {
            return 3;
          }

          v11 = 6684674;
        }

        if (mChannelLayoutTag != v11)
        {
          return 0;
        }

        return 3;
      }

      if (mChannelLayoutTag > 7864324)
      {
        if (mChannelLayoutTag <= 8060933)
        {
          if (mChannelLayoutTag == 7864325)
          {
            return 55;
          }

          if (mChannelLayoutTag != 7929862)
          {
            v10 = 7995398;
LABEL_189:
            if (mChannelLayoutTag != v10)
            {
              return 0;
            }
          }
        }

        else
        {
          if (mChannelLayoutTag > 8192006)
          {
            if (mChannelLayoutTag == 8192007)
            {
              return 319;
            }

            v12 = 8257544;
            goto LABEL_222;
          }

          if (mChannelLayoutTag != 8060934)
          {
            v10 = 8126470;
            goto LABEL_189;
          }
        }

        return 63;
      }

      if (mChannelLayoutTag > 7667716)
      {
        if (mChannelLayoutTag == 7667717 || mChannelLayoutTag == 7733253)
        {
          return 55;
        }

        v15 = 7798789;
        goto LABEL_180;
      }

      if (mChannelLayoutTag == 7471107)
      {
        return 7;
      }

      if (mChannelLayoutTag == 7536644)
      {
        return 263;
      }

      v13 = 7602180;
LABEL_213:
      if (mChannelLayoutTag != v13)
      {
        return 0;
      }

      return 263;
    }

    if (mChannelLayoutTag > 9175046)
    {
      if (mChannelLayoutTag <= 9764865)
      {
        if (mChannelLayoutTag <= 9371654)
        {
          if (mChannelLayoutTag != 9175047)
          {
            if (mChannelLayoutTag == 9240582)
            {
              return 311;
            }

            v14 = 9306119;
            goto LABEL_168;
          }

          return 1610612791;
        }

        if (mChannelLayoutTag == 9371655)
        {
          return 1610612791;
        }

        if (mChannelLayoutTag == 9437192)
        {
          return 1610613047;
        }

        if (mChannelLayoutTag != 9699335)
        {
          return 0;
        }

        return 247;
      }

      if (mChannelLayoutTag <= 9961475)
      {
        if (mChannelLayoutTag == 9764866)
        {
          return 12;
        }

        if (mChannelLayoutTag == 9830403)
        {
          return 7;
        }

        v13 = 9895940;
        goto LABEL_213;
      }

      if (mChannelLayoutTag > 10092548)
      {
        if (mChannelLayoutTag == 10092549)
        {
          return 271;
        }

        v17 = 10158086;
LABEL_227:
        if (mChannelLayoutTag != v17)
        {
          return 0;
        }

        return 311;
      }

      if (mChannelLayoutTag == 9961476)
      {
        return 15;
      }

      if (mChannelLayoutTag != 10027012)
      {
        return 0;
      }
    }

    else
    {
      if (mChannelLayoutTag <= 8716290)
      {
        if (mChannelLayoutTag <= 8519687)
        {
          if (mChannelLayoutTag == 8323080)
          {
            return 255;
          }

          if (mChannelLayoutTag == 8388616)
          {
            return 1610612799;
          }

          v12 = 8454152;
LABEL_222:
          if (mChannelLayoutTag != v12)
          {
            return 0;
          }

          return 255;
        }

        if (mChannelLayoutTag != 8519688)
        {
          if (mChannelLayoutTag == 8585219)
          {
            return 259;
          }

          if (mChannelLayoutTag != 8650756)
          {
            return 0;
          }

          return 51;
        }

        return 63;
      }

      if (mChannelLayoutTag > 8912899)
      {
        if (mChannelLayoutTag <= 9043972)
        {
          if (mChannelLayoutTag == 8912900)
          {
            return 15;
          }

          if (mChannelLayoutTag != 8978437)
          {
            return 0;
          }

          return 271;
        }

        if (mChannelLayoutTag != 9043973)
        {
          v17 = 9109510;
          goto LABEL_227;
        }

        return 59;
      }

      if (mChannelLayoutTag == 8716291)
      {
        return 11;
      }

      if (mChannelLayoutTag != 8781828)
      {
        if (mChannelLayoutTag != 8847365)
        {
          return 0;
        }

        return 59;
      }
    }

    return 267;
  }

  if (mChannelLayoutTag <= 11927558)
  {
    if (mChannelLayoutTag <= 11075588)
    {
      if (mChannelLayoutTag > 10616839)
      {
        if (mChannelLayoutTag <= 10813447)
        {
          if (mChannelLayoutTag == 10616840)
          {
            return 1599;
          }

          if (mChannelLayoutTag != 10682376)
          {
            if (mChannelLayoutTag == 10747912)
            {
              return 20543;
            }

            return 0;
          }

          return 402653247;
        }

        if (mChannelLayoutTag <= 10944519)
        {
          if (mChannelLayoutTag != 10813448)
          {
            if (mChannelLayoutTag == 10878984)
            {
              return 8511;
            }

            return 0;
          }

          return 2367;
        }

        if (mChannelLayoutTag == 10944520)
        {
          return 10303;
        }

        if (mChannelLayoutTag != 11010052)
        {
          return 0;
        }

        return 15;
      }

      if (mChannelLayoutTag <= 10420230)
      {
        if (mChannelLayoutTag != 10223623)
        {
          if (mChannelLayoutTag != 10289159)
          {
            if (mChannelLayoutTag == 10354695)
            {
              return 2111;
            }

            return 0;
          }

          return 319;
        }

        return 1610612791;
      }

      if (mChannelLayoutTag == 10420231)
      {
        return 8255;
      }

      if (mChannelLayoutTag == 10485768)
      {
        return 1610612799;
      }

      v12 = 10551304;
      goto LABEL_222;
    }

    if (mChannelLayoutTag > 11468806)
    {
      if (mChannelLayoutTag > 11665415)
      {
        if (mChannelLayoutTag > 11796488)
        {
          if (mChannelLayoutTag != 11796489)
          {
            if (mChannelLayoutTag == 11862025)
            {
              return 511;
            }

            return 0;
          }

          return 1610612987;
        }

        else
        {
          if (mChannelLayoutTag != 11665416)
          {
            if (mChannelLayoutTag == 11730952)
            {
              return 503;
            }

            return 0;
          }

          return 1610612979;
        }
      }

      if (mChannelLayoutTag == 11468807)
      {
        return 1610613007;
      }

      if (mChannelLayoutTag != 11534343)
      {
        v12 = 11599880;
        goto LABEL_222;
      }

      return 247;
    }

    if (mChannelLayoutTag > 11272197)
    {
      if (mChannelLayoutTag == 11272198)
      {
        return 1610612999;
      }

      if (mChannelLayoutTag != 11337735)
      {
        if (mChannelLayoutTag == 11403271)
        {
          return 1610614799;
        }

        return 0;
      }

      return 251;
    }

    if (mChannelLayoutTag != 11075589)
    {
      if (mChannelLayoutTag != 11141126)
      {
        if (mChannelLayoutTag == 11206662)
        {
          return 1610614791;
        }

        return 0;
      }

      return 243;
    }

    return 271;
  }

  if (mChannelLayoutTag <= 12976133)
  {
    if (mChannelLayoutTag > 12386311)
    {
      if (mChannelLayoutTag <= 12713991)
      {
        if (mChannelLayoutTag != 12386312)
        {
          if (mChannelLayoutTag != 12582924)
          {
            if (mChannelLayoutTag == 12648464)
            {
              return 2107658303;
            }

            return 0;
          }

          return 1694519359;
        }

        return 1610612799;
      }

      if (mChannelLayoutTag <= 12845065)
      {
        if (mChannelLayoutTag != 12713992)
        {
          if (mChannelLayoutTag == 12779530)
          {
            return 83906623;
          }

          return 0;
        }

        return 10485823;
      }

      if (mChannelLayoutTag == 12845066)
      {
        return 1621098559;
      }

      v13 = 12910596;
      goto LABEL_213;
    }

    if (mChannelLayoutTag <= 12189700)
    {
      if (mChannelLayoutTag != 11927559)
      {
        if (mChannelLayoutTag != 11993096)
        {
          if (mChannelLayoutTag == 12124164)
          {
            return 1610612739;
          }

          return 0;
        }

        return 1610612799;
      }

      return 319;
    }

    if (mChannelLayoutTag == 12189701)
    {
      return 1610612743;
    }

    if (mChannelLayoutTag == 12255238)
    {
      return 1610612751;
    }

    v14 = 12320775;
LABEL_168:
    if (mChannelLayoutTag != v14)
    {
      return 0;
    }

    return 319;
  }

  if (mChannelLayoutTag > 13959173)
  {
    if (mChannelLayoutTag <= 14155780)
    {
      if (mChannelLayoutTag == 13959174)
      {
        return 1610612751;
      }

      if (mChannelLayoutTag == 14024711)
      {
        return 319;
      }

      v16 = 14090248;
    }

    else
    {
      if (mChannelLayoutTag <= 14286854)
      {
        if (mChannelLayoutTag != 14155781)
        {
          if (mChannelLayoutTag != 14221318)
          {
            return 0;
          }

          return 1610612751;
        }

        return 1610612743;
      }

      if (mChannelLayoutTag == 14286855)
      {
        return 319;
      }

      v16 = 14352392;
    }

    if (mChannelLayoutTag == v16)
    {
      return 1610612799;
    }

    return 0;
  }

  if (mChannelLayoutTag <= 13172743)
  {
    if (mChannelLayoutTag != 12976134)
    {
      if (mChannelLayoutTag == 13041671)
      {
        return 319;
      }

      v14 = 13107207;
      goto LABEL_168;
    }

    return 311;
  }

  if (mChannelLayoutTag <= 13303821)
  {
    if (mChannelLayoutTag != 13172744)
    {
      if (mChannelLayoutTag != 13238284)
      {
        return 0;
      }

      return 1694519359;
    }

    return 1610612799;
  }

  if (mChannelLayoutTag != 13303822)
  {
    if (mChannelLayoutTag == 13893637)
    {
      return 1610612743;
    }

    return 0;
  }

  return 1705005119;
}

uint64_t optionallyMixInNonSpeakerChannels(AudioChannelLayout *a1, int a2, AudioChannelLayout *a3, uint64_t a4, float *a5)
{
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      mChannelLabel = a1->mChannelDescriptions[v10].mChannelLabel;
      if (mChannelLabel < 0x20000)
      {
        if (mChannelLabel == -1)
        {
          if (v10 < v6)
          {
            *(a4 + 4 * (v12 + v10)) = *(a4 + 4 * (v12 + v10)) + 1.0;
          }
        }

        else if (mChannelLabel == 200)
        {
          goto LABEL_14;
        }
      }

      else if (mChannelLabel == 0x20000 || mChannelLabel == 196608 || mChannelLabel == 0x40000)
      {
LABEL_14:
        if (v6)
        {
          v14 = v6;
          do
          {
            *(a4 + 4 * v12) = *(a4 + 4 * v12) + 0.5;
            ++v12;
            --v14;
          }

          while (v14);
        }

        v11 = 1;
        goto LABEL_21;
      }

      v12 += v6;
LABEL_21:
      if (++v10 == a2)
      {
        return v11 & 1;
      }
    }
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t SanitizeClientAudioChannelLayout(AudioChannelLayout const*,unsigned int)::$_0::__invoke(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x193ADF1F0);
  }

  return result;
}

void Resampler2::Resampler2(Resampler2 *this, double a2, double a3, int a4, int a5, uint64_t a6, double a7, char a8)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F032E4F8;
  *(this + 24) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 28) = a5;
  *(this + 29) = a4;
  *(this + 31) = 0;
  *(this + 66) = 0;
  *(this + 18) = a7;
  *(this + 20) = 0;
  v12 = a2 / a3;
  *(this + 21) = v12;
  *(this + 22) = 1.0 / v12;
  *(this + 184) = a8;
  *(this + 185) = 0;
  *(this + 24) = 0;
  *(this + 200) = 1;
  RateRamp::RateRamp((this + 208));
  *(this + 264) = 0;
  *(this + 34) = 0;
  Resampler2::ConstructorBody(this, 1, a6, a2, a3, 0.0, 0.0);
}

uint64_t Resampler2::ConstructorBody(Resampler2 *a1, int a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v11 = a5;
  v12 = a4;
  v58 = *MEMORY[0x1E69E9840];
  if (a4 <= 0.0 || a5 <= 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = 136315906;
      v51 = "Resampler2.cpp";
      v52 = 1024;
      v53 = 260;
      v54 = 2048;
      v55 = v12;
      v56 = 2048;
      v57 = v11;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Resampler2 bad sample rate(s) : %11.2f %11.2f", &v50, 0x26u);
    }

    if (v12 > 0.0 || v11 > 0.0)
    {
      if (v11 <= 0.0 && v12 > 0.0)
      {
        v15 = v12;
      }

      else
      {
        v15 = v11;
      }

      if (v12 <= 0.0)
      {
        v12 = v11;
      }

      v11 = v15;
    }

    else
    {
      v11 = 44100.0;
      v12 = 44100.0;
    }
  }

  v16 = *(a1 + 29);
  if (v16 == 1818848869)
  {
    *(a1 + 9) = 0x200200000001;
    *(a1 + 24) = 1;
    v17 = 8194;
    goto LABEL_71;
  }

  v18 = vcvtmd_s64_f64(v12);
  v19 = vcvtmd_s64_f64(v11);
  if (v12 != v18 || v11 != v19)
  {
    goto LABEL_43;
  }

  v21 = v18 >= 0 ? v18 : -v18;
  v22 = v19 >= 0 ? v19 : -v19;
  if (v21 >= 2 && v22 >= 2)
  {
    do
    {
      if (v21 <= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v21 < v22)
      {
        v22 = v21;
      }

      v21 = v24 % v22;
    }

    while (v24 % v22);
  }

  else
  {
    v22 = 1;
  }

  v25 = v19 / v22;
  if (v19 / v22 <= 640)
  {
    *(a1 + 133) = 1;
    *(a1 + 27) = v18 / v22;
    *(a1 + 31) = v25;
    *(a1 + 19) = 1.0 / v25;
  }

  else
  {
LABEL_43:
    if (v16 == 1650553971)
    {
      v25 = 512;
    }

    else
    {
      v25 = 128;
    }
  }

  if (a2 == 2)
  {
    v26 = *(a1 + 21);
    v27 = fmax(v26, 1.0);
    if (v26 <= 1.0)
    {
      v26 = 1.0 / v26;
    }

    v28 = ((a6 + -6.0) * (v26 * 0.07016) / (1.0 - v27 * a7) / v25);
    goto LABEL_60;
  }

  v29 = *(a1 + 28);
  v30 = *(a1 + 21);
  v31 = fmax(v30, 1.0);
  v32 = 1.0 / v31;
  if (v16 != 1650553971)
  {
    if (v29 < 0x7F)
    {
      a7 = v32 * 0.9;
      if (v29 <= 0x5F)
      {
        if (v29 <= 0x3F)
        {
          a6 = 80.0;
        }

        else
        {
          a6 = 90.0;
        }

        if (v29 <= 0x3F)
        {
          v35 = 16;
        }

        else
        {
          v35 = 32;
        }
      }

      else
      {
        v35 = 64;
        a6 = 100.0;
      }
    }

    else
    {
      a6 = dbl_18F9018E0[v30 < 1.09];
      a7 = v32 * 0.9;
      v35 = 96;
    }

    goto LABEL_61;
  }

  if (v29 > 0x7E)
  {
    v33 = 1152.0;
    v34 = 0.99;
LABEL_57:
    v36 = 160.0;
    goto LABEL_58;
  }

  if (v29 > 0x5F)
  {
    v33 = 555.0;
    v34 = 0.98;
    goto LABEL_57;
  }

  if (v29 <= 0x3F)
  {
    v34 = dbl_18F9018F0[v29 > 0x1F];
    if (v29 <= 0x1F)
    {
      a6 = 120.0;
    }

    else
    {
      a6 = 144.0;
    }

    v33 = 88.2;
    if (v29 > 0x1F)
    {
      v33 = 192.0;
    }

    goto LABEL_59;
  }

  v33 = 323.4;
  v34 = 0.97;
  v36 = 144.0;
LABEL_58:
  a6 = v36;
LABEL_59:
  a7 = v32 * v34;
  v28 = vcvtpd_s64_f64(v31 * v33);
LABEL_60:
  v35 = (v28 + 15) & 0xFFFFFFF0;
LABEL_61:
  if (v35 <= 96)
  {
    v37 = 96;
  }

  else
  {
    v37 = v35;
  }

  pthread_mutex_lock(&sInitLocker);
  if (sIsInitialized != 1)
  {
    operator new();
  }

  *(a1 + 7) = SincKernelFactory::ReferenceSincKernel(sSincKernelFactory, a6, a7);
  pthread_mutex_unlock(&sInitLocker);
  *(a1 + 6) = *(a1 + 7);
  if (*(a1 + 184) == 1)
  {
    v38 = v37 + 0x2000;
  }

  else
  {
    v38 = vcvtpd_u64_f64(v37 + *(a1 + 21) * 1024.0);
  }

  *(a1 + 19) = v38;
  (*(*a1 + 96))(a1, a3);
  v17 = *(a1 + 19);
LABEL_71:
  v39 = malloc_type_malloc(4 * v17, 0xA7392CC8uLL);
  v40 = v39;
  if (v17 && !v39)
  {
    exception = __cxa_allocate_exception(8uLL);
    v47 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v39, 4 * v17);
  *(a1 + 10) = v40;
  v41 = *(a1 + 19);
  v42 = malloc_type_malloc(4 * v41, 0x3978D4E8uLL);
  v43 = v42;
  if (v41 && !v42)
  {
    v48 = __cxa_allocate_exception(8uLL);
    v49 = std::bad_alloc::bad_alloc(v48);
  }

  bzero(v42, 4 * v41);
  *(a1 + 11) = v43;
  v44 = *MEMORY[0x1E69E5090];
  if (*MEMORY[0x1E69E5090] == -1)
  {
    v44 = CAVectorUnit_Examine();
  }

  *(a1 + 32) = v44;
  return Resampler2::SetConverterFunction(a1);
}

void sub_18F6201BC(_Unwind_Exception *a1)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  v4 = MEMORY[0x193ADF220](v1, 0x80C40D6874129);
  ResamplerInitLocker::~ResamplerInitLocker(v4);
  _Unwind_Resume(a1);
}

uint64_t Resampler2::SetPrimeMethod(uint64_t this, int a2)
{
  v2 = this;
  if (*(this + 116) == 1818848869)
  {
    *(this + 72) = 1;
  }

  else
  {
    *(this + 120) = a2;
    if (a2)
    {
      if (a2 == 2)
      {
        this = (*(*this + 152))(this);
        a2 = this - 1;
      }

      else
      {
        a2 = *(*(this + 56) + 20);
      }
    }

    *(v2 + 72) = a2;
    *(v2 + 192) = 0;
    *(v2 + 200) = 1;
    v3 = *(v2 + 144);
    *(v2 + 160) = v3;
    if (v3 != 0.0)
    {
      *(v2 + 133) = 0;

      return Resampler2::SetConverterFunction(v2);
    }
  }

  return this;
}

uint64_t Resampler2::GetKernelSize(Resampler2 *this)
{
  if (*(this + 29) == 1818848869)
  {
    return 2;
  }

  else
  {
    return *(*(this + 7) + 12);
  }
}

uint64_t Resampler2::SetConverterFunction(uint64_t this)
{
  if (*(this + 116) == 1818848869)
  {
    v1 = Resampler2::ConvertLinear;
  }

  else if (*(this + 128) < 1)
  {
    if (*(this + 264) == 1)
    {
      v1 = Resampler2::ConvertScalar<Resampler2::RampedRate>;
    }

    else
    {
      v1 = Resampler2::ConvertScalar<Resampler2::FixedRate>;
    }
  }

  else if (*(this + 133) == 1)
  {
    v1 = Resampler2::ConvertSIMD_SmallIntegerRatio;
  }

  else if (*(this + 264) == 1)
  {
    v1 = Resampler2::ConvertSIMD<Resampler2::RampedRate>;
  }

  else
  {
    v1 = Resampler2::ConvertSIMD<Resampler2::FixedRate>;
  }

  *(this + 8) = v1;
  *(this + 16) = 0;
  return this;
}

uint64_t Resampler2::GetPrimeInfo(uint64_t this, AudioConverterPrimeInfo *a2)
{
  if ((*(this + 120) | 2) == 2)
  {
    v2 = 0.5;
    if (*(this + 116) != 1818848869)
    {
      v2 = *(this + 168) + *(*(this + 56) + 20);
    }

    v3 = vcvtpd_u64_f64(v2);
  }

  else
  {
    v3 = 0;
  }

  a2->leadingFrames = v3;
  a2->trailingFrames = v3;
  return this;
}

unint64_t AT::RingBuffer::FetchAllWithZeroes(AT::RingBuffer *this, AudioBufferList *a2, unsigned int a3, uint64_t a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  v13 = *(this + 6);
  v14 = *(v13 + 48) * a3;
  v15 = a4 + a3;
  v68 = 0;
  v67 = 0;
  v16 = AT::RingBuffer::Impl::CheckTimeBounds2(v13, a4, v15, &v68, &v67);
  if (v16 == 4)
  {
    *a5 = a3;
    *a7 = 0;
    *a6 = 0;
    if (a2->mNumberBuffers)
    {
      v17 = 0;
      v18 = 16;
      do
      {
        bzero(*(&a2->mNumberBuffers + v18), v14);
        ++v17;
        v18 += 16;
      }

      while (v17 < a2->mNumberBuffers);
      LODWORD(v19) = 4;
    }

    else
    {
      LODWORD(v19) = 4;
    }
  }

  else
  {
    v62 = a7;
    v63 = a6;
    v61 = a3;
    v20 = (v68 - a4) & ~((v68 - a4) >> 63);
    if (v20 >= a3)
    {
      LODWORD(v20) = a3;
    }

    v57 = a3;
    v58 = v15;
    v21 = (v15 - v67) & ~((v15 - v67) >> 63);
    if (v21 >= a3)
    {
      v21 = a3;
    }

    v59 = v21;
    v60 = a5;
    v56 = *(v13 + 48);
    v64 = v67;
    if (v67 > v68)
    {
      v22 = (v56 * v20);
      v23 = *(v13 + 40);
      v24 = ((((v68 % v23) >> 63) & v23) + (v68 % v23)) * v56;
      v25 = ((((v67 % v23) >> 63) & v23) + (v67 % v23)) * v56;
      if (v24 >= v25)
      {
        if (a2->mNumberBuffers)
        {
          __n = v25;
          v30 = 0;
          v31 = *(v13 + 52) - v24;
          v32 = *(v13 + 64);
          v33 = 16;
          do
          {
            memcpy((*(&a2->mNumberBuffers + v33) + v22), (*(v32 + v33) + v24), v31);
            ++v30;
            mNumberBuffers = a2->mNumberBuffers;
            v33 += 16;
          }

          while (v30 < mNumberBuffers);
          if (mNumberBuffers)
          {
            v35 = 0;
            v36 = *(v13 + 64);
            v37 = 16;
            do
            {
              memcpy((*(&a2->mNumberBuffers + v37) + v31 + v22), *(v36 + v37), __n);
              ++v35;
              v37 += 16;
            }

            while (v35 < a2->mNumberBuffers);
          }
        }
      }

      else if (a2->mNumberBuffers)
      {
        v26 = 0;
        v27 = v25 - v24;
        v28 = *(v13 + 64);
        v29 = 16;
        do
        {
          memcpy((*(&a2->mNumberBuffers + v29) + v22), (*(v28 + v29) + v24), v27);
          ++v26;
          v29 += 16;
        }

        while (v26 < a2->mNumberBuffers);
      }
    }

    v66 = 0;
    v19 = AT::RingBuffer::Impl::CheckTimeBounds2(v13, a4, v58, &v66, &v65);
    v38 = v66;
    if (v64 < v66)
    {
      v38 = v64;
    }

    v39 = (v38 - a4) & ~((v38 - a4) >> 63);
    if (v39 >= v57)
    {
      v40 = v57;
    }

    else
    {
      v40 = v39;
    }

    if (v40 && a2->mNumberBuffers)
    {
      v41 = 0;
      v42 = (*(v13 + 48) * v40);
      v43 = 16;
      do
      {
        bzero(*(&a2->mNumberBuffers + v43), v42);
        ++v41;
        v43 += 16;
      }

      while (v41 < a2->mNumberBuffers);
    }

    if (v59 && a2->mNumberBuffers)
    {
      v44 = 0;
      v45 = 16;
      do
      {
        bzero((*(&a2->mNumberBuffers + v45) + (v14 - v56 * v59)), (v56 * v59));
        ++v44;
        v45 += 16;
      }

      while (v44 < a2->mNumberBuffers);
    }

    *v60 = v40;
    *v62 = v59;
    *v63 = v61 - (v59 + v40);
    v46 = a2->mNumberBuffers;
    if (v46)
    {
      v47 = (v46 + 3) & 0x1FFFFFFFCLL;
      v48 = vdupq_n_s64(v46 - 1);
      v49 = xmmword_18F9016B0;
      v50 = xmmword_18F9016C0;
      v51 = &a2[1].mBuffers[0].mData + 1;
      v52 = vdupq_n_s64(4uLL);
      do
      {
        v53 = vmovn_s64(vcgeq_u64(v48, v50));
        if (vuzp1_s16(v53, *v48.i8).u8[0])
        {
          *(v51 - 8) = v14;
        }

        if (vuzp1_s16(v53, *&v48).i8[2])
        {
          *(v51 - 4) = v14;
        }

        if (vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v49))).i32[1])
        {
          *v51 = v14;
          v51[4] = v14;
        }

        v49 = vaddq_s64(v49, v52);
        v50 = vaddq_s64(v50, v52);
        v51 += 16;
        v47 -= 4;
      }

      while (v47);
    }

    v16 = v19;
  }

  return v16 & 0xFFFFFFFF00000000 | v19;
}

uint64_t AT::RingBuffer::Impl::CheckTimeBounds2(AT::RingBuffer::Impl *this, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a2)
  {
    return 4294967246;
  }

  v7 = this + 176;
  v8 = 8;
  result = 4;
  while (1)
  {
    v9 = atomic_load(this + 236);
    v10 = &v7[24 * (v9 & 0x1F)];
    v11 = *v10;
    v12 = *(v10 + 1);
    if (*(v10 + 4) == v9)
    {
      break;
    }

    if (!--v8)
    {
      return result;
    }
  }

  *a4 = a2;
  *a5 = a3;
  if (v11 <= a2)
  {
    if (v12 >= a3)
    {
      return 0;
    }

    else
    {
      *a5 = v12;
      if (v12 <= a2)
      {
        *a4 = v12;
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
    *a4 = v11;
    if (v12 >= a3)
    {
      if (v11 >= a3)
      {
        *a5 = v11;
        return 4294967294;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      *a5 = v12;
      return 3;
    }
  }
}

void RenderContextChangeGenerator::checkChange(RenderContextChangeGenerator *this)
{
  v2 = os_workgroup_interval_copy_current_4AudioToolbox();
  v5 = v2;
  if (v2 != this->mLastWorkgroup)
  {
    this->mLastWorkgroup = v2;
    v6[0] = v2;
    memset(&v6[1], 0, 24);
    (*(this->mObserver + 2))(this->mObserver, v6, v3, v4);
  }

  if (v5)
  {
    os_release(v5);
  }
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

void Resampler2::~Resampler2(Resampler2 *this)
{
  v8 = *MEMORY[0x1E69E9840];
  *this = &unk_1F032E4F8;
  if (*(this + 24) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "Resampler2.cpp";
    v6 = 1024;
    v7 = 363;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Someone is deleting a Resampler while it is in use.\n", &v4, 0x12u);
  }

  v2 = *(this + 10);
  if (v2)
  {
    free(v2);
    *(this + 10) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {
    free(v3);
    *(this + 11) = 0;
  }

  pthread_mutex_lock(&sInitLocker);
  SincKernelFactory::ReleaseSincKernel(sSincKernelFactory, *(this + 6));
  pthread_mutex_unlock(&sInitLocker);
}

{
  Resampler2::~Resampler2(this);

  JUMPOUT(0x193ADF220);
}

void sub_18F620B2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AT::ExportedResampler::~ExportedResampler(AT::ExportedResampler *this)
{
  *this = &unk_1F032E5E0;
  Resampler2::~Resampler2(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032E5E0;
  Resampler2::~Resampler2(this);
}

void connectionHandler(xpc_object_t object)
{
  if (connectionHandler(_xpc_connection_s *)::onceToken != -1)
  {
    dispatch_once(&connectionHandler(_xpc_connection_s *)::onceToken, &__block_literal_global_4);
  }

  v2 = gService_0;
  if (object)
  {
    xpc_retain(object);
    v4 = object;
    v3 = object;
  }

  else
  {
    v3 = xpc_null_create();
    v4 = v3;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (object_getClass(v3) == MEMORY[0x1E69E9E68])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

LABEL_8:
  v4 = xpc_null_create();
LABEL_9:
  XPCListener::accept_connection((v2 + 8), &v4);
}

void sub_18F620C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  xpc_release(v10);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

OSStatus AudioUnitScheduleParameters(AudioUnit inUnit, const AudioUnitParameterEvent *inParameterEvent, UInt32 inNumParamEvents)
{
  if (!inUnit)
  {
    return -50;
  }

  v3 = *&inNumParamEvents;
  v5 = (*(*inUnit + 8))(inUnit);
  if (!v5)
  {
    return 560947818;
  }

  v6 = v5;
  if (*((**v5)(v5) + 38) != 24949)
  {
    return -3000;
  }

  v7 = *(*((**v6)(v6) + 112) + 96);
  if (!v7)
  {
    return -4;
  }

  v8 = v6[3];

  return v7(v8, inParameterEvent, v3);
}

void sub_18F621234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::lf_read_synchronized_write(caulk::concurrent::details::lf_read_sync_write_impl *a1)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::lf_read_sync_write_impl(a1);
  *(result + 8) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t *std::unique_ptr<auoop::WorkgroupMirror>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::~guarded_lookup_hash_table(v2 + 8);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void AudioConverterService::setupMemoryPressureWarnings(AudioConverterService *this)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("memoryPresureWarningQueue", v2);
  v4 = *(this + 39);
  *(this + 39) = v3;
  if (v4)
  {
    dispatch_release(v4);
    v3 = *(this + 39);
  }

  v5 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 0x10uLL, v3);
  v6 = *(this + 38);
  *(this + 38) = v5;
  if (v6)
  {
    dispatch_release(v6);
    v5 = *(this + 38);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___ZN21AudioConverterService27setupMemoryPressureWarningsEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_19;
  handler[4] = this;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_activate(*(this + 38));
}

void AudioConverterService::setupTempDirectory(AudioConverterService *this)
{
  v10 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.audio.AudioConverterService");
  unsetenv("TMPDIR");
  if (!_set_user_dir_suffix() || ((v5 & 0x80u) == 0 ? (v1 = __p) : (v1 = __p[0]), (v5 & 0x80u) == 0 ? (v2 = v5) : (v2 = __p[1]), !confstr(65537, v1, v2)))
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v3 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "AudioConverterService.cpp";
      v8 = 1024;
      v9 = 112;
      _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterService: Failed to set user dir suffix. Converter audio captures will not be written.", buf, 0x12u);
    }
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void XPCListener::accept_connection(XPCListener *this, void **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v4 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 3);
    std::recursive_mutex::lock((v5 + 56));
    v6 = (*(v5 + 128) - *(v5 + 120)) >> 3;
    std::recursive_mutex::unlock((v5 + 56));
    v7 = atomic_load((*(this + 3) + 280));
    buf[0] = 136316162;
    *&buf[1] = "AudioConverterService.cpp";
    v21 = 1024;
    v22 = 279;
    v23 = 2048;
    v24 = v5;
    v25 = 1024;
    v26 = v6 + 1;
    v27 = 1024;
    v28 = v7 + 1;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterService -> %p:  New connection, number of connections: %u, number of converters: %u.", buf, 0x28u);
  }

  *v13 = 0u;
  v14 = 0u;
  *v12 = 0u;
  v8 = *a2;
  v15 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v15 = xpc_null_create();
  }

  v9 = *(this + 3);
  v10 = *v9;
  if (*v9)
  {
    dispatch_retain(*v9);
  }

  v16 = v10;
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v17 = *gAudioConverterLog;
  v18 = 0;
  std::__optional_copy_base<swix::timeout_config,false>::__optional_copy_base[abi:ne200100](v19, *(this + 1) + 96);
  v11 = *(this + 3);
  std::recursive_mutex::lock((v11 + 56));
  if (*(v11 + 128) == *(v11 + 120))
  {
    XOSTransactor::beginTransaction((v11 + 320));
  }

  operator new();
}

void sub_18F621B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, xpc_object_t a23, dispatch_object_t object, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  std::recursive_mutex::unlock((v38 + 56));
  swix::connection_config::~connection_config(&a11);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<AudioConverterService>::reset[abi:ne200100](uint64_t result)
{
  v1 = gService_0;
  gService_0 = result;
  if (v1)
  {
    v2 = *(v1 + 304);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(v1 + 304);
      *(v1 + 304) = 0;
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    v4 = *(v1 + 312);
    if (v4)
    {
      dispatch_sync(v4, &__block_literal_global_23);
      v5 = *(v1 + 312);
      *(v1 + 312) = 0;
      if (v5)
      {
        dispatch_release(v5);
      }
    }

    XOSTransactor::endTransaction((v1 + 320));
    v6 = *(v1 + 312);
    if (v6)
    {
      dispatch_release(v6);
    }

    v7 = *(v1 + 304);
    if (v7)
    {
      dispatch_release(v7);
    }

    std::unique_ptr<auoop::WorkgroupMirror>::reset[abi:ne200100]((v1 + 296), 0);
    caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::~lf_read_synchronized_write(v1 + 216);
    caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::~lf_read_synchronized_write(v1 + 152);
    v8 = (v1 + 120);
    std::vector<std::unique_ptr<RemoteAudioConverter>>::__destroy_vector::operator()[abi:ne200100](&v8);
    std::recursive_mutex::~recursive_mutex((v1 + 56));
    if (*(v1 + 48) == 1)
    {
      xpc_release(*(v1 + 40));
      *(v1 + 40) = 0;
    }

    swix::connection::~connection((v1 + 8));

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void *applesauce::CF::convert_to<std::string,0>(uint64_t a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a2);
    maxBufLen = 0;
    v12.location = 0;
    v12.length = Length;
    CFStringGetBytes(a2, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    std::string::basic_string[abi:ne200100](a1, maxBufLen);
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v13.location = 0;
    v13.length = Length;
    return CFStringGetBytes(a2, v13, 0x8000100u, 0, 0, v8, maxBufLen, &maxBufLen);
  }
}

void sub_18F621F0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::lf_read_synchronized_write(caulk::concurrent::details::lf_read_sync_write_impl *a1)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::lf_read_sync_write_impl(a1);
  *(result + 8) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t std::function<void ()(void)>::operator=(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, a2);
  if (v6 != a1)
  {
    v3 = v7;
    v4 = *(a1 + 24);
    if (v7 == v6)
    {
      if (v4 == a1)
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v6);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v7 = v6;
        (*(v8[0] + 24))(v8, a1);
        (*(v8[0] + 32))(v8);
      }

      else
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v6);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v7;
      v7 = v6;
    }

    else
    {
      v7 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  return a1;
}

void sub_18F6221E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__func<AudioConverterService::addRemoteClient(swix::connection_config const&,auoop::WorkgroupMirror &)::{lambda(void)#1},std::allocator<AudioConverterService::addRemoteClient(swix::connection_config const&,auoop::WorkgroupMirror &)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0325FE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::function<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](v7);
  return a1;
}

void sub_18F62269C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0,std::allocator<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AudioConverterXPC_Server::dispatch_message(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = *MEMORY[0x1E69E9840];
  swix::message::message(a3);
  switch(*a2)
  {
    case 0x3B7B3D0:
      v6 = getpid();
      MEMORY[0x193ADE690](v122, a2);
      v7 = *&v122[8];
      *a3 = *v122;
      *&v122[8] = xpc_null_create();
      v8 = *(a3 + 8);
      *(a3 + 8) = v7;
      xpc_release(v8);
      v9 = *&v122[8];
      *(a3 + 16) = *&v122[16];
      xpc_release(v9);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", 0);
      xpc_dictionary_set_int64(*(a3 + 8), "process", v6);
      return;
    case 0x3B7B3D1:
      Next = 0;
      *v122 = xmmword_18F901880;
      *&v122[16] = 0;
      do
      {
        Next = AudioComponentFindNext(Next, v122);
      }

      while (Next);
      goto LABEL_35;
    case 0x3B7B3D2:
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "sourceFormat");
      *v122 = *&buf.mSampleRate;
      *&v122[16] = *&buf.mBytesPerPacket;
      v123[0] = *&buf.mBitsPerChannel;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "destinationFormat");
      *&v123[1] = buf;
      v36 = swix::coder<std::span<AudioClassDescription const,18446744073709551615ul>>::decode(*(a2 + 8));
      *&buf.mSampleRate = *v122;
      *&buf.mBytesPerPacket = *&v122[16];
      *&buf.mBitsPerChannel = v123[0];
      v127 = *&v123[1];
      v38 = AudioConverterXPC_Server::instantiateSpecific(a1, &buf, &v127, v36, v37);
      v40 = v39;
      MEMORY[0x193ADE690](&buf, a2);
      v41 = *&buf.mFormatID;
      *a3 = buf.mSampleRate;
      *&buf.mFormatID = xpc_null_create();
      v42 = *(a3 + 8);
      *(a3 + 8) = v41;
      xpc_release(v42);
      v43 = *&buf.mFormatID;
      *(a3 + 16) = *&buf.mBytesPerPacket;
      xpc_release(v43);
      if (v40)
      {
        v44 = 0;
      }

      else
      {
        v44 = v38;
      }

      xpc_dictionary_set_int64(*(a3 + 8), ".error", v44);
      if (!v44)
      {
        xpc_dictionary_set_uint64(*(a3 + 8), "remoteConverterPtr", v38);
      }

      return;
    case 0x3B7B3D3:
      v50 = xpc_null_create();
      *&buf.mSampleRate = v50;
      *&buf.mFormatID = 0;
      swix::xpcobj_coder<applesauce::xpc::object>::decode(&v116, *(a2 + 8), "ipcResources");
      buf.mSampleRate = v116;
      xpc_release(v50);
      v116 = 0.0;
      *&buf.mFormatID = xpc_dictionary_get_uint64(*(a2 + 8), "clientRendererPtr");
      AudioConverterXPC_Server::setUpRenderer(*(**(a1 + 16) + 32), &buf, *&buf.mFormatID);
    case 0x3B7B3D4:
      v124 = 0u;
      memset(v123, 0, sizeof(v123));
      *&v122[16] = 0u;
      *v122 = 0u;
      v17 = xpc_null_create();
      object = v17;
      v126 = 0;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "sourceFormat");
      *v122 = *&buf.mSampleRate;
      *&v122[16] = *&buf.mBytesPerPacket;
      v123[0] = *&buf.mBitsPerChannel;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "destinationFormat");
      *&v123[1] = buf;
      v18 = swix::coder<std::span<AudioClassDescription const,18446744073709551615ul>>::decode(*(a2 + 8));
      v20 = v19;
      *&v124 = v18;
      *(&v124 + 1) = v19;
      swix::xpcobj_coder<applesauce::xpc::object>::decode(&v115, *(a2 + 8), "ipcResources");
      v21 = v115;
      object = v115;
      xpc_release(v17);
      v115 = 0;
      uint64 = xpc_dictionary_get_uint64(*(a2 + 8), "renderClient");
      v126 = uint64;
      *&buf.mSampleRate = *v122;
      *&buf.mBytesPerPacket = *&v122[16];
      *&buf.mBitsPerChannel = v123[0];
      v127 = *&v123[1];
      v23 = AudioConverterXPC_Server::instantiateSpecific(a1, &buf, &v127, v18, v20);
      if ((v24 & 1) != 0 || (v25 = v23) == 0)
      {
        AudioConverterXPC_Server::setUpRenderer(*(**(a1 + 16) + 32), &object, uint64);
      }

      MEMORY[0x193ADE690](&buf, a2);
      v104 = *&buf.mFormatID;
      *a3 = buf.mSampleRate;
      *&buf.mFormatID = xpc_null_create();
      v105 = *(a3 + 8);
      *(a3 + 8) = v104;
      xpc_release(v105);
      v106 = *&buf.mFormatID;
      *(a3 + 16) = *&buf.mBytesPerPacket;
      xpc_release(v106);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", v25);
      if (!v25)
      {
        xpc_dictionary_set_uint64(*(a3 + 8), "remoteConverterPtr", v25);
      }

      xpc_release(v21);
      return;
    case 0x3B7B3D5:
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "sourceFormat");
      *v122 = *&buf.mSampleRate;
      *&v122[16] = *&buf.mBytesPerPacket;
      v123[0] = *&buf.mBitsPerChannel;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "destinationFormat");
      *&v123[1] = buf;
      v59 = swix::coder<std::span<AudioClassDescription const,18446744073709551615ul>>::decode(*(a2 + 8));
      *&v127.mSampleRate = *v122;
      *&v127.mBytesPerPacket = *&v122[16];
      *&v127.mBitsPerChannel = v123[0];
      v117[0] = *&v123[1];
      v117[1] = *&v123[3];
      v118 = v123[5];
      AudioConverterXPC_Server::instantiateSpecificAndFetchProperties(&buf, a1, &v127, v117, v59, v60);
      MEMORY[0x193ADE690](&v127, a2);
      v61 = *&v127.mFormatID;
      *a3 = v127.mSampleRate;
      *&v127.mFormatID = xpc_null_create();
      v62 = *(a3 + 8);
      *(a3 + 8) = v61;
      xpc_release(v62);
      v63 = *&v127.mFormatID;
      *(a3 + 16) = *&v127.mBytesPerPacket;
      xpc_release(v63);
      v64 = v130;
      if (v130)
      {
        mSampleRate_low = 0;
      }

      else
      {
        mSampleRate_low = LODWORD(buf.mSampleRate);
      }

      xpc_dictionary_set_int64(*(a3 + 8), ".error", mSampleRate_low);
      if (!mSampleRate_low)
      {
        xpc_dictionary_set_uint64(*(a3 + 8), "remoteConverterPtr", *&buf.mSampleRate);
        if (*&buf.mBytesPerPacket != *&buf.mFormatID)
        {
          xpc_dictionary_set_data(*(a3 + 8), "maxPacketSize", *&buf.mFormatID, *&buf.mBytesPerPacket - *&buf.mFormatID);
        }

        if (v129 != *&buf.mBitsPerChannel)
        {
          xpc_dictionary_set_data(*(a3 + 8), "maxMetadataSize", *&buf.mBitsPerChannel, v129 - *&buf.mBitsPerChannel);
        }
      }

      if (v64)
      {
        caulk::__expected_detail::destroy<std::tuple<unsigned long long,std::vector<unsigned int>,std::vector<unsigned int>>,(void *)0>(&buf);
      }

      return;
    case 0x3B7B3D6:
      v124 = 0u;
      memset(v123, 0, sizeof(v123));
      *&v122[16] = 0u;
      *v122 = 0u;
      v75 = xpc_null_create();
      object = v75;
      v126 = 0;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "sourceFormat");
      *v122 = *&buf.mSampleRate;
      *&v122[16] = *&buf.mBytesPerPacket;
      v123[0] = *&buf.mBitsPerChannel;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "destinationFormat");
      *&v123[1] = buf;
      v76 = swix::coder<std::span<AudioClassDescription const,18446744073709551615ul>>::decode(*(a2 + 8));
      v78 = v77;
      *&v124 = v76;
      *(&v124 + 1) = v77;
      swix::xpcobj_coder<applesauce::xpc::object>::decode(&v114, *(a2 + 8), "ipcResources");
      object = v114;
      xpc_release(v75);
      v114 = 0;
      v79 = xpc_dictionary_get_uint64(*(a2 + 8), "renderClient");
      v126 = v79;
      *&v127.mSampleRate = *v122;
      *&v127.mBytesPerPacket = *&v122[16];
      *&v127.mBitsPerChannel = v123[0];
      v117[0] = *&v123[1];
      v117[1] = *&v123[3];
      v118 = v123[5];
      AudioConverterXPC_Server::instantiateSpecificAndFetchProperties(&buf, a1, &v127, v117, v76, v78);
      if ((v130 & 1) != 0 || (v80 = LODWORD(buf.mSampleRate), !LODWORD(buf.mSampleRate)))
      {
        AudioConverterXPC_Server::setUpRenderer(*(**(a1 + 16) + 32), &object, v79);
      }

      if (v130)
      {
        caulk::__expected_detail::destroy<std::tuple<unsigned long long,std::vector<unsigned int>,std::vector<unsigned int>>,(void *)0>(&buf);
      }

      MEMORY[0x193ADE690](&buf, a2);
      v81 = *&buf.mFormatID;
      *a3 = buf.mSampleRate;
      *&buf.mFormatID = xpc_null_create();
      v82 = *(a3 + 8);
      *(a3 + 8) = v81;
      xpc_release(v82);
      v83 = *&buf.mFormatID;
      *(a3 + 16) = *&buf.mBytesPerPacket;
      xpc_release(v83);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", v80);
      if (!v80)
      {
        xpc_dictionary_set_uint64(*(a3 + 8), "remoteConverterPtr", v80);
        if (v111 != v110)
        {
          xpc_dictionary_set_data(*(a3 + 8), "maxPacketSize", v110, v111 - v110);
        }
      }

      xpc_release(object);
      return;
    case 0x3B7B3D7:
      v51 = xpc_dictionary_get_uint64(*(a2 + 8), "clientRenderer");
      *v122 = *(**(a1 + 16) + 32);
      *&v122[8] = 0;
      *&v122[16] = *v122 + 4;
      v122[24] = 1;
      os_unfair_lock_lock((*v122 + 4));
      LODWORD(v123[0]) = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate(*v122);
      HIDWORD(v123[0]) = LODWORD(v123[0]) == 0;
      v52 = caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::copy_previous(v122);
      v54 = *v52;
      v53 = v52[1];
      if (*v52 == v53)
      {
        goto LABEL_70;
      }

      while (*v54 != v51)
      {
        v54 += 2;
        if (v54 == v53)
        {
          goto LABEL_82;
        }
      }

LABEL_70:
      if (v54 == v53)
      {
LABEL_82:
        caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::~mutator(v122);
        goto LABEL_35;
      }

      v100 = v54[1];
      v101 = v54 + 2;
      if (v54 + 2 != v53)
      {
        do
        {
          v102 = v101[1];
          *(v101 - 2) = *v101;
          *(v101 - 1) = v102;
          v101 += 2;
        }

        while (v101 != v53);
        v54 = v101 - 2;
      }

      v52[1] = v54;
      caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::~mutator(v122);
      if (v100)
      {
        (*(*v100 + 8))(v100);
      }

      goto LABEL_35;
    case 0x3B7B3D8:
      v96 = xpc_null_create();
      *v122 = 0;
      xpc_dictionary_get_data(*(a2 + 8), "configParams", v122);
      swix::xpcobj_coder<applesauce::xpc::object>::decode(&v113, *(a2 + 8), "ipcResources");
      v113 = v96;
      xpc_release(v96);
      v113 = 0;
      xpc_dictionary_get_uint64(*(a2 + 8), "propertyClient");
      operator new();
    case 0x3B7B3D9:
      v30 = xpc_dictionary_get_uint64(*(a2 + 8), "propertyClient");
      v31 = *(**(a1 + 16) + 32);
      v32 = &v31[16];
      *v122 = v31 + 16;
      *&v122[8] = 0;
      *&v122[16] = v31 + 17;
      v122[24] = 1;
      os_unfair_lock_lock(v31 + 17);
      LODWORD(v123[0]) = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate(v32);
      HIDWORD(v123[0]) = LODWORD(v123[0]) == 0;
      v33 = caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::mutator::copy_previous(v122);
      v35 = *v33;
      v34 = v33[1];
      if (*v33 == v34)
      {
        goto LABEL_64;
      }

      break;
    case 0x3B7B3DA:
      v84 = xpc_dictionary_get_uint64(*(a2 + 8), "converter");
      v85 = *(**(a1 + 16) + 32);
      v86 = AudioConverterDispose(v84);
      v87 = (v85 + 128);
      atomic_fetch_add((v85 + 128), 0xFFFFFFFF);
      atomic_load((v85 + 128));
      v88 = _os_log_pack_size();
      message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v88 + 88, 0);
      if (message)
      {
        v90 = message;
        v91 = _os_log_pack_fill(message + 40, v88, 0, &dword_18F5DF000, "AudioConverterService -> Disposed of converter with status %u, number of converters: %u", v110, v111);
        v92 = atomic_load(v87);
        *v91 = 67109376;
        *(v91 + 4) = v86;
        *(v91 + 8) = 1024;
        *(v91 + 10) = v92;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v90);
      }

      MEMORY[0x193ADE690](v122, a2);
      v93 = *&v122[8];
      *a3 = *v122;
      *&v122[8] = xpc_null_create();
      v94 = *(a3 + 8);
      *(a3 + 8) = v93;
      xpc_release(v94);
      v95 = *&v122[8];
      *(a3 + 16) = *&v122[16];
      xpc_release(v95);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", v86);
      return;
    case 0x3B7B3DB:
      v15 = *(a1 + 8);
      if (v15)
      {
        v16 = *(v15 + 8);
        if (*(v16 + 72))
        {
          dispatch_retain(*(v16 + 72));
        }

        std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v122, **(a1 + 16) + 40);
        operator new();
      }

      std::terminate();
      return;
    case 0x3B7B3DC:
      v26 = xpc_null_create();
      swix::xpcobj_coder<applesauce::xpc::object>::decode(&v112, *(a2 + 8), "workgroups");
      v27 = v112;
      xpc_release(v26);
      v112 = 0;
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v28 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
      {
        *v122 = 136315394;
        *&v122[4] = "RemoteAudioConverter.cpp";
        *&v122[12] = 1024;
        *&v122[14] = 243;
        _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterOOP -> Received workgroup synchronization notice in the service.", v122, 0x12u);
      }

      v29 = *(*(**(a1 + 16) + 32) + 144);
      *v122 = v27;
      if (v27 && object_getClass(v27) == MEMORY[0x1E69E9E80])
      {
        xpc_retain(v27);
      }

      else
      {
        *v122 = xpc_null_create();
      }

      auoop::WorkgroupMirror::update(v29, v122);
      xpc_release(*v122);
      MEMORY[0x193ADE690](v122, a2);
      v107 = *&v122[8];
      *a3 = *v122;
      *&v122[8] = xpc_null_create();
      v108 = *(a3 + 8);
      *(a3 + 8) = v107;
      xpc_release(v108);
      v109 = *&v122[8];
      *(a3 + 16) = *&v122[16];
      xpc_release(v109);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", 0);
      xpc_release(v27);
      return;
    case 0x3B7B3DD:
      v66 = xpc_dictionary_get_uint64(*(a2 + 8), "converter");
      v67 = swix::decode_message::decode<unsigned int>(*(a2 + 8), "propertyID");
      __n[1] = 0;
      LOBYTE(v121) = 0;
      LODWORD(v120) = v67;
      *&v127.mSampleRate = &__n[1];
      *&v117[0] = &v121;
      *&buf.mSampleRate = &v120;
      *&buf.mFormatID = &v127;
      *&buf.mBytesPerPacket = v117;
      *v122 = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetPropertyInfo::$_0>;
      *&v122[8] = &buf;
      v68 = with_resolved(v66, v122);
      v69 = v68;
      v70 = v121;
      if (v68)
      {
        v71 = v68;
      }

      else
      {
        v71 = __n[1];
      }

      MEMORY[0x193ADE690](v122, a2);
      v72 = *&v122[8];
      *a3 = *v122;
      *&v122[8] = xpc_null_create();
      v73 = *(a3 + 8);
      *(a3 + 8) = v72;
      xpc_release(v73);
      v74 = *&v122[8];
      *(a3 + 16) = *&v122[16];
      xpc_release(v74);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", v69);
      if (!v69)
      {
        xpc_dictionary_set_uint64(*(a3 + 8), "dataSize", v71);
        xpc_dictionary_set_BOOL(*(a3 + 8), "outWritable", v70 != 0);
      }

      return;
    case 0x3B7B3DE:
      v10 = xpc_null_create();
      xpc_dictionary_get_uint64(*(a2 + 8), "converter");
      swix::decode_message::decode<unsigned int>(*(a2 + 8), "propertyID");
      swix::xpcobj_coder<swix::data>::decode(v122, *(a2 + 8), "inData");
      v11 = *v122;
      v12 = xpc_null_create();
      xpc_release(v10);
      xpc_release(v12);
      swix::decode_message::decode<unsigned int>(*(a2 + 8), "dataSize");
      xpc_dictionary_get_BOOL(*(a2 + 8), "inputRequiredForProperty");
      memset(v117, 0, 24);
      xpc_null_create();
      bytes_ptr = xpc_data_get_bytes_ptr(v11);
      length = xpc_data_get_length(v11);
      PropertyMarshaller::PropertyMarshaller(v122, bytes_ptr, length);
    case 0x3B7B3DF:
      v45 = xpc_null_create();
      xpc_dictionary_get_uint64(*(a2 + 8), "converter");
      swix::decode_message::decode<unsigned int>(*(a2 + 8), "propertyID");
      swix::xpcobj_coder<swix::data>::decode(v122, *(a2 + 8), "inData");
      v46 = *v122;
      v47 = xpc_null_create();
      xpc_release(v45);
      xpc_release(v47);
      swix::decode_message::decode<unsigned int>(*(a2 + 8), "dataSize");
      v48 = xpc_data_get_bytes_ptr(v46);
      v49 = xpc_data_get_length(v46);
      PropertyMarshaller::PropertyMarshaller(v122, v48, v49);
    default:
      return;
  }

  while (*v35 != v30)
  {
    v35 += 2;
    if (v35 == v34)
    {
      goto LABEL_76;
    }
  }

LABEL_64:
  if (v35 == v34)
  {
LABEL_76:
    caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::~mutator(v122);
    goto LABEL_77;
  }

  v97 = v35[1];
  v98 = v35 + 2;
  if (v35 + 2 != v34)
  {
    do
    {
      v99 = v98[1];
      *(v98 - 2) = *v98;
      *(v98 - 1) = v99;
      v98 += 2;
    }

    while (v98 != v34);
    v35 = v98 - 2;
  }

  v33[1] = v35;
  caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::~mutator(v122);
  if (v97)
  {
    (*(*v97 + 8))(v97);
  }

LABEL_77:
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v103 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    *v122 = 136315394;
    *&v122[4] = "RemoteAudioConverter.cpp";
    *&v122[12] = 1024;
    *&v122[14] = 212;
    _os_log_impl(&dword_18F5DF000, v103, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterService: Destroyed property server", v122, 0x12u);
  }

LABEL_35:
  MEMORY[0x193ADE690](v122, a2);
  v56 = *&v122[8];
  *a3 = *v122;
  *&v122[8] = xpc_null_create();
  v57 = *(a3 + 8);
  *(a3 + 8) = v56;
  xpc_release(v57);
  v58 = *&v122[8];
  *(a3 + 16) = *&v122[16];
  xpc_release(v58);
  xpc_dictionary_set_int64(*(a3 + 8), ".error", 0);
}

void sub_18F6243A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t buf, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, xpc_object_t object)
{
  if (v40)
  {
    if (a9)
    {
      operator delete(a9);
    }
  }

  xpc_release(object);
  swix::encode_message::~encode_message(v39);
  _Unwind_Resume(a1);
}

swix::message *swix::message::message(swix::message *this)
{
  *this = 0;
  *(this + 1) = xpc_null_create();
  *(this + 2) = 0;
  return this;
}

int64_t swix::decode_message::decode<int>(void *a1, const char *a2)
{
  result = xpc_dictionary_get_int64(a1, a2);
  if (result != result)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_1F033FDD0;
  }

  return result;
}

void AudioConverterXPC_Client::~AudioConverterXPC_Client(AudioConverterXPC_Client *this)
{
  swix::ipc_interface::~ipc_interface(this);

  JUMPOUT(0x193ADF220);
}

uint64_t __AudioConverterPrepare_block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

uint64_t std::__function::__func<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0,std::allocator<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = *(*v3 + 48);

  return v4();
}

void std::__function::__func<AudioConverterService::addRemoteClient(swix::connection_config const&,auoop::WorkgroupMirror &)::{lambda(void)#1},std::allocator<AudioConverterService::addRemoteClient(swix::connection_config const&,auoop::WorkgroupMirror &)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = gService_0;
  v2 = *(a1 + 8);
  std::recursive_mutex::lock((gService_0 + 56));
  v4 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (v4 != v3)
  {
    while (*v4 != v2)
    {
      if (++v4 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  if (v4 != v3)
  {
    if (!*(*v2 + 16))
    {
      std::terminate();
    }

    swix::connection::state::cancel_connection();
    v5 = v4 + 1;
    v6 = *(v1 + 128);
    if (v4 + 1 != v6)
    {
      do
      {
        v4 = v5;
        v7 = v5 - 1;
        v8 = *v5;
        *v5++ = 0;
        std::unique_ptr<RemoteAudioConverter>::reset[abi:ne200100](v7, v8);
      }

      while (v5 != v6);
      v6 = *(v1 + 128);
    }

    while (v6 != v4)
    {
      std::unique_ptr<RemoteAudioConverter>::reset[abi:ne200100](--v6, 0);
    }

    *(v1 + 128) = v4;
    if (*(v1 + 120) == v4)
    {
      XOSTransactor::endTransaction((v1 + 320));
    }

    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v9 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (*(v1 + 128) - *(v1 + 120)) >> 3;
      v11 = atomic_load((v1 + 280));
      v12 = 136316162;
      v13 = "AudioConverterService.cpp";
      v14 = 1024;
      v15 = 218;
      v16 = 2048;
      v17 = v1;
      v18 = 1024;
      v19 = v10;
      v20 = 1024;
      v21 = v11;
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterService -> %p: Client disconnected, number of remote connections: %u, number of converters: %u.", &v12, 0x28u);
    }
  }

LABEL_18:
  std::recursive_mutex::unlock((v1 + 56));
}

uint64_t **std::unique_ptr<RemoteAudioConverter>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3 + 40);
      swix::ipc_interface::~ipc_interface((v3 + 8));
      MEMORY[0x193ADF220](v3, 0x10A0C40BF9D22C6);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

_OWORD *SwapPCM16_ARM(_OWORD *result, int8x16_t *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 2;
    do
    {
      v4 = *result;
      result = (result + 2);
      a2->i16[0] = bswap32(v4) >> 16;
      a2 = (a2 + 2);
      v5 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v5 = a3;
  }

  if (v5 >= 0x10)
  {
    v6 = v5 >> 4;
    do
    {
      v7 = *result;
      v8 = *(result + 1);
      result += 2;
      *a2 = vrev16q_s8(v7);
      a2[1] = vrev16q_s8(v8);
      a2 += 2;
      --v6;
    }

    while (v6);
  }

  for (i = v5 & 0xF; i; --i)
  {
    v10 = *result;
    result = (result + 2);
    a2->i16[0] = bswap32(v10) >> 16;
    a2 = (a2 + 2);
  }

  return result;
}

OSStatus AudioFileWritePackets(AudioFileID inAudioFile, Boolean inUseCache, UInt32 inNumBytes, const AudioStreamPacketDescription *inPacketDescriptions, SInt64 inStartingPacket, UInt32 *ioNumPackets, const void *inBuffer)
{
  v11 = *&inNumBytes;
  v12 = inUseCache;
  v15 = inAudioFile;
  v16 = 0;
  if (AudioFileLocker::Lock(&v15))
  {
    if (v16)
    {
      v13 = (*(*v16 + 120))(v16, v12, v11, inPacketDescriptions, inStartingPacket, ioNumPackets, inBuffer);
    }

    else
    {
      v13 = -50;
    }
  }

  else
  {
    v13 = -38;
  }

  AudioFileLocker::~AudioFileLocker(&v15);
  return v13;
}

void sub_18F624DCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F624DB0);
}

uint64_t AudioFileObjectHandle::AFAPI_WritePackets(AudioFileObjectHandle *this, uint64_t a2, uint64_t a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, const void *a7)
{
  v7 = *(this + 6);
  if ((v7[100] & 2) != 0)
  {
    return (*(*v7 + 136))(v7, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return 1886547263;
  }
}

uint64_t CAFAudioFile::WritePackets(CAFAudioFile *this, uint64_t a2, uint64_t a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v10 = a3;
  v54 = *MEMORY[0x1E69E9840];
  v12 = *(this + 10);
  v13 = *(this + 11);
  *(this + 208) = 1;
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v16 = *(this + 15);
    if (v16)
    {
      v17 = *(v16 + 24);
    }

    else
    {
      v17 = 0;
    }

    v51 = 0;
    v19 = (*(*this + 640))(this, a2);
    if (a5 < 0 || v17 == a5)
    {
      if (a4)
      {
        v23 = a4[*a6 - 1].mStartOffset + a4[*a6 - 1].mDataByteSize;
        if (v23 <= v10)
        {
          v48 = a7;
          mStartOffset = a4->mStartOffset;
          v25 = *(this + 15);
          if (!v25)
          {
            operator new();
          }

          v50 = a6;
          if (*(v25 + 24))
          {
            if (v17 > a5)
            {
              v20 = 1885563711;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CAFAudioFile.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 3238;
                v21 = MEMORY[0x1E69E9C10];
                v22 = "%25s:%-5d  ";
                goto LABEL_28;
              }

              return v20;
            }

            v46 = a5;
            CompressedPacketTable::operator[](buf, v25, v17 - 1);
            *&v52.mVariableFramesInPacket = *&buf[8];
            v26 = *buf + *&buf[12];
            v52.mStartOffset = v26;
          }

          else
          {
            v46 = a5;
            v26 = 0;
            v52.mStartOffset = 0;
            *&v52.mVariableFramesInPacket = *&a4->mVariableFramesInPacket;
          }

          v27 = *a6;
          if (v27)
          {
            v28 = 0;
            v29 = a4 + 1;
            v30 = a4->mStartOffset;
            while (v27 - 1 != v28)
            {
              v30 += v29[-1].mDataByteSize;
              v31 = v29->mStartOffset;
              ++v29;
              ++v28;
              if (v31 != v30)
              {
                if (v28 >= v27)
                {
                  break;
                }

                v32 = 0;
                v49 = 0;
                v33 = 0;
                p_mVariableFramesInPacket = &a4->mVariableFramesInPacket;
                do
                {
                  v35 = *(p_mVariableFramesInPacket - 1);
                  v36 = *p_mVariableFramesInPacket;
                  v37 = p_mVariableFramesInPacket[1];
                  v52.mVariableFramesInPacket = *p_mVariableFramesInPacket;
                  v52.mDataByteSize = v37;
                  if (v13)
                  {
                    v38 = v13;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v37 <= v19)
                  {
                    v19 = v19;
                  }

                  else
                  {
                    v19 = v37;
                  }

                  v47 = (*(**(this + 13) + 56))(*(this + 13), 0, v26 + *(this + 9), v37, &v48[v35], &v51);
                  v39 = v51;
                  AudioFileObject::AppendPacket(this, &v52);
                  v33 += v38;
                  v49 += v39;
                  v26 += v37;
                  v52.mStartOffset = v26;
                  ++v32;
                  p_mVariableFramesInPacket += 4;
                }

                while (v32 < *v50);
                goto LABEL_57;
              }
            }
          }

          v47 = (*(**(this + 13) + 56))(*(this + 13), 0, v26 + *(this + 9), v23 - mStartOffset, &v48[mStartOffset], &v51);
          v49 = v51;
          LODWORD(v32) = *a6;
          if (*a6)
          {
            v40 = 0;
            v33 = 0;
            p_mDataByteSize = &a4->mDataByteSize;
            do
            {
              v42 = *(p_mDataByteSize - 1);
              v43 = *p_mDataByteSize;
              v52.mVariableFramesInPacket = v42;
              v52.mDataByteSize = v43;
              if (v13)
              {
                v44 = v13;
              }

              else
              {
                v44 = v42;
              }

              if (v43 <= v19)
              {
                v19 = v19;
              }

              else
              {
                v19 = v43;
              }

              AudioFileObject::AppendPacket(this, &v52);
              v33 += v44;
              v26 += v43;
              v52.mStartOffset = v26;
              ++v40;
              p_mDataByteSize += 4;
            }

            while (v40 < *v50);
          }

          else
          {
            v33 = 0;
          }

LABEL_57:
          (*(*this + 256))(this, v46 + v32);
          (*(*this + 656))(this, v19);
          *(this + 22) = (*(this + 22) & ~(*(this + 22) >> 63)) + v33;
          *(this + 136) = 1;
          *v50 = v32;
          v45 = (*(*this + 232))(this);
          (*(*this + 240))(this, v45 + v49);
          return v47;
        }

        v20 = 1885563711;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "CAFAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3225;
          v21 = MEMORY[0x1E69E9C10];
          v22 = "%25s:%-5d  Packet Descriptions are out of bounds";
          goto LABEL_28;
        }
      }

      else
      {
        v20 = 1885563711;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "CAFAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3216;
          v21 = MEMORY[0x1E69E9C10];
          v22 = "%25s:%-5d  Packet Descriptions were not provided";
          goto LABEL_28;
        }
      }
    }

    else
    {
      v20 = 1885563711;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CAFAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3215;
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%25s:%-5d  ";
LABEL_28:
        _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x12u);
      }
    }

    return v20;
  }

  return AudioFileObject::WritePackets(this, a2, a3, a4, a5, a6, a7);
}

uint64_t CompressedPacketTable::operator[](uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >> 5 >= 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v3 = 0;
  v4 = 0;
  v5 = *a2 + 24 * (a3 >> 5);
  v6 = *(v5 + 8);
  if (v6 <= 2)
  {
    if (*(v5 + 8))
    {
      if (v6 == 1)
      {
        v17 = *(v5 + 16) + 4 * (a3 & 0x1F);
        if ((a3 & 0x1F) != 0)
        {
          v3 = *(v17 - 4);
        }

        else
        {
          v3 = 0;
        }

        v4 = *(v17 + 2);
        goto LABEL_37;
      }

      if (v6 != 2)
      {
        goto LABEL_37;
      }

      v9 = *(v5 + 16);
      v10 = a3 & 0x1F;
      if ((a3 & 0x1F) != 0)
      {
        v3 = *(v9 + 4 * v10 - 4);
      }

      else
      {
        v3 = 0;
      }

      v18 = *(v9 + 4 * v10);
    }

    else
    {
      v13 = *(v5 + 16);
      v14 = a3 & 0x1F;
      if ((a3 & 0x1F) != 0)
      {
        v3 = *(v13 + 2 * v14 - 2);
      }

      else
      {
        v3 = 0;
      }

      v18 = *(v13 + 2 * v14);
    }

    v4 = v18 - v3;
    goto LABEL_37;
  }

  if (*(v5 + 8) <= 4u)
  {
    if (v6 == 3)
    {
      v15 = *(v5 + 16) + 8 * (a3 & 0x1F);
      if ((a3 & 0x1F) != 0)
      {
        v3 = *(v15 - 8);
      }

      else
      {
        v3 = 0;
      }

      v4 = *(v15 + 4);
    }

    else if (v6 == 4)
    {
      v7 = *(v5 + 16);
      v8 = a3 & 0x1F;
      if ((a3 & 0x1F) != 0)
      {
        v3 = *(v7 + 8 * v8 - 8);
      }

      else
      {
        v3 = 0;
      }

      v4 = *(v7 + 8 * v8) - v3;
    }

    goto LABEL_37;
  }

  if (v6 == 5)
  {
    v16 = *(v5 + 16) + 16 * (a3 & 0x1F);
    if ((a3 & 0x1F) != 0)
    {
      v3 = *(v16 - 16);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(v16 + 8);
    goto LABEL_37;
  }

  if (v6 != 6)
  {
LABEL_37:
    *result = *v5 + v3;
    *(result + 8) = 0;
    *(result + 12) = v4;
    v12 = *(a2 + 32) + *(a2 + 32) * a3;
    goto LABEL_38;
  }

  v11 = *(v5 + 16) + 24 * (a3 & 0x1F);
  *result = *v11;
  v12 = *(v11 + 16);
LABEL_38:
  *(result + 16) = v12;
  return result;
}

unint64_t audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::signal_wait_with_timeout(uint64_t a1)
{
  atomic_store(0, *(a1 + 8));
  v2 = audioipc::eventlink_primitive::timed_wait_signal_or_error(*(a1 + 40), 3.0);
  v3 = atomic_load((a1 + 33));
  if (v3)
  {
    LOBYTE(v4) = 0;
    v6 = 0;
    atomic_store(2u, *(a1 + 8));
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 8);
    if (!HIDWORD(v2))
    {
      atomic_store(2u, v5);
      audioipc::log_error("rt_sender::signal_wait_with_timeout", v2);
      v7 = 0;
      v6 = v4 & 0xFFFFFF00;
      return v4 | v7 | v6;
    }

    v6 = 0;
    atomic_store(1u, v5);
    *(a1 + 32) = v2;
  }

  v7 = 0x100000000;
  return v4 | v7 | v6;
}

unint64_t audioipc::eventlink_primitive::wait_signal_or_error(audioipc::eventlink_primitive *this)
{
  os_retain(this);
  v2 = os_eventlink_signal_and_wait();
  os_release(this);
  return v2 | ((v2 == 0) << 32);
}

unint64_t audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(uint64_t a1, double a2)
{
  v2 = atomic_load((a1 + 33));
  v3 = *(a1 + 8);
  if (v2)
  {
    v8 = 0;
    v6 = 0;
    atomic_store(2u, v3);
LABEL_10:
    LOBYTE(v7) = 1;
    return v8 | (v6 << 8) | (v7 << 32);
  }

  v4 = atomic_load(v3);
  if (v4 == 2)
  {
    goto LABEL_9;
  }

  v5 = atomic_load(*(a1 + 16));
  if (v5 == 2)
  {
    goto LABEL_9;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    LOBYTE(v7) = 1;
    v8 = 1;
    return v8 | (v6 << 8) | (v7 << 32);
  }

  if (atomic_load(*(a1 + 16)))
  {
LABEL_9:
    v8 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v11 = audioipc::eventlink_primitive::timed_wait_or_error(*(a1 + 40), a2);
  v6 = v11 >> 8;
  v7 = HIDWORD(v11);
  v8 = v11;
  if ((v11 & 0x100000000) == 0)
  {
    v14 = v11;
    v12 = HIDWORD(v11);
    v13 = v11 >> 8;
    audioipc::log_error("can_send draining", v11);
    LOBYTE(v7) = v12;
    v6 = v13;
    v8 = v14;
  }

  return v8 | (v6 << 8) | (v7 << 32);
}

unint64_t acv2::CodecConverter::ProduceOutput(uint64_t a1, int *a2, char a3)
{
  v118 = a3;
  if (*(a1 + 211) == 1 && !*(a1 + 408))
  {
    v8 = 0;
    v6 = 0x100000000;
    return v8 | ((*&v3 & 0xFFFFFFLL) << 8) | v6;
  }

  v3 = 7303231;
  if (!a2[1])
  {
    v6 = 0;
    v3 = 7304307;
    v8 = 122;
    return v8 | ((*&v3 & 0xFFFFFFLL) << 8) | v6;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_16:
    v8 = 63;
    return v8 | ((*&v3 & 0xFFFFFFLL) << 8) | v6;
  }

  if (*(a1 + 206) == 1 && *(a2 + 5) == 0)
  {
    v9 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + 88, 16);
    if (message)
    {
      v11 = message;
      *_os_log_pack_fill(message + 40, v9, 0, &dword_18F5DF000, "Encoding requires packet dependencies") = 0;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v11);
    }

    goto LABEL_15;
  }

  if (a3 == 2)
  {
    ConverterContext::realtimeViolation("calling an unsafe AudioCodec", a2);
LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  v13 = *(a1 + 72);
  if (a3 != 2 || *(a1 + 176) != 1 || *(a1 + 728) == 1)
  {
    *&__src[0] = a1;
    v14 = ConverterContext::withoutRealtimeSafety(a3, "codec being initialized", caulk::function_ref<int ()(void)>::functor_invoker<acv2::CodecConverter::CheckInitialize_RT(ConverterContext)::$_0>, __src);
    if (v14)
    {
      v8 = v14;
      v6 = 0;
      v3 = v14 >> 8;
      return v8 | ((*&v3 & 0xFFFFFFLL) << 8) | v6;
    }
  }

  v8 = 0;
  v117[0] = a1;
  v117[1] = &v118;
  v109 = (a1 + 580);
  v110 = (a1 + 568);
  v111 = (a1 + 596);
  v115 = vdupq_n_s64(4uLL);
  v114 = &off_18F900000;
  v15 = 1;
  v113 = v13;
  do
  {
    if (*a2 >= a2[1])
    {
      break;
    }

    ACBaseAudioSpan::setAfter(a1 + 224, a2);
    ACBaseAudioSpan::copyEmptyMetadataEventsFrom((a1 + 224), a2);
    v16 = *(a1 + 408);
    if (*(a1 + 211) == 1)
    {
      if (v16)
      {
LABEL_29:
        if (v16 >= *(a1 + 228))
        {
          v17 = *(a1 + 228);
        }

        else
        {
          v17 = *(a1 + 408);
        }

        v18 = ACBaseAudioSpan::append((a1 + 224), (a1 + 408), v17, v13);
        if (!HIDWORD(v18))
        {
          v19 = v18;
          v20 = 0;
          v21 = v18 >> 8;
          goto LABEL_34;
        }

        if (*(a1 + 312) == 1 && *v111 && *(a1 + 304) && *(*(a1 + 296) + 28) >= *v111)
        {
          v22 = *(a1 + 584);
          __src[0] = *v110;
          __src[1] = v22;
          *&__src[2] = *(a1 + 600);
          DWORD1(__src[1]) = v17;
          *v109 = *v109 + v17;
          *(a1 + 588) -= v17;
          AudioMetadataFrame_AppendEvent((a1 + 272), __src);
          *(a1 + 296) += *(*(a1 + 296) + 8);
          --*(a1 + 304);
        }

        ACBaseAudioSpan::completeMetadataFrame((a1 + 224));
        v23 = ACBaseAudioSpan::advanceConsume((a1 + 408), v17, v13);
        if (!HIDWORD(v23))
        {
          v20 = 0;
          v114 = (v23 >> 8);
          v19 = v23;
          goto LABEL_225;
        }
      }

      v19 = 0;
LABEL_43:
      v8 = (v19 | v8) & 1;
      if ((v15 & 1) == 0)
      {
        v15 = 1;
      }

      goto LABEL_228;
    }

    if (v16)
    {
      goto LABEL_29;
    }

    v112 = v15;
    v19 = 0;
    v20 = 1;
    while (1)
    {
      outStatus = 999;
      v24 = *(a1 + 228);
      if (*(a1 + 205) == 1)
      {
        v25 = *(a1 + 368);
        v26 = *(a1 + 228);
        if (v25)
        {
          v26 = v24 / v25;
        }
      }

      else
      {
        v26 = *(a1 + 228);
      }

      if (v26 <= *(a1 + 372))
      {
        v27 = *(a1 + 372);
      }

      else
      {
        v27 = v26;
      }

      v28 = v27;
      if (*(a1 + 204) == 1)
      {
        v29 = *(a1 + 368);
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v28 = v29 * v27;
      }

      v30 = v27;
      if (*(a1 + 205))
      {
        v31 = *(a1 + 368);
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v30 = v31 * v27;
      }

      if (*(a1 + 388) == 1 && *(a1 + 396) != 1 || v30 > v24)
      {
        v33 = *(a1 + 512);
        if (*(a1 + 520) == *(a1 + 528))
        {
          v34 = 0;
        }

        else
        {
          v34 = *(a1 + 520);
        }

        v35 = *(a1 + 544);
        if (v35 == *(a1 + 552))
        {
          v35 = 0;
        }

        v36 = *(a1 + 400);
        v37 = *(a1 + 404);
        *(a1 + 448) = v35;
        ACBaseAudioSpan::set((a1 + 408), v33 + 2, v34, v36, v37);
        if (*(a1 + 436) == 1)
        {
          v38 = *(a1 + 424);
          if (v38[4 * *v38 + 2] == 1094863915)
          {
            v39 = *(v38 - 9);
            if (v39)
            {
              *(a1 + 568) = 1;
              v40 = (v38 + v39 - 48);
              *(a1 + 569) = 0;
              *(a1 + 572) = 0;
              *(a1 + 576) = 40;
              *v109 = 0.0;
              *(a1 + 588) = 0;
              *(a1 + 592) = 1;
              *v111 = 0;
              *(a1 + 604) = 0;
              memset(__src, 0, 44);
              BYTE8(__src[1]) = 1;
              *&__src[2] = 0x10000002CLL;
              AudioMetadataFrame::begin_new(v40, __src);
              AudioMetadataFrame_AppendEvent(v40, v110);
            }
          }
        }

        ACBaseAudioSpan::copyEmptyMetadataEventsFrom((a1 + 408), (a1 + 224));
        if (*(a1 + 372) < v27)
        {
          v27 = *(a1 + 372);
        }

        if (*(a1 + 204) == 1)
        {
          v116 = 0;
          v41 = *(a1 + 368);
          if (v41 <= 1)
          {
            v41 = 1;
          }

          v28 = v41 * v27;
        }

        else
        {
          v116 = 0;
          v28 = v27;
        }

        v32 = 408;
      }

      else
      {
        v116 = 1;
        v32 = 224;
      }

      if (*(a1 + 210))
      {
        v42 = 0;
        goto LABEL_146;
      }

      if (*(a1 + 207))
      {
        v28 = 0;
        v42 = 0;
        goto LABEL_142;
      }

      if (ACv2Workarounds::fix84702776_86723525_86479548_89800354_SinglePacketDesc == 1 && *(a1 + 205) == 1)
      {
        v43 = *(a1 + 40) == 0;
        if (!*(a1 + 40))
        {
          v28 = 1;
        }
      }

      else
      {
        v43 = 0;
      }

      v44 = *(a1 + 104);
      if (!v44 || (v45 = *(v44 + 24)) == 0 && !*(v44 + 128))
      {
        acv2::AudioConverterChain::ObtainInput(__src, *(a1 + 8), a1, v28, v118);
        if ((__src[1] & 1) == 0)
        {
          goto LABEL_128;
        }

        v61 = *(&__src[0] + 1);
        v62 = *&__src[0];
        if (*(a1 + 209) == 1 && *(a1 + 205) == 1 && **&__src[0] && !*(*&__src[0] + 32))
        {
          v42 = 561015652;
LABEL_141:
          if (!v28)
          {
            v19 = v42;
LABEL_223:
            v20 = 0;
            LODWORD(v114) = v42 >> 8;
LABEL_224:
            v15 = v112;
            v13 = v113;
            goto LABEL_225;
          }

          goto LABEL_142;
        }

        v63 = *(*&__src[0] + 16);
        mNumberBuffers = v63->mNumberBuffers;
        v65 = *(*&__src[0] + 8);
        if (mNumberBuffers)
        {
          v66 = (mNumberBuffers + 3) & 0x1FFFFFFFCLL;
          v67 = vdupq_n_s64(mNumberBuffers - 1);
          v68 = &v63[1].mBuffers[0].mData + 1;
          v69 = xmmword_18F9016C0;
          v70 = xmmword_18F9016B0;
          do
          {
            v71 = vmovn_s64(vcgeq_u64(v67, v69));
            if (vuzp1_s16(v71, *v67.i8).u8[0])
            {
              *(v68 - 8) = v65;
            }

            if (vuzp1_s16(v71, *&v67).i8[2])
            {
              *(v68 - 4) = v65;
            }

            if (vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v67, *&v70))).i32[1])
            {
              *v68 = v65;
              v68[4] = v65;
            }

            v70 = vaddq_s64(v70, v115);
            v69 = vaddq_s64(v69, v115);
            v68 += 16;
            v66 -= 4;
          }

          while (v66);
        }

        v72 = *v62;
        outBytesConsumed[0] = v65;
        outBytesConsumed[1] = v72;
        if (v72)
        {
          *v108 = v61;
          appended = acv2::CodecConverter::AppendNewInput(a1, v63, &outBytesConsumed[1], outBytesConsumed, *(v62 + 32));
          if (appended)
          {
            v42 = appended;
            v28 = 0;
            goto LABEL_141;
          }

          v75 = *v62;
          v61 = *v108;
          if (*v62)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v75 = *v62;
        }

        *(a1 + 207) = 1;
LABEL_135:
        v76 = acv2::AudioConverterChain::ConsumedInput(*(a1 + 8), v75, v61, outBytesConsumed[1]);
        if (HIDWORD(v76))
        {
          v42 = 0;
          v28 = outBytesConsumed[1];
        }

        else
        {
          v42 = v76;
          if (v76)
          {
            goto LABEL_141;
          }
        }

        goto LABEL_142;
      }

      v46 = *(v44 + 128) + v45;
      if (v43)
      {
        v47 = 1;
      }

      else
      {
        v47 = v46;
      }

      acv2::AudioConverterChain::ObtainInput(__src, *(a1 + 8), a1, v47, v118);
      if ((__src[1] & 1) == 0)
      {
LABEL_128:
        v28 = 0;
        v42 = __src[0];
        if (LODWORD(__src[0]))
        {
          goto LABEL_141;
        }

        goto LABEL_142;
      }

      v48 = __src[0];
      v49 = *(*&__src[0] + 16);
      v50 = v49->mNumberBuffers;
      v51 = *(*&__src[0] + 8);
      if (v50)
      {
        v52 = (v50 + 3) & 0x1FFFFFFFCLL;
        v53 = vdupq_n_s64(v50 - 1);
        v54 = &v49[1].mBuffers[0].mData + 1;
        v55 = xmmword_18F9016C0;
        v56 = xmmword_18F9016B0;
        do
        {
          v57 = vmovn_s64(vcgeq_u64(v53, v55));
          if (vuzp1_s16(v57, *v53.i8).u8[0])
          {
            *(v54 - 8) = v51;
          }

          if (vuzp1_s16(v57, *&v53).i8[2])
          {
            *(v54 - 4) = v51;
          }

          if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v56))).i32[1])
          {
            *v54 = v51;
            v54[4] = v51;
          }

          v58 = vdupq_n_s64(4uLL);
          v56 = vaddq_s64(v56, v58);
          v55 = vaddq_s64(v55, v58);
          v54 += 16;
          v52 -= 4;
        }

        while (v52);
      }

      v59 = *v48;
      outBytesConsumed[0] = v51;
      outBytesConsumed[1] = v59;
      v42 = acv2::CodecConverter::AppendNewInput(a1, v49, &outBytesConsumed[1], outBytesConsumed, *(v48 + 32));
      v60 = *(a1 + 848);
      if (v60)
      {
        AudioConverterCapturer::write(v60, v49, *(v48 + 32), outBytesConsumed[1]);
      }

      if (v42)
      {
        v28 = 0;
      }

      else
      {
        v74 = acv2::AudioConverterChain::ConsumedInput(*(a1 + 8), *v48, *(&v48 + 1), outBytesConsumed[1]);
        if (HIDWORD(v74))
        {
          v42 = 0;
          v28 = outBytesConsumed[1];
        }

        else
        {
          v42 = v74;
        }
      }

      if (v42)
      {
        goto LABEL_141;
      }

LABEL_142:
      if (v28)
      {
        v19 = 1;
      }

      if (!((v28 == 0) | v20 & 1))
      {
        v20 = 1;
      }

LABEL_146:
      v77 = (a1 + v32);
      v78 = acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator()(v117, v27, v77, &outStatus);
      v79 = v78;
      v80 = HIDWORD(v78);
      if ((v78 & 0x100000000) == 0)
      {
        v19 = v78;
        v42 = v78;
        goto LABEL_223;
      }

      v81 = outStatus;
      if (!v78 && outStatus == 4)
      {
        if (*(a1 + 207) != 1 || (v82 = *(a1 + 104)) != 0 && (*(v82 + 24) || *(v82 + 128)))
        {
          LODWORD(v83) = 0;
        }

        else
        {
          LODWORD(__src[0]) = 0;
          v93 = *(a1 + 336);
          v94 = *(a1 + 344);
          for (i = v93->mBuffers; i != v94; ++i)
          {
            i->mData = __src;
            i->mDataByteSize = 0;
          }

          *outBytesConsumed = 0;
          acv2::CodecConverter::AppendNewInput(a1, v93, &outBytesConsumed[1], outBytesConsumed, 0);
          outStatus = 998;
          v83 = acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator()(v117, v27, v77, &outStatus);
          if (HIDWORD(v83) == v80)
          {
            v96 = v79;
          }

          else
          {
            v96 = HIDWORD(v83) << 32;
          }

          if ((v96 & 0xFFFFFFFFFFLL) == 0)
          {
            goto LABEL_221;
          }

          if (!v83)
          {
            *(a1 + 211) = 1;
          }
        }

        v81 = outStatus;
        LODWORD(v79) = v83;
      }

      *(a1 + 210) = v81 == 3;
      if (v81 == 5)
      {
        *(a1 + 732) = 0;
        v84 = v116;
        if (!v79)
        {
          *(a1 + 211) = 1;
        }
      }

      else
      {
        v84 = v116;
        if (v81 == 1)
        {
          ++*(a1 + 732);
          *v77 = 0;
          *(v77 + 2) = 0;
          ACBaseAudioSpan::resetMetadataEvents(v77);
          if (*(a1 + 732) > 3u || *(a1 + 204) == 1)
          {
            if (v20)
            {
              v20 = 0;
            }

            v19 = 97;
          }
        }

        else
        {
          *(a1 + 732) = 0;
        }
      }

      if (*(a1 + 211) == 1)
      {
        *(*(a1 + 8) + 402) = 1;
      }

      if ((v84 & 1) == 0)
      {
        if (*(a1 + 388) == 1 && (*(a1 + 396) & 1) == 0)
        {
          v85 = *(a1 + 392) >= v79 ? v79 : *(a1 + 392);
          if (v85)
          {
            v83 = ACBaseAudioSpan::advanceConsume((a1 + 408), v85, v113);
            if (!HIDWORD(v83))
            {
              goto LABEL_221;
            }

            v86 = *(a1 + 392) - v85;
            *(a1 + 392) = v86;
            if (!v86)
            {
              *(a1 + 396) = 1;
            }

            LODWORD(v79) = v79 - v85;
          }
        }

        if (v79)
        {
          v87 = *(a1 + 408);
          v88 = *(a1 + 228);
          if (v88 >= v87)
          {
            v89 = v87;
          }

          else
          {
            v89 = v88;
          }

          v83 = ACBaseAudioSpan::append((a1 + 224), (a1 + 408), v89, v113);
          if (!HIDWORD(v83) || (v83 = ACBaseAudioSpan::advanceConsume((a1 + 408), v89, v113), !HIDWORD(v83)))
          {
LABEL_221:
            v19 = v83;
            v42 = v83;
            goto LABEL_223;
          }

          ACBaseAudioSpan::copyFilledMetadataEventsFrom((a1 + 224), a1 + 408, v89 | 0x100000000);
          if (*(a1 + 312) == 1)
          {
            v90 = *(a1 + 272);
            if ((*(a1 + 280) - v90) >= 0x2C)
            {
              if (v90)
              {
                v91 = *(v90 + 40);
                if (v91)
                {
                    ;
                  }

                  v97 = *j;
                  v98 = j[1];
                  *(a1 + 600) = *(j + 4);
                  *v110 = v97;
                  *(a1 + 584) = v98;
                  *v109 = *v109 + v89;
                  *(a1 + 588) -= v89;
                }
              }
            }
          }

          ACBaseAudioSpan::completeMetadataFrame((a1 + 224));
        }

        else if (*(a1 + 392) && *(a1 + 211) != 1)
        {
          goto LABEL_212;
        }
      }

      if (*(a1 + 224))
      {
        goto LABEL_215;
      }

      if (outStatus == 1)
      {
        break;
      }

      if (outStatus != 4 || (*(a1 + 211) & 1) != 0)
      {
        goto LABEL_215;
      }

LABEL_212:
      if (v42)
      {
        goto LABEL_215;
      }
    }

    if (*(a1 + 732) <= 3u && *(a1 + 204) != 1)
    {
      goto LABEL_212;
    }

LABEL_215:
    if (v42 && (v20 & 1) != 0)
    {
      v20 = 0;
      LODWORD(v114) = v42 >> 8;
      v19 = v42;
      goto LABEL_224;
    }

    v15 = v112;
    v13 = v113;
    if (v20)
    {
      goto LABEL_43;
    }

    LODWORD(v21) = 6447460;
LABEL_34:
    LODWORD(v114) = v21;
LABEL_225:
    if (v15)
    {
      v15 = v20;
    }

    v8 = v19;
    v19 = 0;
LABEL_228:
    v99 = *(a1 + 224);
    if (!v99 && (v19 & 1) == 0)
    {
      break;
    }

    v100 = *(a1 + 232);
    v101 = *a2;
    v102 = a2[2];
    if (v99)
    {
      v103 = *(a2 + 4);
      if (v103)
      {
        v104 = *a2;
        v105 = *(a1 + 224);
        do
        {
          *(v103 + 16 * v104++) += v102;
          --v105;
        }

        while (v105);
      }
    }

    *a2 = v101 + v99;
    a2[2] = v102 + v100;
    ACBaseAudioSpan::copyFilledMetadataEventsFrom(a2, a1 + 224, 0);
  }

  while ((v15 & 1) != 0);
  ACBaseAudioSpan::completeMetadataFrame(a2);
  v107 = *(a1 + 152);
  if (v107)
  {
    acv2::AudioConverterBase::writeCapture(v107, a2, v106);
  }

  if (v15)
  {
    v3 = 0;
  }

  else
  {
    v3 = v114;
  }

  v6 = v15 << 32;
  if (v15)
  {
    v6 = 0x100000000;
  }

  return v8 | ((*&v3 & 0xFFFFFFLL) << 8) | v6;
}

uint64_t ConverterContext::withoutRealtimeSafety(char a1, ConverterContext *this, uint64_t (*a3)(void, void), uint64_t a4)
{
  v5 = a3;
  v6 = a4;
  if (a1 != 2)
  {
    return a3(&v6, this);
  }

  ConverterContext::realtimeViolation(this, this);
  return 1869627199;
}

void sub_18F62653C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F62652CLL);
}

uint64_t acv2::CodecConverter::AppendNewInput(acv2::CodecConverter *this, const AudioBufferList *a2, UInt32 *ioNumberPackets, UInt32 *outBytesConsumed, const AudioStreamPacketDescription *inPacketDescription)
{
  v9 = *(this + 42);
  if (v9 == a2)
  {
    goto LABEL_5;
  }

  mNumberBuffers = v9->mNumberBuffers;
  v11 = *(this + 43) - v9;
  if (mNumberBuffers != (v11 - 8) >> 4)
  {
    CAAssertRtn();
    goto LABEL_40;
  }

  if (a2->mNumberBuffers != mNumberBuffers)
  {
LABEL_40:
    v31 = CAAssertRtn();
    return AudioCodecAppendInputData(v31, v32, v33, v34, v35);
  }

  memcpy(*(this + 42), a2, v11);
  v9 = *(this + 42);
LABEL_5:
  v12 = *outBytesConsumed;
  v13 = *ioNumberPackets;
  if ((*(this + 28) & 0x20) != 0 && *(this + 11) >= 2u)
  {
    appended = AudioCodecAppendInputBufferList(*(this + 21), v9, ioNumberPackets, inPacketDescription, outBytesConsumed);
  }

  else
  {
    v15 = *(this + 6);
    if ((v15 == 1935767394 || v15 == 1935764850) && v13 == 1 && v12 == 0)
    {
      *outBytesConsumed = 4;
    }

    appended = AudioCodecAppendInputData(*(this + 21), v9->mBuffers[0].mData, outBytesConsumed, ioNumberPackets, inPacketDescription);
  }

  v19 = appended;
  if (appended)
  {
    v20 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v20 + 88, 16);
    if (message)
    {
      v22 = message;
      v23 = _os_log_pack_fill(message + 40, v20, 0, &dword_18F5DF000, "AudioCodecAppendInputData returned %d (i/o before %u/%u after %u/%u", v36, v37, v38, v39, v40);
      v24 = *outBytesConsumed;
      v25 = *ioNumberPackets;
      *v23 = 67110144;
      *(v23 + 4) = v19;
      *(v23 + 8) = 1024;
      *(v23 + 10) = v12;
      *(v23 + 14) = 1024;
      *(v23 + 16) = v13;
      *(v23 + 20) = 1024;
      *(v23 + 22) = v24;
      *(v23 + 26) = 1024;
      *(v23 + 28) = v25;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v22);
    }
  }

  else
  {
    v26 = *outBytesConsumed;
    if (v12 < *outBytesConsumed)
    {
      v26 = v12;
    }

    *outBytesConsumed = v26;
    LODWORD(v27) = *ioNumberPackets;
    if (v13 < *ioNumberPackets)
    {
      LODWORD(v27) = v13;
    }

    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = v13 == 1;
    }

    if (v28 && v12 == 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = v27;
    }

    *ioNumberPackets = v27;
    *(this + 101) += v27;
    *(this + 102) += *outBytesConsumed;
  }

  return v19;
}

OSStatus AudioCodecAppendInputData(AudioCodec inCodec, const void *inInputData, UInt32 *ioInputDataByteSize, UInt32 *ioNumberPackets, const AudioStreamPacketDescription *inPacketDescription)
{
  if (!inCodec)
  {
    return -50;
  }

  v9 = (*(*inCodec + 8))(inCodec);
  if (!v9)
  {
    return 560947818;
  }

  v10 = v9;
  v11 = *(*((**v9)(v9) + 112) + 40);
  if (!v11)
  {
    return -4;
  }

  v12 = v10[3];

  return v11(v12, inInputData, ioInputDataByteSize, ioNumberPackets, inPacketDescription);
}

uint64_t acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator()(void *a1, UInt32 a2, uint64_t a3, UInt32 *outStatus)
{
  v7 = a1;
  v8 = *a1;
  v9 = *(a3 + 16);
  v10 = *v9;
  if (v10)
  {
    v11 = 0;
    v12 = 16 * v10;
    do
    {
      v13 = *(a3 + 12);
      v14 = *(a3 + 16) + v11;
      *(v14 + 12) = v13;
      bzero(*(v14 + 16), v13);
      v11 += 16;
    }

    while (v12 != v11);
    v9 = *(a3 + 16);
  }

  v15 = v9[3];
  v16 = *(v8 + 720);
  if (!v16)
  {
    ioNumberPackets = a2;
    goto LABEL_22;
  }

  v17 = *(v16 + 40);
  v18 = v17 * *(v16 + 96);
  if (v18 >= v15)
  {
    v18 = v9[3];
  }

  v19 = v18 / v17 / *(v16 + 56) * *(v16 + 56);
  v15 = v19 * v17;
  v20 = ExtendedAudioBufferList_Prepare(**(v16 + 64), 1, v19 * v17);
  if (v20)
  {
    v9 = v20;
    v21 = 2003329396;
    if (v20[4 * *v20 + 2] == 1094863915)
    {
      v22 = *(v20 - 9);
      if (v22)
      {
        v76 = a2;
        v77 = outStatus;
        v78 = v7;
        v23 = (v20 + v22 - 48);
        v24 = *v23;
        v25 = *(v9 + v22 - 40) - *v23;
        if (v25 >= 1)
        {
          bzero(v24, v25);
          v24 = *v23;
        }

        *(v23 + 1) = v24;
        *ioOutputDataByteSize = 0u;
        memset(v83, 0, sizeof(v83));
        v83[8] = 1;
        *&v83[16] = 0x10000002CLL;
        AudioMetadataFrame::begin_new(v23, ioOutputDataByteSize);
        v26 = 2 * ((v19 + *(v16 + 56) - 1) / *(v16 + 56));
        v27 = *(v16 + 100);
        if (v27 >= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          v29 = 0;
          v30 = (*(v16 + 80) - *(v16 + 72)) / v27;
          do
          {
            v31 = *(v16 + 72);
            ioOutputBufferLists[0] = 1;
            *&ioOutputBufferLists[1] = 0x2800000000;
            *&ioOutputBufferLists[3] = 0;
            *&ioOutputBufferLists[5] = 0x100000000;
            ioOutputBufferLists[7] = v30;
            v81 = v31 + v30 * v29;
            AudioMetadataFrame_AppendEvent(v23, ioOutputBufferLists);
            ++v29;
          }

          while (v29 < v28);
        }

        v32 = *(v8 + 720);
        ioNumberPackets = v76;
        if (v32)
        {
          outStatus = v77;
          v7 = v78;
          goto LABEL_23;
        }

        outStatus = v77;
        v7 = v78;
LABEL_22:
        if ((*(v8 + 712) & 1) == 0 && ((*(v8 + 68) & 0x20) == 0 || *(v8 + 84) < 2u))
        {
          if (*(v8 + 204) == 1 && v15 < *(v8 + 364))
          {
            v35 = *(v8 + 784);
            v36 = *(v8 + 792);
            if (v35 == v36)
            {
              v37 = v7[1];
              *ioOutputDataByteSize = v8;
              ConverterContext::withoutRealtimeSafety(*v37, "encoder client's buffer is too small, allocating more", caulk::function_ref<int ()(void)>::functor_invoker<acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator() const(unsigned int,ACAudioSpan &,unsigned int &)::{lambda(void)#1}>, ioOutputDataByteSize);
              v35 = *(v8 + 784);
              v36 = *(v8 + 792);
            }

            ioOutputDataByteSize[0] = v36 - v35;
            v38 = AudioCodecProduceOutputPackets(*(v8 + 168), v35, ioOutputDataByteSize, &ioNumberPackets, *(a3 + 32), outStatus);
            if (!v38)
            {
              v39 = ioOutputDataByteSize[0];
              if (ioOutputDataByteSize[0] <= v9[3])
              {
                v9[3] = ioOutputDataByteSize[0];
                memcpy(*(v9 + 2), *(v8 + 784), v39);
                goto LABEL_44;
              }

              v38 = 560100710;
              v40 = _os_log_pack_size();
              message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v40 + 88, 17);
              if (message)
              {
                v42 = message;
                v43 = _os_log_pack_fill(message + 40, v40, 0, &dword_18F5DF000, "Encoder client can't handle %d-byte packet!", v75);
                v44 = ioOutputDataByteSize[0];
                *v43 = 67109120;
                v43[1] = v44;
                caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v42);
LABEL_39:
                v45 = _os_log_pack_size();
                v46 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v45 + 88, 2);
                if (v46)
                {
                  v47 = v46;
                  v48 = _os_log_pack_fill(v46 + 40, v45, 0, &dword_18F5DF000, "AudioCodecProduceOutputPackets returned %d", v75);
                  *v48 = 67109120;
                  v48[1] = v38;
                  caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v47);
                }

                v49 = 0;
                v50 = v9[3];
LABEL_47:
                *(v8 + 824) += v49;
                *(v8 + 832) += v50;
                v51 = *(v8 + 720);
                if (v51)
                {
                  v52 = *(a3 + 16);
                  v53 = *v52;
                  if (v53)
                  {
                    v54 = 0;
                    v55 = 16 * v53;
                    do
                    {
                      v56 = *(a3 + 12);
                      v57 = *(a3 + 16) + v54;
                      *(v57 + 12) = v56;
                      bzero(*(v57 + 16), v56);
                      v54 += 16;
                    }

                    while (v55 != v54);
                    v52 = *(a3 + 16);
                  }

                  *ioOutputDataByteSize = v9;
                  *ioOutputBufferLists = v52;
                  if (v49)
                  {
                    ioActionFlags = 0;
                    if (AudioUnitProcessMultiple(*(v51 + 8), &ioActionFlags, (v51 + 104), v49, 1u, ioOutputDataByteSize, 1u, ioOutputBufferLists))
                    {
                      v58 = _os_log_pack_size();
                      Packets = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v58 + 88, 16);
                      if (Packets)
                      {
                        v60 = Packets;
                        *_os_log_pack_fill(Packets + 40, v58, 0, &dword_18F5DF000, "Unable to render audio post-decode") = 0;
                        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v60);
                        LODWORD(Packets) = 0;
                      }

                      v34 = 0x100000000;
LABEL_75:
                      v21 = Packets;
                      return v34 | v21;
                    }

                    *(v51 + 104) = *(v51 + 104) + v49;
                  }

                  else
                  {
                    v61 = *v52;
                    if (v61)
                    {
                      v62 = (v61 + 3) & 0x1FFFFFFFCLL;
                      v63 = vdupq_n_s64(v61 - 1);
                      v64 = xmmword_18F9016B0;
                      v65 = xmmword_18F9016C0;
                      v66 = v52 + 11;
                      v67 = vdupq_n_s64(4uLL);
                      do
                      {
                        v68 = vmovn_s64(vcgeq_u64(v63, v65));
                        if (vuzp1_s16(v68, *v63.i8).u8[0])
                        {
                          *(v66 - 8) = 0;
                        }

                        if (vuzp1_s16(v68, *&v63).i8[2])
                        {
                          *(v66 - 4) = 0;
                        }

                        if (vuzp1_s16(*&v63, vmovn_s64(vcgeq_u64(v63, *&v64))).i32[1])
                        {
                          *v66 = 0;
                          v66[4] = 0;
                        }

                        v64 = vaddq_s64(v64, v67);
                        v65 = vaddq_s64(v65, v67);
                        v66 += 16;
                        v62 -= 4;
                      }

                      while (v62);
                    }
                  }
                }

                v69 = *(v8 + 72);
                *a3 = v49;
                Packets = ACBaseAudioSpan::sizeOfFirstPackets(a3, v49, v69);
                v34 = HIDWORD(Packets);
                if (HIDWORD(Packets))
                {
                  *(a3 + 8) = Packets;
                  v71 = *(v8 + 856);
                  if (v71)
                  {
                    acv2::AudioConverterBase::writeCapture(v71, a3, v70);
                  }

                  v34 = 0x100000000;
                  if (*(v8 + 204) == 1)
                  {
                    v72 = *(a3 + 40);
                    if (v72)
                    {
                      v73 = v7[1];
                      *ioOutputDataByteSize = v8;
                      ioOutputDataByteSize[2] = v49;
                      *v83 = v72;
                      ConverterContext::withoutRealtimeSafety(*v73, "fetching packet dependencies", caulk::function_ref<int ()(void)>::functor_invoker<acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator() const(unsigned int,ACAudioSpan &,unsigned int &)::{lambda(void)#2}>, ioOutputDataByteSize);
                      v34 = 0x100000000;
                    }
                  }

                  LODWORD(Packets) = v49;
                }

                goto LABEL_75;
              }
            }

LABEL_38:
            if (v38)
            {
              goto LABEL_39;
            }

LABEL_44:
            v50 = v9[3];
            if (*(v8 + 205) == 1)
            {
              v49 = v50 / *(v8 + 72);
            }

            else
            {
              v49 = ioNumberPackets;
            }

            goto LABEL_47;
          }

          v33 = AudioCodecProduceOutputPackets(*(v8 + 168), *(v9 + 2), v9 + 3, &ioNumberPackets, *(a3 + 32), outStatus);
LABEL_37:
          v38 = v33;
          goto LABEL_38;
        }

LABEL_23:
        v33 = AudioCodecProduceOutputBufferList(*(v8 + 168), v9, &ioNumberPackets, *(a3 + 32), outStatus);
        goto LABEL_37;
      }
    }

    v34 = 0;
  }

  else
  {
    v34 = 0;
    v21 = 561013874;
  }

  return v34 | v21;
}

OSStatus AudioCodecProduceOutputPackets(AudioCodec inCodec, void *outOutputData, UInt32 *ioOutputDataByteSize, UInt32 *ioNumberPackets, AudioStreamPacketDescription *outPacketDescription, UInt32 *outStatus)
{
  if (!inCodec)
  {
    return -50;
  }

  v11 = (*(*inCodec + 8))(inCodec);
  v12 = v11;
  if (ioOutputDataByteSize)
  {
    v13 = *ioOutputDataByteSize;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = 560947818;
    if (!ioOutputDataByteSize)
    {
      return result;
    }

    goto LABEL_12;
  }

  v13 = 0;
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_4:
  v14 = *(*((**v11)(v11) + 112) + 48);
  if (v14)
  {
    result = v14(v12[3], outOutputData, ioOutputDataByteSize, ioNumberPackets, outPacketDescription, outStatus);
    if (!ioOutputDataByteSize)
    {
      return result;
    }
  }

  else
  {
    result = -4;
    if (!ioOutputDataByteSize)
    {
      return result;
    }
  }

LABEL_12:
  if (*ioOutputDataByteSize > v13)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void AudioConverterServer::syncThreadPriorityAndWorkgroup(AudioConverterServer *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = (*(*this + 16))(this);
  if (v3 > 0x5F)
  {
    if (*(this + 28) != 97)
    {
      caulk::mach::this_thread::set_priority();
      *(this + 28) = 97;
    }

    auoop::WorkgroupMirror::lookup(v7, *(this + 33), v3);
    if (v8 != *(this + 26) || v10[24] != *(this + 256))
    {
      v5 = (this + 120);
      if (v8)
      {
        std::optional<audioipc::os_workgroup_joiner>::emplace[abi:ne200100]<caulk::mach::os_workgroup_managed &,void>(v5, v7);
      }

      else if (*(this + 192) == 1)
      {
        audioipc::os_workgroup_joiner::~os_workgroup_joiner(v5);
        *(this + 192) = 0;
      }

      caulk::mach::details::holder::operator=(this + 26, &v8);
      v6 = *v10;
      *(this + 216) = v9;
      *(this + 232) = v6;
      *(this + 241) = *&v10[9];
    }

    caulk::mach::os_workgroup_managed::~os_workgroup_managed(v7);
  }

  else
  {
    AudioConverterServer::WorkgroupJoiner::leave((this + 120), v2);
    if (v3)
    {

      audioipc::priority_propagator_impl::apply_priority(this + 6, v3);
    }
  }
}

__int128 *audioipc::priority_propagator_impl::apply_priority(__int128 *this, int a2)
{
  if (*(this + 4) != a2)
  {
    v3 = this;
    this = caulk::mach::this_thread::set_priority();
    *(v3 + 4) = a2;
  }

  return this;
}

uint64_t ACRendererSharedMemory::mutableAudioBufferList(ACRendererSharedMemory *this, unsigned int a2, int a3)
{
  v3 = *(this + 11 * a2 + 7);
  result = v3 + 48;
  if (*(v3 + 48))
  {
    v5 = 0;
    v6 = vdupq_n_s64((*(v3 + 48) + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
    v7 = ((*(v3 + 48) + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((*(v3 + 48) - 1) & 3) + 4;
    v8 = (v3 + 108);
    do
    {
      v9 = vdupq_n_s64(v5);
      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_18F9016C0)));
      if (vuzp1_s16(v10, *v6.i8).u8[0])
      {
        *(v8 - 12) = a3;
      }

      if (vuzp1_s16(v10, *&v6).i8[2])
      {
        *(v8 - 8) = a3;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_18F9016B0)))).i32[1])
      {
        *(v8 - 4) = a3;
        *v8 = a3;
      }

      v5 += 4;
      v8 += 16;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t _ZN26AudioConverterRenderServer17converterCallbackMUlP20OpaqueAudioConverterPjP15AudioBufferListPP28AudioStreamPacketDescriptionPvE_8__invokeES1_S2_S4_S7_S8_(uint64_t a1, unsigned int *a2, unsigned int *a3, void **a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = *(*a5 + 488);
  v10 = *(v9 + 12);
  if (v10)
  {
    goto LABEL_2;
  }

  v18 = a3[3];
  *(v8 + 576) = 0;
  v19 = *a2;
  can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(v8 + 8, 0.0);
  v21 = can_send;
  v22 = HIDWORD(can_send);
  if (can_send & 0x100000000) != 0 && (can_send)
  {
    *v9 = 26112;
    *(v9 + 12) = v19;
    *(v9 + 16) = v18;
    atomic_store(0, *(v8 + 16));
    v23 = audioipc::eventlink_primitive::wait_signal_or_error(*(v8 + 48));
    v24 = atomic_load((v8 + 41));
    if (v24)
    {
      v28 = 0;
      v27 = 0;
      atomic_store(2u, *(v8 + 16));
    }

    else
    {
      v25 = v23;
      v26 = *(v8 + 16);
      if (!HIDWORD(v23))
      {
        atomic_store(2u, v26);
        audioipc::log_error("rt_sender::signal_wait", v23);
        v29 = 0;
        v27 = v25 & 0xFFFFFF00;
        v28 = v25;
        goto LABEL_18;
      }

      v27 = 0;
      v28 = 1;
      atomic_store(1u, v26);
      *(v8 + 40) = 1;
    }

    v29 = 0x100000000;
LABEL_18:
    v21 = v28 | v27 | v29;
    v22 = HIDWORD(v29);
  }

  if (!v22)
  {
    v30 = 560164718;
    v39 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v39 + 88, 16);
    if (!message)
    {
      return v30;
    }

    v41 = message;
    v42 = _os_log_pack_fill(message + 40, v39, 0, &dword_18F5DF000, "AudioConverterService -> %p: received kernel error %d when requesting input from the client.", v48, v49);
    v43 = *(*(v8 + 480) + 104);
    *v42 = 134218240;
    *(v42 + 4) = v43;
    *(v42 + 12) = 1024;
    *(v42 + 14) = v21;
LABEL_41:
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v41);
    return v30;
  }

  if ((v21 & 1) == 0)
  {
    v30 = 561277293;
    v44 = _os_log_pack_size();
    v45 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v44 + 88, 16);
    if (!v45)
    {
      return v30;
    }

    v41 = v45;
    v46 = _os_log_pack_fill(v45 + 40, v44, 0, &dword_18F5DF000, "AudioConverterService -> %p: Failure in requesting input from the client.", v48);
    v47 = *(*(v8 + 480) + 104);
    *v46 = 134217984;
    *(v46 + 4) = v47;
    goto LABEL_41;
  }

  if (*v9 != 2)
  {
    return 4294956420;
  }

  v30 = *(v9 + 4);
  if (!v30)
  {
    v10 = *(v9 + 12);
LABEL_2:
    if (v10 >= *a2)
    {
      v10 = *a2;
    }

    *a2 = v10;
    if (a4 && *(v9 + 12))
    {
      v11 = (*(v8 + 520) + 16 * *(v8 + 576));
      v12 = &v11[2 * v10 - 2];
      if (16 * (v10 - 1) != -16)
      {
        memmove(*a4, (*(v8 + 520) + 16 * *(v8 + 576)), 16 * (v10 - 1) + 16);
        v10 = *a2;
      }

      v13 = *v11;
      v14 = *(v12 + 3) + *v12 - *v11;
      v15 = *v11 - *(v8 + 580) + v14;
      if (v10)
      {
        v16 = *a4;
        v17 = *a4 + 16 * v10;
        do
        {
          *v16 -= v13;
          v16 += 16;
        }

        while (v16 != v17);
      }
    }

    else
    {
      if (a4)
      {
        *a4 = 0;
      }

      v31 = *(*(v8 + 296) + 96);
      v14 = v31 * v10;
      v13 = (*(v8 + 576) * v31);
      v15 = v31 * v10;
    }

    v32 = ACRendererSharedMemory::mutableAudioBufferList(*(v8 + 496), 0, v14);
    v33 = *v32;
    v34 = *a3;
    if (*v32 >= *a3)
    {
      v33 = *a3;
    }

    memcpy(a3 + 2, v32 + 2, 16 * v33);
    LODWORD(v35) = *v32;
    if (*v32 >= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = v35;
    }

    if (v35)
    {
      v36 = a3 + 4;
      do
      {
        *v36 += v13;
        v36 += 4;
        --v35;
      }

      while (v35);
    }

    v37 = *(v9 + 12);
    *(v9 + 16) -= v15;
    *(v9 + 12) = v37 - *a2;
    *(v8 + 576) += *a2;
    *(v8 + 580) += v15;
    return *(v9 + 4);
  }

  return v30;
}

char *ACSpanningInputBuffer::checkRelocateClientPacketDescriptions(char *result, const void **a2)
{
  if (*(result + 1))
  {
    v2 = 0;
  }

  else
  {
    v2 = result + 128 == a2;
  }

  if (v2)
  {
    v3 = result;
    v4 = a2[4];
    if (v4 != *(result + 29))
    {
      v5 = *(result + 32);
      v6 = 16 * v5;
      v7 = *(result + 34);
      v8 = *(result + 32);
      if (v5 <= (v7 - v8) >> 4)
      {
        v13 = *(result + 33);
        v14 = v13 - v8;
        if (v5 <= (v13 - v8) >> 4)
        {
          if (v5)
          {
            result = memmove(*(result + 32), a2[4], 16 * v5);
          }

          v15 = &v8[v6];
        }

        else
        {
          if (v13 != v8)
          {
            result = memmove(*(result + 32), a2[4], v13 - v8);
          }

          v16 = *(v3 + 33);
          if (v14 != v6)
          {
            v17 = (v4 + v14);
            v18 = (&v8[v6] - v13);
            v16 = *(v3 + 33);
            do
            {
              v19 = *v17++;
              *v16 = v19;
              v16 += 16;
              v18 -= 16;
            }

            while (v18);
          }

          v15 = v16;
        }

        *(v3 + 33) = v15;
        goto LABEL_33;
      }

      v9 = MEMORY[0x1E69E3C08];
      if (v8)
      {
        *(result + 33) = v8;
        if (v7 - v8 < 0)
        {
          goto LABEL_36;
        }

        result = *v9;
        if (!*v9)
        {
          goto LABEL_36;
        }

        caulk::rt_safe_memory_resource::rt_deallocate(result, v8);
        v7 = 0;
        *(v3 + 32) = 0;
        *(v3 + 33) = 0;
        *(v3 + 34) = 0;
      }

      v10 = v7 >> 3;
      if (v7 >> 3 <= v5)
      {
        v10 = v5;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 >> 60)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      result = *v9;
      if (*v9)
      {
        result = caulk::rt_safe_memory_resource::rt_allocate(result);
        *(v3 + 32) = result;
        *(v3 + 33) = result;
        *(v3 + 34) = &result[16 * v11];
        do
        {
          v12 = *v4++;
          *result = v12;
          result += 16;
          v6 -= 16;
        }

        while (v6);
        *(v3 + 33) = result;
LABEL_33:
        *(v3 + 20) = *(v3 + 32);
        return result;
      }

LABEL_36:
      __break(1u);
    }
  }

  return result;
}

void AudioFileObject::AppendPacket(AudioFileObject *this, const AudioStreamPacketDescription *a2)
{
  v4 = *(this + 15);
  if (!v4)
  {
    operator new();
  }

  v5 = *(this + 11);
  v10 = *a2;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = DWORD2(v10);
  }

  v7 = *(v4 + 24);
  if (v7)
  {
    CompressedPacketTable::operator[](v9, v4, v7 - 1);
    v7 = v9[2];
  }

  v11 = v7 + v6;
  CompressedPacketTable::push_back(v4, &v10);
  mDataByteSize = a2->mDataByteSize;
  if (mDataByteSize > *(this + 28))
  {
    *(this + 28) = mDataByteSize;
  }
}

void CompressedPacketTable::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 24);
  if ((*(a1 + 24) & 0x1F) == 0)
  {
    v5 = malloc_type_malloc(0x300uLL, 0x1000040504FFAC1uLL);
    if (!v5)
    {
      goto LABEL_65;
    }

    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v7 >= v6)
    {
      v9 = *a1;
      v10 = v7 - *a1;
      v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3) + 1;
      if (v11 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v14 = 8 * (v10 >> 3);
      *v14 = 0;
      *(v14 + 8) = 6;
      *(v14 + 16) = v5;
      v8 = v14 + 24;
      v15 = v14 - v10;
      memcpy((v14 - v10), v9, v10);
      *a1 = v15;
      *(a1 + 8) = v8;
      *(a1 + 16) = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 8) = 6;
      *(v7 + 16) = v5;
      v8 = v7 + 24;
    }

    *(a1 + 8) = v8;
  }

  v16 = *a1 + 24 * (v4 >> 5);
  v17 = *a2;
  v18 = *(v16 + 16) + 24 * (v4 & 0x1F);
  *(v18 + 16) = *(a2 + 2);
  *v18 = v17;
  if ((v4 & 0x1F) == 0x1F)
  {
    v19 = *(v16 + 16);
    if (!*(v19 + 8))
    {
      v20 = -1;
      v21 = 32;
      do
      {
        if (v20 == 30)
        {
          goto LABEL_23;
        }

        v22 = *(v19 + v21);
        ++v20;
        v21 += 24;
      }

      while (!v22);
      if (v20 >= 0x1F)
      {
LABEL_23:
        v23 = *v19;
        v24 = *v19 + *(v19 + 12);
        if (v24 == *(v19 + 24))
        {
          v25 = 0;
          v26 = (v19 + 36);
          while (v25 != 30)
          {
            v24 += *v26;
            v27 = *(v26 + 3);
            v26 += 6;
            ++v25;
            if (v24 != v27)
            {
              goto LABEL_31;
            }
          }

          v25 = 31;
LABEL_31:
          v29 = v25 > 0x1E;
          v28 = *(v19 + 744) - v23 + *(v19 + 756);
          *v16 = v23;
          if (v28 < 0x10000)
          {
            if (v25 >= 0x1F)
            {
              v30 = malloc_type_malloc(0x40uLL, 0x1000040BDFB0063uLL);
              if (v30)
              {
                v31 = 0;
                *(v16 + 16) = v30;
                *(v16 + 8) = 0;
                v32 = v19 + 96;
                v33 = vdupq_n_s64(v23);
                do
                {
                  v34.i64[0] = *(v32 - 48);
                  v34.i64[1] = *(v32 - 24);
                  v35.i64[0] = *(v32 - 96);
                  v35.i64[1] = *(v32 - 72);
                  v36.i64[0] = *(v32 + 48);
                  v36.i64[1] = *(v32 + 72);
                  v37.i64[0] = *v32;
                  v37.i64[1] = *(v32 + 24);
                  v38.i32[0] = *(v32 + 12);
                  v38.i32[1] = *(v32 + 36);
                  v39.i32[0] = *(v32 + 60);
                  v39.i32[1] = *(v32 + 84);
                  v40.i32[0] = *(v32 - 84);
                  v40.i32[1] = *(v32 - 60);
                  v41.i32[0] = *(v32 - 36);
                  v41.i32[1] = *(v32 - 12);
                  *&v30[v31] = vuzp1q_s16(vuzp1q_s32(vaddw_u32(vsubq_s64(v35, v33), v40), vaddw_u32(vsubq_s64(v34, v33), v41)), vuzp1q_s32(vaddw_u32(vsubq_s64(v37, v33), v38), vaddw_u32(vsubq_s64(v36, v33), v39)));
                  v31 += 16;
                  v32 += 192;
                }

                while (v31 != 64);
LABEL_63:
                free(v19);
                goto LABEL_64;
              }

              goto LABEL_65;
            }

LABEL_46:
            v53 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
            if (v53)
            {
              *(v16 + 16) = v53;
              *(v16 + 8) = 1;
              v54 = (v19 + 12);
              v55 = v53 + 1;
              v56 = 31;
              do
              {
                *(v55 - 1) = v54[3] - v23;
                v57 = *v54;
                v54 += 6;
                *v55 = v57;
                v55 += 2;
                --v56;
              }

              while (v56);
              v53[62] = 0;
              v53[63] = *(v19 + 756);
              goto LABEL_63;
            }

LABEL_65:
            exception = __cxa_allocate_exception(8uLL);
            v72 = std::bad_alloc::bad_alloc(exception);
          }
        }

        else
        {
          v28 = *(v19 + 744) - v23 + *(v19 + 756);
          *v16 = v23;
          if (v28 < 0x10000)
          {
            goto LABEL_46;
          }

          v29 = 0;
        }

        if (HIDWORD(v28))
        {
          goto LABEL_50;
        }

        v42 = (v19 + 60);
        v43 = 0uLL;
        v44 = 32;
        do
        {
          v45.i32[0] = *(v42 - 12);
          v45.i32[1] = *(v42 - 6);
          v45.i32[2] = *v42;
          v45.i32[3] = v42[6];
          v43 = vmaxq_u32(v45, v43);
          v42 += 24;
          v44 -= 4;
        }

        while (v44);
        if (vmaxvq_u32(v43) >> 16)
        {
LABEL_50:
          if (v29)
          {
            v58 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
            if (v58)
            {
              v59 = 0;
              *(v16 + 16) = v58;
              *(v16 + 8) = 4;
              v60 = v19;
              do
              {
                *&v58[v59] = *v60 - v23 + *(v60 + 12);
                v59 += 8;
                v60 += 24;
              }

              while (v59 != 256);
              goto LABEL_63;
            }
          }

          else
          {
            v61 = malloc_type_malloc(0x200uLL, 0x1000040D9A13B51uLL);
            if (v61)
            {
              *(v16 + 16) = v61;
              *(v16 + 8) = 5;
              v62 = (v19 + 12);
              v63 = v61 + 8;
              v64 = 31;
              do
              {
                *(v63 - 1) = *(v62 + 3) - v23;
                v65 = *v62;
                v62 += 6;
                *v63 = v65;
                v63 += 4;
                --v64;
              }

              while (v64);
              *(v61 + 62) = 0;
              *(v61 + 126) = *(v19 + 756);
              goto LABEL_63;
            }
          }
        }

        else if (v29)
        {
          v46 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
          if (v46)
          {
            v47 = 0;
            *(v16 + 16) = v46;
            *(v16 + 8) = 2;
            v48 = vdupq_n_s64(v23);
            v49 = v19 + 48;
            do
            {
              v50.i64[0] = *(v49 - 48);
              v50.i64[1] = *(v49 - 24);
              v51.i64[0] = *v49;
              v51.i64[1] = *(v49 + 24);
              v52.i32[0] = *(v49 - 36);
              v52.i32[1] = *(v49 - 12);
              v52.i32[2] = *(v49 + 12);
              v52.i32[3] = *(v49 + 36);
              *&v46[v47] = vaddq_s32(v52, vuzp1q_s32(vsubq_s64(v50, v48), vsubq_s64(v51, v48)));
              v47 += 16;
              v49 += 96;
            }

            while (v47 != 128);
            goto LABEL_63;
          }
        }

        else
        {
          v66 = malloc_type_malloc(0x100uLL, 0x1000040789AEA99uLL);
          if (v66)
          {
            *(v16 + 16) = v66;
            *(v16 + 8) = 3;
            v67 = (v19 + 12);
            v68 = v66 + 4;
            v69 = 31;
            do
            {
              *(v68 - 1) = v67[3] - v23;
              v70 = *v67;
              v67 += 6;
              *v68 = v70;
              v68 += 4;
              --v69;
            }

            while (v69);
            *(v66 + 62) = 0;
            *(v66 + 126) = *(v19 + 756);
            goto LABEL_63;
          }
        }

        goto LABEL_65;
      }
    }
  }

LABEL_64:
  ++*(a1 + 24);
}

uint64_t AudioConverterRenderClient::enterRenderLoop(audioipc *a1, uint64_t a2, uint64_t (*a3)(uint64_t, unsigned int *, uint64_t, uint64_t, uint64_t), uint64_t a4, AudioBufferList *a5, uint64_t a6, uint64_t a7, unsigned int *a8, AudioStreamPacketDescription *a9)
{
  v13 = a1;
  inPacketDescriptions = a9;
  v14 = *(a1 + 34);
  *(v14 + 12) = 0;
  *(v14 + 16) = 0;
  *(v14 + 32) = audioipc::current_render_context(a1);
  mDataByteSize = a5->mBuffers[0].mDataByteSize;
  v228 = a8;
  v16 = *a8;
  if (a5->mNumberBuffers)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      *(*(a7 + 40) + v17 * 16 + 56) = a5->mBuffers[v17];
      ++v18;
      ++v17;
    }

    while (v18 < a5->mNumberBuffers);
  }

  v19 = a9;
  if (*(*(a7 + 56) + 8) == **(a7 + 56))
  {
    v19 = 0;
  }

  *(a7 + 48) = v19;
  *(a7 + 76) = v16;
  *(a7 + 88) = 0;
  v226 = *a8;
  *a8 = 0;
  v218 = *(*(v13 + 35) + 128);
  v224 = mDataByteSize;
  if (*(v13 + 93))
  {
    if (a5->mBuffers[a5->mNumberBuffers].mNumberChannels == 1094863915)
    {
      v20 = a5[-2].mBuffers[0].mDataByteSize;
      if (v20)
      {
        v21 = &a5[-2] + v20;
      }

      else
      {
        v21 = 0;
      }

      v213 = v21;
    }

    else
    {
      v213 = 0;
    }

    if (mDataByteSize <= v218)
    {
      LOWORD(v24) = 0;
      v25 = 0;
    }

    else
    {
      v23 = *(v13 + 10);
      v24 = *(v23 + 92);
      if (v24)
      {
        v24 = *(v23 + 116) + 1;
      }

      v25 = v24 & 0xFF00;
      LOWORD(v24) = v24;
    }

    if (v213)
    {
      v26 = v24 | v25;
      if ((v213[1] - *v213) <= 0x2B)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v213;
      }

      v28 = *(v27 + 40);
      if (mDataByteSize <= v218)
      {
        v22 = v28;
      }

      else
      {
        v22 = v26;
      }
    }

    else
    {
      v22 = 0;
    }

    if ((v226 / *(v13 + 94)) + 1 < v22)
    {
      v29 = _os_log_pack_size();
      message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v29 + 88, 2);
      if (message)
      {
        v31 = message;
        v32 = _os_log_pack_fill(message + 40, v29, 0, &dword_18F5DF000, "AudioConverterService -> %p: The client has provided %i output metadata events when decoding output for only %u packets.", v213, a9, v215);
        v33 = *(v13 + 48);
        *v32 = 134218496;
        *(v32 + 4) = v33;
        *(v32 + 12) = 1024;
        *(v32 + 14) = v22;
        *(v32 + 18) = 1024;
        *(v32 + 20) = v226;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v31);
      }

      mDataByteSize = v224;
    }
  }

  else
  {
    v22 = 0;
    v213 = 0;
  }

  mBuffers = a5->mBuffers;
  v34 = (a6 + 76);
  v217 = (v13 + 408);
  v216 = a5 - 2;
  v35 = vdupq_n_s64(4uLL);
  v235 = v35;
  ioData = a5;
  v229 = v13;
  v227 = a7;
  v223 = v22;
  do
  {
    v36 = v226 - *v228;
    if (v226 <= *v228)
    {
      break;
    }

    v37 = *(a7 + 88);
    if (v37 >= mDataByteSize)
    {
      break;
    }

    v38 = mDataByteSize - v37;
    v39 = *(*(v13 + 35) + 128);
    if (v39 >= v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = *(*(v13 + 35) + 128);
    }

    v41 = *(a7 + 80);
    v42 = v39 / v41;
    if (*(v13 + 93))
    {
      v43 = v42 - *(v13 + 95);
      if (v43 >= v36)
      {
        v44 = v226 - *v228;
      }

      else
      {
        v44 = v43;
      }
    }

    else
    {
      if (v42 >= v36)
      {
        v42 = v226 - *v228;
      }

      if (mDataByteSize <= v218)
      {
        v44 = v226 - *v228;
      }

      else
      {
        v44 = v42;
      }
    }

    v45 = *(v13 + 33);
    *(v45 + 96) = *(a6 + 80);
    *(v45 + 100) = v41;
    v46 = *(v13 + 34);
    can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(v13 + 8, *v35.i64);
    v48 = can_send;
    v49 = HIDWORD(can_send);
    if (can_send & 0x100000000) != 0 && (can_send)
    {
      *v46 = 25601;
      *(v46 + 20) = v40;
      *(v46 + 8) = v44;
      *(v46 + 24) = v223;
      v50 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::signal_wait_with_timeout(v13 + 8);
      v48 = v50;
      v49 = HIDWORD(v50);
    }

    if (!v49)
    {
      v121 = _os_log_pack_size();
      v122 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v121 + 88, 16);
      v123 = 560164718;
      if (v122)
      {
        v124 = v122;
        v125 = _os_log_pack_fill(v122 + 40, v121, 0, &dword_18F5DF000, "AudioConverter -> %p: The server returned %d when asked to start rendering.");
        goto LABEL_141;
      }

      goto LABEL_165;
    }

    if (!v48)
    {
      v136 = _os_log_pack_size();
      v137 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v136 + 88, 16);
      v123 = 561277293;
      if (!v137)
      {
        goto LABEL_165;
      }

      v124 = v137;
      v138 = _os_log_pack_fill(v137 + 40, v136, 0, &dword_18F5DF000, "AudioConverter -> %p: The server timed out when asked to start rendering.");
LABEL_162:
      v150 = *(v13 + 48);
      *v138 = 134217984;
      *(v138 + 4) = v150;
      goto LABEL_163;
    }

    v230 = v46;
    while (1)
    {
      v51 = *(v46 + 1);
      if (v51 != 102)
      {
        if (v51 == 100)
        {
          v139 = _os_log_pack_size();
          v140 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v139 + 88, 16);
          v123 = 561277293;
          if (!v140)
          {
            goto LABEL_165;
          }

          v134 = v140;
          v135 = _os_log_pack_fill(v140 + 40, v139, 0, &dword_18F5DF000, "AudioConverter -> %p: No work done by server.");
          goto LABEL_157;
        }

        if (v51 != 101)
        {
          v141 = _os_log_pack_size();
          v142 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v141 + 88, 16);
          v123 = 2003329396;
          if (!v142)
          {
            goto LABEL_165;
          }

          v134 = v142;
          v135 = _os_log_pack_fill(v142 + 40, v141, 0, &dword_18F5DF000, "AudioConverter -> %p: State machine error.");
          goto LABEL_157;
        }

        v127 = *(v46 + 8);
        v128 = ACRendererSharedMemory::mutableAudioBufferList(*(v13 + 35), 1u, *(v46 + 20));
        v129 = *(v227 + 56);
        v130 = *v129;
        if (v127)
        {
          v131 = *(v13 + 39);
          if (v131)
          {
            if (v129[1] != v130)
            {
              memmove(v130, v131, 16 * v127);
              v130 = **(v227 + 56);
            }
          }
        }

        if (validateInputProcData(v227, v128, v127, v130, *(v227 + 80) | 0x100000000))
        {
          v132 = _os_log_pack_size();
          v133 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v132 + 88, 16);
          v123 = 2003329396;
          if (!v133)
          {
            goto LABEL_165;
          }

          v134 = v133;
          v135 = _os_log_pack_fill(v133 + 40, v132, 0, &dword_18F5DF000, "AudioConverter -> %p: The converter service is returning unexpected data.");
LABEL_157:
          v143 = *(v13 + 48);
          *v135 = 134217984;
          *(v135 + 4) = v143;
          v144 = *(gAudioConverterDeferredLog + 16);
          v145 = v134;
          goto LABEL_164;
        }

        if (*(v227 + 72) == 1)
        {
          if (v127)
          {
            v165 = 0;
            v166 = 0;
            v167 = *(v227 + 40);
            LODWORD(v168) = *(v167 + 60);
            v169 = v128[3];
            if (v168 >= v169)
            {
              v168 = v169;
            }

            else
            {
              v168 = v168;
            }

            v170 = **(v227 + 56);
            v171 = (*(*(v227 + 56) + 8) - v170) >> 4;
            while (1)
            {
              if (v171 < v127)
              {
                v166 = 0;
                LODWORD(v127) = 0;
                goto LABEL_208;
              }

              v172 = *v170 + *(v170 + 12);
              if (v172 > v168)
              {
                break;
              }

              ++v165;
              v170 += 16;
              v166 = v172;
              if (v127 == v165)
              {
                v166 = v172;
                goto LABEL_208;
              }
            }

            LODWORD(v127) = v165;
LABEL_208:
            v175 = *v128;
            if (v175)
            {
LABEL_209:
              v176 = 0;
              for (i = 0; i < v175; ++i)
              {
                v178 = *&v128[v176 / 4 + 4];
                v179 = *(v167 + v176 + 64);
                if (v178 != v179)
                {
                  memcpy(v179, v178, v166);
                  v167 = *(v227 + 40);
                  v175 = *v128;
                }

                v180 = v167 + v176;
                *(v180 + 60) = *(v167 + v176 + 60) - v166;
                *(v180 + 64) = *(v167 + v176 + 64) + v166;
                v176 += 16;
              }

              if (*(v227 + 72))
              {
                goto LABEL_214;
              }

LABEL_219:
              *(v227 + 88) += v166;
              *v228 += v127;
              v186 = *(v13 + 95);
              v187 = *(v13 + 94);
              if (v186 && v127 < v187)
              {
                v188 = 0;
              }

              else
              {
                v188 = (v186 + v127 - v187) % v187;
              }

              *(v13 + 95) = v188;
              v123 = *(v46 + 4);
              goto LABEL_165;
            }
          }

          else
          {
            v175 = *v128;
            if (v175)
            {
              LODWORD(v127) = 0;
              v166 = 0;
              v167 = *(v227 + 40);
              goto LABEL_209;
            }

            LODWORD(v127) = 0;
            v166 = 0;
          }

LABEL_214:
          v181 = *(v227 + 48);
          if (v181)
          {
            memcpy(v181, **(v227 + 56), 16 * v127);
            v182 = *(v227 + 48);
            if (v127)
            {
              v183 = *(v227 + 88);
              v184 = *(v227 + 48);
              v185 = v127;
              do
              {
                *v184 += v183;
                v184 += 2;
                --v185;
              }

              while (v185);
            }

            *(v227 + 48) = v182 + 16 * v127;
            *(v227 + 76) += v127;
          }

          goto LABEL_219;
        }

        v167 = *(v227 + 40);
        v173 = *(v167 + 60);
        if (v173 >= v128[3])
        {
          v173 = v128[3];
        }

        v174 = *(v227 + 80);
        LODWORD(v127) = v173 / v174;
        v166 = v173 / v174 * v174;
        v175 = *v128;
        if (v175)
        {
          goto LABEL_209;
        }

        goto LABEL_219;
      }

      v53 = *(v46 + 12);
      v52 = *(v46 + 16);
      *(v46 + 12) = 0;
      *(v46 + 16) = 0;
      v54 = *(v13 + 35);
      if (*(v54 + 10) >= v52)
      {
        v55 = v52;
      }

      else
      {
        v55 = *(v54 + 10);
      }

      v56 = ACRendererSharedMemory::mutableAudioBufferList(v54, 0, v55);
      v58 = v56;
      if (!*(*(a6 + 40) + 60))
      {
        v79 = *(a6 + 56);
        v80 = *v79;
        *(a6 + 48) = *v79;
        if (*v56)
        {
          v81 = 0;
          v82 = 0;
          do
          {
            *(*(a6 + 40) + v81 * 4 + 56) = *&v56[v81 + 2];
            ++v82;
            v81 += 4;
          }

          while (v82 < *v56);
          v79 = *(a6 + 56);
          v83 = *v79;
        }

        else
        {
          v83 = v80;
        }

        if (v79[1] == v83)
        {
          v80 = 0;
        }

        *(a6 + 48) = v80;
        *(a6 + 76) = v53;
        *(a6 + 88) = 0;
        v110 = a3(a2, v34, *(a6 + 40) + 48, a6 + 48, a4);
        if (v110)
        {
          v97 = 0;
          v111 = 0;
          *(*(a6 + 40) + 60) = 0;
          *(a6 + 48) = 0;
          *(a6 + 76) = 0;
          *(a6 + 88) = 0;
          goto LABEL_128;
        }

        v110 = validateInputProcData(a6, (*(a6 + 40) + 48), *(a6 + 76), *(a6 + 48), *(a6 + 80) | 0x100000000);
        v112 = v217;
        if (*v13)
        {
          v112 = (*v13 + 136);
        }

        if (*v112)
        {
          AudioConverterCapturer::write(*v112, (*(a6 + 40) + 48), *(a6 + 48), *(a6 + 76));
        }

        if (v110)
        {
          v97 = 0;
          v111 = 0;
          goto LABEL_128;
        }
      }

      v59 = *(v13 + 38);
      v60 = v34;
      if (v59)
      {
        v236 = *(*(v13 + 10) + 116);
        v60 = &v236;
        if (v236 >= *v34)
        {
          v60 = v34;
        }
      }

      v61 = *v60;
      v62 = *(v13 + 35);
      v63 = *(v62 + 56);
      v64 = v63[12];
      if (v64)
      {
        v65 = 0;
        v66 = *(v62 + 40);
        v67 = (v64 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
        v68 = v67 - ((v64 + 0xFFFFFFFFFFFFFFFLL) & 3) + 4;
        v57 = vdupq_n_s64(v67);
        v69 = v63 + 27;
        do
        {
          v70 = vdupq_n_s64(v65);
          v71 = vmovn_s64(vcgeq_u64(v57, vorrq_s8(v70, xmmword_18F9016C0)));
          if (vuzp1_s16(v71, *v57.i8).u8[0])
          {
            *(v69 - 12) = v66;
          }

          if (vuzp1_s16(v71, *&v57).i8[2])
          {
            *(v69 - 8) = v66;
          }

          if (vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, vorrq_s8(v70, xmmword_18F9016B0)))).i32[1])
          {
            *(v69 - 4) = v66;
            *v69 = v66;
          }

          v65 += 4;
          v69 += 16;
        }

        while (v68 != v65);
      }

      v72 = *(a6 + 48);
      v73 = !v59 || v72 == 0;
      v74 = v73;
      v234 = v74;
      if (v73)
      {
        v75 = 0;
        v76 = *(*(a6 + 40) + 60);
        if (v76 >= v63[15])
        {
          v76 = v63[15];
        }

        v77 = *(a6 + 80);
        v232 = v76 / v77;
        v78 = v76 / v77 * v77;
      }

      else
      {
        v84 = *v72;
        v75 = *v72 - *(a6 + 88);
        v85 = *(a6 + 76);
        v86 = v85 >= v61 ? v61 : v85;
        if (v86 && ((LODWORD(v87) = *(*(a6 + 40) + 60), v88 = v63[15], v87 >= v88) ? (v87 = v88) : (v87 = v87), v89 = *(v72 + 3), v89 <= v87))
        {
          v117 = 0;
          v118 = v72 + 7;
          while (1)
          {
            v78 = v89;
            if (v86 - 1 == v117)
            {
              break;
            }

            v119 = *(v118 - 3);
            v120 = *v118;
            v118 += 4;
            v89 = v119 - v84 + v120;
            ++v117;
            if (v89 > v87)
            {
              v232 = v117;
              goto LABEL_93;
            }
          }

          v232 = v86;
        }

        else
        {
          v78 = 0;
          v232 = 0;
        }
      }

LABEL_93:
      if (v64)
      {
        v90 = 0;
        v91 = 0;
        v92 = v78 + v75;
        v93 = *(a6 + 40);
        do
        {
          v94 = *&v63[v90 / 4 + 16];
          v95 = *(v93 + v90 + 64);
          if (v94 != v95)
          {
            memcpy(v94, &v95[v75], v78);
            v93 = *(a6 + 40);
            v64 = v63[12];
          }

          v63[v90 / 4 + 15] = v78;
          v96 = v93 + v90;
          *(v96 + 60) = *(v93 + v90 + 60) - v92;
          *(v96 + 64) = *(v93 + v90 + 64) + v92;
          ++v91;
          v90 += 16;
        }

        while (v91 < v64);
      }

      v34 = (a6 + 76);
      v97 = v232;
      v98 = v234;
      if ((v234 & 1) == 0)
      {
        memcpy(v59, *(a6 + 48), 16 * v232);
        if (v232)
        {
          v99 = *(a6 + 88) + v75;
          v100 = v232;
          do
          {
            *v59 -= v99;
            v59 += 2;
            --v100;
          }

          while (v100);
        }

        *(a6 + 48) += 16 * v232;
        v98 = v234;
      }

      v101 = *(a6 + 76) - v232;
      *(a6 + 76) = v101;
      *(a6 + 88) += v78 + v75;
      if (v101)
      {
        v102 = 1;
      }

      else
      {
        v102 = v98;
      }

      v13 = v229;
      v46 = v230;
      if ((v102 & 1) == 0)
      {
        v103 = *(a6 + 40);
        v104 = *(v103 + 48);
        if (v104)
        {
          v105 = (v104 + 3) & 0x1FFFFFFFCLL;
          v57 = vdupq_n_s64(v104 - 1);
          v106 = (v103 + 108);
          v107 = xmmword_18F9016C0;
          v108 = xmmword_18F9016B0;
          do
          {
            v109 = vmovn_s64(vcgeq_u64(v57, v107));
            if (vuzp1_s16(v109, *v57.i8).u8[0])
            {
              *(v106 - 12) = 0;
            }

            if (vuzp1_s16(v109, *&v57).i8[2])
            {
              *(v106 - 8) = 0;
            }

            if (vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v108))).i32[1])
            {
              *(v106 - 4) = 0;
              *v106 = 0;
            }

            v108 = vaddq_s64(v108, v235);
            v107 = vaddq_s64(v107, v235);
            v106 += 16;
            v105 -= 4;
          }

          while (v105);
        }
      }

      v110 = 0;
      v111 = v58[3];
LABEL_128:
      *(v46 + 4) = v110;
      v113 = *(v13 + 34);
      v114 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(v13 + 8, *v57.i64);
      v48 = v114;
      v115 = HIDWORD(v114);
      if (v114 & 0x100000000) != 0 && (v114)
      {
        *v113 = 25602;
        *(v113 + 12) = v97;
        *(v113 + 16) = v111;
        v116 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::signal_wait_with_timeout(v13 + 8);
        v48 = v116;
        v115 = HIDWORD(v116);
      }

      if (!v115)
      {
        break;
      }

      if (!v48)
      {
        v148 = _os_log_pack_size();
        v149 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v148 + 88, 16);
        v123 = 561277293;
        if (!v149)
        {
          goto LABEL_165;
        }

        v124 = v149;
        v138 = _os_log_pack_fill(v149 + 40, v148, 0, &dword_18F5DF000, "AudioConverter -> %p: The server timed out when asked to continue rendering.");
        goto LABEL_162;
      }
    }

    v146 = _os_log_pack_size();
    v147 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v146 + 88, 16);
    v123 = 560164718;
    if (v147)
    {
      v124 = v147;
      v125 = _os_log_pack_fill(v147 + 40, v146, 0, &dword_18F5DF000, "AudioConverter -> %p: The server returned %d when asked to continue rendering.");
LABEL_141:
      v126 = *(v13 + 48);
      *v125 = 134218240;
      *(v125 + 4) = v126;
      *(v125 + 12) = 1024;
      *(v125 + 14) = v48;
LABEL_163:
      v144 = *(gAudioConverterDeferredLog + 16);
      v145 = v124;
LABEL_164:
      caulk::concurrent::messenger::enqueue(v144, v145);
    }

LABEL_165:
    a5 = ioData;
    if (*(v13 + 93))
    {
      if (mBuffers[ioData->mNumberBuffers].mNumberChannels == 1094863915)
      {
        v151 = ioData[-2].mBuffers[0].mDataByteSize;
        v152 = (v216 + v151);
        if (v151)
        {
          v153 = *(v13 + 35);
          if (*(v153 + 136))
          {
            v154 = *(v153 + 160);
            if (v154)
            {
              v155 = *v152;
              if ((v152[1] - *v152) >= 0x2C && v155 != 0)
              {
                v157 = *(v155 + 40);
                if (v157)
                {
                  v158 = 0;
                  v233 = *(v154 + 40);
                  v159 = v155 + 44;
                  while (*(v159 + 20))
                  {
                    v159 += *(v159 + 8);
                    if (v157 == ++v158)
                    {
                      v158 = *(v155 + 40);
                      break;
                    }
                  }

                  if (v233)
                  {
                    v160 = 0;
                    v161 = (v154 + *(v154 + 32) + 20);
                    v231 = v123;
                    do
                    {
                      if ((v158 + v160) >= *(v155 + 40) || !*v161 || !*(v159 + 28))
                      {
                        break;
                      }

                      if (!(v160 | (v158 + v160)))
                      {
                        *v155 = *(v161 - 1);
                      }

                      v162 = *(v159 + 32);
                      v163 = v161[2];
                      v164 = v153;
                      memcpy(v162, (*(v153 + 152) + (*(v153 + 136) * v160)), v163);
                      memcpy(v159, v161 - 5, *(v161 - 3));
                      v153 = v164;
                      *(v159 + 28) = v163;
                      *(v159 + 32) = v162;
                      v35.i32[0] = *(v159 + 20);
                      *v35.i64 = *(v155 + 8) + v35.u64[0];
                      *(v155 + 8) = v35.i64[0];
                      v159 += *(v159 + 8);
                      ++v160;
                      v161 += 10;
                      a5 = ioData;
                      v123 = v231;
                    }

                    while (v233 != v160);
                  }
                }
              }
            }
          }
        }
      }
    }

    a7 = v227;
    v34 = (a6 + 76);
    if (v123)
    {
      goto LABEL_226;
    }

    mDataByteSize = v224;
  }

  while (*(*(v13 + 34) + 8));
  v123 = 0;
LABEL_226:
  v189 = *(v13 + 34);
  v191 = *(v189 + 12);
  v190 = *(v189 + 16);
  *v34 += v191;
  v192 = *(a6 + 48);
  if (v192)
  {
    *(a6 + 48) = v192 - 16 * v191;
    *(a6 + 88) -= v190;
  }

  v193 = *(a6 + 40);
  v194 = *(v193 + 48);
  if (v194)
  {
    v195 = 16 * v194;
    v196 = (v193 + 64);
    do
    {
      *(v196 - 1) += v190;
      *v196 -= v190;
      v196 += 2;
      v195 -= 16;
    }

    while (v195);
  }

  mNumberBuffers = a5->mNumberBuffers;
  if (mNumberBuffers)
  {
    v198 = *(a7 + 88);
    v199 = (mNumberBuffers + 3) & 0x1FFFFFFFCLL;
    v200 = vdupq_n_s64(mNumberBuffers - 1);
    v201 = xmmword_18F9016B0;
    v202 = xmmword_18F9016C0;
    v203 = &a5[1].mBuffers[0].mData + 1;
    v204 = vdupq_n_s64(4uLL);
    do
    {
      v205 = vmovn_s64(vcgeq_u64(v200, v202));
      if (vuzp1_s16(v205, *v200.i8).u8[0])
      {
        *(v203 - 8) = v198;
      }

      if (vuzp1_s16(v205, *&v200).i8[2])
      {
        *(v203 - 4) = v198;
      }

      if (vuzp1_s16(*&v200, vmovn_s64(vcgeq_u64(v200, *&v201))).i32[1])
      {
        *v203 = v198;
        v203[4] = v198;
      }

      v201 = vaddq_s64(v201, v204);
      v202 = vaddq_s64(v202, v204);
      v203 += 16;
      v199 -= 4;
    }

    while (v199);
  }

  if (v213)
  {
    v206 = *(v13 + 35);
    if (*(v206 + 136))
    {
      if (*(v206 + 160))
      {
        v207 = *v213;
        if ((v213[1] - *v213) >= 0x2C)
        {
          if (v207)
          {
            v208 = *(v207 + 40);
            if (v208)
            {
              v209 = 0;
              v210 = v207 + 44;
              while (*(v210 + 20))
              {
                v210 += *(v210 + 8);
                if (v208 == ++v209)
                {
                  v209 = *(v207 + 40);
                  break;
                }
              }
            }

            else
            {
              v209 = 0;
            }

            *(v207 + 40) = v209;
          }
        }
      }
    }
  }

  v211 = v217;
  if (*v13)
  {
    v211 = (*v13 + 136);
  }

  if (*v211)
  {
    AudioConverterCapturer::write(*v211, a5, inPacketDescriptions, *v228);
  }

  return v123;
}

void *audioipc::current_render_context(audioipc *this)
{
  v1 = audioipc::tlsRenderThreadState();
  v2 = mach_absolute_time();
  base_priority = *v1;
  if (v2 > *(v1 + 8) || base_priority == 0)
  {
    v9 = pthread_self();
    base_priority = caulk::mach::thread::get_base_priority(v9, v10);
    *v1 = base_priority;
    *(v1 + 8) = v2 + 480000;
  }

  v5 = base_priority;
  if (base_priority >= 96)
  {
    v6 = os_workgroup_interval_copy_current_4AudioToolbox();
    if (v6)
    {
      v7 = v6;
      os_release(v6);
      return v7;
    }
  }

  return v5;
}

void AudioConverterRenderServer::serverThread(AudioConverterRenderServer *this)
{
  v57 = *MEMORY[0x1E69E9840];
  audioipc::eventlink_primitive::activate(this + 6, 1);
  v3 = atomic_load(this + 41);
  v4 = *(this + 2);
  if ((v3 & 1) == 0)
  {
    atomic_store(0, v4);
    v5 = audioipc::eventlink_primitive::wait_or_error(*(this + 6));
    v6 = atomic_load(this + 41);
    if ((v6 & 1) == 0)
    {
      v7 = v5;
      while (1)
      {
        v8 = atomic_load(*(this + 3));
        if (v8 == 2)
        {
          break;
        }

        if ((v7 & 0x100000000) == 0)
        {
          v47 = CADefaultLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "rt_receiver::receive_loop";
            *&buf[12] = 1024;
            *&buf[14] = v7;
            _os_log_error_impl(&dword_18F5DF000, v47, OS_LOG_TYPE_ERROR, "%s failed: %d", buf, 0x12u);
          }

          break;
        }

        atomic_store(1u, *(this + 2));
        v9 = *(this + 4);
        v10 = *v9;
        if (v10 == 1)
        {
          AudioConverterServer::syncThreadPriorityAndWorkgroup(this);
          v12 = *(v9 + 2);
          v13 = *(v9 + 5);
          v14 = *(v9 + 12);
          inInputDataProcUserData = this;
          ACRendererSharedMemory::partitionMemory((this + 280), 1);
          v15 = ACRendererSharedMemory::mutableAudioBufferList(*(this + 62), 1u, v13);
          v16 = *(this + 66);
          if (v16 && *(*(this + 37) + 120) < v12)
          {
            v12 = *(*(this + 37) + 120);
          }

          ioOutputDataPacketSize = v12;
          v17 = *(this + 62);
          if (*(v17 + 96) == 1885564203 && *(v17 + 136))
          {
            v18 = *(v17 + 144);
            if (*(v18 + 16 * *(v18 + 48) + 56) == 1094863915)
            {
              v19 = *(v18 + 12);
              v20 = (v18 + v19);
              if (v19)
              {
                v21 = v20;
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              v21 = 0;
            }

            v24 = *v21;
            v25 = *(v21 + 1) - *v21;
            if (v25 >= 1)
            {
              bzero(v24, v25);
              v24 = *v21;
            }

            *(v21 + 1) = v24;
            memset(buf, 0, 44);
            buf[24] = 1;
            *&buf[32] = 0x10000002CLL;
            AudioMetadataFrame::begin_new(v21, buf);
            if (v14)
            {
              for (i = 0; i != v14; ++i)
              {
                v27 = *(v17 + 152);
                v28 = *(v17 + 136);
                v29 = (v27 + (v28 * i));
                __src = 1;
                v51 = 0x2800000000;
                v52 = 0;
                v53 = 0x100000000;
                v54 = v28;
                v55 = v29;
                if (i || (v30 = *(v17 + 168), v30 == -1))
                {
                  bzero(v29, v28);
                }

                else
                {
                  memcpy(v29, (v27 + (v30 * v28)), v28);
                }

                AudioMetadataFrame_AppendEvent(v21, &__src);
              }
            }

            memcpy(*(v17 + 160), *v21, *(v21 + 1) - *v21);
            *(v17 + 168) = -1;
          }

          v31 = AudioConverterFillComplexBuffer(*(*(this + 60) + 104), *(this + 34), &inInputDataProcUserData, &ioOutputDataPacketSize, v15, v16);
          v32 = *(this + 62);
          if (*(v32 + 136))
          {
            v33 = *(v32 + 160);
            if (v33)
            {
              v34 = *(v32 + 144);
              v35 = *(v34 + 12);
              v36 = v34 + v35;
              v37 = v35 ? v36 : 0;
              memcpy(v33, *v37, *(v37 + 8) - *v37);
              v38 = *(v37 + 8) - *v37 <= 0x2BuLL ? 0 : *v37;
              v39 = *(v38 + 40);
              if (v39)
              {
                v40 = 0;
                v41 = v38 + 44;
                do
                {
                  if (!*(v41 + 20))
                  {
                    break;
                  }

                  *(v32 + 168) = v40;
                  v41 += *(v41 + 8);
                  ++v40;
                }

                while (v39 != v40);
              }
            }
          }

          v42 = *(this + 61);
          *(v42 + 20) = *(v15 + 12);
          *(v42 + 8) = ioOutputDataPacketSize;
          *(v9 + 1) = v31;
        }

        else if (v10 == 3)
        {
          v11 = *(*(this + 60) + 104);
          *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterReset::$_0>;
          *&buf[8] = &__src;
          *(v9 + 1) = with_resolved(v11, buf);
          *(this + 72) = 0;
        }

        else
        {
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v22 = *gAudioConverterLog;
          if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
          {
            v23 = *v9;
            *buf = 136315650;
            *&buf[4] = "AudioConverterRenderServer.h";
            *&buf[12] = 1024;
            *&buf[14] = 78;
            *&buf[18] = 1024;
            *&buf[20] = v23;
            _os_log_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown or unexpected message: %d", buf, 0x18u);
          }
        }

        *v9 = 25856;
        v43 = atomic_load(this + 41);
        if ((v43 & 1) == 0)
        {
          v44 = atomic_load(*(this + 3));
          if (v44 != 2)
          {
            atomic_store(0, *(this + 2));
            v45 = audioipc::eventlink_primitive::wait_signal_or_error(*(this + 6));
            if ((v45 & 0x100000000) == 0)
            {
              v7 = v45;
            }

            v46 = atomic_load(this + 41);
            if ((v46 & 1) == 0)
            {
              continue;
            }
          }
        }

        break;
      }
    }

    v4 = *(this + 2);
  }

  atomic_store(2u, v4);
  AudioConverterServer::WorkgroupJoiner::leave((this + 120), v2);
}

uint64_t UnixFile_DataSource::WriteBytes(UnixFile_DataSource *this, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (!a5)
  {
    return 4294967246;
  }

  v11 = UnixFile_DataSource::UFCurrentOffset(this, a2, a3);
  if (v11 < 0)
  {
    return 4294967256;
  }

  v12 = v11;
  *(this + 3) = -1;
  v13 = (a2 >> 5) & 1;
  v14 = *(this + 5);
  if (v14 != v13)
  {
    *(this + 5) = v13;
    fcntl(*(this + 3), 48, v14);
  }

  v15 = pwrite(*(this + 3), a5, a4, v12);
  if (v15 == -1)
  {
    return 4294967256;
  }

  v16 = v15;
  *(this + 4) = v15 + v12;
  result = 0;
  if (a6)
  {
    *a6 = v16;
  }

  return result;
}

uint64_t Cached_DataSource::WriteBytes(Cached_DataSource *this, uint64_t a2, int64_t a3, uint64_t a4, char *__src, unsigned int *a6)
{
  if (!__src)
  {
    return 4294967246;
  }

  v28 = 0;
  if ((a2 & 3) == 2)
  {
    result = (*(*this + 24))(this, &v28);
    if (result)
    {
      return result;
    }

    v13 = v28;
  }

  else
  {
    v14 = a3;
    if ((a2 & 3) == 0)
    {
      goto LABEL_11;
    }

    if ((a2 & 3) == 3)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v13 = *(this + 8);
  }

  v14 = v13 + a3;
LABEL_11:
  if (v14 < 0)
  {
    return 4294967256;
  }

LABEL_12:
  v15 = *(this + 3);
  if (v15)
  {
    v16 = *(this + 8);
    v17 = v16 > v14;
    v18 = v16 - v14;
    if (v17)
    {
      if (v18 >= a4)
      {
        v19 = a4;
      }

      else
      {
        v19 = v18;
      }

      memcpy((v15 + v14), __src, v19);
    }
  }

  v20 = *(this + 5);
  if (v20)
  {
    v21 = *(this + 7);
    if (v14 + a4 >= v21)
    {
      v22 = *(this + 13);
      if (v14 < v21 + v22)
      {
        if (v21 <= v14)
        {
          v23 = v14;
        }

        else
        {
          v23 = *(this + 7);
        }

        v24 = v21 - v23 + v22;
        if (v24 >= a4 - (v23 - v14))
        {
          v25 = a4 - (v23 - v14);
        }

        else
        {
          v25 = v24;
        }

        memcpy((v20 + v23 - v21), &__src[v23 - v14], v25);
      }
    }
  }

  v27 = 0;
  result = (*(**(this + 2) + 56))(*(this + 2), a2, a3, a4, __src, &v27);
  v26 = v27;
  *(this + 8) = v14 + v27;
  if (a6)
  {
    *a6 = v26;
  }

  return result;
}

void acv2::CodecConverter::CheckInitialize(acv2::CodecConverter *this, const void *a2, UInt32 a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (acv2::CodecConverter::IsInitialized(*(this + 21)))
  {
    if ((*(this + 728) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v6 = AudioCodecInitialize(*(this + 21), *(this + 87), *(this + 88), a2, a3);
    if (v6)
    {
      v7 = v6;
      v8 = *(this + 88);
      if (!v8 || *(v8 + 2) != 1885564203 || (*(this + 712) = 1, v10 = *v8, v9 = v8[1], *&inOutputFormat.mBitsPerChannel = *(v8 + 4), *&inOutputFormat.mSampleRate = v10, *&inOutputFormat.mBytesPerPacket = v9, inOutputFormat.mFormatID = 1819304813, (v7 = AudioCodecInitialize(*(this + 21), *(this + 87), &inOutputFormat, a2, a3)) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LODWORD(inOutputFormat.mSampleRate) = 136315394;
          *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
          LOWORD(inOutputFormat.mFormatFlags) = 1024;
          *(&inOutputFormat.mFormatFlags + 2) = 1735;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioCodecInitialize failed", &inOutputFormat, 0x12u);
        }

        exception = __cxa_allocate_exception(4uLL);
        *exception = v7;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }
    }

    *(this + 176) = 1;
    *(this + 728) = 1;
  }

  LODWORD(inOutputFormat.mSampleRate) = 40;
  Property = AudioCodecGetProperty(*(this + 21), 0x69666D74u, &inOutputFormat, this + 16);
  if (Property)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1743;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyCurrentInputFormat failed", &inOutputFormat, 0x12u);
    }

    v40 = __cxa_allocate_exception(4uLL);
    *v40 = Property;
    __cxa_throw(v40, MEMORY[0x1E69E5478], 0);
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  LODWORD(inOutputFormat.mSampleRate) = 40;
  v12 = AudioCodecGetProperty(*(this + 21), 0x6F666D74u, &inOutputFormat, &v48);
  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1747;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyCurrentOutputFormat failed", &inOutputFormat, 0x12u);
    }

    v41 = __cxa_allocate_exception(4uLL);
    *v41 = v12;
    __cxa_throw(v41, MEMORY[0x1E69E5478], 0);
  }

  if (*(this + 712) == 1)
  {
    DWORD2(v48) = 1885564203;
  }

  v13 = *(this + 90);
  if (v13)
  {
    v14 = v50;
    v16 = v48;
    v15 = v49;
    *(v13 + 16) = v48;
    *(v13 + 32) = v15;
    *(v13 + 48) = v14;
    *&inOutputFormat.mSampleRate = v16;
    *&inOutputFormat.mBytesPerPacket = v49;
    *&inOutputFormat.mBitsPerChannel = v50;
    inOutputFormat.mFormatID = 1885564203;
    v17 = AudioUnitSetProperty(*(v13 + 8), 8u, 1u, 0, &inOutputFormat, 0x28u);
    if (v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(inOutputFormat.mSampleRate) = 136315394;
        *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
        LOWORD(inOutputFormat.mFormatFlags) = 1024;
        *(&inOutputFormat.mFormatFlags + 2) = 1759;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  set kAudioUnitProperty_StreamFormat(kAudioUnitScope_Input, 0) on AUSM failed", &inOutputFormat, 0x12u);
      }

      v18 = __cxa_allocate_exception(4uLL);
      *v18 = v17;
      __cxa_throw(v18, MEMORY[0x1E69E5478], 0);
    }
  }

  else
  {
    v19 = v49;
    *(this + 56) = v48;
    *(this + 72) = v19;
    *(this + 11) = v50;
  }

  if (!*(this + 11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1768;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Codec has zero input channels", &inOutputFormat, 0x12u);
    }

    v42 = __cxa_allocate_exception(4uLL);
    *v42 = -50;
  }

  if (!*(this + 21))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1770;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Codec has zero output channels", &inOutputFormat, 0x12u);
    }

    v43 = __cxa_allocate_exception(4uLL);
    *v43 = -50;
  }

  v20 = *(this + 20);
  if (*(this + 205) == 1)
  {
    v21 = *(this + 1);
    v22 = *(this + 2);
    *(v20 + 32) = *(this + 6);
    *v20 = v21;
    *(v20 + 16) = v22;
  }

  else
  {
    v23 = *(this + 56);
    v24 = *(this + 72);
    *(v20 + 72) = *(this + 11);
    *(v20 + 56) = v24;
    *(v20 + 40) = v23;
  }

  v25 = 72;
  if (*(this + 205))
  {
    v25 = 32;
  }

  *(this + 209) = *(this + v25) == 0;
  LODWORD(inOutputFormat.mSampleRate) = 4;
  v26 = AudioCodecGetProperty(*(this + 21), 0x74627566u, &inOutputFormat, this + 360);
  if (v26)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1785;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyInputBufferSize failed", &inOutputFormat, 0x12u);
    }

    v44 = __cxa_allocate_exception(4uLL);
    *v44 = v26;
    __cxa_throw(v44, MEMORY[0x1E69E5478], 0);
  }

  LODWORD(inOutputFormat.mSampleRate) = 4;
  if (AudioCodecGetProperty(*(this + 21), 0x70616B62u, &inOutputFormat, this + 364))
  {
    if (*(this + 205))
    {
      v27 = this + 16;
    }

    else
    {
      v27 = this + 56;
    }

    *(this + 91) = *(v27 + 4);
  }

  LODWORD(inOutputFormat.mSampleRate) = 4;
  v28 = AudioCodecGetProperty(*(this + 21), 0x70616B66u, &inOutputFormat, this + 368);
  if (v28)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1798;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyPacketFrameSize failed", &inOutputFormat, 0x12u);
    }

    v45 = __cxa_allocate_exception(4uLL);
    *v45 = v28;
    __cxa_throw(v45, MEMORY[0x1E69E5478], 0);
  }

  if (!*(this + 92))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1802;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  kAudioCodecPropertyPacketFrameSize is zero", &inOutputFormat, 0x12u);
    }

    v46 = __cxa_allocate_exception(4uLL);
    *v46 = 2003329396;
    __cxa_throw(v46, MEMORY[0x1E69E5478], 0);
  }

  v29 = (this + 372);
  LODWORD(inOutputFormat.mSampleRate) = 4;
  if (AudioCodecGetProperty(*(this + 21), 0x6D6E6F70u, &inOutputFormat, this + 372))
  {
    *v29 = 1;
  }

  else if (!*v29)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1809;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Codec has zero minimum output packets", &inOutputFormat, 0x12u);
    }

    v47 = __cxa_allocate_exception(4uLL);
    *v47 = -50;
  }

  LODWORD(inOutputFormat.mSampleRate) = 4;
  if (AudioCodecGetProperty(*(this + 21), 0x6D646673u, &inOutputFormat, this + 376))
  {
    *(this + 94) = 0;
  }

  if (*(this + 204) == 1)
  {
    v30 = caulk::numeric::exceptional_mul<unsigned int>(*(this + 93), *(this + 91));
    std::__optional_destruct_base<ACCodecOutputBuffer,false>::reset[abi:ne200100](this + 400);
    ACCodecOutputBuffer::ACCodecOutputBuffer((this + 400), (this + 56), *(this + 93), v30, *(this + 209), 1);
  }

  else
  {
    v31 = caulk::numeric::exceptional_mul<unsigned int>(*(this + 93), *(this + 92));
    v32 = caulk::numeric::exceptional_mul<unsigned int>(v31, *(this + 20));
    std::__optional_destruct_base<ACCodecOutputBuffer,false>::reset[abi:ne200100](this + 400);
    ACCodecOutputBuffer::ACCodecOutputBuffer((this + 400), (this + 56), v31, v32, 0, 0);
  }

  *(this + 608) = 1;
  std::optional<ACAudioSpan>::emplace[abi:ne200100]<CA::StreamDescription const&,void>((this + 224), (this + 56));
  if ((*(this + 28) & 0x20) != 0)
  {
    v33 = *(this + 11);
  }

  else
  {
    v33 = 1;
  }

  v34 = (16 * v33) | 8;
  v36 = *(this + 42);
  v35 = *(this + 43);
  if (v34 <= v35 - v36)
  {
    if (v34 < v35 - v36)
    {
      *(this + 43) = v36 + v34;
    }
  }

  else
  {
    v37 = *(this + 44);
    if (v37 - v35 < v34 - (v35 - v36))
    {
      operator new();
    }

    v38 = v36 + v34;
    bzero(v35, v34 - (v35 - v36));
    *(this + 43) = v38;
    v36 = *(this + 42);
  }

  *v36 = v33;
  *(this + 728) = 0;
}

BOOL acv2::CodecConverter::IsInitialized(acv2::CodecConverter *this)
{
  v10 = *MEMORY[0x1E69E9840];
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  Property = AudioCodecGetProperty(this, 0x696E6974u, &ioPropertyDataSize, &outPropertyData);
  if (Property)
  {
    v4 = Property;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ioPropertyDataSize = 136315394;
      v7 = "CodecConverter.cpp";
      v8 = 1024;
      v9 = 1693;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyIsInitialized failed", &ioPropertyDataSize, 0x12u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = v4;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  return outPropertyData != 0;
}

__n128 ACRendererSharedMemory::calculateConfigAndPartitionMemory(ACRendererSharedMemory *this, uint64_t a2)
{
  v3 = 0;
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = *(this + 25);
  *(this + 2) = v4;
  v19[0] = 0x100000000;
  do
  {
    v5 = *(v19 + v3);
    v6 = a2 + 56 * v5;
    v7 = v4 + 40 * v5;
    v8 = *(v6 + 32);
    v9 = *(v6 + 16);
    *v7 = *v6;
    *(v7 + 16) = v9;
    *(v7 + 32) = v8;
    *(v4 + 80 + 4 * v5) = *(v6 + 40);
    *(v4 + 96 + 4 * v5) = *(v6 + 48);
    *(v4 + 88 + 4 * v5) = *(v6 + 44);
    v3 += 4;
  }

  while (v3 != 8);
  if (!ACRendererSharedMemory::computeMemoryConfig(this))
  {
    *(*(this + 2) + 112) = 0;
    if (!ACRendererSharedMemory::partitionMemory(this, 0))
    {
      v11 = *(this + 2);
      v12 = *v11;
      v13 = v11[1];
      *(this + 56) = v11[2];
      *(this + 40) = v13;
      *(this + 24) = v12;
      v14 = v11[3];
      v15 = v11[4];
      v16 = v11[5];
      *(this + 120) = v11[6];
      *(this + 104) = v16;
      *(this + 88) = v15;
      *(this + 72) = v14;
      result = v11[7];
      v17 = v11[8];
      v18 = v11[9];
      *(this + 184) = v11[10];
      *(this + 168) = v18;
      *(this + 152) = v17;
      *(this + 136) = result;
      *(this + 2) = this + 24;
    }
  }

  return result;
}

uint64_t ACRendererSharedMemory::computeMemoryConfig(ACRendererSharedMemory *this)
{
  v79[1] = *MEMORY[0x1E69E9840];
  v1 = 2003329396;
  v2 = *(this + 2);
  if (*(v2 + 88))
  {
    return v1;
  }

  v4 = caulk::numeric::exceptional_add<unsigned long>(*(this + 1) - *(v2 + 144) - 15, 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = *(this + 2);
  v6 = *(v5 + 92);
  if (!v6)
  {
    if ((*(v5 + 12) & 0x20) != 0)
    {
      v12 = *(v5 + 28);
    }

    else
    {
      v12 = 1;
    }

    v13 = caulk::numeric::exceptional_add<unsigned long>((v12 * *(v5 + 96)) + 16 * *(v5 + 80), 15);
    v14 = *(this + 2);
    if ((*(v14 + 52) & 0x20) != 0)
    {
      v15 = *(v14 + 68);
    }

    else
    {
      v15 = 1;
    }

    if ((caulk::numeric::exceptional_add<unsigned long>((v15 * *(v14 + 100)) + 16 * *(v14 + 84), 15) & 0xFFFFFFFFFFFFFFF0) + (v13 & 0xFFFFFFFFFFFFFFF0) > v4)
    {
      return v1;
    }

    v16 = 0;
    v17 = caulk::numeric::exceptional_add<unsigned long>((v4 >> 1) - 15, 15) & 0xFFFFFFFFFFFFFFF0;
    v78[0] = v17;
    v78[1] = v17;
    v79[0] = 0x100000000;
    do
    {
      v18 = *(v79 + v16);
      v19 = *(this + 2);
      v20 = v19 + 40 * v18;
      if ((*(v20 + 12) & 0x20) != 0)
      {
        v21 = *(v20 + 28);
      }

      else
      {
        v21 = 1;
      }

      v22 = caulk::numeric::exceptional_add<unsigned long>((v21 * *(v19 + 4 * v18 + 96)) + 16 * *(v19 + 4 * v18 + 80), 15) & 0xFFFFFFFFFFFFFFF0;
      if (v22 > v17)
      {
        v78[v18] = v22;
        v78[1 - v18] = v4 - v22;
      }

      v16 += 4;
    }

    while (v16 != 8);
    v23 = 0;
    v79[0] = 0x100000000;
    v24 = *(this + 2);
    while (1)
    {
      v25 = *(v79 + v23);
      v26 = v24 + 4 * v25;
      v27 = *(v26 + 80);
      if (v27 || (v29 = v24 + 40 * v25, (v30 = *(v29 + 16)) == 0))
      {
        v28 = 64;
      }

      else
      {
        if ((*(v29 + 12) & 0x20) != 0)
        {
          v31 = *(v29 + 28);
        }

        else
        {
          v31 = 1;
        }

        v28 = (v31 * v30);
      }

      v32 = v78[v25];
      v33 = v32 / v28;
      v34 = *(v26 + 96);
      if (v32 - 16 * v33 >= v34)
      {
        goto LABEL_39;
      }

      v35 = v24 + 40 * v25;
      if ((*(v35 + 12) & 0x20) != 0)
      {
        v36 = *(v35 + 28);
      }

      else
      {
        v36 = 1;
      }

      v37 = caulk::numeric::exceptional_add<unsigned long>((v36 * v34) + 16 * v27, 15);
      v24 = *(this + 2);
      v27 = v24 + 4 * v25;
      v38 = *(v27 + 96);
      LODWORD(v27) = *(v27 + 80);
      if (*(v24 + 4 * (1 - v25) + 88))
      {
        goto LABEL_37;
      }

      v39 = v27;
      if (v38 <= 0x10000)
      {
        break;
      }

LABEL_38:
      LODWORD(v33) = (v32 - (v37 & 0xFFFFFFFFFFFFFFF0)) / (16 * v39 + v38) + 1;
LABEL_39:
      *(v24 + 4 * v25 + 116) = v33;
      v40 = (16 * v27) * v33;
      if ((v40 & 0xFFFFFFFF00000000) != 0)
      {
        v41 = 0xFFFFFFFFLL;
      }

      else
      {
        v41 = v40;
      }

      v42 = caulk::numeric::exceptional_add<unsigned long>(v41, 15);
      v24 = *(this + 2);
      *(v24 + 8 * v25 + 128) = v32 - (v42 & 0xFFFFFFFFFFFFFFF0);
      v23 += 4;
      if (v23 == 8)
      {
        goto LABEL_76;
      }
    }

    if (!v27)
    {
      v43 = v24 + 40 * v25;
      v44 = *(v43 + 16);
      if (v44)
      {
        if ((*(v43 + 12) & 0x20) != 0)
        {
          v45 = *(v43 + 28);
        }

        else
        {
          v45 = 1;
        }

        v39 = 0;
        v38 = v45 * v44;
      }

      else
      {
        v39 = 0;
        v38 = 64;
      }

      goto LABEL_38;
    }

    v38 = 64;
LABEL_37:
    v39 = v27;
    goto LABEL_38;
  }

  v7 = *(v5 + 20);
  v8 = *(v5 + 84);
  v9 = 16 * *(v5 + 80);
  v10 = *(v5 + 96);
  v11 = *(v5 + 100);
  if (!*(v5 + 88) && v11 <= 0x10000)
  {
    if (v8)
    {
LABEL_6:
      v11 = 64;
      goto LABEL_56;
    }

    v46 = *(v5 + 56);
    if (!v46)
    {
      v8 = 0;
      goto LABEL_6;
    }

    if ((*(v5 + 52) & 0x20) != 0)
    {
      v47 = *(v5 + 68);
    }

    else
    {
      v47 = 1;
    }

    v8 = 0;
    v11 = v47 * v46;
  }

LABEL_56:
  v48 = caulk::numeric::exceptional_add<unsigned long>(v6 + v10 + v9 + (16 * v8 + v11) * v7 + 40, 15);
  v49 = *(this + 2);
  v50 = *(v49 + 92);
  v51 = v4 - (v50 + 40) - 44;
  v52 = v51 / (v48 & 0xFFFFFFFFFFFFFFF0);
  *(v49 + 116) = v52;
  if (v51 >= (v48 & 0xFFFFFFFFFFFFFFF0))
  {
    *(v49 + 120) = v7 * v52;
    v53 = *(v49 + 96);
    if (!v50 && v53 <= 0x10000)
    {
      if (*(v49 + 80) || (v54 = *(v49 + 16)) == 0)
      {
        v53 = 64;
      }

      else
      {
        if ((*(v49 + 12) & 0x20) != 0)
        {
          v55 = *(v49 + 28);
        }

        else
        {
          v55 = 1;
        }

        v53 = v55 * v54;
      }
    }

    v56 = caulk::numeric::exceptional_add<unsigned long>(v53 * v52, 15);
    v57 = *(this + 2);
    *(v57 + 128) = v56 & 0xFFFFFFFFFFFFFFF0;
    v58 = *(v57 + 100);
    if (!*(v57 + 88) && v58 <= 0x10000)
    {
      if (*(v57 + 84) || (v59 = *(v57 + 56)) == 0)
      {
        v58 = 64;
      }

      else
      {
        if ((*(v57 + 52) & 0x20) != 0)
        {
          v60 = *(v57 + 68);
        }

        else
        {
          v60 = 1;
        }

        v58 = v60 * v59;
      }
    }

    v61 = caulk::numeric::exceptional_add<unsigned long>(*(v57 + 120) * v58, 15);
    v24 = *(this + 2);
    *(v24 + 136) = v61 & 0xFFFFFFFFFFFFFFF0;
LABEL_76:
    v62 = *(v24 + 144);
    v63 = *(v24 + 120) * (16 * *(v24 + 84));
    if ((v63 & 0xFFFFFFFF00000000) != 0)
    {
      v64 = 0xFFFFFFFFLL;
    }

    else
    {
      v64 = v63;
    }

    v65 = caulk::numeric::exceptional_add<unsigned long>(v64, 15);
    v66 = *(*(this + 2) + 116) * (16 * *(*(this + 2) + 80));
    if ((v66 & 0xFFFFFFFF00000000) != 0)
    {
      v67 = 0xFFFFFFFFLL;
    }

    else
    {
      v67 = v66;
    }

    v68 = (v65 & 0xFFFFFFFFFFFFFFF0) + v62 + (caulk::numeric::exceptional_add<unsigned long>(v67, 15) & 0xFFFFFFFFFFFFFFF0);
    v69 = *(this + 2);
    *(v69 + 152) = v68;
    v70 = *(v69 + 92);
    if (v70)
    {
      v71 = caulk::numeric::exceptional_add<unsigned long>(40 * (*(v69 + 116) + 1) + 44, 15) & 0xFFFFFFFFFFFFFFF0;
      v69 = *(this + 2);
      v70 = *(v69 + 92);
    }

    else
    {
      v71 = 0;
    }

    v72 = v71 + v68;
    *(v69 + 160) = v72;
    v73 = v70 * (*(v69 + 116) + 1);
    if ((v73 & 0xFFFFFFFF00000000) != 0)
    {
      v74 = 0xFFFFFFFFLL;
    }

    else
    {
      v74 = v73;
    }

    v75 = (caulk::numeric::exceptional_add<unsigned long>(v74, 15) & 0xFFFFFFFFFFFFFFF0) + v72;
    v76 = *(this + 2);
    v76[21] = v75;
    if (v76[16] + v76[17] + v75 <= *(this + 1))
    {
      return 0;
    }

    else
    {
      return 2003329396;
    }
  }

  return v1;
}

void sub_18F62A9C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ACRendererSharedMemory::partitionMemory(ACRendererSharedMemory *this, int a2)
{
  v4 = *this;
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = *(v6 + 144);
  if (a2)
  {
    if (*(v6 + 112))
    {
      return 0;
    }
  }

  else
  {
    *(v6 + 112) = 0;
  }

  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  v9 = *(v6 + 116) * (16 * *(v6 + 80));
  if ((v9 & 0xFFFFFFFF00000000) != 0)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
  }

  v11 = caulk::numeric::exceptional_add<unsigned long>(v10, 15);
  v12 = v4 + v7;
  v13 = *(this + 2);
  if (v11 >= 0x10)
  {
    *(this + 30) = *this + *(v13 + 144);
    v14 = *(v13 + 116) * (16 * *(v13 + 80));
    if ((v14 & 0xFFFFFFFF00000000) != 0)
    {
      v15 = 0xFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v12 += caulk::numeric::exceptional_add<unsigned long>(v15, 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = *(this + 2);
    *(this + 64) = *(v13 + 116);
  }

  v16 = *(v13 + 120) * (16 * *(v13 + 84));
  if ((v16 & 0xFFFFFFFF00000000) != 0)
  {
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = v16;
  }

  if (caulk::numeric::exceptional_add<unsigned long>(v17, 15) >= 0x10)
  {
    v19 = *(this + 2);
    v20 = *(v19 + 144);
    v21 = *(v19 + 116) * (16 * *(v19 + 80));
    if ((v21 & 0xFFFFFFFF00000000) != 0)
    {
      v22 = 0xFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    v18 = *this;
    *(this + 31) = v18 + v20 + (caulk::numeric::exceptional_add<unsigned long>(v22, 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *(*(this + 2) + 120) * (16 * *(*(this + 2) + 84));
    if ((v23 & 0xFFFFFFFF00000000) != 0)
    {
      v24 = 0xFFFFFFFFLL;
    }

    else
    {
      v24 = v23;
    }

    v12 += caulk::numeric::exceptional_add<unsigned long>(v24, 15) & 0xFFFFFFFFFFFFFFF0;
    *(this + 65) = *(*(this + 2) + 120);
  }

  v25 = v4 + v5;
  v8 = 2003329396;
  if (v12 <= v25 && (v12 & 0xF) == 0)
  {
    v27 = *(this + 2);
    v28 = *this + *(v27 + 152);
    if (v12 == v28)
    {
      v29 = *(v27 + 92);
      if (*(v27 + 88))
      {
        v30 = *this + *(v27 + 152);
      }

      else
      {
        v30 = 0;
      }

      if (!v29)
      {
        v28 = 0;
      }

      *(this + 33) = v30;
      *(this + 34) = v28;
      if (v29)
      {
        v31 = caulk::numeric::exceptional_add<unsigned long>(40 * (*(v27 + 116) + 1) + 44, 15) & 0xFFFFFFFFFFFFFFF0;
      }

      else
      {
        v31 = 0;
      }

      v32 = v12 + v31;
      if (v32 <= v25)
      {
        v33 = *(this + 2);
        v34 = *this + *(v33 + 160);
        if (v32 == v34)
        {
          *(this + 280) = vbicq_s8(vdupq_n_s64(v34), vceqzq_s64(*(this + 264)));
          v35 = *(v33 + 92) * (*(v33 + 116) + 1);
          v36 = (v35 & 0xFFFFFFFF00000000) != 0 ? 0xFFFFFFFFLL : v35;
          v37 = (v32 + (caulk::numeric::exceptional_add<unsigned long>(v36, 15) & 0xFFFFFFFFFFFFFFF0));
          if (v37 <= v25)
          {
            v38 = (*this + *(*(this + 2) + 168));
            if (v37 == v38)
            {
              ACRendererSharedMemory::partitionMemoryForAudioBuffers(this, v38);
              v39 = *(this + 2);
              v40 = &v37[*(v39 + 128) + *(v39 + 136)];
              v41 = v40 <= v25 && (v40 & 0xF) == 0;
              if (v41)
              {
                v8 = 0;
              }

              else
              {
                v8 = 2003329396;
              }

              if (v41 && a2 != 0)
              {
                v8 = 0;
                *(v39 + 112) = 1;
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

uint64_t caulk::numeric::exceptional_add<unsigned long>(uint64_t a1, uint64_t a2)
{
  v2 = __CFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
  }

  return result;
}

uint64_t ACRendererSharedMemory::partitionMemoryForAudioBuffers(ACRendererSharedMemory *this, unsigned __int8 *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = *(this + 27);
  v6 = *(this + 28);
  v5 = (this + 216);
  if (v4 == v6)
  {
    v23 = *(this + 2);
    *v51 = v23;
    if (*(v23 + 92))
    {
      v24 = *(v23 + 116) + 1;
    }

    else
    {
      v24 = 0;
    }

    v50 = v24;
    if (v4 >= *(this + 29))
    {
      v32 = std::vector<ACRendererSharedMemory::Element>::__emplace_back_slow_path<CA::StreamDescription *,unsigned int,unsigned int &,unsigned char *&,unsigned char *&>(this + 27, v51, &v50, (v23 + 88), this + 35, this + 33);
    }

    else
    {
      std::vector<ACRendererSharedMemory::Element>::__construct_one_at_end[abi:ne200100]<CA::StreamDescription *,unsigned int,unsigned int &,unsigned char *&,unsigned char *&>(this + 216, v23, v24, *(v23 + 88), *(this + 35), *(this + 33));
      v32 = v6 + 88;
    }

    *(this + 28) = v32;
    v33 = *(this + 2);
    *v51 = v33 + 40;
    v34 = *(v33 + 92);
    if (v34)
    {
      v35 = *(v33 + 116) + 1;
    }

    else
    {
      v35 = 0;
    }

    v50 = v35;
    if (v32 >= *(this + 29))
    {
      v36 = std::vector<ACRendererSharedMemory::Element>::__emplace_back_slow_path<CA::StreamDescription *,unsigned int,unsigned int &,unsigned char *&,unsigned char *&>(v5, v51, &v50, (v33 + 92), this + 36, this + 34);
    }

    else
    {
      std::vector<ACRendererSharedMemory::Element>::__construct_one_at_end[abi:ne200100]<CA::StreamDescription *,unsigned int,unsigned int &,unsigned char *&,unsigned char *&>(v5, (v33 + 40), v35, v34, *(this + 36), *(this + 34));
      v36 = v32 + 88;
    }

    *(this + 28) = v36;
  }

  else
  {
    v7 = *(this + 2);
    v8 = *(v7 + 92);
    if (v8)
    {
      v8 = *(v7 + 116) + 1;
    }

    v9 = *(v7 + 88);
    v10 = *(this + 35);
    v11 = *(this + 33);
    v12 = *(v7 + 32);
    v13 = *(v7 + 16);
    *v51 = *v7;
    *&v51[16] = v13;
    *&v51[32] = v12;
    *&v51[40] = 0;
    *&v51[44] = v8;
    v52 = v9;
    CA::AudioBuffersBase::AudioBuffersBase(&v53, v51, 0);
    *&v54 = v10;
    *(&v54 + 1) = v11;
    v55 = -1;
    v14 = *v5;
    v15 = *v51;
    v16 = *&v51[16];
    v17 = *&v51[32];
    *(v14 + 48) = v52;
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *v14 = v15;
    v18 = *(v14 + 56);
    *(v14 + 56) = v53;
    v53 = v18;
    v19 = v55;
    *(v14 + 64) = v54;
    *(v14 + 80) = v19;
    ExtendedAudioBufferList_Destroy(v18);
    v20 = *(this + 2);
    v21 = *(v20 + 92);
    if (v21)
    {
      v22 = *(v20 + 116) + 1;
    }

    else
    {
      v22 = 0;
    }

    v25 = *(this + 36);
    v26 = *(this + 34);
    v27 = *(v20 + 56);
    *v51 = *(v20 + 40);
    *&v51[16] = v27;
    *&v51[32] = *(v20 + 72);
    *&v51[40] = 0;
    *&v51[44] = v22;
    v52 = v21;
    CA::AudioBuffersBase::AudioBuffersBase(&v53, v51, 0);
    v28 = *v5;
    v29 = *&v51[16];
    *(v28 + 120) = *&v51[32];
    v30 = *v51;
    *(v28 + 104) = v29;
    *&v54 = v25;
    *(&v54 + 1) = v26;
    *(v28 + 136) = v52;
    v31 = *(v28 + 144);
    *(v28 + 144) = v53;
    v55 = -1;
    *(v28 + 88) = v30;
    v53 = v31;
    *(v28 + 168) = -1;
    *(v28 + 152) = v54;
    ExtendedAudioBufferList_Destroy(v31);
  }

  v37 = 0;
  *v51 = 0x100000000;
  do
  {
    v38 = *&v51[v37];
    v39 = *v5 + 88 * v38;
    if ((*(v39 + 12) & 0x20) != 0)
    {
      v40 = *(v39 + 28);
    }

    else
    {
      v40 = 1;
    }

    result = caulk::numeric::exceptional_add<unsigned long>(*(*(this + 2) + 8 * v38 + 128) / v40 - 15, 15);
    v42 = result & 0xFFFFFFFFFFFFFFF0;
    *(v39 + 40) = result & 0xFFFFFFF0;
    v43 = *(v39 + 56);
    v44 = *(v43 + 48);
    if (v44)
    {
      v45 = v43 + 16 * v44 + 56;
      v46 = v43 + 56;
      v47 = *(this + 2) + 40 * v38;
      v48 = *(v47 + 12);
      do
      {
        v49 = *(v47 + 28);
        if ((v48 & 0x20) != 0)
        {
          v49 = 1;
        }

        *(v46 + 8) = a2;
        *v46 = v49;
        *(v46 + 4) = v42;
        v46 += 16;
        a2 += v42;
      }

      while (v46 != v45);
    }

    v37 += 4;
  }

  while (v37 != 8);
  return result;
}