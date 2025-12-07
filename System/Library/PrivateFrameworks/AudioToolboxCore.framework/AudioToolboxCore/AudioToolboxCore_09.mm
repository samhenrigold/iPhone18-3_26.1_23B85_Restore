uint64_t DSPGraph::SRCBox::reset(DSPGraph::SRCBox *this)
{
  DSPGraph::RingBufferBox::reset(this);
  result = *(this + 111);
  if (result)
  {
    v3 = *(*result + 40);

    return v3();
  }

  return result;
}

uint64_t DSPGraph::ResamplerSRCKernel::reset(uint64_t this)
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

uint64_t Resampler2::Reset(void **this)
{
  bzero(this[10], 4 * *(this + 19));
  bzero(this[11], 4 * *(this + 19));
  *(this + 18) = 0;
  this[20] = 0;
  *(this + 26) = 0;
  *(this + 132) = 0;
  result = (*(*this + 12))(this, *(this + 30));
  v3 = 0.0;
  if ((this[33] & 1) == 0)
  {
    v4 = *(this + 20);
    result = (*(*this + 19))(this, 0.0);
    v3 = -1.0 - (v4 + (result >> 1));
  }

  *(this + 17) = v3;
  this[34] = 0;
  return result;
}

float DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::reset(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 780))
  {
    v1 = 0.0;
  }

  result = *(a1 + 776) * v1;
  *(a1 + 804) = result;
  *(a1 + 812) = 257;
  return result;
}

uint64_t DSPGraph::Graph::setSliceDuration(uint64_t result, int a2, int a3, int a4)
{
  if (*(result + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "setSliceDuration");
    std::string::basic_string[abi:ne200100]<0>(&v4, "cannot set slice duration if graph is already configured.");
    DSPGraph::ThrowException(1667655457, &v6, 236, &v5, &v4);
  }

  *(result + 688) = a2;
  *(result + 692) = a3;
  *(result + 760) = a4 == 1;
  return result;
}

void sub_18F671188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t APAC::MetadataBitStreamPacker::pack(uint64_t a1, uint64_t a2, unsigned int a3, __int16 *a4)
{
  v20 = a2;
  v21 = a2;
  v5 = a2 + a3;
  v22 = v5;
  v23 = 0x2000000000;
  v6 = a2 & 3;
  v24 = v6;
  if (*(a4 + 4) != 1 || (*(a4 + 5) & 0xFE) != 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Metadata version mismatch";
    goto LABEL_28;
  }

  if (*a4 != -1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "metadata.header.syncWords has an incorrect value";
    goto LABEL_28;
  }

  if (a3 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack metadata.header.syncWords";
    goto LABEL_28;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, 0xFFFF, 0x10u);
  if (HIDWORD(v23) + 8 * (v22 - v21) - 32 <= 15)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack metadata.header.chunkSize";
    goto LABEL_28;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, a4[1], 0x10u);
  if (HIDWORD(v23) + 8 * (v22 - v21) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack metadata.header.version.major";
    goto LABEL_28;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, *(a4 + 4), 8u);
  if (HIDWORD(v23) + 8 * (v22 - v21) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack metadata.header.version.minor";
    goto LABEL_28;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, *(a4 + 5), 8u);
  if (HIDWORD(v23) + 8 * (v22 - v21) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack metadata.header.informationFrame";
    goto LABEL_28;
  }

  v9 = AT::TBitstreamWriter<unsigned int>::PutBits(&v20, *(a4 + 6), 1u);
  v10 = *(a4 + 5);
  if (v10 == 3)
  {
    APAC::MetadataBitStreamPacker::packMetadataFrame(a1, (a4 + 725540), *(a4 + 6), &v20);
  }

  else if (v10 == 2)
  {
    if (*(a4 + 6) == 1)
    {
      APAC::MetadataBitStreamPacker::packStaticMetadata(v9, a4 + 8, &v20);
    }

    APAC::MetadataBitStreamPacker::packDynamicMetadata(a1, a4 + 174192, &v20);
  }

  v12 = v20;
  v11 = v21;
  v13 = HIDWORD(v23);
  AT::TBitstreamWriter<unsigned int>::Flush(&v20);
  v20 = a2;
  v21 = a2;
  v22 = v5;
  v23 = 0x2000000000;
  v24 = v6;
  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, *a4, 0x10u);
  if (HIDWORD(v23) + 8 * (v22 - v21) - 32 <= 15)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack actualChunkSize";
LABEL_28:
    *exception = v19;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v14 = 8 * (v11 - v12) - v13;
  v15 = (v14 + 32) >> 3;
  if ((v14 & 7) != 0)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = v15;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, (v16 - 4), 0x10u);
  AT::TBitstreamWriter<unsigned int>::Flush(&v20);
  return v16;
}

uint64_t AT::TBitstreamWriter<unsigned int>::PutBits(uint64_t result, int a2, unsigned int a3)
{
  if (a3 < 0x20)
  {
    v3 = ~(-1 << a3);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & a2;
  v5 = *(result + 28);
  if (*(result + 32))
  {
    v6 = v5 - 24;
    if (v5 - 24 <= a3)
    {
      v7 = *(result + 24);
      do
      {
        a3 -= v6;
        v8 = (v7 << v6) | (v4 >> a3);
        v9 = *(result + 8);
        *(result + 8) = v9 + 1;
        *v9 = v8;
        v10 = *(result + 32) - 1;
        *(result + 32) = v10;
        *(result + 24) = 0x2000000000;
        v4 &= ~(-1 << a3);
        v5 = 32;
        if (a3 < 8)
        {
          break;
        }

        v7 = 0;
        v6 = 8;
      }

      while (v10);
    }

    if (a3)
    {
      *(result + 24) = (*(result + 24) << a3) | v4;
      *(result + 28) = v5 - a3;
    }
  }

  else
  {
    *(result + 28) = v5 - a3;
    if ((v5 - a3) < 1)
    {
      v11 = *(result + 24);
      v12 = (v11 << v5) | (v4 >> (a3 - v5));
      v13 = (v11 << a3) | v4;
      if (v5 == a3)
      {
        v12 = v13;
      }

      *(result + 24) = v12;
      v14 = *(result + 8);
      if ((*(result + 16) - v14) >= 4)
      {
        *v14 = bswap32(v12);
        v15 = *(result + 28);
        *(result + 24) = v4 & ~(-1 << -v15);
        *(result + 28) = v15 + 32;
        v14 = *(result + 8);
      }

      *(result + 8) = v14 + 1;
    }

    else
    {
      *(result + 24) = (*(result + 24) << a3) | v4;
    }
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packStaticMetadata(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v5 = APAC::MetadataBitStreamPacker::packReferenceScreen(a1, a2, a3);
  v6 = APAC::MetadataBitStreamPacker::packCodeBookData(v5, a2 + 424, a3);
  v7 = APAC::MetadataBitStreamPacker::packGroupStaticData(v6, a2 + 428, a3);
  v8 = APAC::MetadataBitStreamPacker::packSceneComponenentStaticData(v7, a2 + 27864, a3);

  return APAC::MetadataBitStreamPacker::packExtendedData(v8, a2 + 173156, a3);
}

uint64_t APAC::MetadataBitStreamPacker::packDynamicMetadata(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  APAC::MetadataBitStreamPacker::packGroupDynamicData(a1, a2, a3);
  v6 = APAC::MetadataBitStreamPacker::packSceneComponenentDynamicData(a1, a2 + 32516, a3);

  return APAC::MetadataBitStreamPacker::packExtendedData(v6, a2 + 1271024, a3);
}

uint64_t APAC::MetadataBitStreamPacker::packMetadataFrame(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v16 = "Cannot pack mdFrame.mRendererMetadataPresent";
    goto LABEL_17;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 1), 1u);
  if (*(a2 + 1) == 1)
  {
    if (a3)
    {
      if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v16 = "Cannot pack glbCfg.mHasData";
        goto LABEL_17;
      }

      v9 = AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 16), 1u);
      if (*(a2 + 16) == 1)
      {
        APAC::MetadataBitStreamPacker::packGlobalConfig(v9, a2 + 16, a4);
      }

      if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 10)
      {
        exception = __cxa_allocate_exception(8uLL);
        v16 = "Cannot pack mdFrame.mRendererMetadata.mGroupCount";
        goto LABEL_17;
      }

      v10 = AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 8), 0xBu);
      if (*(a2 + 8))
      {
        v11 = 0;
        v12 = 0;
        v13 = 48 * *(a2 + 8);
        while (1)
        {
          v14 = *(a2 + 4784);
          if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4792) - v14) >> 4) <= v12)
          {
            break;
          }

          v10 = APAC::MetadataBitStreamPacker::packGroupConfig(v10, (v14 + v11), a4);
          ++v12;
          v11 += 48;
          if (v13 == v11)
          {
            goto LABEL_12;
          }
        }

        exception = __cxa_allocate_exception(8uLL);
        v16 = "metadata.mMetadataFrame.mRendererMetadata.mGroupConfig does not have enough elements";
LABEL_17:
        *exception = v16;
        __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
      }
    }

LABEL_12:

    return APAC::MetadataBitStreamPacker::packRendererMetadata(a1, (a2 + 8), a4);
  }

  return result;
}

uint64_t AT::TBitstreamWriter<unsigned int>::Flush(uint64_t result)
{
  v1 = result;
  v2 = *(result + 28);
  if ((v2 & 7) != 0)
  {
    result = AT::TBitstreamWriter<unsigned int>::PutBits(result, 0, *(result + 28) & 7);
    v2 = *(v1 + 28);
  }

  if (v2 == 32)
  {
    v3 = *(v1 + 8);
  }

  else
  {
    v3 = *(v1 + 8);
    v4 = 24 - v2;
    do
    {
      *v3 = *(v1 + 24) >> v4;
      v3 = *(v1 + 8) + 1;
      *(v1 + 8) = v3;
      v4 -= 8;
    }

    while (v4 != -8);
  }

  *(v1 + 28) = 32;
  *(v1 + 32) = v3 & 3;
  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packGlobalConfig(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack glbCfg.mNumParameters";
LABEL_36:
    *exception = v12;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0xBu);
  v6 = *(a2 + 2);
  if (*(a2 + 2))
  {
    v7 = (a2 + 4);
    while (1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
      {
        exception = __cxa_allocate_exception(8uLL);
        v12 = "Cannot pack glbCfg.mParamIndexList[n]";
        goto LABEL_36;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v7, 0xBu);
      switch(*v7)
      {
        case 0:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mApplyPostProcReverb";
            goto LABEL_36;
          }

          v8 = *(a2 + 4100);
LABEL_22:
          v9 = a3;
          v10 = 1;
LABEL_32:
          result = AT::TBitstreamWriter<unsigned int>::PutBits(v9, v8, v10);
LABEL_33:
          ++v7;
          if (!--v6)
          {
            return result;
          }

          break;
        case 1:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mIs6DoF";
            goto LABEL_36;
          }

          v8 = *(a2 + 4101);
          goto LABEL_22;
        case 2:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mHasSceneRadiationPattern";
            goto LABEL_36;
          }

          v8 = *(a2 + 4102);
          goto LABEL_22;
        case 3:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mTargetPlaybackSystemIndex";
            goto LABEL_36;
          }

          v8 = *(a2 + 4103);
          v9 = a3;
          v10 = 5;
          goto LABEL_32;
        case 4:
          result = APAC::MetadataBitStreamPacker::packAuthoringInformation(result, (a2 + 4106), a3);
          goto LABEL_33;
        case 5:
          result = APAC::MetadataBitStreamPacker::packReferenceScreen(result, a2 + 4116, a3);
          goto LABEL_33;
        case 6:
          result = APAC::MetadataBitStreamPacker::packDBMD(result, (a2 + 4156), a3);
          goto LABEL_33;
        case 7:
          result = APAC::MetadataBitStreamPacker::packBinauralization(result, (a2 + 4480), a3);
          goto LABEL_33;
        case 8:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mHCFilter.mDataLocationIndex";
            goto LABEL_36;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4496), 2u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mHCFilter.mCustomData_TableID";
            goto LABEL_36;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4498), 9u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mHCFilter.mCustomData_EntryID";
            goto LABEL_36;
          }

          v8 = *(a2 + 4500);
          v9 = a3;
          v10 = 9;
          goto LABEL_32;
        case 9:
          result = APAC::MetadataBitStreamPacker::packSPAD(result, (a2 + 4504), a3);
          goto LABEL_33;
        case 0xA:
          result = APAC::MetadataBitStreamPacker::packDistanceAttenuation(result, (a2 + 4648), a3);
          goto LABEL_33;
        case 0xB:
          result = APAC::MetadataBitStreamPacker::packPosition(result, (a2 + 4668), a3);
          goto LABEL_33;
        case 0xC:
          result = APAC::MetadataBitStreamPacker::packGenericRenderingConfig(result, (a2 + 4716), a3);
          goto LABEL_33;
        case 0xD:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 5)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mContentKind";
            goto LABEL_36;
          }

          v8 = *(a2 + 4104);
          v9 = a3;
          v10 = 6;
          goto LABEL_32;
        case 0xE:
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, 0, 4u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mMaxNumBlocks";
            goto LABEL_36;
          }

          v8 = *(a2 + 4105);
          v9 = a3;
          v10 = 8;
          goto LABEL_32;
        case 0xF:
          result = APAC::MetadataBitStreamPacker::packChannelBedHeadphoneMetadata(result, (a2 + 4736), a3);
          goto LABEL_33;
        default:
          goto LABEL_33;
      }
    }
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packGroupConfig(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mGroupID";
    goto LABEL_48;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0xBu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mIsGlobal";
    goto LABEL_48;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 1u);
  if (a2[1])
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mIsPerASC";
    goto LABEL_48;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 1u);
  v6 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (*(a2 + 3) != 1)
  {
    if (v6 <= 10)
    {
      exception = __cxa_allocate_exception(8uLL);
      v13 = "Cannot pack gpCfg.mMemberCount";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[9], 0xBu);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack gpCfg.mHasConjunctMembers";
      }

      else
      {
        result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 20), 1u);
        if (*(a2 + 20) == 1)
        {
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 10)
          {
            v8 = 11;
            goto LABEL_31;
          }

          exception = __cxa_allocate_exception(8uLL);
          v13 = "Cannot pack gpCfg.mStartASCID";
        }

        else
        {
          if (!a2[9])
          {
            return result;
          }

          v9 = 0;
          v10 = 2 * a2[9];
          while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 10)
          {
            result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 3) + v9), 0xBu);
            v9 += 2;
            if (v10 == v9)
            {
              return result;
            }
          }

          exception = __cxa_allocate_exception(8uLL);
          v13 = "Cannot pack gpCfg.mASCIDList[n]";
        }
      }
    }

LABEL_48:
    *exception = v13;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mASCID";
    goto LABEL_48;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 0xBu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mASCType";
    goto LABEL_48;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 6), 3u);
  v7 = *(a2 + 6);
  if (v7 == 2)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 10)
    {
      v8 = 7;
      goto LABEL_31;
    }

    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mHOAID";
    goto LABEL_48;
  }

  if (v7 == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
    {
      exception = __cxa_allocate_exception(8uLL);
      v13 = "Cannot pack gpCfg.mObjectID";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 0xBu);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack gpCfg.mIsObjectInBed";
      }

      else
      {
        result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 10), 1u);
        if (*(a2 + 10) != 1)
        {
          return result;
        }

        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 10)
        {
          v8 = 6;
          goto LABEL_31;
        }

        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack gpCfg.mBedASCID";
      }
    }

    goto LABEL_48;
  }

  if (*(a2 + 6))
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mChBedID";
    goto LABEL_48;
  }

  v8 = 8;
LABEL_31:
  v11 = a2[v8];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v11, 0xBu);
}

uint64_t APAC::MetadataBitStreamPacker::packRendererMetadata(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot pack rMd.mGroupCount";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0xBu);
  if (*a2)
  {
    v7 = 0;
    v8 = 40200 * *a2;
    do
    {
      result = APAC::MetadataBitStreamPacker::packGroupData(a1, (*(a2 + 600) + v7), a3);
      v7 += 40200;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packGroupData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack gpData.mHasData";
    goto LABEL_12;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack gpData.mGroupID";
    goto LABEL_12;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0xBu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack gpData.mNumBlocks";
LABEL_12:
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 6u);
  v7 = a2[4];
  if (a2[4])
  {
    v8 = (a2 + 8);
    do
    {
      result = APAC::MetadataBitStreamPacker::packBlockData(a1, v8, a3);
      v8 += 628;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packBlockData(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack blkMd.mRtime";
    goto LABEL_12;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0xAu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack blkMd.mHasInterpolationLength";
    goto LABEL_12;
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 1u);
  if (*(a2 + 2) != 1)
  {
    goto LABEL_6;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack blkMd.mInterpolationLength";
LABEL_12:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 0xBu);
LABEL_6:

  return APAC::MetadataBitStreamPacker::packRendererData(v5, (a2 + 4), a3);
}

uint64_t APAC::MetadataBitStreamPacker::packRendererData(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack rData.mNumParameters";
    goto LABEL_58;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0xBu);
  v6 = *(a2 + 2);
  if (v6 > 0x20)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "error in packing RendererData -- numParams > ParamIndexList size";
    goto LABEL_58;
  }

  if (*(a2 + 2))
  {
    v7 = (a2 + 4);
    do
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack rData.mParamIndexList[n]";
        goto LABEL_58;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v7, 0xBu);
      switch(*v7)
      {
        case 0:
          v8 = (a2 + 68);
          goto LABEL_43;
        case 1:
          result = APAC::MetadataBitStreamPacker::packObjectSpread(result, (a2 + 116), a3);
          goto LABEL_55;
        case 2:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mGain";
            goto LABEL_58;
          }

          v9 = *(a2 + 132);
          break;
        case 3:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mObjectDiffuse";
            goto LABEL_58;
          }

          v9 = *(a2 + 136);
          break;
        case 4:
          result = APAC::MetadataBitStreamPacker::packObjectChannelLock(result, a2 + 140, a3);
          goto LABEL_55;
        case 5:
          result = APAC::MetadataBitStreamPacker::packObjectDivergence(result, a2 + 148, a3);
          goto LABEL_55;
        case 6:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mIsScreenSizeAdaptationEnabled";
            goto LABEL_58;
          }

          v9 = *(a2 + 168);
LABEL_41:
          v10 = a3;
          v11 = 1;
          goto LABEL_54;
        case 7:
          result = APAC::MetadataBitStreamPacker::packZoneExclusion(result, (a2 + 172), a3);
          goto LABEL_55;
        case 8:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mBinauralizationPreset";
            goto LABEL_58;
          }

          v9 = *(a2 + 1037);
LABEL_47:
          v10 = a3;
          v11 = 3;
          goto LABEL_54;
        case 9:
          result = APAC::MetadataBitStreamPacker::packSceneReverb(result, (a2 + 568), a3);
          goto LABEL_55;
        case 0xA:
          result = APAC::MetadataBitStreamPacker::packPostProcReverb(result, (a2 + 780), a3);
          goto LABEL_55;
        case 0xB:
          result = APAC::MetadataBitStreamPacker::packRadiationPattern(result, (a2 + 792), a3);
          goto LABEL_55;
        case 0xC:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHPVirtualize.mBypass";
            goto LABEL_58;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1024), 1u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHPVirtualize.mHasDRR";
            goto LABEL_58;
          }

          result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1025), 1u);
          if (*(a2 + 1025) != 1)
          {
            goto LABEL_55;
          }

          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHPVirtualize.mDRR";
LABEL_58:
            *exception = v13;
            __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
          }

          v9 = *(a2 + 1028);
          break;
        case 0xD:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHeadLock.mHeadLocked";
            goto LABEL_58;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1032), 1u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHeadLock.mIsExternalized";
            goto LABEL_58;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1033), 1u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHeadLock.mReference";
            goto LABEL_58;
          }

          v9 = *(a2 + 1034);
          goto LABEL_47;
        case 0xE:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mParallax";
            goto LABEL_58;
          }

          v9 = *(a2 + 1035);
          goto LABEL_41;
        case 0xF:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mPreferredDoF.mDoFIndex";
            goto LABEL_58;
          }

          v9 = *(a2 + 1036);
          goto LABEL_47;
        case 0x10:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mFieldOfView.mAzimuth";
            goto LABEL_58;
          }

          v9 = *(a2 + 1040);
          break;
        case 0x11:
          result = APAC::MetadataBitStreamPacker::packMaskingZone(result, (a2 + 1044), a3);
          goto LABEL_55;
        case 0x12:
          v8 = (a2 + 1096);
          goto LABEL_43;
        case 0x13:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHOA_Radius";
            goto LABEL_58;
          }

          v9 = *(a2 + 1144);
          break;
        case 0x14:
          v8 = (a2 + 1148);
LABEL_43:
          result = APAC::MetadataBitStreamPacker::packPosition(result, v8, a3);
          goto LABEL_55;
        case 0x15:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHOA_InteriorOrExterior";
            goto LABEL_58;
          }

          v9 = *(a2 + 1196);
          goto LABEL_41;
        case 0x16:
          result = APAC::MetadataBitStreamPacker::packHOARenderingMatrix(result, (a2 + 1200), a3);
          goto LABEL_55;
        case 0x17:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mNFCRefDist";
            goto LABEL_58;
          }

          v9 = *(a2 + 1240);
          break;
        case 0x18:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mPropagationDelay.mProcessingIndex";
            goto LABEL_58;
          }

          v9 = *(a2 + 1244);
          v10 = a3;
          v11 = 2;
          goto LABEL_54;
        default:
          goto LABEL_55;
      }

      v10 = a3;
      v11 = 32;
LABEL_54:
      result = AT::TBitstreamWriter<unsigned int>::PutBits(v10, v9, v11);
LABEL_55:
      ++v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packPosition(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack pos.mPositionPresent";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack pos.mIsCartesian";
      goto LABEL_21;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
    if (a2[1] == 1)
    {
      v5 = 0;
      while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *&a2[v5 + 20], 0x20u);
        v5 += 4;
        if (v5 == 12)
        {
          goto LABEL_13;
        }
      }

      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack pos.mCoordinate[n]";
LABEL_21:
      *exception = v10;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack pos.mAzimuth";
      goto LABEL_21;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack pos.mElevation";
      goto LABEL_21;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack pos.mRadius";
      goto LABEL_21;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
  }

LABEL_13:
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack pos.mRotationPresent";
    goto LABEL_21;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[16], 1u);
  if (a2[16] == 1)
  {
    v7 = 0;
    v8 = a2 + 32;
    while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
    {
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *&v8[v7], 0x20u);
      v7 += 4;
      if (v7 == 16)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack pos.mQuaternion[n]";
    goto LABEL_21;
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packObjectSpread(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spread.mIsCartesian";
    goto LABEL_16;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spread.mWidth";
    goto LABEL_16;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spread.mHeight";
    goto LABEL_16;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spread.mHasDepth";
    goto LABEL_16;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spread.mDepth";
LABEL_16:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 3);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packObjectChannelLock(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack chLock.mHasMaxDistance";
    goto LABEL_10;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 1u);
  if (*(a2 + 1) != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack chLock.mMaxDistance";
LABEL_10:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 4);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packObjectDivergence(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack objDiv.mDivergence";
    goto LABEL_15;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack objDiv.mIsCartesian";
    goto LABEL_15;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 1u);
  v5 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (*(a2 + 4) == 1)
  {
    if (v5 > 31)
    {
      v6 = 12;
      goto LABEL_8;
    }

    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack objDiv.mPositionRange";
LABEL_15:
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v5 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack objDiv.mAzimuthRange";
    goto LABEL_15;
  }

  v6 = 16;
LABEL_8:
  v7 = *(a2 + v6);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packZoneExclusion(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = "Cannot pack zoneExclusion.mIsZoneDefined";
    goto LABEL_45;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = "Cannot pack zoneExclusion.mKeepPreviousZone";
    goto LABEL_45;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1])
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = "Cannot pack zoneExclusion.mIsCartesian";
    goto LABEL_45;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 1u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = "Cannot pack zoneExclusion.mNumZones";
LABEL_45:
    *exception = v14;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 4u);
  v6 = a2[3];
  if (a2[3])
  {
    v7 = (a2 + 36);
    v8 = a2 + 19;
    do
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v14 = "Cannot pack zoneExclusion.mUsePreDefinedZone[n]";
        goto LABEL_45;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(v8 - 15), 1u);
      if (*(v8 - 15) == 1)
      {
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
        {
          exception = __cxa_allocate_exception(8uLL);
          v14 = "Cannot pack zoneExclusion.mZoneIndex[n]";
          goto LABEL_45;
        }

        v9 = *v8;
        v10 = a3;
        v11 = 4;
      }

      else
      {
        v12 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
        if (a2[2] == 1)
        {
          if (v12 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMinX";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v7, 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMaxX";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[1], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMinY";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[2], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMaxY";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[3], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMinZ";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[4], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMaxZ";
            goto LABEL_45;
          }

          v9 = v7[5];
        }

        else
        {
          if (v12 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.spherical.mMinAzimuth";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v7, 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.spherical.mMaxAzimuth";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[1], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.spherical.mMinElevation";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[2], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.spherical.mMaxElevation";
            goto LABEL_45;
          }

          v9 = v7[3];
        }

        v10 = a3;
        v11 = 32;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(v10, v9, v11);
      ++v8;
      v7 += 6;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packMaskingZone(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack maskingZone.mIsZoneDefined";
    goto LABEL_44;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack maskingZone.mUsePreDefinedZone";
    goto LABEL_44;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  v6 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (a2[1] != 1)
  {
    if (v6 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = "Cannot pack maskingZone.mIsCartesian";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 1u);
      v10 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
      if (a2[2] == 1)
      {
        if (v10 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v12 = "Cannot pack maskingZone.mZone.mMinX";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack maskingZone.mZone.mMaxX";
          }

          else
          {
            AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v12 = "Cannot pack maskingZone.mZone.mMinY";
            }

            else
            {
              AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
              if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
              {
                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack maskingZone.mZone.mMaxY";
              }

              else
              {
                AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
                if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
                {
                  exception = __cxa_allocate_exception(8uLL);
                  v12 = "Cannot pack maskingZone.mZone.mMinZ";
                }

                else
                {
                  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0x20u);
                  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
                  {
                    v7 = *(a2 + 6);
LABEL_24:
                    v8 = a3;
                    v9 = 32;
                    goto LABEL_25;
                  }

                  exception = __cxa_allocate_exception(8uLL);
                  v12 = "Cannot pack maskingZone.mZone.mMaxZ";
                }
              }
            }
          }
        }
      }

      else if (v10 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v12 = "Cannot pack maskingZone.mZone.mMinAzimuth";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 7), 0x20u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v12 = "Cannot pack maskingZone.mZone.mMaxAzimuth";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 8), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack maskingZone.mZone.mMinElevation";
          }

          else
          {
            AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 9), 0x20u);
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v12 = "Cannot pack maskingZone.mZone.mMaxElevation";
            }

            else
            {
              AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 10), 0x20u);
              if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
              {
                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack maskingZone.mZone.mMinDistance";
              }

              else
              {
                AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 11), 0x20u);
                if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
                {
                  v7 = *(a2 + 12);
                  goto LABEL_24;
                }

                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack maskingZone.mZone.mMaxDistance";
              }
            }
          }
        }
      }
    }

LABEL_44:
    *exception = v12;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack maskingZone.mZoneIndex";
    goto LABEL_44;
  }

  v7 = a2[3];
  v8 = a3;
  v9 = 4;
LABEL_25:

  return AT::TBitstreamWriter<unsigned int>::PutBits(v8, v7, v9);
}

uint64_t APAC::MetadataBitStreamPacker::packSceneReverb(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack reverb.mReverbProcIndex";
    goto LABEL_28;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  v6 = *a2;
  if (v6 != 3)
  {
    if (v6 != 2)
    {
      if (v6 != 1)
      {
        return result;
      }

      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
      {
        v7 = *(a2 + 1);
LABEL_12:
        v8 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 0xAu);

        return APAC::MetadataBitStreamPacker::packParametricReverb(v8, (a2 + 144), a3);
      }

      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack reverb.mAUSMReverbPreset";
      goto LABEL_28;
    }

    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 1)
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 2u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 8)
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 9u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 >= 9)
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 9u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
          {
            v7 = *(a2 + 5);
            goto LABEL_12;
          }

          exception = __cxa_allocate_exception(8uLL);
          v11 = "Cannot pack reverb.mFallbackCustomeIR.mAUSMReverbPreset";
LABEL_28:
          *exception = v11;
          __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
        }

LABEL_25:
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack reverb.mCustomData_EntryID";
        goto LABEL_28;
      }

LABEL_24:
      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack reverb.mCustomData_TableID";
      goto LABEL_28;
    }

LABEL_23:
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack reverb.mDataLocationIndex";
    goto LABEL_28;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    goto LABEL_23;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    goto LABEL_24;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 9u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    goto LABEL_25;
  }

  v9 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 9u);

  return APAC::MetadataBitStreamPacker::packFallbackRoomGeometry(v9, a2 + 3, a3);
}

{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sR.reverbProcIndex";
    goto LABEL_19;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  v6 = *a2;
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      return result;
    }

    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
    {
      v7 = *(a2 + 1);
      goto LABEL_9;
    }

    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sR.reverbProcPreset";
LABEL_19:
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sR.codeBookID";
    goto LABEL_19;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[5], 4u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sR.IRFilterID";
    goto LABEL_19;
  }

  v7 = *(a2 + 3);
LABEL_9:
  AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 0xAu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sR.mixLevel";
    goto LABEL_19;
  }

  v8 = a2[4];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v8, 7u);
}

uint64_t APAC::MetadataBitStreamPacker::packPostProcReverb(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack ppReverb.mReverbProcIndex";
    goto LABEL_13;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack ppReverb.mEarlyReflectionTimeProvided";
    goto LABEL_13;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack ppReverb.mEarlyReflectionTime";
LABEL_13:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 1);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packRadiationPattern(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack radPattern.mAuSMProcIndex";
    goto LABEL_25;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  v6 = *a2;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
      {
        v7 = *(a2 + 1);
        goto LABEL_18;
      }

      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack radPattern.mSourceType";
    }

    else
    {
      if (v6 != 2)
      {
        return result;
      }

      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
      {
        exception = __cxa_allocate_exception(8uLL);
        v9 = "Cannot pack radPattern.mDataLocationIndex";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 2u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
        {
          exception = __cxa_allocate_exception(8uLL);
          v9 = "Cannot pack radPattern.mCustomData_TableID";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 9u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 9)
          {
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack radPattern.mCustomData_EntryID";
          }

          else
          {
            AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 9u);
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
            {
              v7 = *(a2 + 5);
LABEL_18:

              return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 0xAu);
            }

            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack radPattern.mFallbackCustomIR.mSourceType";
          }
        }
      }
    }

LABEL_25:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 == 3)
  {

    return APAC::MetadataBitStreamPacker::packParametricRadiationPattern(result, a2 + 16, a3);
  }

  else if (v6 == 4)
  {

    return APAC::MetadataBitStreamPacker::packHOADirectivityModel(result, a2 + 22, a3);
  }

  return result;
}

{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack rP.isPHASE";
    goto LABEL_13;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack rP.AuSMProcIndex";
    goto LABEL_13;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 3u);
  if (a2[1] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack rP.sourceType";
LABEL_13:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 1);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0xAu);
}

uint64_t APAC::MetadataBitStreamPacker::packHOARenderingMatrix(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack matrix.mDataLocationIndex";
    goto LABEL_19;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 2u);
  v6 = *a2;
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
      {
        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack matrix.mHOAOrder";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[6], 4u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v15 = "Cannot pack matrix.mChannelLayoutTag";
        }

        else
        {
          result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
          v8 = 0;
          v9 = 0;
          v10 = (a2[6] + 1) * (a2[6] + 1);
          v11 = *(a2 + 4);
          while (1)
          {
            v12 = v8;
            v13 = v11;
            if (v11)
            {
              break;
            }

LABEL_16:
            ++v9;
            v8 += 4 * v11;
            if (v9 == v10)
            {
              return result;
            }
          }

          while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
          {
            result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 2) + v12), 0x20u);
            v12 += 4;
            if (!--v13)
            {
              goto LABEL_16;
            }
          }

          exception = __cxa_allocate_exception(8uLL);
          v15 = "Cannot pack matrix.mCoeff[idx]";
        }
      }

LABEL_19:
      *exception = v15;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    if (*a2)
    {
      return result;
    }
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack matrix.mCustomData_TableID";
    goto LABEL_19;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 9u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack matrix.mCustomData_EntryID";
    goto LABEL_19;
  }

  v7 = *(a2 + 2);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 9u);
}

uint64_t APAC::MetadataBitStreamPacker::packParametricRadiationPattern(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack parametric.mDirectivityModel";
    goto LABEL_33;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 5u);
  v6 = *a2;
  if (v6 == 3)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v15 = "Cannot pack parametric.mSphereRadius";
      goto LABEL_33;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 38), 0x20u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v15 = "Cannot pack parametric.mCapOpeningAngle";
      goto LABEL_33;
    }

    v13 = *(a2 + 39);

    return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v13, 0x20u);
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      return result;
    }

    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
    {
      v7 = *(a2 + 1);
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, (v7 - 1), 0xAu);
      if (v7)
      {
        v8 = 0;
        v9 = 4 * v7;
        while (1)
        {
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 17)
          {
            goto LABEL_27;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 1) + v8) - 1, 0x12u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v15 = "Cannot pack parametric.mPattern[sb]";
            goto LABEL_33;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 4) + v8), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            break;
          }

          result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 7) + v8), 0x20u);
          v8 += 4;
          if (v9 == v8)
          {
            return result;
          }
        }

        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack parametric.mSharpness[sb]";
        goto LABEL_33;
      }

      return result;
    }

LABEL_35:
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack tmpInt";
    goto LABEL_33;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 17)
  {
    goto LABEL_35;
  }

  v10 = *(a2 + 1);
  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v10 - 1, 0x12u);
  if (v10)
  {
    v11 = 0;
    v12 = 4 * v10;
    while (1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 17)
      {
LABEL_27:
        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack tmpFreq";
        goto LABEL_33;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 1) + v11) - 1, 0x12u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack parametric.mInnerAngle[sb]";
        goto LABEL_33;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 10) + v11), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack parametric.mOuterAngle[sb]";
        goto LABEL_33;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 13) + v11), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        break;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 16) + v11), 0x20u);
      v11 += 4;
      if (v12 == v11)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack parametric.mOuterGain[sb]";
LABEL_33:
    *exception = v15;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packHOADirectivityModel(uint64_t a1, void *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack tmpUI10";
    goto LABEL_13;
  }

  v5 = *a2;
  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, (v5 - 1), 0xAu);
  if (v5)
  {
    v7 = 0;
    v8 = 2 * v5;
    while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 12)
    {
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, (*(a2[1] + v7) - 1), 0xDu);
      v7 += 2;
      if (v8 == v7)
      {
        goto LABEL_6;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack tmpUI13";
LABEL_13:
    *exception = v13;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

LABEL_6:
  v9 = a2[4];
  if (a2[5] != v9)
  {
    v10 = 0;
    v11 = 1;
    while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
    {
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(v9 + 4 * v10), 0x20u);
      v10 = v11;
      v9 = a2[4];
      ++v11;
      if (v10 >= (a2[5] - v9) >> 2)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack hoaModel.mCoeffs[n]";
    goto LABEL_13;
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packParametricReverb(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mPreDelay.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 1u);
  if (*(a2 + 4) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mPreDelay.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mRT60.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 12), 1u);
  if (*(a2 + 12) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mRT60.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 8), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mWetDryMix.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 20), 1u);
  if (*(a2 + 20) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mWetDryMix.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 16), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mReverbWidth.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 28), 1u);
  if (*(a2 + 28) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mReverbWidth.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 24), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mHFDampingCutoffFreq.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 36), 1u);
  if (*(a2 + 36) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mHFDampingCutoffFreq.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 32), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mEarlyReflectionOnly";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 40), 1u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mEarlyReflectionLevel.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 48), 1u);
  if (*(a2 + 48) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mEarlyReflectionLevel.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 44), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mEarlyReflectionTime.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 56), 1u);
  if (*(a2 + 56) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mEarlyReflectionTime.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 52), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mLateReverbLevel.mHasData";
    goto LABEL_54;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 64), 1u);
  if (*(a2 + 64) != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mLateReverbLevel.mValue";
LABEL_54:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 60);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packFallbackRoomGeometry(uint64_t a1, int *a2, _DWORD *a3)
{
  v5 = a2 + 11;
  v6 = 10;
  do
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack fallbackRoomGeometry.mOctaveBandRt60[n]";
      goto LABEL_14;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(v5 - 10), 0x20u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack fallbackRoomGeometry.mOctaveBandEarlyRoomEnergy[n]";
      goto LABEL_14;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v5, 0x20u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack fallbackRoomGeometry.mOctaveBandLateRoomEnergy[n]";
      goto LABEL_14;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, v5[10], 0x20u);
    ++v5;
    --v6;
  }

  while (v6);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 32)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack fallbackRoomGeometry.mRoomVolume";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[31], 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack fallbackRoomGeometry.mRoomSurface";
LABEL_14:
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v7 = a2[32];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packAuthoringInformation(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mAuthoringToolNameIndex";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mAuthoringToolVersion.mMajor";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mAuthoringToolVersion.mMinor";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mAuthoringToolVersion.mPatch";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mRendererNameIndex";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 3u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mRendererVersion.mMajor";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[5], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mRendererVersion.mMinor";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[6], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mRendererVersion.mPatch";
LABEL_20:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v5 = a2[7];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v5, 8u);
}

uint64_t APAC::MetadataBitStreamPacker::packReferenceScreen(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mAspectRatio";
    goto LABEL_26;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mIsCartesian";
    goto LABEL_26;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 1u);
  v5 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (*(a2 + 4) != 1)
  {
    if (v5 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack refScreen.mScreenCentrePosition.mAzimuth";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 20), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v8 = "Cannot pack refScreen.mScreenCentrePosition.mElevation";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 24), 0x20u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v8 = "Cannot pack refScreen.mScreenCentrePosition.mRadius";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 28), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
          {
            v6 = 36;
            goto LABEL_14;
          }

          exception = __cxa_allocate_exception(8uLL);
          v8 = "Cannot pack refScreen.mScreenWidth.mAzimuth";
        }
      }
    }

LABEL_26:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v5 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mScreenCentrePosition.mX";
    goto LABEL_26;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 8), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mScreenCentrePosition.mY";
    goto LABEL_26;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 12), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mScreenCentrePosition.mZ";
    goto LABEL_26;
  }

  v6 = 32;
  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 16), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mScreenWidth.mX";
    goto LABEL_26;
  }

LABEL_14:
  v9 = *(a2 + v6);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v9, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packDBMD(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack dbmd.mSurroundDownmix";
    goto LABEL_25;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack dbmd.mSurroundToStereoDownmix";
    goto LABEL_25;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack dbmd.mPositionAdjustment";
    goto LABEL_25;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 3u);
  v5 = 0;
  v6 = a2 + 3;
  v7 = (a2 + 16);
  do
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v13 = "Cannot pack dbmd.mIsAutoTrim[cfg]";
      goto LABEL_25;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6[v5], 1u);
    if ((v6[v5] & 1) == 0)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack dbmd.mMixingGains[cfg].mFrontGain";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(v7 - 1), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack dbmd.mMixingGains[cfg].mBackGain";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v7, 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack dbmd.mMixingGains[cfg].mTopGain";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[1], 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack dbmd.mMixingGains[cfg].mEarLevelBalance";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[2], 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack dbmd.mMixingGains[cfg].mHeightBalance";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[3], 0x20u);
    }

    ++v5;
    v7 += 5;
  }

  while (v5 != 9);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack tmp";
LABEL_25:
    *exception = v13;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v8 = a2[192];
  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, (v8 - 1), 7u);
  if (v8)
  {
    v10 = a2 + 193;
    do
    {
      v11 = *v10++;
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v11, 1u);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packBinauralization(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack binaural.mIsDirectBinauralization";
    goto LABEL_27;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack binaural.mChannelLayoutTag";
      goto LABEL_27;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack binaural.mHRTFType";
    goto LABEL_27;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[8], 3u);
  v6 = a2[8];
  if (v6 == 2)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack binaural.mDataLocationIndex";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[14], 2u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
      {
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack binaural.mCustomData_TableID";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 9u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
        {
          exception = __cxa_allocate_exception(8uLL);
          v11 = "Cannot pack binaural.mCustomData_EntryID";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 6), 9u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 2)
          {
            v7 = 3;
            v8 = 15;
            goto LABEL_15;
          }

          exception = __cxa_allocate_exception(8uLL);
          v11 = "Cannot pack binaural.mFallbackCustomHRTF.mHRTFType";
        }
      }
    }

LABEL_27:
    *exception = v11;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack binaural.mPredefinedIR_ID";
    goto LABEL_27;
  }

  v7 = 8;
  v8 = 9;
LABEL_15:
  v9 = a2[v8];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v9, v7);
}

{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack binaural.isDirectBinauralization";
    goto LABEL_16;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if ((*a2 & 1) == 0)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack binaural.channelLayoutTag";
      goto LABEL_16;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack binaural.HRTFType";
    goto LABEL_16;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[8], 3u);
  if (a2[8] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack binaural.codeBookID";
LABEL_16:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = a2[9];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 4u);
}

uint64_t APAC::MetadataBitStreamPacker::packSPAD(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spad.mDataLocationIndex";
    goto LABEL_10;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spad.mCustomData_TableID";
    goto LABEL_10;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 9u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spad.mCustomData_EntryID";
LABEL_10:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 9u);

  return APAC::MetadataBitStreamPacker::packFallbackSPAD(v5, a2 + 8, a3);
}

uint64_t APAC::MetadataBitStreamPacker::packDistanceAttenuation(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack distAttnParams.mAttnLawIndex";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack distAttnParams.mDistNorm";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack distAttnParams.mRefDistance";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack distAttnParams.mMaxDistance";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack distAttnParams.mAttnNormIndex";
LABEL_14:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v5 = a2[16];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v5, 1u);
}

uint64_t APAC::MetadataBitStreamPacker::packGenericRenderingConfig(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mHasPreset";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  v5 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (*a2 == 1)
  {
    if (v5 > 10)
    {
      v6 = *(a2 + 1);
      v7 = a3;
      v8 = 11;
      goto LABEL_11;
    }

    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mPresetIndex";
LABEL_21:
    *exception = v11;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v5 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mDataLocationIndex";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mCustomData_TableID";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 9u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mCustomData_EntryID";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 9u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mFallbackIndex";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0xBu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 16)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mDataByteSize";
    goto LABEL_21;
  }

  v6 = *(a2 + 3);
  v7 = a3;
  v8 = 17;
LABEL_11:

  return AT::TBitstreamWriter<unsigned int>::PutBits(v7, v6, v8);
}

uint64_t APAC::MetadataBitStreamPacker::packChannelBedHeadphoneMetadata(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2 - 1, 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1] - 1, 8u);
  if (a2[1])
  {
    v5 = 0;
    do
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 1) + v5++), 3u);
      v6 = a2[1];
    }

    while (v5 < v6);
    v7 = -3 * v6 - 8;
  }

  else
  {
    v7 = -8;
  }

  v8 = v7 + 8 * *a2;

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, 0, v8);
}

uint64_t APAC::MetadataBitStreamPacker::packFallbackSPAD(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v5 = 2;
  do
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack fallback.mDeviceID[n]";
      goto LABEL_25;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[v5], 8u);
    if (a2[v5])
    {
      v6 = v5 == 9;
    }

    else
    {
      v6 = 1;
    }

    ++v5;
  }

  while (!v6);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack fallback.mOrientation";
    goto LABEL_25;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 4u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack fallback.mNumMicrophones";
    goto LABEL_25;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 8u);
  v8 = a2[1];
  if (a2[1])
  {
    v9 = 0;
    while (1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
      {
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack fallback.mMicType[n]";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 2) + v9), 4u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack fallback.mMicPosAzimuth[n]";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 5) + 4 * v9), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack fallback.mMicPosElevation[n]";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 8) + 4 * v9), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack fallback.mMicPosRadius[n]";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 11) + 4 * v9), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
      {
        break;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 14) + v9++), 3u);
      if (v8 == v9)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack fallback.mMicDirection[n]";
LABEL_25:
    *exception = v11;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packGroupDynamicData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack grpDD.hasData";
    goto LABEL_10;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack grpDD.groupCount";
LABEL_10:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 7u);
  if (a2[1])
  {
    v6 = 0;
    v7 = a2 + 4;
    do
    {
      result = APAC::MetadataBitStreamPacker::packDynamicGroup(result, v7, a3);
      ++v6;
      v7 += 256;
    }

    while (v6 < a2[1]);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packSceneComponenentDynamicData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack scDD.ASCCount";
LABEL_15:
    *exception = v15;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (*a2)
  {
    v6 = 0;
    v7 = a2 + 8728;
    for (i = a2; ; i += 9752)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
      {
        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack scDD.ASCData[n].ASCType";
        goto LABEL_15;
      }

      v9 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, i[4], 2u);
      v10 = i[4];
      if (v10 == 2)
      {
        break;
      }

      if (v10 == 1)
      {
        APAC::MetadataBitStreamPacker::packObjectMetadata(v9, i + 72, a3);
      }

      else if (!i[4])
      {
        v11 = i + 8;
LABEL_11:
        v9 = APAC::MetadataBitStreamPacker::packCommonDynamicMetadata(v9, v11, a3);
      }

      v12 = APAC::MetadataBitStreamPacker::packProprietaryDynamicData(v9, v7 - 1152, a3);
      v13 = APAC::MetadataBitStreamPacker::packExtendedData(v12, v7 - 1028, a3);
      result = APAC::MetadataBitStreamPacker::packExtendedData(v13, v7, a3);
      ++v6;
      v7 += 9752;
      if (v6 >= *a2)
      {
        return result;
      }
    }

    v11 = i + 40;
    goto LABEL_11;
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packExtendedData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack extData.hasData";
    goto LABEL_9;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack extData.chunkSize";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0xAu);
      v6 = *(a2 + 1);
      v7 = a2 + 4;
      v8 = v6 + 1;
      while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 7)
      {
        v9 = *v7++;
        result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v9, 8u);
        if (!--v8)
        {
          return result;
        }
      }

      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack extData.dataChunk[n]";
    }

LABEL_9:
    *exception = v11;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packCommonDynamicMetadata(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.hasADMMetadata";
    goto LABEL_31;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.absoluteDistance.hasData";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 1u);
  if (a2[4] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack cmmMd.absoluteDistance.distance";
      goto LABEL_31;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.gain.hasData";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[12], 1u);
  if (a2[12] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack cmmMd.gain.isDB";
      goto LABEL_31;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[13], 1u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack cmmMd.gain.gain";
      goto LABEL_31;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.headLocked";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[22], 1u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.headphoneVirtualize.hasData";
    goto LABEL_31;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[24], 1u);
  if (a2[24] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.headphoneVirtualize.bypass";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[25], 1u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.headphoneVirtualize.DRR";
LABEL_31:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 7);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

void APAC::MetadataBitStreamPacker::packObjectMetadata(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack objMd.objectID";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack objMd.numBlocks";
LABEL_14:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 4u);
  if (a2[1])
  {
    v5 = 0;
    v6 = a2 + 4;
    do
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v9 = "Cannot pack objMd.blockData[n].isNewBlk";
        goto LABEL_14;
      }

      v7 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v6, 1u);
      if (v5 && v5 < a2[1] - 1)
      {
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
        {
          exception = __cxa_allocate_exception(8uLL);
          v9 = "Cannot pack objMd.blockData[n].rtime";
          goto LABEL_14;
        }

        v7 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(v6 + 1), 0xAu);
      }

      APAC::MetadataBitStreamPacker::packBlockData(v7, v6, 513, a3);
      ++v5;
      v6 += 500;
    }

    while (v5 < a2[1]);
  }
}

uint64_t APAC::MetadataBitStreamPacker::packProprietaryDynamicData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack pDD.hasData";
    goto LABEL_30;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack pDD.numParameters";
LABEL_30:
    *exception = v13;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 5u);
  if (a2[1])
  {
    v6 = 0;
    v7 = a2 + 90;
    do
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack pDD.paramIndexList[n]";
        goto LABEL_30;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[v6], 5u);
      v8 = v7[v6];
      if (v8 > 2)
      {
        switch(v8)
        {
          case 3u:
            result = APAC::MetadataBitStreamPacker::packParametricReverb(result, a2 + 48, a3);
            break;
          case 4u:
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
            {
              exception = __cxa_allocate_exception(8uLL);
              v13 = "Cannot pack pDD.headLocked";
              goto LABEL_30;
            }

            v9 = a2[88];
LABEL_25:
            v10 = a3;
            v11 = 1;
LABEL_26:
            result = AT::TBitstreamWriter<unsigned int>::PutBits(v10, v9, v11);
            break;
          case 5u:
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
            {
              exception = __cxa_allocate_exception(8uLL);
              v13 = "Cannot pack pDD.parallax";
              goto LABEL_30;
            }

            v9 = a2[89];
            goto LABEL_25;
        }
      }

      else
      {
        if (!v7[v6])
        {
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pDD.lookDirection.azimuth";
            goto LABEL_30;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pDD.lookDirection.elevation";
            goto LABEL_30;
          }

          v9 = *(a2 + 2);
          v10 = a3;
          v11 = 32;
          goto LABEL_26;
        }

        if (v8 == 1)
        {
          result = APAC::MetadataBitStreamPacker::packAudioSceneMaskingZone(result, a2 + 12, a3);
        }

        else if (v8 == 2)
        {
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pDD.preferredDoF";
            goto LABEL_30;
          }

          v9 = a2[44];
          v10 = a3;
          v11 = 3;
          goto LABEL_26;
        }
      }

      ++v6;
    }

    while (v6 < a2[1]);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packAudioSceneMaskingZone(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack mZ.isZoneDefined";
    goto LABEL_45;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack mZ.keepPreviousZone";
    goto LABEL_45;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1])
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack mZ.usePreDefinedZone";
    goto LABEL_45;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 1u);
  v6 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (a2[2] != 1)
  {
    if (v6 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = "Cannot pack mZ.cartesian";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 1u);
      v10 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
      if (a2[3] == 1)
      {
        if (v10 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v12 = "Cannot pack mZ.co_tu.cartesian.minX";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack mZ.co_tu.cartesian.maxX";
          }

          else
          {
            AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v12 = "Cannot pack mZ.co_tu.cartesian.minY";
            }

            else
            {
              AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
              if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
              {
                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack mZ.co_tu.cartesian.maxY";
              }

              else
              {
                AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0x20u);
                if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
                {
                  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 6), 0x20u);
                  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
                  {
                    exception = __cxa_allocate_exception(8uLL);
                    v12 = "Cannot pack mZ.co_tu.cartesian.maxZ";
                    goto LABEL_45;
                  }

LABEL_25:
                  v7 = *(a2 + 7);
                  v8 = a3;
                  v9 = 32;
                  goto LABEL_26;
                }

                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack mZ.co_tu.cartesian.minZ";
              }
            }
          }
        }
      }

      else if (v10 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v12 = "Cannot pack mZ.co_tu.spherical.minAzimuth";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v12 = "Cannot pack mZ.co_tu.spherical.maxAzimuth";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack mZ.co_tu.spherical.minElevation";
          }

          else
          {
            AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v12 = "Cannot pack mZ.co_tu.spherical.maxElevation";
            }

            else
            {
              AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0x20u);
              if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
              {
                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack mZ.co_tu.spherical.minDistance";
              }

              else
              {
                AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 6), 0x20u);
                if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
                {
                  goto LABEL_25;
                }

                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack mZ.co_tu.spherical.maxDistance";
              }
            }
          }
        }
      }
    }

LABEL_45:
    *exception = v12;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack mZ.zoneIndex";
    goto LABEL_45;
  }

  v7 = a2[4];
  v8 = a3;
  v9 = 4;
LABEL_26:

  return AT::TBitstreamWriter<unsigned int>::PutBits(v8, v7, v9);
}

uint64_t APAC::MetadataBitStreamPacker::packParametricReverb(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasPreDelay";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.preDelayMSec";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasEarlyReflectionLevel";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.earlyReflectionLevel";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasRT60";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 1u);
  if (a2[2] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.RT60Msec";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasWetDryMix";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 1u);
  if (a2[3] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.wetDryMix";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasReverbWidth";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 1u);
  if (a2[4] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.reverbWidth";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 6), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasHighFrequencyDamping";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[5], 1u);
  if (a2[5] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.highFrequencyDamping";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 7), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasEarlyReflectionOnly";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[6], 1u);
  if (a2[6] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.earlyReflectionOnly";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[32], 1u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasEarlyReflectionTime";
    goto LABEL_52;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[7], 1u);
  if (a2[7] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.earlyReflectionTimeMsec";
LABEL_52:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 9);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

void APAC::MetadataBitStreamPacker::packBlockData(uint64_t a1, uint64_t a2, __int16 a3, _DWORD *a4)
{
  if (*a2 != 1)
  {
    return;
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.cartesian";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 4), 1u);
  v7 = a4[7] + 8 * (a4[4] - a4[2]) - 32;
  if (*(a2 + 4) == 1)
  {
    if (v7 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.cartesian.X";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 8), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.cartesian.Y";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 12), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.cartesian.Z";
      goto LABEL_156;
    }
  }

  else
  {
    if (v7 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.spherical.azimuth";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 8), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.spherical.elevation";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 12), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.spherical.distance";
      goto LABEL_156;
    }
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 16), 0x20u);
  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.hasADMMetadata";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 20), 1u);
  if (*(a2 + 20) != 1)
  {
    return;
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.absoluteDistance.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 24), 1u);
  if (*(a2 + 24) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.absoluteDistance.distance";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 28), 0x20u);
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.spread.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 32), 1u);
  if (*(a2 + 32) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.spread.width";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 36), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.spread.height";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 40), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.spread.depth";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 44), 0x20u);
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.gain.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 48), 1u);
  if (*(a2 + 48) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.gain.isDB";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 49), 1u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.gain.gain";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 52), 0x20u);
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.diffuse.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 56), 1u);
  if (*(a2 + 56) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.diffuse.diffuse";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 60), 0x20u);
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.channelLock.channelLock";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 64), 1u);
  if (*(a2 + 64) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.channelLock.hasMaxDistance";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 65), 1u);
    if (*(a2 + 65) == 1)
    {
      if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v9 = "Cannot pack blkData.channelLock.maxDistance";
        goto LABEL_156;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 68), 0x20u);
    }
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.objectDivergence.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 72), 1u);
  if (*(a2 + 72) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.objectDivergence.objectDivergence";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 76), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.objectDivergence.positionOrAzimuthRange";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 88), 0x20u);
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.screenRef";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 92), 1u);
  v10 = a3;
  v12 = a3 == 1;
  v11 = HIBYTE(a3);
  v12 = v12 && v11 == 1;
  v13 = v12;
  if (v12)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.importance.hasData";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 93), 1u);
    if (*(a2 + 93) == 1)
    {
      if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 3)
      {
        exception = __cxa_allocate_exception(8uLL);
        v9 = "Cannot pack blkData.importance.importance";
        goto LABEL_156;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 94), 4u);
    }
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.headLocked";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 95), 1u);
  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.headphoneVirtualize.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 96), 1u);
  if (*(a2 + 96) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.headphoneVirtualize.bypass";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 97), 1u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.headphoneVirtualize.DRR";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 100), 0x20u);
  }

  if (v13)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 > 3)
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 106), 4u);
      if (*(a2 + 106))
      {
        v14 = 0;
        for (i = (a2 + 140); ; i += 6)
        {
          v16 = a4[7] + 8 * (a4[4] - a4[2]) - 32;
          if (*(a2 + 4) == 1)
          {
            if (v16 <= 31)
            {
              goto LABEL_111;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, *i, 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_116;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[1], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_110;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[2], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_115;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[3], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_114;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[4], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_119;
            }

            v17 = (a2 + 140 + 24 * v14 + 20);
          }

          else
          {
            if (v16 <= 31)
            {
              goto LABEL_113;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, *i, 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_118;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[1], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_112;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[2], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_117;
            }

            v17 = i + 3;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, *v17, 0x20u);
          if (++v14 >= *(a2 + 106))
          {
            return;
          }
        }
      }

      return;
    }

    goto LABEL_138;
  }

  if (v10 != 1 || v11 != 2)
  {
    return;
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.zoneExclusion.isZoneDefined";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 104), 1u);
  if (*(a2 + 104) != 1)
  {
    return;
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.zoneExclusion.keepPreviousZone";
LABEL_156:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 105), 1u);
  if (*(a2 + 105))
  {
    return;
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 3)
  {
LABEL_138:
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.zoneExclusion.numZones";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 106), 4u);
  if (*(a2 + 106))
  {
    v18 = (a2 + 140);
    v19 = a2 + 160;
    v20 = 122;
    do
    {
      if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v9 = "Cannot pack blkData.zoneExclusion.usePreDefinedZone[w]";
        goto LABEL_156;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(v19 + v20 - 175), 1u);
      if (*(v19 + v20 - 175) == 1)
      {
        if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 3)
        {
          exception = __cxa_allocate_exception(8uLL);
          v9 = "Cannot pack blkData.zoneExclusion.zoneIndex[w]";
          goto LABEL_156;
        }

        v21 = *(a2 + v20);
        v22 = a4;
        v23 = 4;
      }

      else
      {
        v24 = a4[7] + 8 * (a4[4] - a4[2]) - 32;
        if (*(a2 + 4) == 1)
        {
          if (v24 <= 31)
          {
LABEL_111:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.minX";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, *v18, 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_116:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.maxX";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[1], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_110:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.minY";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[2], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_115:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.maxY";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[3], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_114:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.minZ";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[4], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_119:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.maxZ";
            goto LABEL_156;
          }

          v21 = v18[5];
        }

        else
        {
          if (v24 <= 31)
          {
LABEL_113:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.spherical.minAzimuth";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, *v18, 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_118:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.spherical.maxAzimuth";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[1], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_112:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.spherical.minElevation";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[2], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_117:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.spherical.maxElevation";
            goto LABEL_156;
          }

          v21 = v18[3];
        }

        v22 = a4;
        v23 = 32;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(v22, v21, v23);
      v25 = v20 - 121;
      ++v20;
      v18 += 6;
    }

    while (v25 < *(a2 + 106));
  }
}

uint64_t APAC::MetadataBitStreamPacker::packDynamicGroup(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.groupID";
    goto LABEL_17;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.isGlobal";
    goto LABEL_17;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1])
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.memberCount";
    goto LABEL_17;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.hasConjunctMembers";
    goto LABEL_17;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 1u);
  if ((a2[3] & 1) == 0)
  {
    if (!a2[2])
    {
      return result;
    }

    v7 = 0;
    while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 6)
    {
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[v7++ + 5], 7u);
      if (v7 >= a2[2])
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.ASCIDList[n]";
LABEL_17:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.startASCID";
    goto LABEL_17;
  }

  v6 = a2[4];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 7u);
}

uint64_t APAC::MetadataBitStreamPacker::packReferenceScreen(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack refScreen.hasData";
    goto LABEL_10;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack refScreen.APCount";
LABEL_10:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 4u);
  if (a2[1])
  {
    v6 = 0;
    v7 = a2 + 4;
    do
    {
      result = APAC::MetadataBitStreamPacker::packScreenData(result, v7, a3);
      ++v6;
      v7 += 28;
    }

    while (v6 < a2[1]);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packCodeBookData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot pack cbD.hasData";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v4 = *a2;

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v4, 1u);
}

uint64_t APAC::MetadataBitStreamPacker::packGroupStaticData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack grpSD.hasData";
    goto LABEL_10;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack grpSD.groupCount";
LABEL_10:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 7u);
  if (a2[1])
  {
    v6 = 0;
    v7 = a2 + 4;
    do
    {
      result = APAC::MetadataBitStreamPacker::packStaticGroup(result, v7, a3);
      ++v6;
      v7 += 216;
    }

    while (v6 < a2[1]);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packSceneComponenentStaticData(uint64_t a1, _BYTE *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot pack scSD.ASCCount";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (*a2)
  {
    v6 = 0;
    v7 = a2 + 4;
    do
    {
      result = APAC::MetadataBitStreamPacker::packASCStaticData(result, v7, a3);
      ++v6;
      v7 += 1144;
    }

    while (v6 < *a2);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packASCStaticData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.sceneComponentID";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.sceneComponentType";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.startChannelIndex";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.rendererSubType";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 3u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.rendererVersion";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.channelLayoutTag";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.HOAOrder";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[12], 3u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.HOAOrdering";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[13], 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.HOANormalization";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[14], 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.NFCRefDist.hasData";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[16], 1u);
  if (a2[16] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack sD.NFCRefDist.nfcRefDist";
LABEL_30:
      *exception = v10;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.screenRef";
    goto LABEL_30;
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[24], 1u);
  v6 = APAC::MetadataBitStreamPacker::packProprietaryStaticData(v5, a2 + 28, a3);
  v7 = APAC::MetadataBitStreamPacker::packDolbyStaticData(v6, a2 + 112, a3);

  return APAC::MetadataBitStreamPacker::packExtendedData(v7, a2 + 114, a3);
}

uint64_t APAC::MetadataBitStreamPacker::packProprietaryStaticData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack pSD.hasData";
    goto LABEL_41;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack pSD.numParameters";
LABEL_41:
    *exception = v13;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 5u);
  if (a2[1])
  {
    v6 = 0;
    v7 = a2 + 52;
    while (1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack pSD.paramIndexList[n]";
        goto LABEL_41;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[v6], 5u);
      v8 = v7[v6];
      if (v8 < 4)
      {
        break;
      }

      if (v7[v6] <= 5u)
      {
        if (v8 != 4)
        {
          if (v8 == 5)
          {
            result = APAC::MetadataBitStreamPacker::packRadiationPattern(result, a2 + 16, a3);
          }

          goto LABEL_38;
        }

        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
        {
          exception = __cxa_allocate_exception(8uLL);
          v13 = "Cannot pack pSD.postProcReverbIndex";
          goto LABEL_41;
        }

        v9 = a2[14];
LABEL_34:
        v10 = a3;
        v11 = 2;
LABEL_37:
        result = AT::TBitstreamWriter<unsigned int>::PutBits(v10, v9, v11);
        goto LABEL_38;
      }

      switch(v8)
      {
        case 6u:
          result = APAC::MetadataBitStreamPacker::packBinauralization(result, a2 + 24, a3);
          break;
        case 7u:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pSD.HCFilterCodeBookID";
            goto LABEL_41;
          }

          v9 = a2[36];
          v10 = a3;
          v11 = 4;
          goto LABEL_37;
        case 8u:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pSD.hoaRotation.pitch";
            goto LABEL_41;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 10), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pSD.hoaRotation.yaw";
            goto LABEL_41;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 11), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pSD.hoaRotation.roll";
            goto LABEL_41;
          }

          v9 = *(a2 + 12);
          v10 = a3;
          v11 = 32;
          goto LABEL_37;
      }

LABEL_38:
      if (++v6 >= a2[1])
      {
        return result;
      }
    }

    if (v7[v6] <= 1u)
    {
      if (v7[v6])
      {
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
        {
          exception = __cxa_allocate_exception(8uLL);
          v13 = "Cannot pack pSD.isCSPhase";
          goto LABEL_41;
        }

        v9 = a2[3];
      }

      else
      {
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
        {
          exception = __cxa_allocate_exception(8uLL);
          v13 = "Cannot pack pSD.isComplexSH";
          goto LABEL_41;
        }

        v9 = a2[2];
      }

      v10 = a3;
      v11 = 1;
      goto LABEL_37;
    }

    if (v8 != 2)
    {
      if (v8 == 3)
      {
        result = APAC::MetadataBitStreamPacker::packSceneReverb(result, a2 + 6, a3);
      }

      goto LABEL_38;
    }

    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      v13 = "Cannot pack pSD.productionCoordinate";
      goto LABEL_41;
    }

    v9 = a2[4];
    goto LABEL_34;
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packDolbyStaticData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pDolby.hasData";
    goto LABEL_10;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pDolby.headphoneRenderingData";
LABEL_10:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = a2[1];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 2u);
}

uint64_t APAC::MetadataBitStreamPacker::packStaticGroup(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.groupID";
    goto LABEL_17;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.isGlobal";
    goto LABEL_17;
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1])
  {
    goto LABEL_13;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.memberCount";
    goto LABEL_17;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.hasConjunctMembers";
    goto LABEL_17;
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 1u);
  if (a2[3])
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 6)
    {
      v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 7u);
      goto LABEL_13;
    }

    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.startASCID";
LABEL_17:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (a2[2])
  {
    v6 = 0;
    while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 6)
    {
      v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[v6++ + 5], 7u);
      if (v6 >= a2[2])
      {
        goto LABEL_13;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.ASCIDList[m]";
    goto LABEL_17;
  }

LABEL_13:

  return APAC::MetadataBitStreamPacker::packProprietaryStaticData(v5, a2 + 132, a3);
}

uint64_t APAC::MetadataBitStreamPacker::packScreenData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.hasData";
    goto LABEL_31;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.aspectRatio";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.cartesian";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  v6 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (a2[1] != 1)
  {
    if (v6 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack sD.screenCentrePosition.co_ut.spherical.azimuth";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v10 = "Cannot pack sD.screenCentrePosition.co_ut.spherical.elevation";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v10 = "Cannot pack sD.screenCentrePosition.co_ut.spherical.distance";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
          {
            v7 = 24;
            goto LABEL_17;
          }

          exception = __cxa_allocate_exception(8uLL);
          v10 = "Cannot pack sD.screenWidth.azimuth";
        }
      }
    }

LABEL_31:
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.screenCentrePosition.co_ut.cartesian.X";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.screenCentrePosition.co_ut.cartesian.Y";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.screenCentrePosition.co_ut.cartesian.Z";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.screenWidth.X";
    goto LABEL_31;
  }

  v7 = 20;
LABEL_17:
  v8 = *&a2[v7];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v8, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packConfig(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = a2;
  v9 = a2;
  v10 = a2 + a3;
  v11 = 0x2000000000;
  v12 = a2 & 3;
  APAC::MetadataBitStreamPacker::packMetadataConfig(a1, a4, &v8);
  v4 = 8 * (v9 - v8) - HIDWORD(v11);
  v5 = (v4 + 32) >> 3;
  if ((v4 & 7) != 0)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5;
  }

  AT::TBitstreamWriter<unsigned int>::Flush(&v8);
  return v6;
}

void APAC::MetadataBitStreamPacker::packMetadataConfig(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot pack mdCfg.mRendererMetadataConfigPresent";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 1u);
  if (*(a2 + 1) == 1)
  {

    APAC::MetadataBitStreamPacker::packRendererMetadataConfig(v5, (a2 + 8), a3);
  }
}

void APAC::MetadataBitStreamPacker::packRendererMetadataConfig(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v31 = "Cannot pack rMdCfg.mGlobalConfig.mHasData";
    goto LABEL_36;
  }

  v5 = a2 + 4;
  v6 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 8), 1u);
  if (*v5 == 1)
  {
    APAC::MetadataBitStreamPacker::packGlobalConfig(v6, v5, a3);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v31 = "Cannot pack rMdCfg.mGroupCount";
    goto LABEL_36;
  }

  v7 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0xBu);
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 1248 * *a2;
    v32 = v10;
    while (1)
    {
      APAC::MetadataBitStreamPacker::packGroupConfig(v7, (*(a2 + 597) + v8), a3);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
      {
        break;
      }

      v7 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 600) + v9), 1u);
      v11 = *(a2 + 600);
      v12 = v11 + v9;
      if (*(v11 + v9) == 1)
      {
        memcpy(__dst, (v11 + v9), 0x314uLL);
        v13 = *(v12 + 792);
        v35 = *(v12 + 800);
        v34 = v13;
        v36 = *(v12 + 808);
        v38 = 0;
        v39 = 0;
        v37 = 0;
        v14 = *(v12 + 816);
        v15 = *(v12 + 824);
        v16 = v15 - v14;
        if (v15 != v14)
        {
          if (!((v16 >> 2) >> 62))
          {
            std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v16 >> 2);
          }

          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        memset(v40, 0, sizeof(v40));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v40, *(v11 + v9 + 840), *(v11 + v9 + 848), (*(v11 + v9 + 848) - *(v11 + v9 + 840)) >> 2);
        memset(v41, 0, sizeof(v41));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v41, *(v11 + v9 + 864), *(v11 + v9 + 872), (*(v11 + v9 + 872) - *(v11 + v9 + 864)) >> 2);
        memset(v42, 0, sizeof(v42));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v42, *(v11 + v9 + 888), *(v11 + v9 + 896), (*(v11 + v9 + 896) - *(v11 + v9 + 888)) >> 2);
        memset(v43, 0, sizeof(v43));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v43, *(v11 + v9 + 912), *(v11 + v9 + 920), (*(v11 + v9 + 920) - *(v11 + v9 + 912)) >> 2);
        v44 = 0;
        v45 = 0;
        v46 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v44, *(v11 + v9 + 936), *(v11 + v9 + 944), (*(v11 + v9 + 944) - *(v11 + v9 + 936)) >> 2);
        v47 = *(v11 + v9 + 960);
        v48 = *(v11 + v9 + 968);
        v50 = 0;
        v51 = 0;
        v49 = 0;
        v17 = *(v11 + v9 + 976);
        v18 = *(v11 + v9 + 984);
        v19 = v18 - v17;
        if (v18 != v17)
        {
          if (((v19 >> 1) & 0x8000000000000000) == 0)
          {
            std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v19 >> 1);
          }

          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v52 = 0;
        v53 = 0;
        v54 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v52, *(v11 + v9 + 1000), *(v11 + v9 + 1008), (*(v11 + v9 + 1008) - *(v11 + v9 + 1000)) >> 2);
        v20 = *(v11 + v9 + 1024);
        v21 = *(v11 + v9 + 1056);
        v56 = *(v11 + v9 + 1040);
        v57 = v21;
        v55 = v20;
        v22 = *(v11 + v9 + 1072);
        v23 = *(v11 + v9 + 1088);
        v24 = *(v11 + v9 + 1120);
        v60 = *(v11 + v9 + 1104);
        v61 = v24;
        v58 = v22;
        v59 = v23;
        v25 = *(v11 + v9 + 1136);
        v26 = *(v11 + v9 + 1152);
        v27 = *(v11 + v9 + 1168);
        *(v64 + 13) = *(v11 + v9 + 1181);
        v63 = v26;
        v64[0] = v27;
        v62 = v25;
        v28 = *(v11 + v9 + 1200);
        v66 = *(v11 + v9 + 1208);
        v65 = v28;
        v68 = 0;
        v69 = 0;
        __p = 0;
        v29 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(v11 + v9 + 1216), *(v11 + v9 + 1224), (*(v11 + v9 + 1224) - *(v11 + v9 + 1216)) >> 2);
        v10 = v32;
        v70 = *(v11 + v9 + 1240);
        APAC::MetadataBitStreamPacker::packRendererData(v29, __dst, a3);
        if (__p)
        {
          v68 = __p;
          operator delete(__p);
        }

        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v43[0])
        {
          operator delete(v43[0]);
        }

        if (v42[0])
        {
          operator delete(v42[0]);
        }

        if (v41[0])
        {
          operator delete(v41[0]);
        }

        if (v40[0])
        {
          operator delete(v40[0]);
        }

        v7 = v37;
        if (v37)
        {
          operator delete(v37);
        }
      }

      v9 += 1248;
      v8 += 48;
      if (v10 == v9)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v31 = "Cannot pack rMdCfg.mRendererData[gp].mHasData";
LABEL_36:
    *exception = v31;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void sub_18F67B0CC(_Unwind_Exception *a1)
{
  if (STACK[0x390])
  {
    operator delete(STACK[0x390]);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F67B1E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void APAC::Metadata::RendererData::RadiationPattern::ParametricRadiationPattern::~ParametricRadiationPattern(APAC::Metadata::RendererData::RadiationPattern::ParametricRadiationPattern *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }
}

void APAC::Metadata::RendererData::RadiationPattern::~RadiationPattern(APAC::Metadata::RendererData::RadiationPattern *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }
}

void APAC::Metadata::RendererData::~RendererData(APAC::Metadata::RendererData *this)
{
  v2 = *(this + 152);
  if (v2)
  {
    *(this + 153) = v2;
    operator delete(v2);
  }

  v3 = *(this + 125);
  if (v3)
  {
    *(this + 126) = v3;
    operator delete(v3);
  }

  v4 = *(this + 122);
  if (v4)
  {
    *(this + 123) = v4;
    operator delete(v4);
  }

  v5 = *(this + 117);
  if (v5)
  {
    *(this + 118) = v5;
    operator delete(v5);
  }

  v6 = *(this + 114);
  if (v6)
  {
    *(this + 115) = v6;
    operator delete(v6);
  }

  v7 = *(this + 111);
  if (v7)
  {
    *(this + 112) = v7;
    operator delete(v7);
  }

  v8 = *(this + 108);
  if (v8)
  {
    *(this + 109) = v8;
    operator delete(v8);
  }

  v9 = *(this + 105);
  if (v9)
  {
    *(this + 106) = v9;
    operator delete(v9);
  }

  v10 = *(this + 102);
  if (v10)
  {
    *(this + 103) = v10;
    operator delete(v10);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AALoudnessInfoAnalyzer::CompleteFinal(AALoudnessInfoAnalyzer *this, float a2, float a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = 257;
  (*(**(this + 12) + 16))(*(this + 12), &Mutable);
  v14 = 0;
  v11 = 0;
  v12 = 1;
  v4 = *(this + 26);
  if (v4)
  {
    if (CACFDictionary::HasKey(&Mutable, @"sound check info"))
    {
      CACFDictionary::GetDictionary(&Mutable, @"sound check info", &v14);
      v5 = v14;
    }

    else
    {
      v5 = 0;
      v14 = 0;
    }

    v9 = 8;
    v10 = v5;
    v13 = &v9;
    v11 = 1;
    (*(*this + 48))(this, @"sound check info", &v12, &v11);
    v4 = *(this + 26);
  }

  if ((v4 & 2) != 0)
  {
    if (CACFDictionary::HasKey(&Mutable, @"main loudness parameters"))
    {
      CACFDictionary::GetDictionary(&Mutable, @"main loudness parameters", &v14);
      v6 = v14;
    }

    else
    {
      v6 = 0;
      v14 = 0;
    }

    v9 = 8;
    v10 = v6;
    v13 = &v9;
    v11 = 1;
    (*(*this + 48))(this, @"main loudness parameters", &v12, &v11);
    v4 = *(this + 26);
  }

  if ((v4 & 4) != 0)
  {
    if (CACFDictionary::HasKey(&Mutable, @"additional loudness parameters"))
    {
      CACFDictionary::GetDictionary(&Mutable, @"additional loudness parameters", &v14);
      v7 = v14;
    }

    else
    {
      v7 = 0;
      v14 = 0;
    }

    v9 = 8;
    v10 = v7;
    v13 = &v9;
    v11 = 1;
    (*(*this + 48))(this, @"additional loudness parameters", &v12, &v11);
  }

  CACFDictionary::~CACFDictionary(&Mutable);
  return 0;
}

uint64_t AALoudnessInfoAnalyzer::PushAudio(BufferedSoundCheckAnalyzer **this, int a2, const AudioBufferList *a3)
{
  BufferedSoundCheckAnalyzer::ProcessBuffer(this[12], a2, a3, 0);
  v5 = (this[9] + a2);
  v6 = this[7];
  if (v5 >= v6)
  {
    v5 = this[7];
  }

  this[9] = v5;
  *(this + 20) = (v5 * 100.0) / v6;
  return 0;
}

void AALoudnessInfoAnalyzer::~AALoudnessInfoAnalyzer(AALoudnessInfoAnalyzer *this)
{
  AALoudnessInfoAnalyzer::~AALoudnessInfoAnalyzer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325688;
  v2 = *(this + 12);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 12) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {
    MEMORY[0x193ADF220](v3, 0x1000C4077774924);
    *(this + 11) = 0;
  }

  *this = &unk_1F0325EC0;
  MEMORY[0x193ADE5D0](this + 48);
}

uint64_t CA::AudioMetadataSerializer::serialize(int a1, unsigned int *a2, unsigned int a3, uint64_t a4, double a5, double a6, double a7, unint64_t **a8)
{
  v9 = a4;
  v13 = a2;
  v254 = &v255;
  v255 = 0;
  v258 = 0;
  v259 = 0;
  v256 = 0;
  v257 = &v258;
  v260 = &v261;
  v261 = 0;
  v264 = 0;
  v265 = 0;
  v262 = 0;
  v263 = &v264;
  v14 = &v267;
  v266 = &v267;
  v267 = 0;
  v270 = 0;
  v271 = 0;
  v268 = 0;
  v269 = &v270;
  v272 = &v273;
  v273 = 0;
  v276 = 0;
  v277 = 0;
  v274 = 0;
  v275 = &v276;
  v279 = 0;
  v280 = 0;
  v278 = &v279;
  if (*a2)
  {
    v15 = 0;
    do
    {
      v248 = v15;
      v251 = *(*(v13 + 1) + 8 * v15);
      if (*v251)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "APR_");
        std::string::basic_string[abi:ne200100]<0>(&v291, *v251);
        if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v291.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v16 >= 0x10000)
        {
          v17 = v245 & 0xFFFFFFFFFFFFFF00;
          if (*(v251 + 24) == 1)
          {
            v18 = *(v251 + 28);
            v17 |= 1uLL;
          }

          else
          {
            v18 = v244 & 0xFFFFFFFFFFFFFF00;
          }

          v244 = v18;
          v245 = v17;
          v19 = v241 & 0xFFFFFFFFFFFFFF00;
          if (*(v251 + 36) == 1)
          {
            v20 = *(v251 + 40);
            v19 |= 1uLL;
          }

          else
          {
            v20 = v239 & 0xFFFFFFFFFFFFFF00;
          }

          v239 = v20;
          v241 = v19;
          v242 &= 0xFFFFFFFFFFFFFF00;
          v243 &= 0xFFFFFFFFFFFFFF00;
          if (v246 != 3)
          {
            v21 = v255;
LABEL_17:
            if (!v21)
            {
LABEL_24:
              operator new();
            }

            while (1)
            {
              v22 = v21;
              v23 = *(v21 + 16);
              if (v23 > v16)
              {
                v21 = *v22;
                goto LABEL_17;
              }

              if (v23 >= v16)
              {
                break;
              }

              v21 = v22[1];
              if (!v21)
              {
                goto LABEL_24;
              }
            }

            *(v22 + 40) = v246;
            v22[6] = v251;
            v22[7] = 0;
            if (v246 != 2)
            {
              v24 = *(v251 + 52);
              if (v24)
              {
                for (i = 0; i < v24; ++i)
                {
                  v26 = *(v251 + 56);
                  if (**(v26 + 8 * i))
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__p, "ACO_");
                    std::string::basic_string[abi:ne200100]<0>(&v291, **(v26 + 8 * i));
                    LOWORD(v289.__r_.__value_.__l.__data_) = v27;
                    v289.__r_.__value_.__s.__data_[2] = BYTE2(v27);
                    if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v291.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (v27 >= 0x10000)
                    {
                      v28 = *(v26 + 8 * i);
                      *v29 = v246;
                      v29[1] = v28;
                      v29[2] = 0;
                      v30 = 0.0;
                      if (*(v251 + 24) == 1)
                      {
                        v30 = *(v251 + 28);
                      }

                      v31 = *(v26 + 8 * i);
                      v32 = *(v31 + 24);
                      if (v32)
                      {
                        v33 = 0;
                        v247 = 0;
                        do
                        {
                          v34 = *(v31 + 28);
                          if (**(v34 + 8 * v33))
                          {
                            std::string::basic_string[abi:ne200100]<0>(&__p, "AO_");
                            std::string::basic_string[abi:ne200100]<0>(&v291, **(v34 + 8 * v33));
                            LOWORD(v290.__r_.__value_.__l.__data_) = v35;
                            v290.__r_.__value_.__s.__data_[2] = BYTE2(v35);
                            if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v291.__r_.__value_.__l.__data_);
                            }

                            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__p.__r_.__value_.__l.__data_);
                            }

                            if (v35 >= 0x10000)
                            {
                              v36 = v261;
                              if (!v261)
                              {
                                goto LABEL_53;
                              }

                              v37 = &v261;
                              do
                              {
                                v38 = v36;
                                v39 = v37;
                                v40 = *(v36 + 16);
                                if (v40 >= v35)
                                {
                                  v37 = v36;
                                }

                                v36 = v36[v40 < v35];
                              }

                              while (v36);
                              if (v37 == &v261)
                              {
                                goto LABEL_53;
                              }

                              if (v40 < v35)
                              {
                                v38 = v39;
                              }

                              if (*(v38 + 16) > v35)
                              {
LABEL_53:
                                v41 = *(v34 + 8 * v33);
                                v42 = 0.0;
                                if (*(v41 + 16) == 1)
                                {
                                  v42 = *(v41 + 20);
                                }

                                v43 = *(v41 + 28);
                                if (v43 == 1)
                                {
                                  v8 = *(v41 + 32);
                                }

                                else
                                {
                                  *&v8 &= 0xFFFFFFFFFFFFFF00;
                                }

                                v44 = v30 + v42;
                                v45 = v30 + v42;
                                v46 = v30 + v42 + v8;
                                if (*(v41 + 28))
                                {
                                  v47 = *&v46;
                                }

                                else
                                {
                                  v47 = 0;
                                }

                                v14 = v14 & 0xFFFFFFFFFFFFFF00 | v43;
                                v27 &= 0xFFFFFFFFFFFFFF00;
                                v9 &= 0xFFFFFFFFFFFFFF00;
                                if (v48 != 3)
                                {
                                  v49 = v48;
                                  if (v48 != 4)
                                  {
                                    v247 = 1;
                                  }

                                  *v50 = v49;
                                  v50[1] = v41;
                                  *(v50 + 2) = v44;
                                  {
                                  }
                                }
                              }
                            }

                            v32 = *(v31 + 24);
                          }

                          ++v33;
                        }

                        while (v33 < v32);
                        v9 = a4;
                        v14 = &v267;
                        if (v247)
                        {
                        }
                      }
                    }

                    v24 = *(v251 + 52);
                    v13 = a2;
                  }
                }
              }
            }
          }
        }
      }

      v15 = v248 + 1;
    }

    while (v248 + 1 < *v13);
  }

  if (!a3)
  {
    v51 = v13[3];
    if (v51)
    {
      for (j = 0; j < v51; ++j)
      {
        v53 = *(v13 + 2);
        if (**(v53 + 8 * j))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "ACO_");
          std::string::basic_string[abi:ne200100]<0>(&v291, **(v53 + 8 * j));
          LOWORD(v290.__r_.__value_.__l.__data_) = v54;
          v290.__r_.__value_.__s.__data_[2] = BYTE2(v54);
          if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v291.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v54 >= 0x10000)
          {
            v55 = *(v53 + 8 * j);
            *v56 = 0;
            v56[1] = v55;
            v56[2] = 0;
          }

          v51 = a2[3];
        }

        v13 = a2;
      }
    }

    v57 = v13[6];
    if (v57)
    {
      for (k = 0; k < v57; ++k)
      {
        v59 = *(v13 + 7);
        if (**(v59 + 8 * k))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "AO_");
          std::string::basic_string[abi:ne200100]<0>(&v291, **(v59 + 8 * k));
          LOWORD(v290.__r_.__value_.__l.__data_) = v60;
          v290.__r_.__value_.__s.__data_[2] = BYTE2(v60);
          if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v291.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v60 >= 0x10000)
          {
            v61 = *(v59 + 8 * k);
            *v62 = 0;
            v62[1] = v61;
            v62[2] = 0;
          }

          v57 = a2[6];
        }

        v13 = a2;
      }
    }

    v63 = v13[15];
    if (v63)
    {
      v64 = 0;
      while (1)
      {
        v65 = *(v13 + 8);
        if (**(v65 + 8 * v64))
        {
          break;
        }

LABEL_115:
        if (++v64 >= v63)
        {
          goto LABEL_116;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "AS_");
      std::string::basic_string[abi:ne200100]<0>(&v291, **(v65 + 8 * v64));
      LODWORD(v290.__r_.__value_.__l.__data_) = v66;
      v67 = HIDWORD(v66);
      v290.__r_.__value_.__s.__data_[4] = BYTE4(v66);
      if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v291.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v67)
        {
          goto LABEL_114;
        }
      }

      else if (!v67)
      {
        goto LABEL_114;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, **(v65 + 8 * v64));
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) > 7u && __p.__r_.__value_.__s.__data_[7] == 48)
        {
          goto LABEL_114;
        }

        goto LABEL_113;
      }

      if (__p.__r_.__value_.__l.__size_ <= 7)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_113:
        v69 = *(v65 + 8 * v64);
        *v70 = 0;
        v70[1] = v69;
        v70[2] = 0;
        goto LABEL_114;
      }

      v68 = *(__p.__r_.__value_.__r.__words[0] + 7);
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v68 != 48)
      {
        goto LABEL_113;
      }

LABEL_114:
      v13 = a2;
      v63 = a2[15];
      goto LABEL_115;
    }

LABEL_116:
    v71 = v13[18];
    if (v71)
    {
      v72 = 0;
      while (1)
      {
        v73 = *(v13 + 19);
        if (**(v73 + 8 * v72))
        {
          break;
        }

LABEL_134:
        ++v72;
        v13 = a2;
        if (v72 >= v71)
        {
          goto LABEL_135;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "AT_");
      std::string::basic_string[abi:ne200100]<0>(&v291, **(v73 + 8 * v72));
      v76 = v75;
      v290.__r_.__value_.__r.__words[0] = v74;
      v290.__r_.__value_.__s.__data_[8] = v75;
      if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v291.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v76 & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      else if ((v76 & 1) == 0)
      {
        goto LABEL_133;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, **(v73 + 8 * v72));
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) > 7u && __p.__r_.__value_.__s.__data_[7] == 48)
        {
          goto LABEL_133;
        }

        goto LABEL_132;
      }

      if (__p.__r_.__value_.__l.__size_ <= 7)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_132:
        v78 = *(v73 + 8 * v72);
        *v79 = 0;
        v79[1] = v78;
        v79[2] = 0;
        goto LABEL_133;
      }

      v77 = *(__p.__r_.__value_.__r.__words[0] + 7);
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v77 != 48)
      {
        goto LABEL_132;
      }

LABEL_133:
      v71 = a2[18];
      goto LABEL_134;
    }

LABEL_135:
    v80 = v13[21];
    if (v80)
    {
      v81 = 0;
      while (1)
      {
        v82 = *(v13 + 11);
        if (**(v82 + 8 * v81))
        {
          break;
        }

LABEL_146:
        if (++v81 >= v80)
        {
          goto LABEL_147;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ATU_");
      std::string::basic_string[abi:ne200100]<0>(&v291, **(v82 + 8 * v81));
      LODWORD(v290.__r_.__value_.__l.__data_) = v83;
      v84 = HIDWORD(v83);
      v290.__r_.__value_.__s.__data_[4] = BYTE4(v83);
      if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v291.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v84)
        {
LABEL_145:
          v13 = a2;
          v80 = a2[21];
          goto LABEL_146;
        }
      }

      else if (!v84)
      {
        goto LABEL_145;
      }

      v85 = *(v82 + 8 * v81);
      *v86 = 0;
      v86[1] = v85;
      v86[2] = 0;
      goto LABEL_145;
    }

LABEL_147:
    v87 = v13[9];
    if (v87)
    {
      v88 = 0;
      while (1)
      {
        v89 = *(v13 + 5);
        if (**(v89 + 8 * v88))
        {
          break;
        }

LABEL_165:
        if (++v88 >= v87)
        {
          goto LABEL_166;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
      std::string::basic_string[abi:ne200100]<0>(&v291, **(v89 + 8 * v88));
      LODWORD(v290.__r_.__value_.__l.__data_) = v90;
      v91 = HIDWORD(v90);
      v290.__r_.__value_.__s.__data_[4] = BYTE4(v90);
      if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v291.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v91)
        {
          goto LABEL_164;
        }
      }

      else if (!v91)
      {
        goto LABEL_164;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, **(v89 + 8 * v88));
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) > 7u && __p.__r_.__value_.__s.__data_[7] == 48)
        {
          goto LABEL_164;
        }

        goto LABEL_163;
      }

      if (__p.__r_.__value_.__l.__size_ <= 7)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_163:
        v93 = *(v89 + 8 * v88);
        *v94 = 0;
        v94[1] = v93;
        v94[2] = 0;
        goto LABEL_164;
      }

      v92 = *(__p.__r_.__value_.__r.__words[0] + 7);
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v92 != 48)
      {
        goto LABEL_163;
      }

LABEL_164:
      v13 = a2;
      v87 = a2[9];
      goto LABEL_165;
    }

LABEL_166:
    v95 = v13[12];
    if (v95)
    {
      v96 = 0;
      while (1)
      {
        v97 = *(v13 + 13);
        if (**(v97 + 8 * v96))
        {
          break;
        }

LABEL_184:
        if (++v96 >= v95)
        {
          goto LABEL_185;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "AC_");
      std::string::basic_string[abi:ne200100]<0>(&v291, **(v97 + 8 * v96));
      LODWORD(v290.__r_.__value_.__l.__data_) = v98;
      v99 = HIDWORD(v98);
      v290.__r_.__value_.__s.__data_[4] = BYTE4(v98);
      if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v291.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v99)
        {
          goto LABEL_183;
        }
      }

      else if (!v99)
      {
        goto LABEL_183;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, **(v97 + 8 * v96));
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) > 7u && __p.__r_.__value_.__s.__data_[7] == 48)
        {
          goto LABEL_183;
        }

        goto LABEL_182;
      }

      if (__p.__r_.__value_.__l.__size_ <= 7)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_182:
        v101 = *(v97 + 8 * v96);
        *v102 = 0;
        v102[1] = v101;
        v102[2] = 0;
        goto LABEL_183;
      }

      v100 = *(__p.__r_.__value_.__r.__words[0] + 7);
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v100 != 48)
      {
        goto LABEL_182;
      }

LABEL_183:
      v13 = a2;
      v95 = a2[12];
      goto LABEL_184;
    }
  }

LABEL_185:
  v103 = 4294900720;
  if (!*a8)
  {
    goto LABEL_615;
  }

  *v253 = 1;
  *v9 = a3;
  v104 = v254;
  if (v254 != &v255)
  {
    do
    {
      v105 = v104[1];
      if (*(v104 + 40) - 3 > 1)
      {
        if (v105)
        {
          do
          {
            v107 = v105;
            v105 = *v105;
          }

          while (v105);
        }

        else
        {
          do
          {
            v107 = v104[2];
            v219 = *v107 == v104;
            v104 = v107;
          }

          while (!v219);
        }
      }

      else
      {
        v106 = v104;
        if (v105)
        {
          do
          {
            v107 = v105;
            v105 = *v105;
          }

          while (v105);
        }

        else
        {
          do
          {
            v107 = v106[2];
            v219 = *v107 == v106;
            v106 = v107;
          }

          while (!v219);
        }

        if (v254 == v104)
        {
          v254 = v107;
        }

        --v256;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v255, v104);
        operator delete(v104);
      }

      v104 = v107;
    }

    while (v107 != &v255);
  }

  v108 = v257;
  if (v257 != &v258)
  {
    do
    {
      v109 = v108[1];
      if (*(v108 + 40) - 3 > 1)
      {
        if (v109)
        {
          do
          {
            v111 = v109;
            v109 = *v109;
          }

          while (v109);
        }

        else
        {
          do
          {
            v111 = v108[2];
            v219 = *v111 == v108;
            v108 = v111;
          }

          while (!v219);
        }
      }

      else
      {
        v110 = v108;
        if (v109)
        {
          do
          {
            v111 = v109;
            v109 = *v109;
          }

          while (v109);
        }

        else
        {
          do
          {
            v111 = v110[2];
            v219 = *v111 == v110;
            v110 = v111;
          }

          while (!v219);
        }

        if (v257 == v108)
        {
          v257 = v111;
        }

        --v259;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v258, v108);
        operator delete(v108);
      }

      v108 = v111;
    }

    while (v111 != &v258);
  }

  v112 = v260;
  if (v260 != &v261)
  {
    do
    {
      v113 = v112[1];
      if (*(v112 + 40) - 3 > 1)
      {
        if (v113)
        {
          do
          {
            v115 = v113;
            v113 = *v113;
          }

          while (v113);
        }

        else
        {
          do
          {
            v115 = v112[2];
            v219 = *v115 == v112;
            v112 = v115;
          }

          while (!v219);
        }
      }

      else
      {
        v114 = v112;
        if (v113)
        {
          do
          {
            v115 = v113;
            v113 = *v113;
          }

          while (v113);
        }

        else
        {
          do
          {
            v115 = v114[2];
            v219 = *v115 == v114;
            v114 = v115;
          }

          while (!v219);
        }

        if (v260 == v112)
        {
          v260 = v115;
        }

        --v262;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v261, v112);
        operator delete(v112);
      }

      v112 = v115;
    }

    while (v115 != &v261);
  }

  v116 = v269;
  if (v269 != &v270)
  {
    do
    {
      v117 = v116[1];
      if (*(v116 + 40) - 3 > 1)
      {
        if (v117)
        {
          do
          {
            v119 = v117;
            v117 = *v117;
          }

          while (v117);
        }

        else
        {
          do
          {
            v119 = v116[2];
            v219 = *v119 == v116;
            v116 = v119;
          }

          while (!v219);
        }
      }

      else
      {
        v118 = v116;
        if (v117)
        {
          do
          {
            v119 = v117;
            v117 = *v117;
          }

          while (v117);
        }

        else
        {
          do
          {
            v119 = v118[2];
            v219 = *v119 == v118;
            v118 = v119;
          }

          while (!v219);
        }

        if (v269 == v116)
        {
          v269 = v119;
        }

        --v271;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v270, v116);
        operator delete(v116);
      }

      v116 = v119;
    }

    while (v119 != &v270);
  }

  v120 = v272;
  if (v272 != &v273)
  {
    do
    {
      v121 = v120[1];
      if (*(v120 + 40) - 3 > 1)
      {
        if (v121)
        {
          do
          {
            v123 = v121;
            v121 = *v121;
          }

          while (v121);
        }

        else
        {
          do
          {
            v123 = v120[2];
            v219 = *v123 == v120;
            v120 = v123;
          }

          while (!v219);
        }
      }

      else
      {
        v122 = v120;
        if (v121)
        {
          do
          {
            v123 = v121;
            v121 = *v121;
          }

          while (v121);
        }

        else
        {
          do
          {
            v123 = v122[2];
            v219 = *v123 == v122;
            v122 = v123;
          }

          while (!v219);
        }

        if (v272 == v120)
        {
          v272 = v123;
        }

        --v274;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v273, v120);
        operator delete(v120);
      }

      v120 = v123;
    }

    while (v123 != &v273);
  }

  v124 = v263;
  if (v263 != &v264)
  {
    do
    {
      v125 = v124[1];
      if (*(v124 + 40) - 3 > 1)
      {
        if (v125)
        {
          do
          {
            v127 = v125;
            v125 = *v125;
          }

          while (v125);
        }

        else
        {
          do
          {
            v127 = v124[2];
            v219 = *v127 == v124;
            v124 = v127;
          }

          while (!v219);
        }
      }

      else
      {
        v126 = v124;
        if (v125)
        {
          do
          {
            v127 = v125;
            v125 = *v125;
          }

          while (v125);
        }

        else
        {
          do
          {
            v127 = v126[2];
            v219 = *v127 == v126;
            v126 = v127;
          }

          while (!v219);
        }

        if (v263 == v124)
        {
          v263 = v127;
        }

        --v265;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v264, v124);
        operator delete(v124);
      }

      v124 = v127;
    }

    while (v127 != &v264);
  }

  v128 = v266;
  if (v266 != &v267)
  {
    do
    {
      v129 = v128[1];
      if (*(v128 + 40) - 3 > 1)
      {
        if (v129)
        {
          do
          {
            v131 = v129;
            v129 = *v129;
          }

          while (v129);
        }

        else
        {
          do
          {
            v131 = v128[2];
            v219 = *v131 == v128;
            v128 = v131;
          }

          while (!v219);
        }
      }

      else
      {
        v130 = v128;
        if (v129)
        {
          do
          {
            v131 = v129;
            v129 = *v129;
          }

          while (v129);
        }

        else
        {
          do
          {
            v131 = v130[2];
            v219 = *v131 == v130;
            v130 = v131;
          }

          while (!v219);
        }

        if (v266 == v128)
        {
          v266 = v131;
        }

        --v268;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v267, v128);
        operator delete(v128);
      }

      v128 = v131;
    }

    while (v131 != &v267);
  }

  v132 = v275;
  if (v275 != &v276)
  {
    do
    {
      v133 = v132[1];
      if (*(v132 + 40) - 3 > 1)
      {
        if (v133)
        {
          do
          {
            v135 = v133;
            v133 = *v133;
          }

          while (v133);
        }

        else
        {
          do
          {
            v135 = v132[2];
            v219 = *v135 == v132;
            v132 = v135;
          }

          while (!v219);
        }
      }

      else
      {
        v134 = v132;
        if (v133)
        {
          do
          {
            v135 = v133;
            v133 = *v133;
          }

          while (v133);
        }

        else
        {
          do
          {
            v135 = v134[2];
            v219 = *v135 == v134;
            v134 = v135;
          }

          while (!v219);
        }

        if (v275 == v132)
        {
          v275 = v135;
        }

        --v277;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v276, v132);
        operator delete(v132);
      }

      v132 = v135;
    }

    while (v135 != &v276);
  }

  {
    goto LABEL_615;
  }

  v136 = *a8;
  v137 = v254;
  if (v254 == &v255)
  {
LABEL_360:
    v151 = v257;
    if (v257 != &v258)
    {
      do
      {
        v152 = *v253;
        if (a3 == 2)
        {
          if (*v253 + 1 > v136)
          {
            goto LABEL_615;
          }

          *(v9 + *v253) = *(v151 + 40) << 6;
          v152 = (v152 + 1);
        }

        v153 = v152 + 1;
        if ((v152 + 1) > v136)
        {
          goto LABEL_615;
        }

        v154 = *(v151 + 16);
        v155 = v152 + v9;
        *(v152 + v9) = 16;
        v156 = v152 + 3;
        if (v156 >= v136)
        {
          goto LABEL_615;
        }

        v153[v9] = HIBYTE(v154);
        *v253 = v156;
        v155[2] = v154;
        if (*(v151 + 40) == 2)
        {
          {
            goto LABEL_615;
          }
        }

        else
        {
          v157 = v151[6];
          memset(&v289, 0, sizeof(v289));
          memset(&__p, 0, sizeof(__p));
          if (*(v157 + 24))
          {
            v158 = 0;
            do
            {
              v159 = *(*(v157 + 28) + 8 * v158);
              std::string::basic_string[abi:ne200100]<0>(&v291, "AO_");
              std::string::basic_string[abi:ne200100]<0>(&v290, *v159);
              LOWORD(v288.__r_.__value_.__l.__data_) = v160;
              v288.__r_.__value_.__s.__data_[2] = BYTE2(v160);
              if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v290.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v291.__r_.__value_.__l.__data_);
              }

              if (v160 >= 0x10000)
              {
                v161 = v261;
                if (v261)
                {
                  v162 = &v261;
                  do
                  {
                    v163 = v161;
                    v164 = v162;
                    v165 = *(v161 + 16);
                    if (v165 >= v160)
                    {
                      v162 = v161;
                    }

                    v161 = v161[v165 < v160];
                  }

                  while (v161);
                  if (v162 != &v261)
                  {
                    if (v165 < v160)
                    {
                      v163 = v164;
                    }

                    if (*(v163 + 16) <= v160)
                    {
                      std::vector<unsigned short>::push_back[abi:ne200100](&__p, &v288);
                    }
                  }
                }
              }

              ++v158;
            }

            while (v158 < *(v157 + 24));
          }

          v291.__r_.__value_.__s.__data_[0] = (*(v157 + 96) << 6) + 4 * *(v157 + 97);
          std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
          v9 = a4;
          if (*(v157 + 77) == 1)
          {
            v290.__r_.__value_.__s.__data_[0] = 0;
            std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v290);
          }

          if (__p.__r_.__value_.__r.__words[0])
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v289.__r_.__value_.__r.__words[0])
          {
            operator delete(v289.__r_.__value_.__l.__data_);
          }

          if (!v166)
          {
            goto LABEL_615;
          }
        }

        v167 = v151[1];
        if (v167)
        {
          do
          {
            v168 = v167;
            v167 = *v167;
          }

          while (v167);
        }

        else
        {
          do
          {
            v168 = v151[2];
            v219 = *v168 == v151;
            v151 = v168;
          }

          while (!v219);
        }

        v151 = v168;
      }

      while (v168 != &v258);
      v136 = *a8;
    }

    v169 = v260;
    if (v260 == &v261)
    {
      goto LABEL_504;
    }

    while (1)
    {
      v170 = *v253;
      if (a3 == 2)
      {
        if (*v253 + 1 > v136)
        {
          goto LABEL_615;
        }

        *(v9 + *v253) = *(v169 + 40) << 6;
        v170 = (v170 + 1);
      }

      v171 = v170 + 1;
      if ((v170 + 1) > v136)
      {
        goto LABEL_615;
      }

      v172 = *(v169 + 16);
      v173 = v170 + v9;
      *(v170 + v9) = 32;
      v174 = v170 + 3;
      if (v174 >= v136)
      {
        goto LABEL_615;
      }

      v171[v9] = HIBYTE(v172);
      *v253 = v174;
      v173[2] = v172;
      if (*(v169 + 40) != 2)
      {
        break;
      }

      {
        goto LABEL_615;
      }

LABEL_497:
      v197 = v169[1];
      if (v197)
      {
        do
        {
          v198 = v197;
          v197 = *v197;
        }

        while (v197);
      }

      else
      {
        do
        {
          v198 = v169[2];
          v219 = *v198 == v169;
          v169 = v198;
        }

        while (!v219);
      }

      v169 = v198;
      if (v198 == &v261)
      {
        v136 = *a8;
LABEL_504:
        v199 = v263;
        if (v263 == &v264)
        {
          goto LABEL_563;
        }

        while (1)
        {
          v200 = *v253;
          if (a3 == 2)
          {
            if (*v253 + 1 > v136)
            {
              goto LABEL_615;
            }

            *(a4 + *v253) = *(v199 + 40) << 6;
            v200 = (v200 + 1);
          }

          v201 = v200 + 1;
          if ((v200 + 1) > v136)
          {
            goto LABEL_615;
          }

          v202 = *(v199 + 8);
          v203 = v200 + a4;
          *(v200 + a4) = 48;
          v204 = v200 + 5;
          if (v204 >= v136)
          {
            goto LABEL_615;
          }

          v201[a4] = HIBYTE(v202);
          v203[2] = BYTE2(v202);
          v203[3] = BYTE1(v202);
          *v253 = v204;
          v203[4] = v202;
          if (*(v199 + 40) != 2)
          {
            break;
          }

          {
            goto LABEL_615;
          }

LABEL_543:
          v214 = v199[1];
          if (v214)
          {
            do
            {
              v215 = v214;
              v214 = *v214;
            }

            while (v214);
          }

          else
          {
            do
            {
              v215 = v199[2];
              v219 = *v215 == v199;
              v199 = v215;
            }

            while (!v219);
          }

          v199 = v215;
          if (v215 == &v264)
          {
            v136 = *a8;
LABEL_563:
            v220 = v266;
            if (v266 != &v267)
            {
              while (2)
              {
                v221 = *v253;
                if (a3 == 2)
                {
                  if (*v253 + 1 > v136)
                  {
                    goto LABEL_615;
                  }

                  *(a4 + *v253) = *(v220 + 40) << 6;
                  v221 = (v221 + 1);
                }

                v222 = v221 + 1;
                if ((v221 + 1) > v136)
                {
                  goto LABEL_615;
                }

                v223 = v221 + a4;
                *(v221 + a4) = 64;
                v224 = v221 + 6;
                if (v224 >= v136)
                {
                  goto LABEL_615;
                }

                v222[a4] = *(v220 + 35);
                v223[2] = *(v220 + 17);
                v223[3] = BYTE1(*(v220 + 8));
                v223[4] = *(v220 + 8);
                v225 = *(v220 + 36);
                *v253 = v224;
                v223[5] = v225;
                if (*(v220 + 40) == 2)
                {
                  {
                    goto LABEL_615;
                  }

                  goto LABEL_592;
                }

                v226 = v220[6];
                memset(&v290, 0, sizeof(v290));
                if (*(v226 + 16))
                {
                  v227 = *(v226 + 16);
                }

                else
                {
                  v227 = "";
                }

                std::string::basic_string[abi:ne200100]<0>(&__p, v227);
                if (*(v226 + 24))
                {
                  v228 = *(v226 + 24);
                }

                else
                {
                  v228 = "";
                }

                std::string::basic_string[abi:ne200100]<0>(&v291, v228);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 4)
                  {
                    p_p = &__p;
                    goto LABEL_583;
                  }

                  goto LABEL_584;
                }

                if (__p.__r_.__value_.__l.__size_ != 4)
                {
                  goto LABEL_584;
                }

                p_p = __p.__r_.__value_.__r.__words[0];
LABEL_583:
                if (LODWORD(p_p->__r_.__value_.__l.__data_) != 825241648)
                {
                  goto LABEL_584;
                }

                if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
                {
                  if (v291.__r_.__value_.__l.__size_ != 3)
                  {
                    goto LABEL_584;
                  }

                  v233 = v291.__r_.__value_.__r.__words[0];
                }

                else
                {
                  if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) != 3)
                  {
                    goto LABEL_584;
                  }

                  v233 = &v291;
                }

                data_low = LOWORD(v233->__r_.__value_.__l.__data_);
                v235 = v233->__r_.__value_.__s.__data_[2];
                if (data_low == 17232 && v235 == 77)
                {
                  v289.__r_.__value_.__s.__data_[0] = 1;
                  std::vector<unsigned char>::push_back[abi:ne200100](&v290, &v289);
                }

                else
                {
LABEL_584:
                  v289.__r_.__value_.__s.__data_[0] = 0;
                  std::vector<unsigned char>::push_back[abi:ne200100](&v290, &v289);
                }

                if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v291.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v290.__r_.__value_.__r.__words[0])
                {
                  operator delete(v290.__r_.__value_.__l.__data_);
                }

                if (!v230)
                {
                  goto LABEL_615;
                }

LABEL_592:
                v231 = v220[1];
                if (v231)
                {
                  do
                  {
                    v232 = v231;
                    v231 = *v231;
                  }

                  while (v231);
                }

                else
                {
                  do
                  {
                    v232 = v220[2];
                    v219 = *v232 == v220;
                    v220 = v232;
                  }

                  while (!v219);
                }

                v220 = v232;
                if (v232 == &v267)
                {
                  v136 = *a8;
                  break;
                }

                continue;
              }
            }

            {
              v103 = 0;
              *a8 = *v253;
            }

            goto LABEL_615;
          }
        }

        v205 = v199[6];
        memset(&v288, 0, sizeof(v288));
        if (*(v205 + 16))
        {
          v206 = *(v205 + 16);
        }

        else
        {
          v206 = "";
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, v206);
        if (*(v205 + 24))
        {
          v207 = *(v205 + 24);
        }

        else
        {
          v207 = "";
        }

        std::string::basic_string[abi:ne200100]<0>(&v291, v207);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_ != 4)
          {
            goto LABEL_525;
          }

          v208 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 4)
          {
            goto LABEL_525;
          }

          v208 = &__p;
        }

        if (LODWORD(v208->__r_.__value_.__l.__data_) == 825241648)
        {
          if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v291.__r_.__value_.__l.__size_ != 3)
            {
              goto LABEL_525;
            }

            v216 = v291.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) != 3)
            {
              goto LABEL_525;
            }

            v216 = &v291;
          }

          v217 = LOWORD(v216->__r_.__value_.__l.__data_);
          v218 = v216->__r_.__value_.__s.__data_[2];
          v219 = v217 == 17232 && v218 == 77;
          if (v219)
          {
            v290.__r_.__value_.__s.__data_[0] = 1;
            std::vector<unsigned char>::push_back[abi:ne200100](&v288, &v290);
            goto LABEL_526;
          }
        }

LABEL_525:
        v290.__r_.__value_.__s.__data_[0] = 0;
        std::vector<unsigned char>::push_back[abi:ne200100](&v288, &v290);
LABEL_526:
        v209 = *(v205 + 32);
        if (v209 && *v209)
        {
          std::string::basic_string[abi:ne200100]<0>(&v290, "AC_");
          std::string::basic_string[abi:ne200100]<0>(&v289, **(v205 + 32));
          if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v289.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v290.__r_.__value_.__l.__data_);
          }

          v211 = HIDWORD(v210) & 1;
          v212 = (v210 & 0x100000000) >> 25;
        }

        else
        {
          LOBYTE(v212) = 0;
          LODWORD(v211) = 0;
          LODWORD(v210) = 0;
        }

        v290.__r_.__value_.__s.__data_[0] = v212;
        std::vector<unsigned char>::push_back[abi:ne200100](&v288, &v290);
        if (v211)
        {
        }

        if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v291.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v288.__r_.__value_.__r.__words[0])
        {
          operator delete(v288.__r_.__value_.__l.__data_);
        }

        if (!v213)
        {
          goto LABEL_615;
        }

        goto LABEL_543;
      }
    }

    v175 = v169[6];
    memset(&v291, 0, sizeof(v291));
    memset(&v290, 0, sizeof(v290));
    v176 = v175[13];
    if (!v176)
    {
      goto LABEL_418;
    }

    std::string::basic_string[abi:ne200100]<0>(&v289, "AP_");
    std::string::basic_string[abi:ne200100]<0>(&v288, *v176);
    LODWORD(v287.__r_.__value_.__l.__data_) = v177;
    v178 = HIDWORD(v177);
    v287.__r_.__value_.__s.__data_[4] = BYTE4(v177);
    if (SHIBYTE(v288.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v288.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v289.__r_.__value_.__l.__data_);
      if (!v178)
      {
LABEL_418:
        memset(&v289, 0, sizeof(v289));
        if (*(v175 + 28))
        {
          v179 = 0;
          do
          {
            v180 = *(*(v175 + 116) + 8 * v179);
            std::string::basic_string[abi:ne200100]<0>(&v288, "AO_");
            std::string::basic_string[abi:ne200100]<0>(&v287, *v180);
            LOWORD(v286.__r_.__value_.__l.__data_) = v181;
            v286.__r_.__value_.__s.__data_[2] = BYTE2(v181);
            if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v287.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v288.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v288.__r_.__value_.__l.__data_);
            }

            if (v181 >= 0x10000)
            {
              std::vector<unsigned short>::push_back[abi:ne200100](&v289, &v286);
            }

            ++v179;
          }

          while (v179 < *(v175 + 28));
        }

        memset(&v288, 0, sizeof(v288));
        if (*(v175 + 31))
        {
          v182 = 0;
          do
          {
            v183 = *(v175[16] + 8 * v182);
            std::string::basic_string[abi:ne200100]<0>(&v287, "AO_");
            std::string::basic_string[abi:ne200100]<0>(&v286, *v183);
            LOWORD(v283.__r_.__value_.__l.__data_) = v184;
            v283.__r_.__value_.__s.__data_[2] = BYTE2(v184);
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v286.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v287.__r_.__value_.__l.__data_);
            }

            if (v184 >= 0x10000)
            {
              std::vector<unsigned short>::push_back[abi:ne200100](&v288, &v283);
            }

            ++v182;
          }

          while (v182 < *(v175 + 31));
        }

        memset(&v287, 0, sizeof(v287));
        if (!*(v175 + 34))
        {
LABEL_446:
          if (*(v175 + 160))
          {
            v189 = 0x80;
          }

          else
          {
            v189 = 0;
          }

          if (*(v175 + 174))
          {
            v189 |= 0x40u;
          }

          v190 = v189 + 16 * *(v175 + 168) - 16;
          v191 = v189 | 0x20;
          if (*(v175 + 168))
          {
            v191 = v190;
          }

          v192 = *(v175 + 169);
          if (v192 >= 0xA)
          {
            LOBYTE(v192) = 10;
          }

          v286.__r_.__value_.__s.__data_[0] = v191 | v192;
          std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v286);
          v9 = a4;
          v193 = *(v175 + 170);
          v194 = v193 == 1;
          if (v193 == 1)
          {
            v195 = 0x80;
          }

          else
          {
            v195 = 0;
          }

          v286.__r_.__value_.__s.__data_[0] = v194 << 7;
          if (*(v175 + 171))
          {
            v195 |= 0x40u;
            v286.__r_.__value_.__s.__data_[0] = v195;
          }

          if (*(v175 + 172) == 1)
          {
            v195 += 32;
            v286.__r_.__value_.__s.__data_[0] = v195;
          }

          if (*(v175 + 173) == 1)
          {
            v286.__r_.__value_.__s.__data_[0] = v195 + 16;
          }

          std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v286);
          if (*(v175 + 16) == 1)
          {
            v283.__r_.__value_.__s.__data_[0] = 0;
            std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v283);
          }

          if (*(v175 + 28) == 1)
          {
            v283.__r_.__value_.__s.__data_[0] = 1;
            std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v283);
          }

          if (*(v175 + 172) == 1)
          {
            v283.__r_.__value_.__s.__data_[0] = 2;
            std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v283);
            if (*(v175 + 84))
            {
              v196 = 0x80;
            }

            else
            {
              v196 = 0;
            }

            v286.__r_.__value_.__s.__data_[0] = v196;
            if (*(v175 + 85))
            {
              v196 += 32 * *(v175 + 48) + 64;
              v286.__r_.__value_.__s.__data_[0] = v196;
            }

            if (*(v175 + 86) == 1)
            {
              v286.__r_.__value_.__s.__data_[0] = v196 + 8;
              if (*(v175 + 64) != *(v175 + 80))
              {
                __assert_rtn("encode_object", "AudioMetadataSerializer.cpp", 951, "object.audioObjectInteraction.positionInteractionRange.min.isCartesian == object.audioObjectInteraction.positionInteractionRange.max.isCartesian");
              }

              if (*(v175 + 64))
              {
                v286.__r_.__value_.__s.__data_[0] = v196 + 12;
              }
            }

            std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v286);
            if (*(v175 + 85) == 1)
            {
            }

            if (*(v175 + 86) == 1)
            {
            }
          }

          if (*(v175 + 37) != 0.0 || *(v175 + 38) != 0.0 || *(v175 + 39) != 0.0)
          {
            v283.__r_.__value_.__s.__data_[0] = 3;
            std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v283);
          }

          v252 = v291.__r_.__value_.__r.__words[0];
          __p = v291;
          memset(&v291, 0, sizeof(v291));
          v282 = 1;
          if (v287.__r_.__value_.__r.__words[0])
          {
            operator delete(v287.__r_.__value_.__l.__data_);
          }

          if (v288.__r_.__value_.__r.__words[0])
          {
            operator delete(v288.__r_.__value_.__l.__data_);
          }

          if (v289.__r_.__value_.__r.__words[0])
          {
            operator delete(v289.__r_.__value_.__l.__data_);
          }

          if (v290.__r_.__value_.__r.__words[0])
          {
            operator delete(v290.__r_.__value_.__l.__data_);
          }

          {
            if (v252)
            {
              operator delete(v252);
            }

            goto LABEL_615;
          }

          if (v252)
          {
            operator delete(v252);
          }

          goto LABEL_497;
        }

        v185 = 0;
        while (1)
        {
          v186 = *(*(v175 + 140) + 8 * v185);
          std::string::basic_string[abi:ne200100]<0>(&v286, "ATU_");
          std::string::basic_string[abi:ne200100]<0>(&v283, *v186);
          v284 = v187;
          v188 = HIDWORD(v187);
          v285 = BYTE4(v187);
          if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v283.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v286.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            break;
          }

          operator delete(v286.__r_.__value_.__l.__data_);
          if (v188)
          {
            goto LABEL_444;
          }

LABEL_445:
          if (++v185 >= *(v175 + 34))
          {
            goto LABEL_446;
          }
        }

        if (!v188)
        {
          goto LABEL_445;
        }

LABEL_444:
        std::vector<unsigned int>::push_back[abi:ne200100](&v287, &v284);
        goto LABEL_445;
      }
    }

    else if (!v178)
    {
      goto LABEL_418;
    }

    std::vector<unsigned int>::push_back[abi:ne200100](&v290, &v287);
    goto LABEL_418;
  }

  while (1)
  {
    v138 = *v253;
    if (a3 == 2)
    {
      if (*v253 + 1 > v136)
      {
        break;
      }

      *(a4 + *v253) = *(v137 + 40) << 6;
      v138 = (v138 + 1);
    }

    v139 = v138 + 1;
    if ((v138 + 1) > v136)
    {
      break;
    }

    v140 = *(v137 + 16);
    v141 = v138 + a4;
    *(v138 + a4) = 0;
    v142 = v138 + 3;
    if (v142 >= v136)
    {
      break;
    }

    v139[a4] = HIBYTE(v140);
    *v253 = v142;
    v141[2] = v140;
    if (*(v137 + 40) == 2)
    {
      {
        break;
      }
    }

    else
    {
      v143 = v137[6];
      memset(&v289, 0, sizeof(v289));
      memset(&__p, 0, sizeof(__p));
      if (*(v143 + 13))
      {
        v144 = 0;
        do
        {
          v145 = *(v143[7] + 8 * v144);
          std::string::basic_string[abi:ne200100]<0>(&v291, "ACO_");
          std::string::basic_string[abi:ne200100]<0>(&v290, *v145);
          LOWORD(v288.__r_.__value_.__l.__data_) = v146;
          v288.__r_.__value_.__s.__data_[2] = BYTE2(v146);
          if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v290.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v291.__r_.__value_.__l.__data_);
          }

          if (v146 >= 0x10000)
          {
            std::vector<unsigned short>::push_back[abi:ne200100](&__p, &v288);
          }

          ++v144;
        }

        while (v144 < *(v143 + 13));
      }

      if (*(v143 + 105) == 1)
      {
        v291.__r_.__value_.__s.__data_[0] = 0;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (*(v143 + 148) == 1)
      {
        v291.__r_.__value_.__s.__data_[0] = 1;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
        if (*(v143 + 140))
        {
          v147 = 0x80;
        }

        else
        {
          v147 = 0;
        }

        v291.__r_.__value_.__s.__data_[0] = v147;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(v143 + 19)), vceqzq_s64(*(v143 + 21)))))))
      {
        v291.__r_.__value_.__s.__data_[0] = 2;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (*(v143 + 24) == 1)
      {
        v291.__r_.__value_.__s.__data_[0] = 3;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (*(v143 + 36) == 1)
      {
        v291.__r_.__value_.__s.__data_[0] = 4;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (*(v143 + 12) != 0.0)
      {
        v291.__r_.__value_.__s.__data_[0] = 5;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v289.__r_.__value_.__r.__words[0])
      {
        operator delete(v289.__r_.__value_.__l.__data_);
      }

      if (!v148)
      {
        break;
      }
    }

    v149 = v137[1];
    if (v149)
    {
      do
      {
        v150 = v149;
        v149 = *v149;
      }

      while (v149);
    }

    else
    {
      do
      {
        v150 = v137[2];
        v219 = *v150 == v137;
        v137 = v150;
      }

      while (!v219);
    }

    v137 = v150;
    if (v150 == &v255)
    {
      v136 = *a8;
      v9 = a4;
      goto LABEL_360;
    }
  }

LABEL_615:
  return v103;
}

void sub_18F67DEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (*(v64 - 137) < 0)
  {
    operator delete(*(v64 - 160));
  }

  if (a64 < 0)
  {
    operator delete(__p);
  }

  v66 = *(v64 - 184);
  if (v66)
  {
    operator delete(v66);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::parse_content_id(const void **a1, const std::string *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a1 + 23;
  v5 = a1 + 1;
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v24 = 0;
  v7 = std::string::basic_string(v26, a2, 0, v6, &v23);
  v8 = v26[23];
  if (v26[23] >= 0)
  {
    v9 = v26[23];
  }

  else
  {
    v9 = *&v26[8];
  }

  v10 = *v4;
  v11 = v10;
  if (v10 < 0)
  {
    v10 = *v5;
  }

  if (v9 != v10 || (v26[23] >= 0 ? (v12 = v26) : (v12 = *v26), v11 >= 0 ? (v13 = a1) : (v13 = *a1), v7 = memcmp(v12, v13, v9), v7))
  {
    v14 = 1;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_34:
    operator delete(*v26);
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_35:
    v19 = v24 & 0xFF00;
    v18 = v24;
    v20 = 0x10000;
    return v19 | v18 | v20;
  }

  std::string::basic_string(&v23, a2, v6, 0xFFFFFFFFFFFFFFFFLL, &v25);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v23;
  }

  else
  {
    v21 = v23.__r_.__value_.__r.__words[0];
  }

  v7 = sscanf(v21, "%04hx", &v24);
  v14 = v7 != 1;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if ((v26[23] & 0x80) != 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (!v14)
  {
    goto LABEL_35;
  }

LABEL_19:
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 23) >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    *v26 = 136315906;
    *&v26[4] = "AudioMetadataSerializer.cpp";
    *&v26[12] = 1024;
    *&v26[14] = 2119;
    *&v26[18] = 2080;
    *&v26[20] = v16;
    v27 = 2080;
    v28 = v17;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Content ID '%s' does not match expected pattern '%snnnn'", v26, 0x26u);
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  return v19 | v18 | v20;
}

void sub_18F67E480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::determine_element_status(int a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, unsigned __int8 a7, double a8, double a9, double a10)
{
  if (!a1)
  {
    return 0;
  }

  if ((a3 & 1) != 0 && a8 + a9 <= *&a2)
  {
    return 3;
  }

  if ((a5 & 1) != 0 && *&a4 < a8)
  {
    v11 = a8 - a10;
    if (v11 > *&a4 && (a7 & (v11 < *&a6)) == 0)
    {
      return 3;
    }

    if (a1 == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    if ((a7 & (*&a6 >= a8)) == 1)
    {
      return (4 * (a1 == 2));
    }

    else
    {
      return v13;
    }
  }

  else
  {
    v14 = 0.0;
    if (a3)
    {
      v14 = *&a2;
    }

    if (v14 < a8 && a1 == 2)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t *std::map<unsigned short,anonymous namespace::ElementRef<AudioMetadataContent>>::operator[](uint64_t **a1, _WORD *a2)
{
  v2 = a1[1];
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 16);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::map<unsigned short,anonymous namespace::ElementRef<AudioMetadataObject>>::operator[](uint64_t a1, _WORD *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t anonymous namespace::gather_elements_from_object(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, double a6, double a7, double a8)
{
  v17 = a3;
  v18 = a1;
  v19 = 0.0;
  v20 = 0.0;
  if (*(a2 + 24) == 1)
  {
    v20 = *(a2 + 28);
  }

  if (*(a3 + 16) == 1)
  {
    v19 = *(a3 + 20);
  }

  v195 = v20 + v19;
  v196 = 1;
  v21 = *(a3 + 136);
  if (v21)
  {
    v9 = 0;
    v22 = (a1 + 128);
    v188 = (a1 + 176);
    v190 = a1 + 104;
    v12 = a6 + a7;
    v23 = a6 - a8;
    v183 = (a1 + 200);
    v184 = (a1 + 80);
    v186 = (a1 + 152);
    v8 = "ATU_";
    v10 = 255;
    while (1)
    {
      v24 = *(v17 + 140);
      if (**(v24 + 8 * v9))
      {
        break;
      }

LABEL_240:
      if (++v9 >= v21)
      {
        goto LABEL_241;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, "ATU_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v24 + 8 * v9));
    v193 = LODWORD(v11);
    v25 = HIDWORD(*&v11);
    v194 = BYTE4(v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
      if (!v25)
      {
        goto LABEL_239;
      }
    }

    else if (!v25)
    {
      goto LABEL_239;
    }

    v26 = *v22;
    if (*v22)
    {
      v27 = v22;
      do
      {
        v28 = *(v26 + 32);
        v29 = v28 >= LODWORD(v11);
        v30 = v28 < LODWORD(v11);
        if (v29)
        {
          v27 = v26;
        }

        v26 = *(v26 + 8 * v30);
      }

      while (v26);
      if (v27 != v22 && *(v27 + 8) <= LODWORD(v11))
      {
        goto LABEL_239;
      }
    }

    v31 = *(v24 + 8 * v9);
    v32 = v195;
    *v33 = a4;
    v33[1] = v31;
    *(v33 + 2) = v32;
    v34 = *(v24 + 8 * v9);
    v35 = *(v34 + 12);
    if (!v35 || !*v35)
    {
      goto LABEL_181;
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, "AT_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v34 + 12));
    v37 = v36;
    v197 = v11;
    v198 = v36;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
      if ((v37 & 1) == 0)
      {
        goto LABEL_181;
      }
    }

    else if ((v37 & 1) == 0)
    {
      goto LABEL_181;
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, **(v34 + 12));
    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v204.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_38;
      }

      v38 = v204.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_38;
      }

      v38 = &v204;
    }

    if (v38->__r_.__value_.__s.__data_[7] == 48)
    {
      v39 = 0;
      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }

LABEL_38:
    v40 = v190;
    v41 = *v190;
    if (!*v190)
    {
      goto LABEL_66;
    }

    v42 = v190;
    do
    {
      v43 = *(v41 + 32);
      v44 = v43 == LODWORD(v11);
      if (v43 >= LODWORD(v11))
      {
        v45 = 1;
      }

      else
      {
        v45 = -1;
      }

      if (v44)
      {
        v46 = *(v41 + 36);
        v47 = v46 == BYTE4(v11);
        v45 = v46 >= BYTE4(v11) ? 1 : -1;
        if (v47)
        {
          v45 = 0;
        }
      }

      v48 = v45 & 0x80;
      v44 = v48 == 0;
      v49 = v48 >> 4;
      if (v44)
      {
        v42 = v41;
      }

      v41 = *(v41 + v49);
    }

    while (v41);
    v40 = v190;
    if (v42 == v190)
    {
      goto LABEL_66;
    }

    v50 = *(v42 + 32);
    v51 = v50 == LODWORD(v11);
    if (v50 <= LODWORD(v11))
    {
      v52 = 1;
    }

    else
    {
      v52 = -1;
    }

    if (v51)
    {
      v53 = *(v42 + 36);
      if (v53 <= BYTE4(v11))
      {
        v54 = 1;
      }

      else
      {
        v54 = -1;
      }

      if (v53 == BYTE4(v11))
      {
        v52 = 0;
      }

      else
      {
        v52 = v54;
      }
    }

    v40 = v190;
    if (v52 < 0)
    {
LABEL_66:
      v42 = v40;
    }

    v39 = v42 == v40;
    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_70:
      operator delete(v204.__r_.__value_.__l.__data_);
      if (!v39)
      {
        goto LABEL_181;
      }

      goto LABEL_71;
    }

LABEL_68:
    if (!v39)
    {
      goto LABEL_181;
    }

LABEL_71:
    v55 = *(v34 + 12);
    v56 = v195;
    *v57 = a4;
    v57[1] = v55;
    *(v57 + 2) = v56;
    v58 = *(*(v34 + 12) + 32);
    if (v58 && *v58)
    {
      std::string::basic_string[abi:ne200100]<0>(&v204, "AS_");
      std::string::basic_string[abi:ne200100]<0>(&__p, *v58);
      v199 = LODWORD(v11);
      v59 = HIDWORD(*&v11);
      v200 = BYTE4(v11);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v204.__r_.__value_.__l.__data_);
        if (!v59)
        {
          goto LABEL_180;
        }
      }

      else if (!v59)
      {
        goto LABEL_180;
      }

      std::string::basic_string[abi:ne200100]<0>(&v204, *v58);
      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
      {
        v60 = v184;
        if (v204.__r_.__value_.__l.__size_ < 8)
        {
          goto LABEL_86;
        }

        v61 = v204.__r_.__value_.__r.__words[0];
      }

      else
      {
        v60 = v184;
        if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
        {
          goto LABEL_86;
        }

        v61 = &v204;
      }

      if (v61->__r_.__value_.__s.__data_[7] == 48)
      {
        v62 = 0;
LABEL_96:
        if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (!v62)
          {
            goto LABEL_180;
          }

LABEL_100:
          v67 = v195;
          *v68 = a4;
          v68[1] = v58;
          *(v68 + 2) = v67;
          v69 = *(v58 + 32);
          if (!v69 || !*v69)
          {
            goto LABEL_180;
          }

          std::string::basic_string[abi:ne200100]<0>(&v204, "AC_");
          std::string::basic_string[abi:ne200100]<0>(&__p, **(v58 + 32));
          v201 = v70;
          v182 = v70;
          v71 = HIDWORD(v70);
          v202 = BYTE4(v70);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v204.__r_.__value_.__l.__data_);
          }

          if (!v71)
          {
            goto LABEL_180;
          }

          std::string::basic_string[abi:ne200100]<0>(&v204, **(v58 + 32));
          if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
          {
            v72 = v188;
            v73 = v182;
            if (v204.__r_.__value_.__l.__size_ < 8)
            {
              goto LABEL_114;
            }

            v74 = v204.__r_.__value_.__r.__words[0];
          }

          else
          {
            v72 = v188;
            v73 = v182;
            if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
            {
              goto LABEL_114;
            }

            v74 = &v204;
          }

          if (v74->__r_.__value_.__s.__data_[7] == 48)
          {
            v75 = 0;
LABEL_124:
            if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v204.__r_.__value_.__l.__data_);
            }

            if (!v75)
            {
              goto LABEL_180;
            }

            v80 = *(v58 + 32);
            v81 = v195;
            *v82 = a4;
            v82[1] = v80;
            *(v82 + 2) = v81;
            if (a4 != 4)
            {
              goto LABEL_180;
            }

            v83 = *(v58 + 32);
            if (!*(v83 + 24))
            {
LABEL_178:
              if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v204.__r_.__value_.__l.__data_);
              }

              goto LABEL_180;
            }

            v84 = 0;
            v176 = v83;
            while (1)
            {
              v180 = *(*(v83 + 28) + 8 * v84);
              if (*v180)
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, *v180);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (HIDWORD(v181))
                {
                  v85 = 0.0;
                  v86 = 0.0;
                  if (*(v180 + 8) == 1)
                  {
                    v86 = *(v180 + 12);
                  }

                  if (*(v180 + 20) == 1)
                  {
                    v85 = *(v180 + 24);
                  }

                  v87 = v84 + 1;
                  v88 = *(v83 + 24);
                  if (v84 + 1 >= v88)
                  {
                    *&v11 &= 0xFFFFFFFFFFFFFF00;
                  }

                  else
                  {
                    v89 = *(*(v83 + 28) + 8 * v87);
                    v90 = 0.0;
                    v91 = 0.0;
                    if (*(v89 + 8) == 1)
                    {
                      v91 = *(v89 + 12);
                    }

                    if (*(v89 + 20) == 1)
                    {
                      v90 = *(v89 + 24);
                    }

                    v11 = v195 + v91 + v90;
                  }

                  v92 = v86 + v195;
                  if (v12 > v92)
                  {
                    v93 = v85 + v92;
                    if (v93 >= a6)
                    {
                      if (v92 >= a6)
                      {
                        v179 = v11;
                        v178 = 0;
LABEL_159:
                        v177 = v205;
                        v96 = v183;
LABEL_160:
                        v97 = *v96;
                        if (!*v96)
                        {
LABEL_175:
                          operator new();
                        }

                        while (1)
                        {
                          v96 = v97;
                          v98 = *(v97 + 8);
                          if (v98 == v182)
                          {
                            v99 = *(v96 + 9);
                            v100 = v99 == v181;
                            if (v99 > v181)
                            {
                              goto LABEL_160;
                            }

                            if (v99 >= v181)
                            {
                              v101 = 1;
                            }

                            else
                            {
                              v101 = -1;
                            }

                            if (v100)
                            {
                              v101 = 0;
                            }
                          }

                          else
                          {
                            if (v98 > v182)
                            {
                              goto LABEL_160;
                            }

                            v101 = v98 >= v182 ? 1 : -1;
                          }

                          if ((v101 & 0x80) == 0)
                          {
                            break;
                          }

                          v97 = v96[1];
                          if (!v97)
                          {
                            goto LABEL_175;
                          }
                        }

                        *(v96 + 40) = v178;
                        v11 = v179;
                        v96[6] = v180;
                        *(v96 + 56) = v177;
                        v83 = v176;
                      }
                    }

                    else
                    {
                      v94 = v87 < v88;
                      v95 = v23 < v11 && v94;
                      if (v23 <= v93)
                      {
                        v95 = 1;
                      }

                      if (v11 < a6)
                      {
                        LOBYTE(v94) = 0;
                      }

                      if (v95 == 1 && !v94)
                      {
                        v179 = v11;
                        v178 = 2;
                        goto LABEL_159;
                      }
                    }
                  }
                }
              }

              if (++v84 >= *(v83 + 24))
              {
                goto LABEL_178;
              }
            }
          }

LABEL_114:
          v76 = *v72;
          if (!*v72)
          {
            goto LABEL_122;
          }

          v77 = v72;
          do
          {
            v78 = *(v76 + 32);
            v29 = v78 >= v73;
            v79 = v78 < v73;
            if (v29)
            {
              v77 = v76;
            }

            v76 = *(v76 + 8 * v79);
          }

          while (v76);
          if (v77 == v72 || *(v77 + 8) > v73)
          {
LABEL_122:
            v77 = v72;
          }

          v75 = v77 == v72;
          goto LABEL_124;
        }

        operator delete(v204.__r_.__value_.__l.__data_);
        if (v62)
        {
          goto LABEL_100;
        }

LABEL_180:
        v18 = a1;
        goto LABEL_181;
      }

LABEL_86:
      v63 = *v60;
      if (!*v60)
      {
        goto LABEL_94;
      }

      v64 = v60;
      do
      {
        v65 = *(v63 + 32);
        v29 = v65 >= LODWORD(v11);
        v66 = v65 < LODWORD(v11);
        if (v29)
        {
          v64 = v63;
        }

        v63 = *(v63 + 8 * v66);
      }

      while (v63);
      if (v64 == v60 || *(v64 + 8) > LODWORD(v11))
      {
LABEL_94:
        v64 = v60;
      }

      v62 = v64 == v60;
      goto LABEL_96;
    }

LABEL_181:
    v102 = *(v34 + 20);
    if (!v102 || !*v102)
    {
      goto LABEL_210;
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, "AC_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v34 + 20));
    LODWORD(v197) = LODWORD(v11);
    v103 = HIDWORD(*&v11);
    BYTE4(v197) = BYTE4(v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
      if (!v103)
      {
        goto LABEL_210;
      }
    }

    else if (!v103)
    {
LABEL_210:
      v114 = *(v34 + 28);
      if (!v114 || !*v114)
      {
        goto LABEL_239;
      }

      std::string::basic_string[abi:ne200100]<0>(&v204, "AP_");
      std::string::basic_string[abi:ne200100]<0>(&__p, **(v34 + 28));
      LODWORD(v197) = LODWORD(v11);
      v115 = HIDWORD(*&v11);
      BYTE4(v197) = BYTE4(v11);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v115)
        {
          goto LABEL_239;
        }

LABEL_218:
        std::string::basic_string[abi:ne200100]<0>(&v204, **(v34 + 28));
        if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v204.__r_.__value_.__l.__size_ < 8)
          {
            goto LABEL_226;
          }

          v116 = v204.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
          {
            goto LABEL_226;
          }

          v116 = &v204;
        }

        if (v116->__r_.__value_.__s.__data_[7] == 48)
        {
          v117 = 0;
          if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_237;
          }

          goto LABEL_236;
        }

LABEL_226:
        v118 = v186;
        v119 = *v186;
        if (!*v186)
        {
          goto LABEL_234;
        }

        v120 = v186;
        do
        {
          v121 = *(v119 + 32);
          v29 = v121 >= LODWORD(v11);
          v122 = v121 < LODWORD(v11);
          if (v29)
          {
            v120 = v119;
          }

          v119 = *(v119 + 8 * v122);
        }

        while (v119);
        v118 = v186;
        if (v120 == v186 || *(v120 + 8) > LODWORD(v11))
        {
LABEL_234:
          v120 = v118;
        }

        v117 = v120 == v118;
        if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_237;
        }

LABEL_236:
        operator delete(v204.__r_.__value_.__l.__data_);
LABEL_237:
        if (v117)
        {
          v123 = *(v34 + 28);
          v124 = v195;
          *v125 = a4;
          v125[1] = v123;
          *(v125 + 2) = v124;
        }

        goto LABEL_239;
      }

      operator delete(v204.__r_.__value_.__l.__data_);
      if (v115)
      {
        goto LABEL_218;
      }

LABEL_239:
      v21 = *(v17 + 136);
      goto LABEL_240;
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, **(v34 + 20));
    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v204.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_197;
      }

      v104 = v204.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_197;
      }

      v104 = &v204;
    }

    if (v104->__r_.__value_.__s.__data_[7] == 48)
    {
      v105 = 0;
      if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_208;
      }

      goto LABEL_207;
    }

LABEL_197:
    v106 = v188;
    v107 = *v188;
    if (!*v188)
    {
      goto LABEL_205;
    }

    v108 = v188;
    do
    {
      v109 = *(v107 + 32);
      v29 = v109 >= LODWORD(v11);
      v110 = v109 < LODWORD(v11);
      if (v29)
      {
        v108 = v107;
      }

      v107 = *(v107 + 8 * v110);
    }

    while (v107);
    v106 = v188;
    if (v108 == v188 || *(v108 + 8) > LODWORD(v11))
    {
LABEL_205:
      v108 = v106;
    }

    v105 = v108 == v106;
    if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_208;
    }

LABEL_207:
    operator delete(v204.__r_.__value_.__l.__data_);
LABEL_208:
    if (v105)
    {
      v111 = *(v34 + 20);
      v112 = v195;
      *v113 = a4;
      v113[1] = v111;
      *(v113 + 2) = v112;
    }

    goto LABEL_210;
  }

LABEL_241:
  v126 = *(v17 + 104);
  if (v126 && *v126)
  {
    std::string::basic_string[abi:ne200100]<0>(&v204, "AP_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v17 + 104));
    LODWORD(v197) = v8;
    v127 = HIDWORD(v8);
    BYTE4(v197) = BYTE4(v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
      if (!v127)
      {
        goto LABEL_270;
      }
    }

    else if (!v127)
    {
      goto LABEL_270;
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, **(v17 + 104));
    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v204.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_257;
      }

      v128 = v204.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_257;
      }

      v128 = &v204;
    }

    if (v128->__r_.__value_.__s.__data_[7] == 48)
    {
      v129 = 0;
      if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_268;
      }

      goto LABEL_267;
    }

LABEL_257:
    v130 = v18 + 152;
    v131 = *(v18 + 152);
    if (!v131)
    {
      goto LABEL_265;
    }

    v132 = v18 + 152;
    do
    {
      v133 = *(v131 + 32);
      v29 = v133 >= v8;
      v134 = v133 < v8;
      if (v29)
      {
        v132 = v131;
      }

      v131 = *(v131 + 8 * v134);
    }

    while (v131);
    if (v132 == v130 || *(v132 + 32) > v8)
    {
LABEL_265:
      v132 = v18 + 152;
    }

    v129 = v132 == v130;
    if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_268;
    }

LABEL_267:
    operator delete(v204.__r_.__value_.__l.__data_);
LABEL_268:
    if (v129)
    {
      v135 = *(v17 + 104);
      v12 = v195;
      *v136 = a4;
      v136[1] = v135;
      *(v136 + 2) = v12;
    }
  }

LABEL_270:
  if (*(v17 + 112))
  {
    v137 = 0;
    v189 = 0;
    v138 = (v18 + 56);
    v187 = v17;
    do
    {
      v139 = *(v17 + 116);
      v140 = *(v139 + 8 * v137);
      if (v140 && *v140)
      {
        std::string::basic_string[abi:ne200100]<0>(&v204, "AO_");
        std::string::basic_string[abi:ne200100]<0>(&__p, **(v139 + 8 * v137));
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v204.__r_.__value_.__l.__data_);
        }

        if (HIDWORD(v141))
        {
          v142 = *v138;
          if (!*v138)
          {
            goto LABEL_287;
          }

          v143 = v138;
          do
          {
            v144 = *(v142 + 32);
            v29 = v144 >= v141;
            v145 = v144 < v141;
            if (v29)
            {
              v143 = v142;
            }

            v142 = *(v142 + 8 * v145);
          }

          while (v142);
          if (v143 == v138 || *(v143 + 16) > v141)
          {
LABEL_287:
            v146 = *(v139 + 8 * v137);
            v147 = 0.0;
            if (*(v146 + 16) == 1)
            {
              v147 = *(v146 + 20);
            }

            v148 = *(v146 + 28);
            if (v148 == 1)
            {
              v12 = *(v146 + 32);
            }

            else
            {
              *&v12 &= 0xFFFFFFFFFFFFFF00;
            }

            v149 = v20 + v147;
            v150 = v20 + v147;
            v9 = v9 & 0xFFFFFFFFFFFFFF00 | 1;
            v151 = v20 + v147 + v12;
            if (*(v146 + 28))
            {
              v152 = *&v151;
            }

            else
            {
              v152 = 0;
            }

            v8 = v8 & 0xFFFFFFFFFFFFFF00 | v148;
            v10 &= 0xFFFFFFFFFFFFFF00;
            v153 = *&v11 & 0xFFFFFFFFFFFFFF00;
            if (v154 == 3)
            {
              v18 = a1;
            }

            else
            {
              v155 = v154;
              v190 = v10;
              if (v154 != 4)
              {
                v189 = 1;
              }

              LOWORD(v204.__r_.__value_.__l.__data_) = v141;
              *v156 = v155;
              v156[1] = v146;
              *(v156 + 2) = v149;
              if (v155 == 2)
              {
                v18 = a1;
              }

              else
              {
                v18 = a1;
                {
                  LOWORD(v204.__r_.__value_.__l.__data_) = v141;
                }
              }
            }

            v11 = *&v153;
            v17 = v187;
          }
        }
      }

      ++v137;
    }

    while (v137 < *(v17 + 112));
  }

  else
  {
    v189 = 0;
  }

  if (*(v17 + 124))
  {
    v157 = 0;
    v158 = (v18 + 56);
    do
    {
      v159 = *(*(v17 + 128) + 8 * v157);
      if (v159 && *v159)
      {
        std::string::basic_string[abi:ne200100]<0>(&v204, "AO_");
        std::string::basic_string[abi:ne200100]<0>(&__p, *v159);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v204.__r_.__value_.__l.__data_);
        }

        if (HIDWORD(v160))
        {
          v161 = v160;
          v162 = *v158;
          if (!*v158)
          {
            goto LABEL_324;
          }

          v163 = v158;
          do
          {
            v164 = *(v162 + 32);
            v29 = v164 >= v160;
            v165 = v164 < v160;
            if (v29)
            {
              v163 = v162;
            }

            v162 = *(v162 + 8 * v165);
          }

          while (v162);
          if (v163 == v158 || *(v163 + 16) > v160)
          {
LABEL_324:
            v166 = 0.0;
            if (*(v159 + 16) == 1)
            {
              v166 = *(v159 + 20);
            }

            v167 = *(v159 + 28);
            if (v167 == 1)
            {
              v12 = *(v159 + 32);
            }

            else
            {
              *&v12 &= 0xFFFFFFFFFFFFFF00;
            }

            v168 = v20 + v166;
            v169 = v20 + v166;
            v170 = v20 + v166 + v12;
            if (*(v159 + 28))
            {
              v171 = *&v170;
            }

            else
            {
              v171 = 0;
            }

            v9 &= 0xFFFFFFFFFFFFFF00;
            v10 &= 0xFFFFFFFFFFFFFF00;
            v190 = v190 & 0xFFFFFFFFFFFFFF00 | v167;
            if (v172 != 3)
            {
              v173 = v172;
              if (v172 != 4)
              {
                v189 = 1;
              }

              LOWORD(v204.__r_.__value_.__l.__data_) = v161;
              *v174 = v173;
              v174[1] = v159;
              *(v174 + 2) = v168;
              {
                LOWORD(v204.__r_.__value_.__l.__data_) = v161;
              }
            }
          }
        }
      }

      ++v157;
    }

    while (v157 < *(v17 + 124));
  }

  return v189 & 1;
}