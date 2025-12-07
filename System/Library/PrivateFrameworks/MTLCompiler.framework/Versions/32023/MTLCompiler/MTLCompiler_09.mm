uint64_t MTLCompilerObject::AIRNTGetFragmentFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneFragmentFunctionDescriptor<Air::FragmentFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneFragmentFunctionDescriptor<Air::FragmentFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x3Bu && (v7 = v6[29]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x37u && *(a2 + v5 + 54))
  {
    v9 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 54) + *(a2 + *(a2 + v5 + 54))));
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + v5) >= 0x1Du && *(a2 + v5 + 28))
  {
    v90 = a2 + *(a2 + v5 + 28) + *(a2 + *(a2 + v5 + 28));
    v10 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v90, &v90, a1);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x17u && *(a2 + v5 + 22))
  {
    v90 = a2 + *(a2 + v5 + 22) + *(a2 + *(a2 + v5 + 22));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air33FragmentColorAttachmentDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v90, &v90, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = (a2 + v5);
  if (*v15 >= 0x11u && (v16 = v15[8]) != 0)
  {
    v17 = *(a2 + v16);
  }

  else
  {
    v17 = -1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 16, v17, -1);
  v18 = (a2 - *a2);
  if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, v20, 0);
  v21 = (a2 - *a2);
  if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 1;
  }

  v24 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v23, 1);
  v25 = (a2 - *a2);
  if (*v25 >= 5u)
  {
    v26 = v25[2];
    if (v26)
    {
      v24 = *(a2 + v26);
    }

    else
    {
      v24 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 4, v24, 1);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 58, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 54, v9);
  }

  v27 = (a2 - *a2);
  if (*v27 >= 0x35u && (v28 = v27[26]) != 0)
  {
    v29 = *(a2 + v28);
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 52, v29, 0);
  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, v11);
  }

  v30 = (a2 - *a2);
  v31 = 1.0;
  if (*v30 >= 0x13u)
  {
    v32 = v30[9];
    if (v32)
    {
      v31 = *(a2 + v32);
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 18, v31, 1.0);
  v33 = (a2 - *a2);
  if (*v33 >= 0x1Bu && (v34 = v33[13]) != 0)
  {
    v35 = *(a2 + v34);
  }

  else
  {
    v35 = 0;
  }

  v36 = Air::ClonePixelFormat<Air::PixelFormat>(v35);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 26, v36, 0);
  v37 = (a2 - *a2);
  if (*v37 >= 0x19u && (v38 = v37[12]) != 0)
  {
    v39 = *(a2 + v38);
  }

  else
  {
    v39 = 0;
  }

  v40 = Air::ClonePixelFormat<Air::PixelFormat>(v39);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 24, v40, 0);
  v41 = (a2 - *a2);
  if (*v41 >= 0x39u && (v42 = v41[28]) != 0)
  {
    v43 = *(a2 + v42);
    if (v43 >= 2)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v43 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 56, v43, 0);
  v44 = (a2 - *a2);
  v46 = *v44 >= 0x33u && (v45 = v44[25]) != 0 && *(a2 + v45) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 50, v46, 0);
  v47 = (a2 - *a2);
  v49 = *v47 >= 0x31u && (v48 = v47[24]) != 0 && *(a2 + v48) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 48, v49, 0);
  v50 = (a2 - *a2);
  v52 = *v50 >= 0x2Fu && (v51 = v50[23]) != 0 && *(a2 + v51) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 46, v52, 0);
  v53 = (a2 - *a2);
  v55 = *v53 >= 0x2Du && (v54 = v53[22]) != 0 && *(a2 + v54) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 44, v55, 0);
  v56 = (a2 - *a2);
  if (*v56 >= 0x2Bu && (v57 = v56[21]) != 0)
  {
    v58 = *(a2 + v57);
    if (v58 >= 8)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v58 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 42, v58, 0);
  v59 = (a2 - *a2);
  v61 = *v59 >= 0x29u && (v60 = v59[20]) != 0 && *(a2 + v60) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 40, v61, 0);
  v62 = (a2 - *a2);
  if (*v62 >= 0x27u && (v63 = v62[19]) != 0)
  {
    v64 = *(a2 + v63);
    if (v64 >= 0x10)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v64 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, v64, 0);
  v65 = (a2 - *a2);
  v67 = *v65 >= 0x25u && (v66 = v65[18]) != 0 && *(a2 + v66) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, v67, 0);
  v68 = (a2 - *a2);
  if (*v68 >= 0x23u && (v69 = v68[17]) != 0)
  {
    v70 = *(a2 + v69);
    if (v70 >= 3)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v70 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, v70, 0);
  v71 = (a2 - *a2);
  v73 = *v71 >= 0x21u && (v72 = v71[16]) != 0 && *(a2 + v72) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 32, v73, 0);
  v74 = (a2 - *a2);
  if (*v74 >= 0x1Fu && (v75 = v74[15]) != 0)
  {
    v76 = *(a2 + v75);
    if (v76 >= 2)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v76 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 30, v76, 0);
  v77 = (a2 - *a2);
  v79 = *v77 >= 0x15u && (v78 = v77[10]) != 0 && *(a2 + v78) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v79, 0);
  v80 = (a2 - *a2);
  if (*v80 >= 0xBu && (v81 = v80[5]) != 0)
  {
    v82 = *(a2 + v81);
    if (v82 >= 2)
    {
LABEL_121:
      abort();
    }
  }

  else
  {
    v82 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v82, 0);
  v83 = (a2 - *a2);
  if (*v83 >= 9u && (v84 = v83[4]) != 0)
  {
    v85 = *(a2 + v84);
    if (v85 >= 2)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v85 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v85, 0);
  v86 = (a2 - *a2);
  v88 = *v86 < 7u || (v87 = v86[3]) == 0 || *(a2 + v87) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v88, 1);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t MTLCompilerObject::AIRNTGetComputeFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneComputeFunctionDescriptor<Air::ComputeFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 3);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneComputeFunctionDescriptor<Air::ComputeFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x1Bu && (v7 = v6[13]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x19u && *(a2 + v5 + 24))
  {
    VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24))), a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x17u && *(a2 + v5 + 22))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 22) + *(a2 + *(a2 + v5 + 22))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0xDu && *(a2 + v5 + 12))
  {
    v38 = (a2 + *(a2 + v5 + 12) + *(a2 + *(a2 + v5 + 12)));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_30CloneComputeFunctionDescriptorINS3_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v38, &v38, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + v5) >= 0xBu && *(a2 + v5 + 10))
  {
    v12 = Air::CloneStageInputOutputDescriptor<Air::StageInputOutputDescriptor>(a1, (a2 + *(a2 + v5 + 10) + *(a2 + *(a2 + v5 + 10))));
    v5 = -*a2;
  }

  else
  {
    v12 = 0;
  }

  v13 = 1;
  *(a1 + 70) = 1;
  v14 = (a2 + v5);
  if (*v14 >= 9u)
  {
    v15 = v14[4];
    if (v15)
    {
      v13 = *(a2 + v15);
    }

    else
    {
      v13 = 1;
    }
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v13, 1);
  v19 = (a2 - *a2);
  if (*v19 >= 7u && (v20 = v19[3]) != 0)
  {
    v21 = *(a2 + v20);
  }

  else
  {
    v21 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v21, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 26, v8);
  }

  if (VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 24, VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 12, v11);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v12);
  }

  v22 = (a2 - *a2);
  v24 = *v22 >= 0x15u && (v23 = v22[10]) != 0 && *(a2 + v23) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v24, 0);
  v25 = (a2 - *a2);
  if (*v25 >= 0x13u && (v26 = v25[9]) != 0)
  {
    v27 = *(a2 + v26);
    if (v27 >= 3)
    {
LABEL_55:
      abort();
    }
  }

  else
  {
    v27 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v27, 0);
  v28 = (a2 - *a2);
  v30 = *v28 >= 0x11u && (v29 = v28[8]) != 0 && *(a2 + v29) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v30, 0);
  v31 = (a2 - *a2);
  if (*v31 >= 0xFu && (v32 = v31[7]) != 0)
  {
    v33 = *(a2 + v32);
    if (v33 >= 2)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v33 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v33, 0);
  v34 = (a2 - *a2);
  v36 = *v34 >= 5u && (v35 = v34[2]) != 0 && *(a2 + v35) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v36, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v18 - v17 + v16);
}

uint64_t MTLCompilerObject::AIRNTGetTileFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneTileFunctionDescriptor<Air::TileFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 4);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneTileFunctionDescriptor<Air::TileFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x1Bu && (v7 = v6[13]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x19u && *(a2 + v5 + 24))
  {
    VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24))), a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x17u && *(a2 + v5 + 22))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 22) + *(a2 + *(a2 + v5 + 22))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x11u && *(a2 + v5 + 16))
  {
    v38 = a2 + *(a2 + v5 + 16) + *(a2 + *(a2 + v5 + 16));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v38, &v38, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + v5) >= 0xFu && *(a2 + v5 + 14))
  {
    v38 = a2 + *(a2 + v5 + 14) + *(a2 + *(a2 + v5 + 14));
    v12 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air29TileColorAttachmentDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v38, &v38, a1);
    v5 = -*a2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = (a2 + v5);
  if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
  {
    v15 = *(a2 + v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v37 = *(a1 + 40);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v15, 0);
  v18 = (a2 - *a2);
  if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 1;
  }

  v21 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v20, 1);
  v22 = (a2 - *a2);
  if (*v22 >= 9u)
  {
    v23 = v22[4];
    if (v23)
    {
      v21 = *(a2 + v23);
    }

    else
    {
      v21 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v21, 1);
  v24 = (a2 - *a2);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v26, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 26, v8);
  }

  if (VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 24, VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 16, v11);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 14, v12);
  }

  v27 = (a2 - *a2);
  if (*v27 >= 0x15u && (v28 = v27[10]) != 0)
  {
    v29 = *(a2 + v28);
    if (v29 >= 3)
    {
      abort();
    }
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v29, 0);
  v30 = (a2 - *a2);
  v32 = *v30 >= 0x13u && (v31 = v30[9]) != 0 && *(a2 + v31) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v32, 0);
  v33 = (a2 - *a2);
  v35 = *v33 >= 5u && (v34 = v33[2]) != 0 && *(a2 + v34) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v35, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v17 - v16 + v37);
}

uint64_t MTLCompilerObject::AIRNTGetObjectFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneObjectFunctionDescriptor<Air::ObjectFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 7);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneObjectFunctionDescriptor<Air::ObjectFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x21u && (v7 = v6[16]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x1Fu && *(a2 + v5 + 30))
  {
    VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30))), a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x1Du && *(a2 + v5 + 28))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 28) + *(a2 + *(a2 + v5 + 28))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x13u && *(a2 + v5 + 18))
  {
    v49 = (a2 + *(a2 + v5 + 18) + *(a2 + *(a2 + v5 + 18)));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneObjectFunctionDescriptorINS3_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v49, &v49, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = (a2 + v5);
  if (*v16 >= 0xFu)
  {
    v17 = v16[7];
    if (v17)
    {
      v12 = *(a2 + v17);
    }

    else
    {
      v12 = 1;
    }
  }

  v18 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, v12, 1);
  v19 = (a2 - *a2);
  if (*v19 >= 0xDu)
  {
    v20 = v19[6];
    if (v20)
    {
      v18 = *(a2 + v20);
    }

    else
    {
      v18 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v18, 1);
  v21 = (a2 - *a2);
  if (*v21 >= 0xBu && (v22 = v21[5]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v23, 0);
  v24 = (a2 - *a2);
  if (*v24 >= 9u && (v25 = v24[4]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v26, 0);
  v27 = (a2 - *a2);
  if (*v27 >= 7u && (v28 = v27[3]) != 0)
  {
    v29 = *(a2 + v28);
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v29, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 32, v8);
  }

  if (VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 18, v11);
  }

  v30 = (a2 - *a2);
  v32 = *v30 >= 0x1Bu && (v31 = v30[13]) != 0 && *(a2 + v31) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 26, v32, 0);
  v33 = (a2 - *a2);
  if (*v33 >= 0x19u && (v34 = v33[12]) != 0)
  {
    v35 = *(a2 + v34);
    if (v35 >= 3)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v35 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v35, 0);
  v36 = (a2 - *a2);
  v38 = *v36 >= 0x17u && (v37 = v36[11]) != 0 && *(a2 + v37) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v38, 0);
  v39 = (a2 - *a2);
  if (*v39 >= 0x15u && (v40 = v39[10]) != 0)
  {
    v41 = *(a2 + v40);
    if (v41 >= 2)
    {
LABEL_66:
      abort();
    }
  }

  else
  {
    v41 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v41, 0);
  v42 = (a2 - *a2);
  if (*v42 >= 0x11u && (v43 = v42[8]) != 0)
  {
    v44 = *(a2 + v43);
    if (v44 >= 2)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v44 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v44, 0);
  v45 = (a2 - *a2);
  v47 = *v45 >= 5u && (v46 = v45[2]) != 0 && *(a2 + v46) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v47, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t MTLCompilerObject::AIRNTGetMeshFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneMeshFunctionDescriptor<Air::MeshFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 8);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneMeshFunctionDescriptor<Air::MeshFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x23u && (v7 = v6[17]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x21u && *(a2 + v5 + 32))
  {
    VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 32) + *(a2 + *(a2 + v5 + 32))), a2 + *(a2 + v5 + 32) + *(a2 + *(a2 + v5 + 32)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x1Fu && *(a2 + v5 + 30))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x13u && *(a2 + v5 + 18))
  {
    v52 = (a2 + *(a2 + v5 + 18) + *(a2 + *(a2 + v5 + 18)));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneMeshFunctionDescriptorINS3_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v52, &v52, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = (a2 + v5);
  if (*v16 >= 0xFu)
  {
    v17 = v16[7];
    if (v17)
    {
      v12 = *(a2 + v17);
    }

    else
    {
      v12 = 1;
    }
  }

  v18 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, v12, 1);
  v19 = (a2 - *a2);
  if (*v19 >= 0xBu)
  {
    v20 = v19[5];
    if (v20)
    {
      v18 = *(a2 + v20);
    }

    else
    {
      v18 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v18, 1);
  v21 = (a2 - *a2);
  if (*v21 >= 9u && (v22 = v21[4]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v23, 0);
  v24 = (a2 - *a2);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v26, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 34, v8);
  }

  if (VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 32, VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 18, v11);
  }

  v27 = (a2 - *a2);
  v29 = *v27 >= 0x1Du && (v28 = v27[14]) != 0 && *(a2 + v28) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 28, v29, 0);
  v30 = (a2 - *a2);
  if (*v30 >= 0x1Bu && (v31 = v30[13]) != 0)
  {
    v32 = *(a2 + v31);
  }

  else
  {
    v32 = 255;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 26, v32, 255);
  v33 = (a2 - *a2);
  if (*v33 >= 0x19u && (v34 = v33[12]) != 0)
  {
    v35 = *(a2 + v34);
    if (v35 >= 3)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v35 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v35, 0);
  v36 = (a2 - *a2);
  v38 = *v36 >= 0x17u && (v37 = v36[11]) != 0 && *(a2 + v37) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v38, 0);
  v39 = (a2 - *a2);
  if (*v39 >= 0x15u && (v40 = v39[10]) != 0)
  {
    v41 = *(a2 + v40);
    if (v41 >= 2)
    {
LABEL_66:
      abort();
    }
  }

  else
  {
    v41 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v41, 0);
  v42 = (a2 - *a2);
  if (*v42 >= 0x11u && (v43 = v42[8]) != 0)
  {
    v44 = *(a2 + v43);
    if (v44 >= 2)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v44 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v44, 0);
  v45 = (a2 - *a2);
  v47 = *v45 < 0xDu || (v46 = v45[6]) == 0 || *(a2 + v46) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v47, 1);
  v48 = (a2 - *a2);
  v50 = *v48 >= 5u && (v49 = v48[2]) != 0 && *(a2 + v49) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v50, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

void MTLCompilerObject::AIRNTGetFunctionScriptFromPipeline(uint64_t *__return_ptr a1@<X8>, const Air::PipelineScript *a2@<X1>, uint64_t a3@<X2>)
{
  v34 = 0;
  v35 = 0;
  v36 = xmmword_257A6DE20;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v40 = 1;
  v41 = 256;
  v42 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v21 = Air::PipelineScript::pipeline_as_render(a2);
      v22 = (v21 - *v21);
      if (*v22 >= 9u && (v23 = v22[4]) != 0)
      {
        v24 = (v21 + v23 + *(v21 + v23));
      }

      else
      {
        v24 = 0;
      }

      MTLCompilerObject::AIRNTGetVertexFunctionScript(v21, a2, &v34, v24);
      goto LABEL_47;
    }

    if (a3 != 2)
    {
      goto LABEL_47;
    }

    if (Air::PipelineScript::pipeline_as_render(a2))
    {
      v9 = Air::PipelineScript::pipeline_as_render(a2);
      v10 = (v9 - *v9);
      if (*v10 >= 0xBu)
      {
        v11 = v10[5];
        if (v11)
        {
LABEL_14:
          v12 = (v9 + v11 + *(v9 + v11));
LABEL_46:
          MTLCompilerObject::AIRNTGetFragmentFunctionScript(v9, a2, &v34, v12);
          goto LABEL_47;
        }
      }
    }

    else
    {
      if (Air::PipelineScript::pipeline_as_tile_render(a2))
      {
LABEL_37:
        v25 = Air::PipelineScript::pipeline_as_tile_render(a2);
        v26 = (v25 - *v25);
        if (*v26 >= 7u && (v27 = v26[3]) != 0)
        {
          v28 = (v25 + v27 + *(v25 + v27));
        }

        else
        {
          v28 = 0;
        }

        MTLCompilerObject::AIRNTGetTileFunctionScript(v25, a2, &v34, v28);
        goto LABEL_47;
      }

      if (!Air::PipelineScript::pipeline_as_mesh_render(a2))
      {
        goto LABEL_47;
      }

      v9 = Air::PipelineScript::pipeline_as_mesh_render(a2);
      v29 = (v9 - *v9);
      if (*v29 >= 0xFu)
      {
        v11 = v29[7];
        if (v11)
        {
          goto LABEL_14;
        }
      }
    }

    v12 = 0;
    goto LABEL_46;
  }

  switch(a3)
  {
    case 8:
      if (Air::PipelineScript::pipeline_as_mesh_render(a2))
      {
        v13 = Air::PipelineScript::pipeline_as_mesh_render(a2);
        v14 = (v13 - *v13);
        if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
        {
          v16 = (v13 + v15 + *(v13 + v15));
        }

        else
        {
          v16 = 0;
        }

        MTLCompilerObject::AIRNTGetObjectFunctionScript(v13, a2, &v34, v16);
      }

      break;
    case 7:
      if (Air::PipelineScript::pipeline_as_mesh_render(a2))
      {
        v17 = Air::PipelineScript::pipeline_as_mesh_render(a2);
        v18 = (v17 - *v17);
        if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
        {
          v20 = (v17 + v19 + *(v17 + v19));
        }

        else
        {
          v20 = 0;
        }

        MTLCompilerObject::AIRNTGetMeshFunctionScript(v17, a2, &v34, v20);
      }

      break;
    case 3:
      if (Air::PipelineScript::pipeline_as_compute(a2))
      {
        v5 = Air::PipelineScript::pipeline_as_compute(a2);
        v6 = (v5 - *v5);
        if (*v6 >= 7u && (v7 = v6[3]) != 0)
        {
          v8 = (v5 + v7 + *(v5 + v7));
        }

        else
        {
          v8 = 0;
        }

        MTLCompilerObject::AIRNTGetComputeFunctionScript(v5, a2, &v34, v8);
        break;
      }

      if (!Air::PipelineScript::pipeline_as_tile_render(a2))
      {
        break;
      }

      goto LABEL_37;
    default:
      break;
  }

LABEL_47:
  v30 = v35;
  v31 = v37;
  v32 = v38;
  v33 = (v37 + DWORD2(v37) - v38);
  *a1 = v34;
  *(a1 + 8) = v30;
  a1[2] = *(&v31 + 1);
  a1[3] = v31;
  a1[4] = v32;
  a1[5] = v33;
  if (v30 == 1)
  {
    v34 = 0;
    v35 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v34);
}

uint64_t Air::PipelineScript::pipeline_as_compute(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 2) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::PipelineScript::pipeline_as_tile_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 3) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::PipelineScript::pipeline_as_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 1) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::PipelineScript::pipeline_as_mesh_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 4) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void logCompileError(uint64_t a1, const std::string::value_type *a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_257A6F51A);
  if (a2 && *a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, " - ");
    v4 = std::string::append(&v7, a2);
    v5 = v4->__r_.__value_.__r.__words[0];
    v11[0] = v4->__r_.__value_.__l.__size_;
    *(v11 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
    v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (v10 < 0)
    {
      operator delete(__p);
    }

    __p = v5;
    *v9 = v11[0];
    *&v9[7] = *(v11 + 7);
    v10 = v6;
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    logCompileError();
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_257A46B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *flatbuffers::DetachedBuffer::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = a1 + 2;
    v4 = a1[2];
    if (v4)
    {
      v6 = *a1;
      if (*a1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        MEMORY[0x259C6B870](v4, 0x1000C8077774924);
      }
    }

    if (*(a1 + 8) == 1 && *a1)
    {
      (*(**a1 + 8))(*a1);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *v5 = 0u;
    *(a1 + 2) = 0u;
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    a1[2] = *(a2 + 16);
    *(a1 + 3) = *(a2 + 24);
    a1[5] = *(a2 + 40);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  return a1;
}

void flatbuffers::DetachedBuffer::~DetachedBuffer(flatbuffers::DetachedBuffer *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = *this;
    if (*this)
    {
      (*(*v4 + 24))(v4);
    }

    else
    {
      MEMORY[0x259C6B870](v2, 0x1000C8077774924);
    }
  }

  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
  *v3 = 0u;
  v3[1] = 0u;
}

uint64_t MTLCompilerPluginInterface::airntEmitPipelineImage(uint64_t a1, uint64_t a2, llvm::Module *a3, uint64_t __val, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a3;
  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = v17(*(a1 + 144), a2, a5, a3, "offline_module_name", a6, a7, a8, "offline_script_name", a9, a10, a11, a12, a13);
  }

  else
  {
    v21 = a6;
    v22 = a7;
    getSerializedModule(__val, &v25);
    v23 = &v26;
    v24 = 1;
    v19 = v25;
    v18 = (*(a1 + 40))(*(a1 + 144), a2, a5, *(v25 + 8), *(v25 + 16) - *(v25 + 8), "offline_module_name", v21, v22, a8, "offline_script_name", a9, a10, a11, a12, a13);
    llvm::detail::scope_exit<MTLCompilerPluginInterface::airntEmitPipelineImage(void *,llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,AIRFunctionScript const*,char **,unsigned long *,char **,unsigned long *,char **)::{lambda(void)#1}>::~scope_exit(&v23);
    (*(*v19 + 8))(v19);
  }

  return v18 ^ 1u;
}

void sub_257A46EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  llvm::detail::scope_exit<MTLCompilerPluginInterface::airntEmitPipelineImage(void *,llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,AIRFunctionScript const*,char **,unsigned long *,char **,unsigned long *,char **)::{lambda(void)#1}>::~scope_exit(va);
  (*(*v16 + 8))(v16);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerPluginInterface::compilerBuildRequest(MTLCompilerPluginInterface *this, int a2, unsigned int a3, const void *a4, uint64_t a5, uint64_t a6, llvm::Module *a7, BackendCompilationOutput *a8)
{
  if (a2)
  {
    if (a3 == 32023)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3;
    }

    getSerializedModule(v13, &v22);
    v14 = v22;
    if (*(v22 + 16) == *(v22 + 8))
    {
      v19 = "Invalid serialized bitcode";
    }

    else
    {
      v15 = *(this + 12);
      if (v15)
      {
        *(this + 155) = 1;
        v16 = v15(*(this + 16), a4, a5, a6);
LABEL_16:
        (*(*v14 + 8))(v14);
        return v16;
      }

      v19 = "Driver does not support MTLCompilerBuildRequestWithSerializedBitcode, but MTLCompilerOptionCompilerPluginRequiresSerializedBitcode was set.";
    }

    *(a8 + 2) = v19;
    v16 = 1;
    goto LABEL_16;
  }

  *(this + 155) = 1;
  v17 = *(this + 4);
  if (v17)
  {
    return v17(*(this + 16), a4, a5, a6, a7, a8, a8 + 8, a8 + 32, a8 + 40, a8 + 48, a8 + 56, a8 + 16);
  }

  *(a8 + 5) = 0;
  *(a8 + 7) = 0;
  v20 = *(this + 3);
  v21 = *(this + 16);

  return v20(v21, a4, a5, a7, a8, a8 + 8, a8 + 16);
}

void MTLCompilerObject::readVisibleFunctions(uint64_t a1, unsigned int *a2, unint64_t a3, void *a4)
{
  v7 = a2[36];
  if (v7)
  {
    v8 = (a2 + a2[37]);
    do
    {
      v9 = malloc_type_malloc(0x78uLL, 0x1050040A24A0AE1uLL);
      MTLCompilerObject::getReadParametersFromRequest(v9, v9, a2, a3, v8, a2);
      v13 = v9 + 84;
      std::__hash_table<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(a4, (v9 + 84), &std::piecewise_construct, &v13)[6] = v9;
      v8 += 14;
      --v7;
    }

    while (v7);
  }

  v10 = a2[40];
  if (v10)
  {
    v11 = (a2 + a2[41]);
    do
    {
      v12 = malloc_type_malloc(0x78uLL, 0x1050040A24A0AE1uLL);
      MTLCompilerObject::getReadParametersFromRequest(v12, v12, a2, a3, v11, a2);
      v13 = v12 + 84;
      std::__hash_table<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(a4, (v12 + 84), &std::piecewise_construct, &v13)[6] = v12;
      v11 += 14;
      --v10;
    }

    while (v10);
  }
}

uint64_t getRequiredStagesPresentMask(const Air::PipelineScript *this)
{
  v1 = (this - *this);
  if (*v1 < 9u)
  {
    return 0;
  }

  v2 = v1[4];
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + v2);
  if ((v4 - 2) < 2)
  {
    return 2;
  }

  if (v4 == 1)
  {
    v9 = Air::PipelineScript::pipeline_as_render(this);
    v10 = (v9 - *v9);
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2 * (v10[2] != 0);
    }

    v15 = Air::PipelineScript::pipeline_as_render(this);
    v16 = (v15 - *v15);
    v17 = *v16 >= 7u && v16[3] != 0;
    return v11 | v17;
  }

  else if (v4 == 4)
  {
    v5 = Air::PipelineScript::pipeline_as_mesh_render(this);
    v6 = (v5 - *v5);
    v7 = *v6 >= 9u && v6[4] != 0;
    v12 = Air::PipelineScript::pipeline_as_mesh_render(this);
    v13 = (v12 - *v12);
    v14 = 2;
    if (*v13 >= 5u)
    {
      if (v13[2])
      {
        v14 = 6;
      }

      else
      {
        v14 = 2;
      }
    }

    return v14 | v7;
  }

  else
  {
    return 0;
  }
}

void MTLCompilerObject::backendCompileExecutableRequest(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v33 = 0u;
  v34 = 0;
  memset(v32, 0, 24);
  v32[3] = -1;
  v35 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v31 = 0;
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v23 = 0;
  v24 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "MTLBuildFunctions");
  if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
  {
    MTLCompilerObject::buildSpecializedFunctionRequest();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1 + 80;
    if (*(a1 + 103) < 0)
    {
      v4 = *(a1 + 80);
    }

    v5 = __p;
    if (DiagnosticContext < 0)
    {
      v5 = __p[0];
    }

    *buf = 136446722;
    *v46 = v4;
    *&v46[8] = 2082;
    *&v46[10] = v5;
    *&v46[18] = 2080;
    *&v47 = "pipeline";
    _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", buf, 0x20u);
  }

  v6 = mach_absolute_time();
  if (SHIBYTE(DiagnosticContext) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x259C6A4D0](v20);
  __p[0] = v20;
  DiagnosticContext = llvm::LLVMContext::getDiagnosticContext(v20);
  __p[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v20);
  v7 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  *buf = 0;
  *&v46[4] = 0u;
  v47 = 0u;
  memset(v48, 0, sizeof(v48));
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  MTLCompilerObject::getReadParametersFromRequest(v7, buf, *a2, *(a2 + 8), (*(a2 + 32) + 88), *(a2 + 32));
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(a1, buf, v20, (a2 + 40), &v40, &v40 + 1, 1);
  *(a2 + 48) = ModuleFromBinaryRequest;
  if (!ModuleFromBinaryRequest)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(a1 + 64) != 0), 0, 0);
LABEL_16:
    if (v40)
    {
      free(v40);
    }

    goto LABEL_18;
  }

  if ((MTLCompilerObject::runFrameworkPasses(a1, a2, v32, v20, &v23) & 1) == 0)
  {
    goto LABEL_16;
  }

  MTLCompilerObject::backendCompileModule(a1, a2, v26, v9, &v23);
  v10 = *(a2 + 32);
  if ((*(v10 + 5) & 2) != 0)
  {
    if ((v24 - v23) >> 4 == -2)
    {
      v11 = 0;
    }

    else
    {
      v11 = 12 * (((v24 - v23) >> 4) + 2) + 4;
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = 0;
  v19 = 0;
  if ((*(v10 + 2) & 0x80) != 0)
  {
    v17 = MTLGPUArchiverFromId();
    v18 = v17;
    if (!v17 || !MTLCompilerObject::storeToBinaryArchive(a1, *(a2 + 32), *(a2 + 8), buf, v26, *(a2 + 40), v32, &v18, &v19))
    {
      (*(*(a2 + 24) + 16))();
      if (v40)
      {
        free(v40);
      }

      free(v19);
      MTLGPUArchiverDestroy();
LABEL_18:
      ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
      llvm::LLVMContext::~LLVMContext(v20);
      goto LABEL_19;
    }
  }

  MTLCompilerObject::serializeBackendCompilationOutput(a1, *(a2 + 16), a2, v32, v26, &v23, v6, v11);
  if (v17)
  {
    MTLGPUArchiverDestroy();
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
  llvm::LLVMContext::~LLVMContext(v20);
  if (v40)
  {
    free(v40);
    v40 = 0uLL;
  }

LABEL_19:
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  for (i = 22; i != 19; --i)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](&v32[i], 0);
  }

  v13 = v41;
  *&v41 = 0;
  if (v13)
  {
    free(v13);
  }

  v14 = v35;
  v35 = 0;
  if (v14)
  {
    free(v14);
  }

  v15 = v33;
  *&v33 = 0;
  if (v15)
  {
    free(v15);
  }

  v16 = v32[0];
  v32[0] = 0;
  if (v16)
  {
    free(v16);
  }
}

uint64_t serializeCompileTimeData(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = a2[1] - *a2;
    if (v2)
    {
      v3 = v2 >> 4;
      *result = v3;
      *(result + 2) = BYTE2(v3);
      *(result + 3) = BYTE3(v3);
      v4 = v3;
      if (v3)
      {
        v5 = 0;
        v6 = result + 4;
        v7 = 16 * v4;
        do
        {
          *v6 = *(*a2 + v5);
          *(v6 + 4) = *(*a2 + v5 + 8);
          v6 += 12;
          v5 += 16;
        }

        while (v7 != v5);
      }
    }
  }

  return result;
}

void BackendCompilationOutput::free(BackendCompilationOutput *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {

    free(v4);
  }
}

uint64_t MTLCodeGenServiceBuildRequest(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if ((atomic_load_explicit(byte_28153FBF8, memory_order_acquire) & 1) == 0)
    {
      MTLCodeGenServiceBuildRequest_cold_1();
    }

    v12 = qword_28153FBF0;
    v13 = mmap(0, qword_28153FBF0 + 0x800000, 3, 4098, 503316480, 0);
    if (v13 == -1)
    {
      v15 = *(a6 + 16);
      v16 = "Cannot allocate stack";
    }

    else
    {
      v14 = v13;
      if (!mprotect(v13, qword_28153FBF0, 0))
      {
        v20 = a1;
        v21 = a2;
        v22 = a3;
        v23 = a4;
        v24 = a5;
        v25 = a6;
        split_stack_call(v14 + qword_28153FBF0, 0x800000, invokeBuildRequest, &v20);
        return munmap(v14, v12 + 0x800000);
      }

      v15 = *(a6 + 16);
      v16 = "Cannot set guard page protection";
    }

    v17 = a6;
    v18 = 1;
  }

  else
  {
    v15 = *(a6 + 16);
    v16 = "Compilation failed: compiler service missing";
    v17 = a6;
    v18 = 2;
  }

  return v15(v17, v18, 0, 0, v16);
}

uint64_t ___ZL14disableFreezerv_block_invoke()
{
  v0 = getpid();

  return MEMORY[0x282203BE0](18, v0, 0, 0, 0);
}

void MTLCompilerPluginInterface::~MTLCompilerPluginInterface(void (**this)(void))
{
  if (this[16])
  {
    this[1]();
  }

  v2 = this[14];
  if (v2)
  {
    free(v2);
  }

  v3 = this[13];
  if (v3)
  {
    free(v3);
  }

  v4 = this[17];
  if (v4)
  {
    dlclose(v4);
  }

  if (this[20])
  {
    deleteCompilerHelper();
  }

  if (this[18])
  {
    v5 = this[10];
    if (v5)
    {
      v5();
    }
  }
}

uint64_t MTLCompilerPluginInterface::init(MTLCompilerPluginInterface *this, char *__s1, const void *a3, size_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  *(this + 154) = 0;
  if (strncmp(__s1, "simulatorDummyPlugin", 0x15uLL))
  {
    {
      std::string::basic_string[abi:ne200100]<0>(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes, "/System/Library/Extensions/");
      std::string::basic_string[abi:ne200100]<0>(qword_28153FB48, "/System/Library/PrivateFrameworks/");
      __cxa_atexit(__cxx_global_array_dtor, 0, &dword_2579AB000);
    }

    {
      std::string::basic_string[abi:ne200100]<0>(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPluginSuffixes, ".framework");
      std::string::basic_string[abi:ne200100]<0>(qword_28153FB18, ".bundle");
      __cxa_atexit(__cxx_global_array_dtor_147, 0, &dword_2579AB000);
    }

    std::string::basic_string[abi:ne200100]<0>(&v27, __s1);
    v8 = 0;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v27;
    }

    else
    {
      v9 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    v11 = (v9 + size);
    while (1)
    {
      v12 = SHIBYTE(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8 + 2]);
      v13 = v12 >= 0 ? &MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8] : MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8];
      v14 = v12 >= 0 ? HIBYTE(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8 + 2]) : MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8 + 1];
      if (!v14)
      {
        break;
      }

      if (size >= v14)
      {
        v15 = *v13;
        v16 = size;
        v17 = v9;
        while (1)
        {
          v18 = v16 - v14;
          if (v18 == -1)
          {
            goto LABEL_19;
          }

          v19 = memchr(v17, v15, v18 + 1);
          if (!v19)
          {
            goto LABEL_19;
          }

          v20 = v19;
          if (!memcmp(v19, v13, v14))
          {
            break;
          }

          v17 = (&v20->__r_.__value_.__l.__data_ + 1);
          v16 = v11 - (&v20->__r_.__value_.__l.__data_ + 1);
          if (v16 < v14)
          {
            goto LABEL_19;
          }
        }

        if (v20 != v11 && v20 == v9)
        {
          break;
        }
      }

LABEL_19:
      v8 += 3;
      if (v8 == 6)
      {
        goto LABEL_31;
      }
    }

    std::string::erase(&v27, 0, v14);
LABEL_31:
    operator new();
  }

  *(this + 13) = strdup(__s1);
  *(this + 17) = 0;
  *(this + 154) = 1;
  *this = MTLSimCompilerCreate;
  *(this + 1) = MTLSimCompilerDelete;
  *(this + 4) = MTLSimCompilerBuildRequestWithOptions;
  *(this + 2) = MTLSimCompilerReleaseReply;
  if (!*(this + 16))
  {
    if (a3)
    {
      v21 = malloc_type_malloc(a4, 0x44CA798uLL);
      *(this + 14) = v21;
      *(this + 15) = a4;
      memcpy(v21, a3, a4);
    }

    *(this + 16) = (*this)(a3, a4);
  }

  if (*(this + 152) == 1 && !*(this + 18))
  {
    v22 = *(this + 9);
    if (v22)
    {
      v23 = v22();
      *(this + 18) = v23;
      if (v23)
      {
        v24 = *(this + 11);
        if (v24)
        {
          v25 = v24();
        }

        else
        {
          v25 = 0;
        }

        *(this + 153) = v25;
        return 1;
      }
    }

    else
    {
      *(this + 18) = 0;
    }

    *(this + 152) = 0;
  }

  return 1;
}

void sub_257A48280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (byte_28153FB17 < 0)
  {
    MTLCompilerPluginInterface::init();
  }

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void FunctionDesc::~FunctionDesc(FunctionDesc *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = (this + 72);
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<FunctionConstantDesc>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<FunctionConstantDesc>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void printDiagnosticError(uint64_t a1, uint64_t a2)
{
  llvm::raw_string_ostream::raw_string_ostream(v4, a2);
  v3[0] = MEMORY[0x277D82218] + 16;
  v3[1] = v4;
  (*(*a1 + 24))(a1, v3);
  if (v6 != v5)
  {
    llvm::raw_ostream::flush_nonempty(v4);
  }

  llvm::raw_ostream::~raw_ostream(v4);
}

void sub_257A48590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  llvm::raw_ostream::~raw_ostream(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<MTLArgumentData>::push_back[abi:ne200100](unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<MTLArgumentData>::__emplace_back_slow_path<MTLArgumentData const&>(a1, a2);
  }

  else
  {
    std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(a1, a2);
    result = v3 + 288;
  }

  a1[1] = result;
  return result;
}

__n128 std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[2];
  *(v4 + 16) = a2[1];
  *(v4 + 32) = v6;
  *v4 = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[6];
  *(v4 + 80) = a2[5];
  *(v4 + 96) = v9;
  *(v4 + 48) = v7;
  *(v4 + 64) = v8;
  v10 = *(a2 + 15);
  *(v4 + 112) = *(a2 + 14);
  *(v4 + 120) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 16);
  v11 = *(a2 + 17);
  *(v4 + 136) = v11;
  *(v4 + 128) = v12;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 19);
  *(v4 + 144) = *(a2 + 18);
  *(v4 + 152) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a2[10];
  v15 = a2[11];
  v16 = *(a2 + 24);
  *(v4 + 200) = 0;
  *(v4 + 192) = v16;
  *(v4 + 176) = v15;
  *(v4 + 160) = v14;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((v4 + 200), *(a2 + 25), *(a2 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 26) - *(a2 + 25)) >> 4));
  result = a2[14];
  v18 = a2[15];
  v19 = a2[17];
  *(v4 + 256) = a2[16];
  *(v4 + 272) = v19;
  *(v4 + 224) = result;
  *(v4 + 240) = v18;
  *(a1 + 8) = v4 + 288;
  return result;
}

void sub_257A48728(_Unwind_Exception *a1)
{
  v6 = *(v4 + 152);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(v3, v2);
  *(v1 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t std::vector<MTLArgumentData>::__emplace_back_slow_path<MTLArgumentData const&>(unint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0xE38E38E38E38E3)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 5) >= 0x71C71C71C71C71)
  {
    v6 = 0xE38E38E38E38E3;
  }

  else
  {
    v6 = v3;
  }

  v31 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v6);
  }

  v7 = 288 * v2;
  v28 = 0;
  v29 = v7;
  v30 = v7;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = a2[2];
  v10 = a2[6];
  v12 = a2[3];
  v11 = a2[4];
  *(v7 + 80) = a2[5];
  *(v7 + 96) = v10;
  *(v7 + 48) = v12;
  *(v7 + 64) = v11;
  *v7 = v8;
  *(v7 + 16) = v9;
  v13 = *(a2 + 15);
  *(v7 + 112) = *(a2 + 14);
  *(v7 + 120) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 17);
  *(v7 + 128) = *(a2 + 16);
  *(v7 + 136) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 19);
  *(v7 + 144) = *(a2 + 18);
  *(v7 + 152) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a2[10];
  v17 = a2[11];
  v18 = *(a2 + 24);
  *(v7 + 200) = 0;
  *(v7 + 192) = v18;
  *(v7 + 176) = v17;
  *(v7 + 160) = v16;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((v7 + 200), *(a2 + 25), *(a2 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 26) - *(a2 + 25)) >> 4));
  v19 = a2[16];
  v20 = a2[17];
  v21 = a2[15];
  *(v7 + 224) = a2[14];
  *(v7 + 240) = v21;
  *(v7 + 256) = v19;
  *(v7 + 272) = v20;
  *&v30 = v30 + 288;
  v22 = a1[1];
  v23 = v29 + *a1 - v22;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(a1, *a1, v22, v23);
  v24 = *a1;
  *a1 = v23;
  v25 = a1[2];
  v27 = v30;
  *(a1 + 1) = v30;
  *&v30 = v24;
  *(&v30 + 1) = v25;
  v28 = v24;
  v29 = v24;
  std::__split_buffer<MTLArgumentData>::~__split_buffer(&v28);
  return v27;
}

void sub_257A48934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v21 = a4;
  v22 = a4;
  v19[0] = a1;
  v19[1] = &v21;
  v19[2] = &v22;
  if (a2 == a3)
  {
    v20 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = v7[2];
      *(a4 + 16) = v7[1];
      *(a4 + 32) = v9;
      *a4 = v8;
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[6];
      *(a4 + 80) = v7[5];
      *(a4 + 96) = v12;
      *(a4 + 48) = v10;
      *(a4 + 64) = v11;
      *(a4 + 112) = v7[7];
      *(v7 + 14) = 0;
      *(v7 + 15) = 0;
      *(a4 + 128) = v7[8];
      *(v7 + 16) = 0;
      *(v7 + 17) = 0;
      *(a4 + 144) = v7[9];
      *(v7 + 18) = 0;
      *(v7 + 19) = 0;
      v13 = v7[11];
      v14 = *(v7 + 24);
      *(a4 + 160) = v7[10];
      *(a4 + 176) = v13;
      *(a4 + 192) = v14;
      *(a4 + 200) = 0;
      *(a4 + 208) = 0;
      *(a4 + 216) = 0;
      *(a4 + 200) = *(v7 + 200);
      *(a4 + 216) = *(v7 + 27);
      *(v7 + 25) = 0;
      *(v7 + 26) = 0;
      *(v7 + 27) = 0;
      v15 = v7[14];
      v16 = v7[15];
      v17 = v7[17];
      *(a4 + 256) = v7[16];
      *(a4 + 272) = v17;
      *(a4 + 224) = v15;
      *(a4 + 240) = v16;
      v7 += 18;
      a4 += 288;
    }

    while (v7 != a3);
    v22 = a4;
    v20 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(a1, v5);
      v5 += 18;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>>::~__exception_guard_exceptions[abi:ne200100](v19);
}

void std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 200);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(a2 + 152);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a2 + 136);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a2 + 120);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 288;
      std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<MTLArgumentData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTLArgumentData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTLArgumentData>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 288;
    std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(v5, v4 - 288);
  }
}

char *serializeOneVertexAttribute(int *a1, char **a2)
{
  v2 = *(a1 + 3);
  v3 = v2 + 1;
  v4 = a2[2];
  if (__CFADD__(v4, v2 + 1))
  {
    goto LABEL_35;
  }

  v7 = *(a1 + 2);
  v8 = a2[1];
  if (v8 >= &v4[v3])
  {
    v9 = *a2;
  }

  else
  {
    if (!v8)
    {
      v8 = 128;
      a2[1] = 128;
    }

    while (v8 < &v4[v3])
    {
      if (v8 >> 1 >= ~v8)
      {
        v8 = &v4[v3];
      }

      else
      {
        v8 += v8 >> 1;
      }
    }

    v9 = malloc_type_realloc(*a2, v8, 0x100004077774924uLL);
    *a2 = v9;
    if (!v9)
    {
      goto LABEL_35;
    }

    a2[1] = v8;
    v4 = a2[2];
  }

  memcpy(&v4[v9], v7, v2);
  a2[2][*a2 + v2] = 0;
  v10 = &a2[2][v3];
  a2[2] = v10;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_35;
  }

  v12 = *a1;
  v11 = a1[1];
  v13 = a2[1];
  if (v13 >= (v10 + 4))
  {
    v14 = *a2;
  }

  else
  {
    if (!v13)
    {
      v13 = 128;
      a2[1] = 128;
    }

    while (v13 < (v10 + 4))
    {
      if (v13 >> 1 >= ~v13)
      {
        v13 = (v10 + 4);
      }

      else
      {
        v13 += v13 >> 1;
      }
    }

    v14 = malloc_type_realloc(*a2, v13, 0x100004077774924uLL);
    *a2 = v14;
    if (!v14)
    {
      goto LABEL_35;
    }

    a2[1] = v13;
    v10 = a2[2];
  }

  v15 = &v10[v14];
  *v15 = v11;
  v15[2] = BYTE2(v11);
  v15[3] = ((v12 << 17) & 0x40000000 | (((v12 >> 14) & 1) << 29) & 0x7FFFFFFF | ((v12 >> 3) << 31) | v11) >> 24;
  a2[2] += 4;
  v16 = *(a1 + 4);
  v17 = strlen(v16);
  v18 = dataTypeFromString(v16, v17);
  v19 = a2[2];
  if (v19 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_35;
  }

  v20 = v18;
  v21 = a2[1];
  if (v21 >= (v19 + 4))
  {
    result = *a2;
    goto LABEL_34;
  }

  if (!v21)
  {
    v21 = 128;
    a2[1] = 128;
  }

  while (v21 < (v19 + 4))
  {
    if (v21 >> 1 >= ~v21)
    {
      v21 = (v19 + 4);
    }

    else
    {
      v21 += v21 >> 1;
    }
  }

  result = malloc_type_realloc(*a2, v21, 0x100004077774924uLL);
  *a2 = result;
  if (!result)
  {
LABEL_35:
    abort();
  }

  a2[1] = v21;
  v19 = a2[2];
LABEL_34:
  *&v19[result] = v20;
  a2[2] += 4;
  return result;
}

uint64_t SerializedLibraryInfo::serializeStringArraySize(uint64_t a1, __int128 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 4;
  while (v2 != v3)
  {
    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *v2, *(v2 + 1));
    }

    else
    {
      v5 = *v2;
      v8.__r_.__value_.__r.__words[2] = *(v2 + 2);
      *&v8.__r_.__value_.__l.__data_ = v5;
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v8.__r_.__value_.__l.__size_ + 1;
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    else
    {
      v6 = HIBYTE(v8.__r_.__value_.__r.__words[2]) + 1;
    }

    v4 += v6;
    v2 = (v2 + 24);
  }

  return v4;
}

void SerializedLibraryInfo::serializeStringArray(uint64_t a1, __int128 **a2, _DWORD *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = v3 == *a2;
  *a3 = -1431655765 * ((v3 - *a2) >> 3);
  if (!v5)
  {
    v6 = (a3 + 1);
    do
    {
      if (v4[23] < 0)
      {
        std::string::__init_copy_ctor_external(&__src, *v4, *(v4 + 1));
      }

      else
      {
        v7 = *v4;
        __src.__r_.__value_.__r.__words[2] = *(v4 + 2);
        *&__src.__r_.__value_.__l.__data_ = v7;
      }

      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        v10 = __src.__r_.__value_.__r.__words[0];
        strcpy(v6, __src.__r_.__value_.__l.__data_);
        v9 = __src.__r_.__value_.__l.__size_ + 1;
        operator delete(v10);
      }

      else
      {
        v8 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
        strcpy(v6, &__src);
        v9 = v8 + 1;
      }

      v6 += v9;
      v4 += 24;
    }

    while (v4 != v3);
  }
}

llvm::NamedMDNode *getMDNodeForFunctionType(llvm::Module *a1, MTLFunctionType a2)
{
  v2 = a2 - 1;
  if (a2 - 1 >= 8 || ((0xF7u >> v2) & 1) == 0)
  {
    abort();
  }

  v3 = *off_27984E700[v2];
  v4 = 1;
  v9 = 1;
  if (*v3)
  {
    v7 = v3;
    v4 = 3;
  }

  v8 = v4;
  result = llvm::Module::getNamedMetadata(a1, &v7);
  if (result)
  {
    v6 = result;
    if (llvm::NamedMDNode::getNumOperands(result))
    {
      return llvm::NamedMDNode::getOperand(v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::SmallVector<std::string,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 24 * v3 - 1;
    v5 = -24 * v3;
    v6 = v4;
    do
    {
      v7 = *v6;
      v6 -= 24;
      if (v7 < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 = v6;
      v5 += 24;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = 0;
  llvm::handleErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v3, a2, &v4);
  result = v3;
  if (v3)
  {
    return (*(*v3 + 8))(v3);
  }

  return result;
}

void sub_257A4919C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MTLCompilerObject::readModuleFromBinaryRequest();
  }

  _Unwind_Resume(exception_object);
}

void *llvm::handleErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, MEMORY[0x277D821A8]))
    {
      *a3 = 0;
      v6 = v4[1];
      v7 = v4[2];
      if (v6 != v7)
      {
        v8 = 0;
        do
        {
          v14 = v8;
          *a3 = 0;
          v9 = *v6;
          *v6 = 0;
          v12 = v9;
          llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v12, a2, &v13);
          llvm::ErrorList::join(&v14, &v13, &v15);
          v8 = v15;
          *a3 = v15;
          v15 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          v10 = v12;
          v12 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          if (v14)
          {
            (*(*v14 + 1))(v14);
          }

          ++v6;
        }

        while (v6 != v7);
      }

      return (*(*v4 + 8))(v4);
    }

    else
    {
      v11 = v4;
      llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v11, a2, a3);
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_257A49394(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

const void **llvm::ErrorList::join@<X0>(const void ***a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = *a1;
  v7 = *a2;
  if (!result)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    if ((*(*result + 6))(result, MEMORY[0x277D821A8]))
    {
      v8 = *a1;
      if (*a2)
      {
        v9 = (*(**a2 + 48))(*a2, MEMORY[0x277D821A8]);
        v10 = *a2;
        if (v9)
        {
          *a2 = 0;
          v11 = v10[1];
          v12 = v10[2];
          if (v11 == v12)
          {
            goto LABEL_9;
          }

          do
          {
            result = std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](v8 + 1, v11++);
          }

          while (v11 != v12);
          if (v10)
          {
LABEL_9:
            result = (*(*v10 + 1))(v10);
          }

LABEL_21:
          *a3 = *a1;
          goto LABEL_22;
        }
      }

      else
      {
        v10 = 0;
      }

      v15 = v10;
      *a2 = 0;
      std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](v8 + 1, &v15);
      result = v15;
      v15 = 0;
      if (result)
      {
        result = (*(*result + 1))(result);
      }

      goto LABEL_21;
    }

    if (!*a2 || !(*(**a2 + 48))(*a2, MEMORY[0x277D821A8]))
    {
      operator new();
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v15 = *a1;
    *a1 = 0;
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(v13, v14, &v15);
    result = v15;
    v15 = 0;
    if (result)
    {
      result = (*(*result + 1))(result);
    }

    v7 = *a2;
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return result;
  }

  *a3 = result;
LABEL_22:
  *a1 = 0;
  return result;
}

void sub_257A49700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  if (a12)
  {
    MTLCompilerObject::readModuleFromBinaryRequest();
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(**a1 + 48))(*a1, MEMORY[0x277D81FF0]);
  v7 = *a1;
  *a1 = 0;
  if (result)
  {
    v8 = v7;
    llvm::ErrorHandlerTraits<void (&)(llvm::ErrorInfoBase &)>::apply<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(a2, &v8, a3);
    result = v8;
    v8 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    *a3 = v7;
  }

  return result;
}

void sub_257A49830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MTLCompilerObject::readModuleFromBinaryRequest();
  }

  _Unwind_Resume(exception_object);
}

const void **std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  v3[1] = v7;
  return result;
}

uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 3) + 1;
    if (v14 >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v15 = a2 - v13;
    v16 = v7 - v13;
    v17 = v16 >> 2;
    if (v16 >> 2 <= v14)
    {
      v17 = ((v6 - *a1) >> 3) + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v19 = v15 >> 3;
    v32 = a1;
    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(a1, v18);
    }

    v29 = 0;
    v30 = 8 * v19;
    v31 = (8 * v19);
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(&v29, a3);
    v21 = v30;
    memcpy(v31, v4, a1[1] - v4);
    v22 = *a1;
    v23 = v30;
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v24 = v4 - v22;
    v25 = (v23 - (v4 - v22));
    memcpy(v25, v22, v24);
    v26 = *a1;
    *a1 = v25;
    v27 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(&v29);
    return v21;
  }

  else if (a2 == v6)
  {
    v20 = *a3;
    *a3 = 0;
    *v6 = v20;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = v6 - 1;
    v9 = a1[1];
    if (v6 >= 8)
    {
      v10 = *v8;
      *v8 = 0;
      *v6 = v10;
      v9 = v6 + 1;
    }

    a1[1] = v9;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v4, v8, v6);
    v11 = *a3;
    *a3 = 0;
    v12 = *v4;
    *v4 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  return v4;
}

void sub_257A49AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<llvm::ErrorList>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 8);
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x259C6B890](v2, 0xA1C4030951706);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v6 = *result;
    v5 = result[1];
    if (v5 <= *v3)
    {
      v9 = v4 - v6;
      v8 = v9 == 0;
      v10 = v9 >> 2;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(v3[4], v11);
    }

    v7 = (((v5 - *v3) >> 3) + 1 + ((((v5 - *v3) >> 3) + 1) >> 63)) >> 1;
    result = std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v5, v4, &v5[-v7]);
    v3[1] -= 8 * v7;
  }

  v12 = *a2;
  *a2 = 0;
  *v4 = v12;
  v3[2] = (v4 + 1);
  return result;
}

void *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(void *a1, void *a2, void *a3)
{
  if (a2 != a1)
  {
    v6 = a2;
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      v10 = *--a3;
      v9 = v10;
      *a3 = v7;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

    while (v6 != a1);
  }

  return a2;
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t llvm::ErrorList::ErrorList(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = MEMORY[0x277D82258] + 16;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100]((a1 + 8), a2);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](v5, a3);
  return a1;
}

void sub_257A49EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void llvm::ErrorHandlerTraits<void (&)(llvm::ErrorInfoBase &)>::apply<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  (*(**a2 + 24))(__p, *a2);
  v5 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(v4, __p, 1);
  v6 = *v4 + 24 * *(v4 + 8);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  ++*(v4 + 8);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  *a3 = 0;
}

void sub_257A4A030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 24 * v4;
    if (*a1 > a2 || v7 <= a2)
    {
      llvm::SmallVectorTemplateBase<std::string,false>::grow(a1, v5);
    }

    llvm::SmallVectorTemplateBase<std::string,false>::grow(a1, v5);
  }

  return a2;
}

std::string *llvm::detail::join_impl<std::string *>@<X0>(std::string *result@<X0>, std::string *a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  *&a5->__r_.__value_.__l.__data_ = 0uLL;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (result != a2)
  {
    v8 = result;
    v10 = (0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 3) - 1) * a4;
    v11 = result;
    do
    {
      size = SHIBYTE(v11->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = v11->__r_.__value_.__l.__size_;
      }

      v10 += size;
      ++v11;
    }

    while (v11 != a2);
    std::string::reserve(a5, v10);
    v13 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
    if (v13 >= 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = v8->__r_.__value_.__r.__words[0];
    }

    if (v13 >= 0)
    {
      v15 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v8->__r_.__value_.__l.__size_;
    }

    result = std::string::append(a5, v14, v15);
    for (i = v8 + 1; i != a2; ++i)
    {
      std::string::append(a5, a3, a4);
      v17 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
      if (v17 >= 0)
      {
        v18 = i;
      }

      else
      {
        v18 = i->__r_.__value_.__r.__words[0];
      }

      if (v17 >= 0)
      {
        v19 = HIBYTE(i->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = i->__r_.__value_.__l.__size_;
      }

      result = std::string::append(a5, v18, v19);
    }
  }

  return result;
}

void sub_257A4A220(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double ___ZL15logCompileBeginRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERyPKcS7__block_invoke()
{
  mach_timebase_info(&info);
  LODWORD(v0) = info.numer;
  LODWORD(v1) = info.denom;
  result = v0 / v1;
  gMachTimeToNS = *&result;
  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<void>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = (*(v5 + 8) - *(v5 + 12) + *(v5 + 10) - a3 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5, a2, v6, 0);
  }

  return result;
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(char *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

char *flatbuffers::FlatBufferBuilder::TrackField(char *this, uint64_t a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 7);
  if (*(this + 6) - v6 <= 7uLL)
  {
    this = flatbuffers::vector_downward::reallocate(this, 8uLL);
    v6 = *(v5 + 7);
  }

  *v6 = a3 | (a2 << 32);
  *(v5 + 7) += 8;
  ++*(v5 + 16);
  v7 = *(v5 + 34);
  if (v7 <= a2)
  {
    LOWORD(v7) = a2;
  }

  *(v5 + 34) = v7;
  return this;
}

char *flatbuffers::FlatBufferBuilder::Align(flatbuffers::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return flatbuffers::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

char *flatbuffers::vector_downward::fill(char *this, unint64_t a2)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 - *(this + 7) >= a2)
  {
    *(this + 6) = v4 - a2;
    if (!a2)
    {
      return this;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(this, a2);
    *(v3 + 6) -= a2;
  }

  v5 = 0;
  do
  {
    *(*(v3 + 6) + v5++) = 0;
  }

  while (a2 != v5);
  return this;
}

char *flatbuffers::vector_downward::reallocate(flatbuffers::vector_downward *this, unint64_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = v3 - *(this + 6) + v4;
  v6 = *(this + 7) - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (*(this + 3) + v3 + v7 - 1) & -*(this + 3);
  *(this + 4) = v8;
  v9 = *this;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_2868ECDA0;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3, v8, v5, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_2868ECDA0;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = &result[*(this + 4) - v5];
  *(this + 5) = result;
  *(this + 6) = v11;
  *(this + 7) = &result[v6];
  return result;
}

char *flatbuffers::Allocator::reallocate_downward(flatbuffers::Allocator *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x259C6B870);
  }
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = *(v5 + 6);
    if ((v6 - *(v5 + 7)) <= 0xB)
    {
      flatbuffers::vector_downward::reallocate(v5, 0xCuLL);
      v6 = *(v5 + 6);
    }

    *(v5 + 6) = v6 - 12;
    v7 = *a3;
    *(v6 - 4) = *(a3 + 2);
    *(v6 - 12) = v7;
    v8 = *(v5 + 8) - *(v5 + 12) + *(v5 + 10);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v8);
  }

  return result;
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(char *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(uint64_t a1, char a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    flatbuffers::vector_downward::reallocate(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::EndTable(flatbuffers::FlatBufferBuilder *this, __int16 a2)
{
  v4 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
  if ((*(this + 34) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 34) + 2);
  }

  *(this + 34) = v5;
  v6 = *(this + 6);
  if (v6 - *(this + 7) < v5)
  {
    flatbuffers::vector_downward::reallocate(this, v5);
    v6 = *(this + 6);
  }

  *(this + 6) = v6 - v5;
  bzero((v6 - v5), v5);
  v7 = v4 - a2;
  v9 = *(this + 6);
  v8 = *(this + 7);
  v9[1] = v7;
  *v9 = *(this + 34);
  v10 = *(this + 16);
  v11 = (v8 - 8 * v10);
  if (v10)
  {
    v12 = (v8 - 8 * v10);
    do
    {
      *(v9 + v12[2]) = v4 - *v12;
      v12 += 4;
    }

    while (v12 < v8);
  }

  *(this + 7) = v11;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v13 = *(this + 4);
  v14 = *(this + 5);
  v15 = v13 - v9 + v14;
  if (*(this + 81) == 1 && v14 < v11)
  {
    v17 = *v9;
    v18 = v14 + v13;
    v19 = *(this + 5);
    while (1)
    {
      v20 = *v19;
      if (v17 == *(v18 - v20) && !memcmp((v18 - v20), v9, v17))
      {
        break;
      }

      if (++v19 >= v11)
      {
        v15 = v13 - v9 + v14;
        goto LABEL_19;
      }
    }

    v9 = (v9 + (v13 - v9 + v14 - v4));
    *(this + 6) = v9;
    v15 = v20;
  }

LABEL_19:
  if (v15 == v13 + v14 - v9)
  {
    if ((v9 - v11) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v11 = *(this + 7);
      v13 = *(this + 4);
      v14 = *(this + 5);
    }

    *v11 = v15;
    *(this + 7) = v11 + 4;
  }

  *(v14 + v13 - v4) = v15 - v4;
  *(this + 70) = 0;
  return v4;
}

uint64_t flatbuffers::FlatBufferBuilder::Finish(flatbuffers::FlatBufferBuilder *this, int a2, const char *a3, int a4)
{
  *(this + 7) = *(this + 5);
  v8 = 4;
  if (a4)
  {
    v8 = 8;
  }

  flatbuffers::FlatBufferBuilder::PreAlign(this, v8 + 4 * (a3 != 0), *(this + 9));
  if (a3)
  {
    v9 = *(this + 6);
    if ((v9 - *(this + 7)) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v9 = *(this + 6);
    }

    *(this + 6) = v9 - 4;
    *(v9 - 4) = *a3;
  }

  flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
  result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10) - a2 + 4);
  if (a4)
  {
    result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10));
  }

  *(this + 71) = 1;
  return result;
}

char *flatbuffers::FlatBufferBuilder::PreAlign(flatbuffers::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return flatbuffers::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

flatbuffers::vector_downward *flatbuffers::vector_downward::push(flatbuffers::vector_downward *this, const unsigned __int8 *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = *(this + 6);
    if (v6 - *(this + 7) < a3)
    {
      flatbuffers::vector_downward::reallocate(this, a3);
      v6 = *(v5 + 6);
    }

    *(v5 + 6) = v6 - a3;

    return memcpy((v6 - a3), __src, a3);
  }

  return this;
}

void flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(flatbuffers::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(*(this + 11), *(v2 + 8));
    MEMORY[0x259C6B890](v2, 0x1060C40C2B13FB5);
  }

  flatbuffers::vector_downward::~vector_downward(this);
}

void flatbuffers::vector_downward::~vector_downward(flatbuffers::vector_downward *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      MEMORY[0x259C6B870](v2, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

uint64_t llvm::detail::scope_exit<MTLCompilerPluginInterface::airntEmitPipelineImage(void *,llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,AIRFunctionScript const*,char **,unsigned long *,char **,unsigned long *,char **)::{lambda(void)#1}>::~scope_exit(uint64_t a1)
{
  if (*(a1 + 8) == 1 && **a1)
  {
    v2 = MEMORY[0x259C6AE50]();
    MEMORY[0x259C6B890](v2, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_28;
    }

LABEL_27:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1] || v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v9;
}

void llvm::SMDiagnostic::~SMDiagnostic(llvm::SMDiagnostic *this)
{
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(this + 128);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void MTLCompilerObject::buildRequest(uint64_t a1, unsigned int a2, int a3, unsigned int *a4, std::string::size_type a5, uint64_t a6)
{
  v179 = *MEMORY[0x277D85DE8];
  {
    llvm::install_fatal_error_handler(fatalErrorHandler, 0, v131);
    __cxa_atexit(llvm::ScopedFatalErrorHandler::~ScopedFatalErrorHandler, &MTLCompilerObject::buildRequest(unsigned int,unsigned int,void const*,unsigned long,void({block_pointer})(unsigned int,void const*,unsigned long,char const*))::scopeHandler, &dword_2579AB000);
  }

  free(*(a1 + 64));
  *(a1 + 64) = 0;
  v144 = (a1 + 64);
  *(a1 + 72) = 0;
  switch(a3)
  {
    case 0:
      std::string::basic_string[abi:ne200100]<0>(&buf, "MTLInvalidRequest");
      logCompileError(a1 + 80, "invalid compiler request type", &buf);
      std::string::~string(&buf);
      abort();
    case 1:
      if ((*a4 & 0x30000000) != 0x10000000)
      {
        goto LABEL_26;
      }

      if (MTLCompilerObject::buildRequest(unsigned int,unsigned int,void const*,unsigned long,void({block_pointer})(unsigned int,void const*,unsigned long,char const*))::requestCount >= 1)
      {
        goto LABEL_288;
      }

      ++MTLCompilerObject::buildRequest(unsigned int,unsigned int,void const*,unsigned long,void({block_pointer})(unsigned int,void const*,unsigned long,char const*))::requestCount;
LABEL_26:
      if (a2 >= ((*(a1 + 16) - *(a1 + 8)) >> 3))
      {
        goto LABEL_288;
      }

      v176 = 0u;
      buf.__r_.__value_.__r.__words[0] = a4;
      buf.__r_.__value_.__l.__size_ = a5;
      buf.__r_.__value_.__r.__words[2] = a2;
      v174 = a6;
      *&v175 = a4;
      *(&v175 + 1) = 1;
      DWORD2(v176) = 0;
      MTLCompilerObject::backendCompileExecutableRequest(a1, &buf);
      return;
    case 3:
    case 13:
      v167 = 0;
      v168 = 0;
      v169 = 0;
      MTLBuildRequestTypeToString(a3, &__p);
      if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
      {
        MTLCompilerObject::buildSpecializedFunctionRequest();
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 103) >= 0)
        {
          v11 = a1 + 80;
        }

        else
        {
          v11 = *(a1 + 80);
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
        *(buf.__r_.__value_.__r.__words + 4) = v11;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v174 = "source";
        _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", &buf, 0x20u);
      }

      v13 = mach_absolute_time();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v165 = 0;
      MEMORY[0x259C6A4D0](&v164);
      v136 = v13;
      v139 = a1 + 80;
      __p.__r_.__value_.__r.__words[0] = &v164;
      __p.__r_.__value_.__r.__words[2] = llvm::LLVMContext::getDiagnosticContext(&v164);
      __p.__r_.__value_.__l.__size_ = llvm::LLVMContext::getDiagnosticHandlerCallBack(&v164);
      llvm::LLVMContext::setDiagnosticHandlerCallBack();
      v137 = a1;
      v14 = a4[1];
      v15 = a4 + *a4 + 19;
      *&v163.__r_.__value_.__r.__words[1] = 0uLL;
      v163.__r_.__value_.__r.__words[0] = &v164;
      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = ((v15 & 0xFFFFFFFFFFFFFFFCLL) + v14);
      if ((v15 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v18 = strlen(((v15 & 0xFFFFFFFFFFFFFFFCLL) + v14));
      }

      else
      {
        v18 = 0;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(&v163, v17, &v17[v18]);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v163, " ", "");
      v65 = a4[3];
      if (v65)
      {
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v163, "-Os ", "");
        v65 = a4[3];
      }

      if ((v65 & 2) != 0)
      {
        v66 = mach_absolute_time();
      }

      else
      {
        v66 = 0;
      }

      __s1 = 0;
      v135 = v66;
      if (a3 != 13)
      {
        memset(&buf, 0, sizeof(buf));
        v158 = 0;
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v163, 0);
        --v163.__r_.__value_.__l.__size_;
        v69 = MTLGPUCompilerBuildFromSource();
        v143 = v69 != 0;
        if (v69)
        {
          AsMetalLib = MTLObjectGetAsMetalLib();
          createLibraryInfo(AsMetalLib);
        }

        v75 = a4[3];
        if ((v75 & 2) != 0)
        {
          v77 = (*&gMachTimeToNS * (mach_absolute_time() - v135));
          LODWORD(v171) = 0;
          *(&v171 + 1) = v77;
          std::vector<CompileTimeData>::push_back[abi:ne200100](&v167, &v171);
          v78 = (v168 - v167) >> 4;
          if (v78 == -2)
          {
            v76 = 0;
          }

          else
          {
            v76 = 12 * v78 + 28;
          }

          v75 = a4[3];
        }

        else
        {
          v76 = 0;
          v77 = 0;
        }

        v79 = MTLCompilerObject::serializeLibraryReply(a1, &v165, __s1, 0, buf.__r_.__value_.__l.__data_, (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3, v76, 0, (v75 & 4) != 0, 0, 0);
        v80 = buf.__r_.__value_.__r.__words[0];
        if (buf.__r_.__value_.__r.__words[0])
        {
          buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
LABEL_263:
          operator delete(v80);
        }

LABEL_264:
        if (v163.__r_.__value_.__l.__data_ != &v164)
        {
          free(v163.__r_.__value_.__l.__data_);
        }

        ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&__p);
        llvm::LLVMContext::~LLVMContext(&v164);
        v128 = v143;
        if (!v79)
        {
          v128 = 0;
        }

        if (v128)
        {
          MTLBuildRequestTypeToString(a3, &buf);
          v129 = logCompileEnd(v139, v136, "source", &buf, &unk_257A6F51A);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if ((a4[3] & 2) != 0)
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 6;
            buf.__r_.__value_.__l.__size_ = v129;
            std::vector<CompileTimeData>::push_back[abi:ne200100](&v167, &buf);
            LODWORD(buf.__r_.__value_.__l.__data_) = 4;
            buf.__r_.__value_.__l.__size_ = v129 - v77;
            std::vector<CompileTimeData>::push_back[abi:ne200100](&v167, &buf);
          }

          v150 = 0;
          v151 = 0;
          v152 = 0;
          std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v150, v167, v168, (v168 - v167) >> 4);
          if (v79[13])
          {
            v130 = v79[12];
            memset(&buf, 0, sizeof(buf));
            std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&buf, v150, v151, (v151 - v150) >> 4);
            serializeCompileTimeData(v79 + v130, &buf);
            if (buf.__r_.__value_.__r.__words[0])
            {
              buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          if (v150)
          {
            v151 = v150;
            operator delete(v150);
          }

          (*(a6 + 16))(a6, 0, v79, v165, 0);
          free(v79);
        }

        else
        {
          (*(a6 + 16))(a6);
        }

        goto LABEL_280;
      }

      v161 = 0;
      v171 = 0uLL;
      v172 = 0;
      v67 = a4[1];
      if (!v67)
      {
        v74 = a1;
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v163, 0);
        --v163.__r_.__value_.__l.__size_;
        v143 = MTLGPUCompilerBuildFromSourceToBuffer() != 0;
        std::vector<char *>::push_back[abi:ne200100](&v171, &__s1);
        goto LABEL_251;
      }

      v158 = 0;
      v159 = 0;
      v160 = 0;
      v155 = 0;
      v156 = 0;
      v157 = 0;
      v154[1] = 0;
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v163, 0);
      --v163.__r_.__value_.__l.__size_;
      if (!MTLGPUCompilerCompileFromSource())
      {
        goto LABEL_243;
      }

      AsObject = MTLModuleGetAsObject();
      v86 = (v156 - v155) >> 3;
      if ((v86 + 1) >> 61)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v87 = (v157 - v155) >> 2;
      if (v87 <= v86 + 1)
      {
        v87 = v86 + 1;
      }

      if (v157 - v155 >= 0x7FFFFFFFFFFFFFF8)
      {
        v88 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v88 = v87;
      }

      if (v88)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v155, v88);
      }

      v104 = (8 * v86);
      *v104 = AsObject;
      v105 = 8 * v86 + 8;
      v106 = v104 - (v156 - v155);
      memcpy(v106, v155, v156 - v155);
      v107 = v155;
      v155 = v106;
      v156 = v105;
      v157 = 0;
      if (v107)
      {
        operator delete(v107);
      }

      v156 = v105;
      if (v67 < 5)
      {
LABEL_240:
        v74 = v137;
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v163, 0);
        --v163.__r_.__value_.__l.__size_;
        v143 = MTLGPUCompilerLinkToBuffer() != 0;
        if (__s1)
        {
          std::vector<char *>::push_back[abi:ne200100](&v171, &__s1);
        }
      }

      else
      {
        v108 = 1;
        while (1)
        {
          v109 = ((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          v110 = (v108 & 1) != 0 ? 0 : v16 - v109;
          v113 = *v109;
          v111 = v109 + 1;
          v112 = v113;
          snprintf(&buf, 0x20uLL, "%s%zu", "linked-air-blob-", (v159 - v158) >> 3);
          v154[0] = LLVMCreateMemoryBufferWithMemoryRange();
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v158, v154);
          v153 = 0;
          v114 = MTLObjectCreate();
          if (!v114)
          {
            break;
          }

          v115 = v156;
          if (v156 >= v157)
          {
            v117 = (v156 - v155) >> 3;
            if ((v117 + 1) >> 61)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v118 = (v157 - v155) >> 2;
            if (v118 <= v117 + 1)
            {
              v118 = v117 + 1;
            }

            if (v157 - v155 >= 0x7FFFFFFFFFFFFFF8)
            {
              v119 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v119 = v118;
            }

            if (v119)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v155, v119);
            }

            v120 = (8 * v117);
            *v120 = v114;
            v116 = 8 * v117 + 8;
            v121 = v120 - (v156 - v155);
            memcpy(v121, v155, v156 - v155);
            v122 = v155;
            v155 = v121;
            v156 = v116;
            v157 = 0;
            if (v122)
            {
              operator delete(v122);
            }
          }

          else
          {
            *v156 = v114;
            v116 = (v115 + 8);
          }

          v108 = 0;
          v156 = v116;
          v67 = v67 + v110 - v112 - 4;
          v16 = v111 + v112;
          if (v67 <= 4)
          {
            goto LABEL_240;
          }
        }

        std::vector<char *>::push_back[abi:ne200100](&v171, &v153);
LABEL_243:
        v143 = 0;
        v74 = v137;
      }

      v123 = v158;
      v124 = v159;
      while (v123 != v124)
      {
        LLVMDisposeMemoryBuffer();
        v123 += 8;
      }

      if (v155)
      {
        v156 = v155;
        operator delete(v155);
      }

      if (v158)
      {
        v159 = v158;
        operator delete(v158);
      }

LABEL_251:
      if ((a4[3] & 2) != 0)
      {
        v77 = (*&gMachTimeToNS * (mach_absolute_time() - v135));
        LODWORD(buf.__r_.__value_.__l.__data_) = 0;
        buf.__r_.__value_.__l.__size_ = v77;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v167, &buf);
        v126 = (v168 - v167) >> 4;
        if (v126 == -2)
        {
          v125 = 0;
        }

        else
        {
          v125 = (12 * v126 + 28);
        }
      }

      else
      {
        v125 = 0;
        v77 = 0;
      }

      if (*(&v171 + 1) == v171)
      {
        v127 = 0;
      }

      else
      {
        v127 = v171;
      }

      v79 = MTLCompilerObject::serializeLibraryToArchiveReply(v74, &v165, v127, (*(&v171 + 1) - v171) >> 3, v143, v161, v125);
      if (v161)
      {
        LLVMDisposeMemoryBuffer();
      }

      v80 = v171;
      if (v171)
      {
        *(&v171 + 1) = v171;
        goto LABEL_263;
      }

      goto LABEL_264;
    case 4:
      std::string::basic_string[abi:ne200100]<0>(&v167, "MTLBuildOpaqueRequest");
      if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
      {
        MTLCompilerObject::buildSpecializedFunctionRequest();
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 103) >= 0)
        {
          v56 = a1 + 80;
        }

        else
        {
          v56 = *(a1 + 80);
        }

        v57 = &v167;
        if (v169 < 0)
        {
          v57 = v167;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
        *(buf.__r_.__value_.__r.__words + 4) = v56;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v57;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v174 = "opaque";
        _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", &buf, 0x20u);
      }

      v58 = mach_absolute_time();
      if (SHIBYTE(v169) < 0)
      {
        operator delete(v167);
      }

      v59 = *(a1 + 8);
      if (a2 >= ((*(a1 + 16) - v59) >> 3))
      {
        goto LABEL_288;
      }

      v178 = 0;
      memset(&buf, 0, sizeof(buf));
      LODWORD(v174) = 0;
      v175 = 0u;
      v176 = 0u;
      v177 = 0;
      v60 = *(v59 + 8 * a2);
      *(v60 + 155) = 1;
      v61 = *(v60 + 32);
      if (v61)
      {
        v62 = v61(*(v60 + 128), a4, a5, 0, 0, &buf, &buf.__r_.__value_.__l.__size_, &v175, &v175 + 8, &v176, &v176 + 8, &buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        *(&v176 + 1) = 0;
        v62 = (*(v60 + 24))(*(v60 + 128), a4, a5, 0, &buf, &buf.__r_.__value_.__l.__size_, &buf.__r_.__value_.__r.__words[2]);
      }

      LODWORD(v174) = v62;
      if (v62)
      {
        if (v62 != 1)
        {
LABEL_288:
          abort();
        }

        v71 = 2;
      }

      else
      {
        v71 = 0;
      }

      (*(a6 + 16))(a6, v71, buf.__r_.__value_.__r.__words[0], buf.__r_.__value_.__l.__size_, buf.__r_.__value_.__r.__words[2]);
      v72 = *(*(a1 + 8) + 8 * a2);
      if (*(v72 + 155) == 1)
      {
        (*(v72 + 16))(*(v72 + 128));
        *(v72 + 155) = 0;
      }

      std::string::basic_string[abi:ne200100]<0>(&v167, "MTLBuildOpaqueRequest");
      logCompileEnd(a1 + 80, v58, "opaque", &v167, &unk_257A6F51A);
      if ((SHIBYTE(v169) & 0x80000000) == 0)
      {
        return;
      }

      v73 = v167;
      goto LABEL_282;
    case 5:
      v155 = 0;
      v167 = 0;
      v168 = 0;
      v169 = 0;
      MEMORY[0x259C6A4D0](&v165);
      __p.__r_.__value_.__r.__words[0] = &v165;
      __p.__r_.__value_.__r.__words[2] = llvm::LLVMContext::getDiagnosticContext(&v165);
      __p.__r_.__value_.__l.__size_ = llvm::LLVMContext::getDiagnosticHandlerCallBack(&v165);
      llvm::LLVMContext::setDiagnosticHandlerCallBack();
      std::string::basic_string[abi:ne200100]<0>(&v163, "MTLBuildCISPIRequestToArchive");
      if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
      {
        MTLCompilerObject::buildSpecializedFunctionRequest();
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 103) >= 0)
        {
          v20 = a1 + 80;
        }

        else
        {
          v20 = *(a1 + 80);
        }

        v21 = &v163;
        if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = v163.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
        *(buf.__r_.__value_.__r.__words + 4) = v20;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v21;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v174 = "CI SPI";
        _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", &buf, 0x20u);
      }

      v132 = mach_absolute_time();
      if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v163.__r_.__value_.__l.__data_);
      }

      v133 = a1 + 80;
      v138 = a1;
      v22 = a4[2];
      v23 = a4[3];
      std::vector<llvm::Module *>::vector[abi:ne200100](&v163, v22);
      v134 = v22;
      if (!v22)
      {
        goto LABEL_54;
      }

      v24 = 0;
      v25 = (a4 + v23 + 4);
      break;
    case 6:
      v19 = "MTLSpecializeFunction request type is deprecated, use MTLSpecializeFunctionToArchive";
      goto LABEL_108;
    case 7:
      v176 = 0u;
      buf.__r_.__value_.__r.__words[0] = a4;
      *&buf.__r_.__value_.__r.__words[1] = a5;
      v174 = a6;
      *&v175 = a4;
      *(&v175 + 1) = 1;
      DWORD2(v176) = 0;
      MTLCompilerObject::downgradeAndLoadModuleRequest(a1, &buf);
      return;
    case 8:

      MTLCompilerObject::logCompilerFailure(a1, a4, a5, a6);
      return;
    case 10:
      if (a2 >= ((*(a1 + 16) - *(a1 + 8)) >> 3))
      {
        goto LABEL_288;
      }

      v176 = 0u;
      buf.__r_.__value_.__r.__words[0] = a4;
      buf.__r_.__value_.__l.__size_ = a5;
      buf.__r_.__value_.__r.__words[2] = a2;
      v174 = a6;
      *&v175 = a4;
      *(&v175 + 1) = 5;
      DWORD2(v176) = 4;
      MTLCompilerObject::backendCompileStatelessRequest(a1, &buf);
      return;
    case 11:
      v19 = "MTLStitchFunctionDagRequest request type is deprecated, use MTLStitchFunctionDagToArchive";
LABEL_108:
      MTLCompilerErrorObject::setFormattedErrorMessage(v144, v19);
      v63 = *(a6 + 16);
      v64 = 2 * (*v144 != 0);

      v63(a6, v64, 0, 0);
      return;
    case 14:
      MEMORY[0x259C6A4D0](&buf);
      MTLCompilerObject::stitchFunctionDag(a1, &buf, v55, a4, a5, a6);
      llvm::LLVMContext::~LLVMContext(&buf);
      return;
    case 15:

      MTLCompilerObject::buildSpecializedFunctionRequest(a1, a4, a5, v10, a6);
      return;
    case 16:

      MTLCompilerObject::generateMachO(a1, a4, a5, a6);
      return;
    case 17:

      MTLCompilerObject::generateBinaryArchiveID(a1, a4, a5, a6);
      return;
    default:
      std::string::basic_string[abi:ne200100]<0>(&buf, "MTLBuildRequestTypeUnknown");
      logCompileError(a1 + 80, "unknown compiler request type", &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      (*(a6 + 16))(a6, 2, 0, 0, "Internal compiler error.");
      return;
  }

  do
  {
    v26 = *v25;
    buf.__r_.__value_.__r.__words[0] = a4 + *(v25 - 1);
    buf.__r_.__value_.__l.__size_ = v26;
    buf.__r_.__value_.__r.__words[2] = &unk_257A6F51A;
    v174 = 0;
    llvm::getLazyBitcodeModule();
    llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(v170, &v171);
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(v170);
    if (v172)
    {
      (*(a6 + 16))(a6, 2, 0, 0, "Failed to read function bitcode.");
LABEL_163:
      if ((v172 & 1) == 0)
      {
        std::unique_ptr<llvm::Module>::reset[abi:ne200100](&v171, 0);
      }

LABEL_165:
      v84 = 0;
      v89 = 0;
      v90 = 1;
      goto LABEL_185;
    }

    v27 = v171;
    *&v171 = 0;
    llvm::Module::materializeAll(&buf, v27);
    if (buf.__r_.__value_.__r.__words[0])
    {
      (*(a6 + 16))(a6, 2, 0, 0, "Failed to materializeAll.");
      if (buf.__r_.__value_.__r.__words[0])
      {
        (*(*buf.__r_.__value_.__l.__data_ + 8))(buf.__r_.__value_.__r.__words[0]);
      }

      goto LABEL_163;
    }

    v28 = MTLUpgradeAIRModule();
    if (v28)
    {
      *(v163.__r_.__value_.__r.__words[0] + v24) = v27;
    }

    else
    {
      (*(a6 + 16))(a6, 2, 0, 0, "Failed to upgrade AIR version.");
      if (v27)
      {
        v29 = MEMORY[0x259C6AE50](v27);
        MEMORY[0x259C6B890](v29, 0x10B2C407FF26C1CLL);
      }
    }

    if (buf.__r_.__value_.__r.__words[0])
    {
      (*(*buf.__r_.__value_.__l.__data_ + 8))(buf.__r_.__value_.__r.__words[0]);
    }

    if ((v172 & 1) == 0)
    {
      v30 = v171;
      *&v171 = 0;
      if (v30)
      {
        v31 = MEMORY[0x259C6AE50]();
        MEMORY[0x259C6B890](v31, 0x10B2C407FF26C1CLL);
      }
    }

    if (!v28)
    {
      goto LABEL_165;
    }

    v25 += 2;
    v24 += 8;
  }

  while (8 * v22 != v24);
LABEL_54:
  std::vector<ImageFilterFunctionInfoSPI>::vector[abi:ne200100](&v171, *a4);
  std::vector<llvm::Function *>::vector[abi:ne200100](&v158, *a4);
  if (*a4)
  {
    v32 = 0;
    v33 = (a4 + 5);
    v34 = (a4 + a4[1]);
    do
    {
      v35 = v34[2];
      if (v33)
      {
        strlen(v33);
      }

      Function = llvm::Module::getFunction();
      if (Function)
      {
        *&buf.__r_.__value_.__r.__words[1] = 0uLL;
        v174 = 0;
        v37 = *v34 != 0;
        buf.__r_.__value_.__s.__data_[0] = v37;
        if (v35)
        {
          v141 = v33;
          v142 = v34;
          v38 = v35;
          v39 = 0;
          v40 = v34 + 5;
          v140 = v38;
          v41 = v38;
          do
          {
            v42 = *(v40 - 2);
            v43 = *(v40 - 1);
            v44 = *v40;
            if (v39 >= v174)
            {
              size = buf.__r_.__value_.__l.__size_;
              v46 = &v39[-buf.__r_.__value_.__l.__size_];
              v47 = 0xAAAAAAAAAAAAAAABLL * (&v39[-buf.__r_.__value_.__l.__size_] >> 2);
              v48 = v47 + 1;
              if (v47 + 1 > 0x1555555555555555)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * (&v174[-buf.__r_.__value_.__l.__size_] >> 2) > v48)
              {
                v48 = 0x5555555555555556 * (&v174[-buf.__r_.__value_.__l.__size_] >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * (&v174[-buf.__r_.__value_.__l.__size_] >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v49 = 0x1555555555555555;
              }

              else
              {
                v49 = v48;
              }

              if (v49)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionArgumentInfoSPI>>(&buf.__r_.__value_.__l.__size_, v49);
              }

              v50 = 12 * v47;
              *v50 = v42;
              *(v50 + 4) = v43;
              *(v50 + 8) = v44;
              v39 = (12 * v47 + 12);
              v51 = v50 - v46;
              memcpy((v50 - v46), size, v46);
              v52 = buf.__r_.__value_.__l.__size_;
              buf.__r_.__value_.__l.__size_ = v51;
              buf.__r_.__value_.__r.__words[2] = v39;
              v174 = 0;
              if (v52)
              {
                operator delete(v52);
              }
            }

            else
            {
              *v39 = v42;
              *(v39 + 1) = v43;
              *(v39 + 2) = v44;
              v39 += 12;
            }

            v40 += 3;
            buf.__r_.__value_.__r.__words[2] = v39;
            --v41;
          }

          while (v41);
          v37 = buf.__r_.__value_.__s.__data_[0];
          v33 = v141;
          v34 = v142;
          LODWORD(v35) = v140;
        }

        *(v158 + v32) = Function;
        v53 = v171 + 32 * v32;
        *v53 = v37;
        if (v53 != &buf)
        {
          std::vector<ImageFilterFunctionArgumentInfoSPI>::__assign_with_size[abi:ne200100]<ImageFilterFunctionArgumentInfoSPI*,ImageFilterFunctionArgumentInfoSPI*>((v53 + 8), buf.__r_.__value_.__l.__size_, buf.__r_.__value_.__r.__words[2], 0xAAAAAAAAAAAAAAABLL * ((buf.__r_.__value_.__r.__words[2] - buf.__r_.__value_.__l.__size_) >> 2));
        }

        if (buf.__r_.__value_.__l.__size_)
        {
          buf.__r_.__value_.__r.__words[2] = buf.__r_.__value_.__l.__size_;
          operator delete(buf.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        MTLCompilerErrorObject::setFormattedErrorMessage(v144, "Failed to find function %s in library", v33);
        (*(a6 + 16))(a6, 2, 0, 0, *v144);
      }

      v33 += strlen(v33) + 1;
      v34 += 3 * v35 + 3;
      ++v32;
    }

    while (v32 < *a4);
  }

  if ((*(a4 + 17) & 2) != 0)
  {
    v54 = mach_absolute_time();
  }

  else
  {
    v54 = 0;
  }

  v164 = 0;
  ComposeImageFuncFromLibrariesSPI = MTLCompilerObject::getComposeImageFuncFromLibrariesSPI(v138);
  if (ComposeImageFuncFromLibrariesSPI)
  {
    v82 = ComposeImageFuncFromLibrariesSPI(&v163, &v158, &v171, &v164);
    goto LABEL_147;
  }

  if (v134 >= 2)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(v144, "Creating a ComputePipeline from multiple libraries is unsupported. Found functions from %d modules", v134);
    goto LABEL_167;
  }

  ComposeImageFuncSPI = MTLCompilerObject::getComposeImageFuncSPI(v138);
  if (ComposeImageFuncSPI)
  {
    v82 = ComposeImageFuncSPI(*v163.__r_.__value_.__l.__data_, &v158, &v171, &v164);
LABEL_147:
    v83 = v82;
    if (v82)
    {
      if ((*(a4 + 17) & 2) != 0)
      {
        v84 = (*&gMachTimeToNS * (mach_absolute_time() - v54));
        LODWORD(buf.__r_.__value_.__l.__data_) = 2;
        buf.__r_.__value_.__l.__size_ = v84;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v167, &buf);
        v91 = (v168 - v167) >> 4;
        if (v91 == -2)
        {
          v85 = 0;
        }

        else
        {
          v85 = (12 * v91 + 28);
        }
      }

      else
      {
        v84 = 0;
        v85 = 0;
      }

      LLVMExtraMakeSharedModule();
      Name = llvm::Value::getName(v83);
      if (Name)
      {
        std::string::basic_string[abi:ne200100](&buf, Name, v92);
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      MTLMetalFunctionCreate();
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      MTLMetalLibCreateExecutableWithTriple();
      MTLMetalLibInsertFunction();
      v95 = MTLWriteMetalLibToMemoryBuffer();
      v89 = MTLCompilerObject::serializeLibraryToArchiveReply(v138, &v155, 0, 0, 1, v95, v85);
      if (v95)
      {
        LLVMDisposeMemoryBuffer();
      }

      LLVMExtraDisposeSharedModule();
      v90 = 0;
      goto LABEL_182;
    }

    v144 = &v164;
LABEL_167:
    (*(a6 + 16))(a6, 2, 0, 0, *v144);
  }

  else
  {
    (*(a6 + 16))(a6, 2, 0, 0, "Failed to load composeImageFunc plugin");
  }

  v84 = 0;
  v89 = 0;
  v90 = 1;
LABEL_182:
  if (v158)
  {
    v159 = v158;
    operator delete(v158);
  }

  buf.__r_.__value_.__r.__words[0] = &v171;
  std::vector<ImageFilterFunctionInfoSPI>::__destroy_vector::operator()[abi:ne200100](&buf);
LABEL_185:
  if (v163.__r_.__value_.__r.__words[0])
  {
    v163.__r_.__value_.__l.__size_ = v163.__r_.__value_.__r.__words[0];
    operator delete(v163.__r_.__value_.__l.__data_);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&__p);
  llvm::LLVMContext::~LLVMContext(&v165);
  if (v89)
  {
    v96 = v90;
  }

  else
  {
    v96 = 1;
  }

  if ((v96 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, &unk_257A6F51A);
    if (_MTLIsInternalBuild() && *a4)
    {
      v97 = 20;
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&v163, "; ");
        std::string::push_back(&v163, *(a4 + v97));
        buf = v163;
        memset(&v163, 0, sizeof(v163));
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v99 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v99 = buf.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, p_buf, v99);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v163.__r_.__value_.__l.__data_);
        }

        v100 = v97 - 19;
        ++v97;
      }

      while (v100 < *a4);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "MTLBuildCISPIRequestToArchive");
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v101 = &__p;
    }

    else
    {
      v101 = __p.__r_.__value_.__r.__words[0];
    }

    v102 = logCompileEnd(v133, v132, "CI SPI", &buf, v101);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if ((*(a4 + 17) & 2) != 0)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 6;
      buf.__r_.__value_.__l.__size_ = v102;
      std::vector<CompileTimeData>::push_back[abi:ne200100](&v167, &buf);
      LODWORD(buf.__r_.__value_.__l.__data_) = 4;
      buf.__r_.__value_.__l.__size_ = v102 - v84;
      std::vector<CompileTimeData>::push_back[abi:ne200100](&v167, &buf);
    }

    v147 = 0;
    v148 = 0;
    v149 = 0;
    std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v147, v167, v168, (v168 - v167) >> 4);
    if (v89[13])
    {
      v103 = v89[12];
      memset(&buf, 0, sizeof(buf));
      std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&buf, v147, v148, (v148 - v147) >> 4);
      serializeCompileTimeData(v89 + v103, &buf);
      if (buf.__r_.__value_.__r.__words[0])
      {
        buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (v147)
    {
      v148 = v147;
      operator delete(v147);
    }

    (*(a6 + 16))(a6, 0, v89, v155, 0);
    free(v89);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_280:
  v73 = v167;
  if (v167)
  {
    v168 = v167;
LABEL_282:
    operator delete(v73);
  }
}

void fatalErrorHandler(void *a1, char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__str, a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = p_str;
    _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "LLVM ERROR: %s", buf, 0xCu);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Cannot select:");
  v8 = 10;
  std::string::basic_string[abi:ne200100]<0>(&v9, "unable to lower arguments");
  v10 = 10;
  std::string::basic_string[abi:ne200100]<0>(v11, "unable to translate");
  v12 = 21;
  std::string::basic_string[abi:ne200100]<0>(v13, "cannot select");
  v14 = 21;
  std::string::basic_string[abi:ne200100]<0>(v15, "unable to legalize");
  v16 = 21;
  memset(v5, 0, sizeof(v5));
  v3 = v5;
  LOBYTE(v4) = 0;
  operator new();
}

void sub_257A4D4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  a24 = &a13;
  std::vector<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void std::vector<char *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_257A4D8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 33) < 0)
  {
    operator delete(*(v33 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::logCompilerFailure(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a3;
  if (a3 <= 7 || ((v6 = *a2, v28 = 8, !v6) ? (v7 = 0) : (v7 = DeserialContext::stringFromSerializedData(&v26)), (v8 = [gReplayLogDirectory stringByAppendingString:v7], v27 > v28) ? (v9 = v27 - v28 > 7) : (v9 = 0), !v9))
  {
LABEL_30:
    abort();
  }

  v10 = v26;
  v11 = *(v26 + v28);
  v12 = v28 + 8;
  v28 += 8;
  if (v11)
  {
    if (v12 >= v27)
    {
      goto LABEL_30;
    }

    v28 = v11 + v12;
    if (v11 + v12 > v27)
    {
      goto LABEL_30;
    }

    v13 = v8;
    v25 = 0;
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v14 createDirectoryAtPath:gReplayLogDirectory withIntermediateDirectories:1 attributes:0 error:&v25])
    {
      v15 = fopen([v13 UTF8String], "wb");
      if (v15)
      {
        v16 = v15;
        v17 = fwrite(v10 + v12, 1uLL, v11, v15);
        fclose(v16);
        if (v17 == v11)
        {
          v18 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
          *v18 = 1;
          return (*(a4 + 16))(a4, 0, v18, 1, 0);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          MTLCompilerObject::logCompilerFailure(v13);
        }

        MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Failed to write log file (wrote %llu bytes, expected %llu bytes): %s", v17, v11, [v13 UTF8String]);
        v21 = *(a1 + 64);
        goto LABEL_25;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MTLCompilerObject::logCompilerFailure(v13);
      }

      v24 = (a1 + 64);
      [v13 UTF8String];
      MTLCompilerErrorObject::setFormattedErrorMessage(v24, "Failure to create log file: %s");
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MTLCompilerObject::logCompilerFailure(&v25);
      }

      v24 = (a1 + 64);
      [objc_msgSend(v25 "localizedDescription")];
      MTLCompilerErrorObject::setFormattedErrorMessage(v24, "Failure to create log directory: %s");
    }

    v21 = *v24;
LABEL_25:
    v20 = *(a4 + 16);
    v22 = a4;
    v23 = 2;
    return v20(v22, v23, 0, 0, v21);
  }

  v20 = *(a4 + 16);
  v21 = "MTLCompilerService received an empty replay block to log";
  v22 = a4;
  v23 = 1;
  return v20(v22, v23, 0, 0, v21);
}

uint64_t MTLCompilerObject::generateMachO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v112 = *MEMORY[0x277D85DE8];
  v104 = 0u;
  v105 = 0u;
  v106 = 1065353216;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  if (*(a2 + 88))
  {
    DynamicLibraryWriter = MTLGPUArchiverFromId();
  }

  else
  {
    if (*(a2 + 128))
    {
      DynamicLibraryWriter = MTLGPUArchiverCreateDynamicLibraryWriter();
    }

    else
    {
      DynamicLibraryWriter = MTLGPUArchiverCreateExecutableWriter();
    }

    MTLGPUArchiverToId();
  }

  if (!DynamicLibraryWriter)
  {
    __p = 0;
    if (!MTLGPUArchiverDeleteWithId())
    {
      std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
      logMachOError(a1 + 80, __p, v107);
      if (SBYTE7(v107[1]) < 0)
      {
        operator delete(*&v107[0]);
      }

      free(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
    logMachOError(a1 + 80, v103, v107);
    if (SBYTE7(v107[1]) < 0)
    {
      operator delete(*&v107[0]);
    }

    (*(a4 + 16))(a4, 2, 0, 0, v103);
    free(v103);
    goto LABEL_202;
  }

  v103 = 0;
  if (!MTLGPUArchiverAddTool())
  {
    __p = 0;
    if (!MTLGPUArchiverDeleteWithId())
    {
      std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
      logMachOError(a1 + 80, __p, v107);
      if (SBYTE7(v107[1]) < 0)
      {
        operator delete(*&v107[0]);
      }

      free(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
    logMachOError(a1 + 80, v103, v107);
    if (SBYTE7(v107[1]) < 0)
    {
      operator delete(*&v107[0]);
    }

    goto LABEL_142;
  }

  if (*(a2 + 116))
  {
    if (!LLVMCreateMemoryBufferWithMemoryRange())
    {
      v99 = 0;
      if (!MTLGPUArchiverDeleteWithId())
      {
        std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
        logMachOError(a1 + 80, v99, v107);
        if (SBYTE7(v107[1]) < 0)
        {
          operator delete(*&v107[0]);
        }

        free(v99);
      }

      strcpy(v107, "Unable to store metal script");
      std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
      logMachOError(a1 + 80, v107, &__p);
      if (v98 < 0)
      {
        operator delete(__p);
      }

      (*(a4 + 16))(a4, 2, 0, 0, v103);
      MTLGPUArchiverDestroy();
      goto LABEL_202;
    }

    v5 = MTLGPUArchiverAddDescriptor();
    LLVMDisposeMemoryBuffer();
    if (!v5)
    {
      __p = 0;
      if (!MTLGPUArchiverDeleteWithId())
      {
        std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
        logMachOError(a1 + 80, __p, v107);
        if (SBYTE7(v107[1]) < 0)
        {
          operator delete(*&v107[0]);
        }

        free(__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
      logMachOError(a1 + 80, v103, v107);
      if (SBYTE7(v107[1]) < 0)
      {
        operator delete(*&v107[0]);
      }

LABEL_142:
      (*(a4 + 16))(a4, 2, 0, 0, v103);
      free(v103);
      MTLGPUArchiverDestroy();
      goto LABEL_202;
    }
  }

  v94 = a2;
  if (!*(a2 + 108))
  {
LABEL_22:
    v14 = v94;
    v90 = malloc_type_malloc(8 * *(v94 + 8), 0x2004093837F09uLL);
    v88 = malloc_type_malloc(8 * *(v94 + 8), 0x10040436913F5uLL);
    if (*(v94 + 8))
    {
      v91 = 0;
      v15 = 0;
      do
      {
        v16 = v94 + 136 + 104 * v15;
        v17 = v14 + *(v16 + 16);
        v18 = strncmp((v17 + 4), "AIRC", 4uLL);
        v19 = strncmp((v17 + 4), "AIRS", 4uLL);
        if (*(v14 + 128) == 1)
        {
          *&v107[0] = 0;
          BYTE8(v107[0]) = 0;
          v108 = 0x1000000000000;
          v107[1] = xmmword_257A6DE20;
          memset(&v107[2], 0, 32);
          v109 = 1;
          v110 = 256;
          v111 = 0;
          __p = 0x100000000;
          v97 = 0;
          flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(v107, 4, &__p);
          v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(v107, 2);
          flatbuffers::FlatBufferBuilder::TrackField(v107, 6, v20);
          v21 = flatbuffers::FlatBufferBuilder::EndTable(v107, 0);
          flatbuffers::FlatBufferBuilder::Finish(v107, v21, "AIRD", 0);
          v22 = LLVMCreateMemoryBufferWithMemoryRangeCopy();
          flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(v107);
        }

        else if (*(v16 + 24))
        {
          v22 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v22 = 0;
        }

        if (*(v16 + 40))
        {
          v23 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v23 = 0;
        }

        if (*(v16 + 56))
        {
          v24 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v24 = 0;
        }

        v25 = *v16;
        v103 = 0;
        if (v18)
        {
          v26 = v19 == 0;
        }

        else
        {
          v26 = 1;
        }

        v27 = v26;
        v92 = v27;
        v28 = MTLGPUArchiverAddUnit();
        if (v28)
        {
          if (v18 && *(v16 + 8))
          {
            v29 = 0;
            LOBYTE(v30) = 1;
            v31 = v94;
            do
            {
              std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::find<MTLUINT256_t>(&v104, (v31 + *(v16 + 96)));
              v30 = v30 && MTLGPUArchiverAddLinkedModulesWithReferences() != 0;
              ++v29;
              v31 += 32;
            }

            while (v29 < *(v16 + 8));
          }

          else
          {
            v30 = 1;
          }

          if (((v92 | !v30) & 1) == 0)
          {
            v90[v91] = v28;
            if (v25)
            {
              v30 = MTLGPUArchiverSetUnitHash() != 0;
            }

            ++v91;
            if (*(v16 + 88))
            {
              v32 = v94 + *(v16 + 80);
              if (*(v32 + 40))
              {
                if (*(v32 + 56))
                {
                  LLVMCreateMemoryBufferWithMemoryRange();
                  LLVMCreateMemoryBufferWithMemoryRange();
                  if (v30)
                  {
                    LOBYTE(v30) = MTLGPUArchiverSetUnitReflection() != 0;
                  }

                  LLVMDisposeMemoryBuffer();
                  LLVMDisposeMemoryBuffer();
                }
              }
            }
          }
        }

        else
        {
          LOBYTE(v30) = 1;
        }

        if (v22)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v23)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v24)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v28)
        {
          v33 = v30;
        }

        else
        {
          v33 = 0;
        }

        if (!v33)
        {
          v34 = v103;
          std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
          logMachOError(a1 + 80, v34, v107);
          if (SBYTE7(v107[1]) < 0)
          {
            operator delete(*&v107[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v100, &v103);
        }

        ++v15;
        v14 = v94;
      }

      while (v15 < *(v94 + 8));
    }

    v35 = *(v14 + 100);
    v36 = *(v14 + 56);
    v103 = 0;
    if (v35 < 0x40)
    {
LABEL_123:
      free(v90);
      free(v88);
      if (*(v94 + 128) == 1)
      {
        v103 = 0;
        v66 = MTLGPUArchiverSetInstallName();
        v67 = v66 != 0;
        if (!v66)
        {
          v68 = v103;
          if (v103)
          {
            std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
            logMachOError(a1 + 80, v68, v107);
            if (SBYTE7(v107[1]) < 0)
            {
              operator delete(*&v107[0]);
            }

            std::vector<char *>::push_back[abi:ne200100](&v100, &v103);
            v67 = 0;
          }
        }
      }

      else
      {
        v67 = 1;
      }

      for (i = v105; i; i = *i)
      {
        MTLGPUArchiverUnitRefDestroy();
      }

      v103 = 0;
      if (!v67)
      {
        goto LABEL_185;
      }

      v70 = MTLGPUArchiverPackUnits();
      if (!v70)
      {
        v71 = v103;
        if (v103)
        {
          std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
          logMachOError(a1 + 80, v71, v107);
          if (SBYTE7(v107[1]) < 0)
          {
            operator delete(*&v107[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v100, &v103);
        }
      }

      if (!v70)
      {
        goto LABEL_185;
      }

      v72 = *(v94 + 129);
      if (!v72)
      {
        sandbox_extension_consume();
      }

      v74 = MTLGPUArchiverBuildToFD();
      if (!v74)
      {
        v75 = v103;
        std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
        logMachOError(a1 + 80, v75, v107);
        if (SBYTE7(v107[1]) < 0)
        {
          operator delete(*&v107[0]);
        }

        std::vector<char *>::push_back[abi:ne200100](&v100, &v103);
      }

      if ((v72 & 1) == 0)
      {
        sandbox_extension_release();
      }

      if (v74)
      {
        *&v107[0] = 0;
        (*(a4 + 16))(a4, 0, v107, 8, 0);
      }

      else
      {
LABEL_185:
        __p = 0;
        if (!MTLGPUArchiverDeleteWithId())
        {
          v76 = __p;
          std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
          logMachOError(a1 + 80, v76, v107);
          if (SBYTE7(v107[1]) < 0)
          {
            operator delete(*&v107[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v100, &__p);
        }

        v77 = v100;
        if (v101 == v100)
        {
          v79 = 25;
        }

        else
        {
          if (((v101 - v100) >> 3) <= 1)
          {
            v78 = 1;
          }

          else
          {
            v78 = (v101 - v100) >> 3;
          }

          v79 = 25;
          do
          {
            v80 = *v77++;
            v79 += strlen(v80) + 1;
            --v78;
          }

          while (v78);
        }

        v81 = malloc_type_malloc(v79, 0x100004077774924uLL);
        qmemcpy(v81, "Failed to generate machO:", 25);
        v82 = v81 + 25;
        v83 = v100;
        if (v101 != v100)
        {
          v84 = 0;
          do
          {
            v85 = v83[v84];
            v86 = strlen(v85);
            memcpy(v82, v85, v86);
            v82 += v86;
            free(*(v100 + v84));
            *v82 = 10;
            ++v84;
            v83 = v100;
          }

          while (v84 < (v101 - v100) >> 3);
        }

        *v82 = 0;
        (*(a4 + 16))(a4, 2, 0, 0, v81);
        free(v81);
      }

      MTLGPUArchiverDestroy();
      goto LABEL_202;
    }

    v37 = 0;
    v38 = v94 + v36;
    v39 = v35 >> 6 << 6;
    v40 = 1;
    while (1)
    {
      v41 = *(v38 + v37);
      if (v41 > 1)
      {
        if (v41 == 2)
        {
          goto LABEL_103;
        }

        if (v41 != 3)
        {
LABEL_95:
          v103 = 0;
LABEL_119:
          v65 = v103;
          std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
          logMachOError(a1 + 80, v65, v107);
          if (SBYTE7(v107[1]) < 0)
          {
            operator delete(*&v107[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v100, &v103);
          v40 = 0;
          goto LABEL_122;
        }

        v42 = malloc_type_malloc(0x18uLL, 0x2004093837F09uLL);
        v43 = v42;
        v44 = *(v38 + v37 + 32);
        v45 = (v38 + v37 + 16);
        if ((v44 & 2) != 0)
        {
LABEL_86:
          v47 = *v45;
        }

        else
        {
          v46 = *v45;
          if (v46 != -1)
          {
            v45 = &v90[v46];
            goto LABEL_86;
          }

          v47 = 0;
        }

        v42[1] = v47;
        v48 = (v38 + v37 + 24);
        if (v44)
        {
LABEL_90:
          v50 = *v48;
        }

        else
        {
          v49 = *v48;
          if (v49 != -1)
          {
            v48 = &v90[v49];
            goto LABEL_90;
          }

          v50 = 0;
        }

        v42[2] = v50;
        v51 = (v38 + v37 + 8);
        if ((v44 & 4) == 0)
        {
          v52 = *v51;
          if (v52 == -1)
          {
            goto LABEL_107;
          }

          v51 = &v90[v52];
        }

        v53 = *v51;
LABEL_108:
        *v43 = v53;
        goto LABEL_115;
      }

      if (v41)
      {
        if (v41 != 1)
        {
          goto LABEL_95;
        }

LABEL_103:
        v43 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
        v62 = (v38 + v37 + 8);
        if ((*(v38 + v37 + 32) & 2) != 0)
        {
LABEL_106:
          v53 = *v62;
        }

        else
        {
          v63 = *v62;
          if (v63 != -1)
          {
            v62 = &v90[v63];
            goto LABEL_106;
          }

LABEL_107:
          v53 = 0;
        }

        goto LABEL_108;
      }

      v54 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
      v43 = v54;
      v55 = *(v38 + v37 + 32);
      v56 = (v38 + v37 + 8);
      if ((v55 & 2) == 0)
      {
        v57 = *v56;
        if (v57 == -1)
        {
          v58 = 0;
          goto LABEL_100;
        }

        v56 = &v90[v57];
      }

      v58 = *v56;
LABEL_100:
      *v54 = v58;
      v59 = v38 + v37;
      if (v55)
      {
        v61 = *(v59 + 16);
      }

      else
      {
        v60 = *(v59 + 16);
        if (v60 == -1)
        {
          v61 = 0;
        }

        else
        {
          v61 = v90[v60];
        }
      }

      v54[1] = v61;
LABEL_115:
      v103 = 0;
      if ((v40 & 1) == 0)
      {
        free(v43);
        goto LABEL_119;
      }

      v64 = MTLGPUArchiverAddPipeline();
      free(v43);
      if (!v64)
      {
        goto LABEL_119;
      }

      v40 = 1;
LABEL_122:
      v37 += 64;
      if (v39 == v37)
      {
        goto LABEL_123;
      }
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = v94 + *(v94 + 80);
  v9 = *(v94 + 104);
  while (1)
  {
    if (v7 >= v9 || (v10 = v7 + 32, v9 < v7 + 32) || (v11 = *(v8 + v7 + 16), v107[0] = *(v8 + v7), v107[1] = v11, v9 <= v10) || v9 - v10 <= 3 || v7 + 36 >= v9 || (v7 += 36 + *(v8 + v10), v7 > v9))
    {
      abort();
    }

    LLVMCreateMemoryBufferWithMemoryRange();
    v99 = 0;
    v12 = MTLGPUArchiverAddUnit();
    LLVMDisposeMemoryBuffer();
    if (!v12)
    {
      break;
    }

    v13 = MTLGPUArchiverUnitRefCreateWithUnitId();
    __p = v107;
    std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&v104, v107, &std::piecewise_construct, &__p)[6] = v13;
    if (++v6 >= *(v94 + 108))
    {
      goto LABEL_22;
    }
  }

  if (!MTLGPUArchiverDeleteWithId())
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
    logMachOError(a1 + 80, 0, &__p);
    if (v98 < 0)
    {
      operator delete(__p);
    }

    free(0);
  }

  v73 = v99;
  std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
  logMachOError(a1 + 80, v73, &__p);
  if (v98 < 0)
  {
    operator delete(__p);
  }

  (*(a4 + 16))(a4, 2, 0, 0, v99);
  free(v99);
  MTLGPUArchiverDestroy();
LABEL_202:
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  return std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(&v104);
}

void sub_257A4EC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (*(v36 - 185) < 0)
  {
    operator delete(*(v36 - 208));
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(&a36);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::generateBinaryArchiveID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  if (MTLGPUArchiverCreateExecutableWriter())
  {
    v6 = MTLGPUArchiverToId();
    if (v6)
    {
      v7 = v6;
      v8 = strlen(v6);
      (*(a4 + 16))(a4, 0, v7, v8 + 1, 0);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MTLGenerateBinaryArchiveID");
      logMachOError(a1 + 80, "Failed to create binary archive ID", __p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      (*(a4 + 16))(a4, 2, 0, 0, "Failed to generate Binary archive ID");
    }

    MTLGPUArchiverDestroy();
  }

  else
  {
    v9 = v20;
    std::string::basic_string[abi:ne200100]<0>(__p, "MTLGenerateBinaryArchiveID");
    logMachOError(a1 + 80, v9, __p);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(&v17, "Failed to generate Binary archive ID: ");
    std::string::basic_string[abi:ne200100]<0>(v15, v20);
    if ((v16 & 0x80u) == 0)
    {
      v10 = v15;
    }

    else
    {
      v10 = v15[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v11 = v16;
    }

    else
    {
      v11 = v15[1];
    }

    v12 = std::string::append(&v17, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v19 = v12->__r_.__value_.__r.__words[2];
    *__p = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v19 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    (*(a4 + 16))(a4, 2, 0, 0, v14);
    free(v20);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_257A4EF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::find_if[abi:ne200100]<std::__wrap_iter<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo *>,fatalErrorHandler(void *,char const*,BOOL)::$_0>(uint64_t a1, uint64_t a2, const void ***a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v6 = *(a3 + 23);
    while (1)
    {
      v7 = *(v3 + 23);
      v8 = v7 >= 0 ? *(v3 + 23) : *(v3 + 8);
      if ((v6 & 0x80) != 0)
      {
        if (v8 == -1)
        {
LABEL_26:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v10 = *a3;
        v9 = a3[1] >= v8 ? v8 : a3[1];
      }

      else
      {
        if (v8 == -1)
        {
          goto LABEL_26;
        }

        v9 = v6 >= v8 ? v8 : v6;
        v10 = a3;
      }

      v11 = v7 >= 0 ? v3 : *v3;
      if (!memcmp(v10, v11, v9) && v9 == v8)
      {
        break;
      }

      v3 += 32;
      if (v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void *std::vector<fatalErrorHandler(void *,char const*,BOOL)::AllowHashInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::AllowHashInfo>>::vector[abi:ne200100](void *a1, const void *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_257A4F104(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>,fatalErrorHandler(void *,char const*,BOOL)::CollectInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::vector<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *llvm::SmallVectorImpl<char>::append<char const*,void>(void *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[1];
  if (result[2] < (v5 + a3 - __src))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + v5), __src, v4);
    v5 = v3[1];
  }

  v3[1] = v5 + v4;
  return result;
}

void *llvm::SmallVectorTemplateBase<char,true>::push_back(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*result + v2) = a2;
  ++result[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<llvm::Module *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A4F438(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<ImageFilterFunctionInfoSPI>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<ImageFilterFunctionInfoSPI>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<ImageFilterFunctionInfoSPI>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionInfoSPI>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionInfoSPI>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ImageFilterFunctionInfoSPI>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ImageFilterFunctionInfoSPI>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ImageFilterFunctionInfoSPI>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t *std::vector<llvm::Function *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A4F658(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionArgumentInfoSPI>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::vector<ImageFilterFunctionArgumentInfoSPI>::__assign_with_size[abi:ne200100]<ImageFilterFunctionArgumentInfoSPI*,ImageFilterFunctionArgumentInfoSPI*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ImageFilterFunctionArgumentInfoSPI>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<ImageFilterFunctionArgumentInfoSPI>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionArgumentInfoSPI>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void *DeserialContext::stringFromSerializedData(DeserialContext *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  v3 = v1 - v2;
  if (v1 <= v2 || (v5 = *this, v6 = strnlen((*this + v2), v1 - v2), v6 == v3))
  {
    abort();
  }

  v7 = v6;
  result = [MEMORY[0x277CCACA8] stringWithCString:v5 + v2 encoding:4];
  *(this + 2) += v7 + 1;
  return result;
}

void logMachOError(uint64_t a1, const std::string::value_type *a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_257A6F51A);
  if (a2 && *a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, " - ");
    v4 = std::string::append(&v7, a2);
    v5 = v4->__r_.__value_.__r.__words[0];
    v11[0] = v4->__r_.__value_.__l.__size_;
    *(v11 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
    v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (v10 < 0)
    {
      operator delete(__p);
    }

    __p = v5;
    *v9 = v11[0];
    *&v9[7] = *(v11 + 7);
    v10 = v6;
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    logMachOError();
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_257A4FA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_28;
    }

LABEL_27:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1] || v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::find<MTLUINT256_t>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == *a2 && result[3] == a2[1] && result[4] == a2[2] && result[5] == a2[3])
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateSlabs(a1, a1[2], (a1[2] + 8 * *(a1 + 6)), a4);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateCustomSizedSlabs(a1, v5, v6, v7);
  v8 = a1[8];
  if (v8 != a1 + 10)
  {
    free(v8);
  }

  v9 = a1[2];
  if (v9 != a1 + 4)
  {
    free(v9);
  }

  return a1;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateSlabs(uint64_t result, llvm **a2, llvm **a3, unint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = result;
    v7 = a2;
    do
    {
      v8 = ((v7 - *(v6 + 16)) >> 10) & 0x1FFFFFF;
      if (v8 >= 0x1E)
      {
        LOBYTE(v8) = 30;
      }

      v9 = *v5++;
      result = llvm::deallocate_buffer(v9, (4096 << v8));
      ++v7;
    }

    while (v5 != a3);
  }

  return result;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateCustomSizedSlabs(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(result + 72);
  if (v4)
  {
    v5 = *(result + 64);
    v6 = v5 + 16 * v4;
    do
    {
      v7 = *v5;
      v8 = *(v5 + 8);
      v5 += 16;
      result = llvm::deallocate_buffer(v7, v8);
    }

    while (v5 != v6);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 3);
      *(a4 + 32) = *(v6 + 8);
      *(a4 + 24) = v8;
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<FunctionConstantDesc>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<FunctionConstantDesc>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<FunctionConstantDesc>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<FunctionConstantDesc>::__emplace_back_slow_path<FunctionConstantDesc>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 3);
  *(v7 + 32) = *(a2 + 8);
  *(v7 + 24) = v9;
  *&v18 = 40 * v2 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(&v16);
  return v15;
}

void sub_257A501F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionDesc>,FunctionDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 16);
      v9 = *(v7 + 48);
      v10 = *(v7 + 64);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = v9;
      *(a4 + 16) = v8;
      *(a4 + 64) = v10;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v7 + 96);
      *(a4 + 112) = *(v7 + 112);
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(a4 + 120) = *(v7 + 120);
      v7 += 136;
      a4 += 136;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator<FunctionDesc>::destroy[abi:ne200100](a1, v5);
      v5 += 136;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator<FunctionDesc>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3)
  {
    *(a2 + 104) = v3;
    operator delete(v3);
  }

  v4 = (a2 + 72);
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 136;
      std::allocator<FunctionDesc>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<FunctionDesc>::~__split_buffer(void **a1)
{
  std::__split_buffer<FunctionDesc>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<FunctionDesc>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 136;
    std::allocator<FunctionDesc>::destroy[abi:ne200100](v4, i - 136);
  }
}

char *std::vector<MTLTagType>::emplace_back<MTLTagType>(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = (v13 + 1);
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
  return v6 - 8;
}

__n128 std::vector<FunctionDesc>::__construct_one_at_end[abi:ne200100]<FunctionDesc const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 16) = v5;
  *v4 = *a2;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  std::vector<FunctionConstantDesc>::__init_with_size[abi:ne200100]<FunctionConstantDesc*,FunctionConstantDesc*>((v4 + 72), *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  std::vector<MTLTagType>::__init_with_size[abi:ne200100]<MTLTagType*,MTLTagType*>((v4 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  result = *(a2 + 120);
  *(v4 + 120) = result;
  *(a1 + 8) = v4 + 136;
  return result;
}

void sub_257A5064C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t std::vector<FunctionDesc>::__emplace_back_slow_path<FunctionDesc const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionDesc>>(a1, v6);
  }

  v7 = 136 * v2;
  v18 = 0;
  v19 = v7;
  v20 = 136 * v2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 16) = v8;
  *v7 = *a2;
  v11 = 136 * v2;
  *(v11 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  std::vector<FunctionConstantDesc>::__init_with_size[abi:ne200100]<FunctionConstantDesc*,FunctionConstantDesc*>((v11 + 72), *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  std::vector<MTLTagType>::__init_with_size[abi:ne200100]<MTLTagType*,MTLTagType*>((v7 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  *(v7 + 120) = *(a2 + 120);
  *&v20 = v20 + 136;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionDesc>,FunctionDesc*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<FunctionDesc>::~__split_buffer(&v18);
  return v17;
}

void sub_257A507F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100]((v6 - 40));
  std::__split_buffer<FunctionDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<FunctionConstantDesc>::__init_with_size[abi:ne200100]<FunctionConstantDesc*,FunctionConstantDesc*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<FunctionConstantDesc>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257A50880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<FunctionConstantDesc>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*,FunctionConstantDesc*,FunctionConstantDesc*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v9 = *(v6 + 3);
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(v6 + 8);
      v4[1].__r_.__value_.__r.__words[0] = v9;
      v6 = (v6 + 40);
      v4 = (v8 + 40);
      v14 = (v8 + 40);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t *std::vector<MTLTagType>::__init_with_size[abi:ne200100]<MTLTagType*,MTLTagType*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257A50A20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::unique_ptr<llvm::Module>::reset[abi:ne200100](a1, 0);
  }

  return a1;
}

uint64_t *std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CompileTimeData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257A50B08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CompileTimeData>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CompileTimeData>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CompileTimeData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 136;
        std::allocator<FunctionDesc>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MTLArgumentData>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MTLArgumentData>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(a1, i))
  {
    i -= 288;
  }

  *(a1 + 8) = a2;
}

void std::vector<MTLArgumentData>::__append(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (0x8E38E38E38E38E39 * ((v2 - v3) >> 5) < a2)
  {
    v4 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 5);
    if (v4 + a2 <= 0xE38E38E38E38E3)
    {
      v5 = 0x8E38E38E38E38E39 * ((v2 - *a1) >> 5);
      v6 = 2 * v5;
      if (2 * v5 <= v4 + a2)
      {
        v6 = v4 + a2;
      }

      if (v5 >= 0x71C71C71C71C71)
      {
        v7 = 0xE38E38E38E38E3;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v7);
      }

      MTLArgumentData::MTLArgumentData((288 * v4));
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    MTLArgumentData::MTLArgumentData(v3);
  }

  a1[1] = v3;
}

void sub_257A50E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::unique_ptr<llvm::MemoryBuffer>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<llvm::MemoryBuffer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<llvm::MemoryBuffer>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t llvm::SmallVector<LLVMOpaqueModule *,1u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_257A51004(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::SmallVector<char const*,1u>::SmallVector(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x100000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(a1, a2, *a3);
  return a1;
}

void sub_257A51064(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return LLVMDisposeMemoryBuffer();
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>>>::__emplace_unique_key_args<std::string,std::string,LLVMOpaqueMemoryBuffer *&>(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

const void **std::__hash_table<std::__hash_value_type<std::string,llvm::StringRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,llvm::StringRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,llvm::StringRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,llvm::StringRef>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_257A51584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_257A5164C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868ECDF0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, void *a7)
{
  v7 = *(a1 + 8);
  v8 = MTLCompilerObject::serializeFragmentPackingInfo(*a2, *a3, *a4, *a5, a6, a7, (v7 + 40));
  v9 = *(v7 + 32);
  *(v7 + 32) = v8;
  if (v9)
  {

    free(v9);
  }
}

uint64_t std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868ECE38;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, void *a7)
{
  v7 = *(a1 + 8);
  v8 = MTLCompilerObject::serializeFragmentLinkingInfo(*a2, *a3, *a4, *a5, *a6, a7, (v7 + 40));
  v9 = *(v7 + 32);
  *(v7 + 32) = v8;
  if (v9)
  {

    free(v9);
  }
}

uint64_t std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<PostVertexDumpOutput>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 96;
        std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id MTLDeserializePluginDataDictionary(const unsigned __int8 *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:*a1];
  if (*a1)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = &a1[v4];
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v5 + 2 length:*v5 encoding:4 freeWhenDone:0];
      v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v5 + *v5 + 4 length:v5[1] freeWhenDone:0];
      [v2 setObject:v7 forKey:v6];

      v4 += *v5 + v5[1] + 4;
      ++v3;
    }

    while (v3 < *a1);
  }

  return v2;
}

uint64_t Air::CloneFunctionOptions<Air::FunctionOptions>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = Air::CloneShaderValidationConfiguration<Air::ShaderValidationConfiguration>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 70) = 1;
  v9 = (a2 + v5);
  if (*v9 >= 0x15u && (v10 = v9[10]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 20, v11, 0);
  v15 = (a2 - *a2);
  if (*v15 >= 7u && (v16 = v15[3]) != 0)
  {
    v17 = *(a2 + v16);
  }

  else
  {
    v17 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v17, 0);
  v18 = (a2 - *a2);
  if (*v18 >= 0x17u && (v19 = v18[11]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 22, v20, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  v21 = (a2 - *a2);
  v23 = *v21 >= 0x13u && (v22 = v21[9]) != 0 && *(a2 + v22) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v23, 0);
  v24 = (a2 - *a2);
  v26 = *v24 >= 0x11u && (v25 = v24[8]) != 0 && *(a2 + v25) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v26, 0);
  v27 = (a2 - *a2);
  v29 = *v27 >= 0xFu && (v28 = v27[7]) != 0 && *(a2 + v28) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v29, 0);
  v30 = (a2 - *a2);
  v32 = *v30 >= 0xDu && (v31 = v30[6]) != 0 && *(a2 + v31) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v32, 0);
  v33 = (a2 - *a2);
  v35 = *v33 >= 0xBu && (v34 = v33[5]) != 0 && *(a2 + v34) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v35, 0);
  v36 = (a2 - *a2);
  if (*v36 >= 5u && (v37 = v36[2]) != 0)
  {
    v38 = *(a2 + v37);
    if (v38 >= 3)
    {
      abort();
    }
  }

  else
  {
    v38 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v38, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t Air::CloneLinkedFunctions<Air::LinkedFunctions>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v17 = a2 + v7 + *(a2 + v7);
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air13FunctionGroupEEEZNS3_20CloneLinkedFunctionsINS3_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 7u && *(a2 + v5 + 6))
  {
    v17 = a2 + *(a2 + v5 + 6) + *(a2 + *(a2 + v5 + 6));
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (a2 + v5);
  if (*v10 >= 5u && (v11 = v10[2]) != 0)
  {
    v17 = a2 + v11 + *(a2 + v11);
    v12 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v12);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneVertexFunctionDescriptorINS3_24VertexFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39VertexFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A52068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneVertexDescriptor<Air::VertexDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v16 = a2 + v7 + *(a2 + v7);
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a2 + v5);
  if (*v9 >= 5u && (v10 = v9[2]) != 0)
  {
    v16 = a2 + v10 + *(a2 + v10);
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v11);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t Air::CloneShaderValidationConfiguration<Air::ShaderValidationConfiguration>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  v6 = *v4 >= 0xDu && (v5 = v4[6]) != 0 && *(a2 + v5) != 0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v6, 0);
  v10 = (a2 - *a2);
  v12 = *v10 >= 0xBu && (v11 = v10[5]) != 0 && *(a2 + v11) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v12, 0);
  v13 = (a2 - *a2);
  v15 = *v13 >= 9u && (v14 = v13[4]) != 0 && *(a2 + v14) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v15, 0);
  v16 = (a2 - *a2);
  v18 = *v16 >= 7u && (v17 = v16[3]) != 0 && *(a2 + v17) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v18, 0);
  v19 = (a2 - *a2);
  v21 = *v19 >= 5u && (v20 = v19[2]) != 0 && *(a2 + v20) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v21, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(uint64_t a1, uint64_t a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air13FunctionGroupEEEZNS3_20CloneLinkedFunctionsINS3_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::FunctionGroup>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneFunctionGroup<Air::FunctionGroup>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionGroup>,std::allocator<flatbuffers::Offset<Air::FunctionGroup>>>(std::vector<flatbuffers::Offset<Air::FunctionGroup>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A524E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_257A525D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_257A526B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Air::FunctionGroup>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A52734(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneFunctionGroup<Air::FunctionGroup>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 7u && (v7 = *(v6 + 3)) != 0)
  {
    v16 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air18CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = &a2[v5];
  if (*v9 >= 5u && (v10 = *(v9 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v10 + 4 + *&a2[v10]], *&a2[v10 + *&a2[v10]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air18CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_257A52934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A529B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(flatbuffers::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  if (a3)
  {
    v7 = a2 - 4;
    v8 = a3;
    do
    {
      v9 = v8 - 1;
      flatbuffers::FlatBufferBuilder::PushElement<flatbuffers::String>(a1, *(v7 + 4 * v8));
      v8 = v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<flatbuffers::String>(flatbuffers::FlatBufferBuilder *a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 8) - *(a1 + 12) + *(a1 + 10) - a2 + 4;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v4);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateString(flatbuffers::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  flatbuffers::vector_downward::fill(this, 1uLL);
  flatbuffers::vector_downward::push(this, a2, a3);
  flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

uint64_t *std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A52B94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v3 = *(a1 + 40);
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
    if (v6 >= 3)
    {
      abort();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v6, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v7 + v3);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Air::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A52D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Air::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Air::AttributeDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A52DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A52E68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v6, 0);
  v10 = (a2 - *a2);
  if (*v10 >= 7u && (v11 = v10[3]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 1;
  }

  v13 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v12, 1);
  v14 = (a2 - *a2);
  if (*v14 >= 5u)
  {
    v15 = v14[2];
    if (v15)
    {
      v13 = *(a2 + v15);
      if (v13 >= 9)
      {
        abort();
      }
    }

    else
    {
      v13 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v13, 1);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t *std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A52FF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 7u && (v5 = v4[3]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v6, 0);
  v10 = (a2 - *a2);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, v12, 0);
  v13 = (a2 - *a2);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v15 = *(a2 + v14);
    if (v15 >= 0x38 || ((0xFFE7FFFFFFFFFFuLL >> v15) & 1) == 0)
    {
      abort();
    }

    v16 = byte_257A6DED0[v15];
  }

  else
  {
    v16 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v16, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A53208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air33FragmentColorAttachmentDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneFragmentColorAttachmentDescriptor<Air::FragmentColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A532EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::ClonePixelFormat<Air::PixelFormat>(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 53:
    case 54:
    case 55:
    case 60:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
    case 84:
    case 85:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 103:
    case 104:
    case 105:
    case 110:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 123:
    case 124:
    case 125:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
    case 150:
    case 151:
    case 152:
    case 153:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 172:
    case 174:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 240:
    case 241:
    case 250:
    case 252:
    case 253:
    case 255:
    case 260:
    case 261:
    case 262:
    case 263:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 313:
    case 314:
    case 315:
    case 323:
    case 324:
    case 325:
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
    case 505:
    case 506:
    case 507:
    case 508:
    case 509:
    case 510:
    case 520:
    case 521:
    case 522:
    case 523:
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 540:
    case 541:
    case 542:
    case 543:
    case 544:
    case 545:
    case 546:
    case 547:
    case 548:
    case 550:
    case 551:
    case 552:
    case 553:
    case 554:
    case 555:
    case 556:
    case 560:
    case 562:
    case 563:
    case 564:
    case 565:
    case 566:
    case 567:
    case 568:
    case 569:
    case 570:
    case 571:
    case 572:
    case 573:
    case 574:
    case 575:
    case 576:
    case 577:
    case 578:
    case 579:
    case 580:
    case 581:
    case 582:
    case 583:
    case 584:
    case 585:
    case 586:
    case 587:
    case 588:
    case 589:
    case 590:
    case 591:
    case 592:
    case 593:
    case 594:
    case 595:
    case 596:
    case 597:
    case 598:
    case 599:
    case 600:
    case 601:
    case 602:
    case 603:
    case 604:
    case 605:
    case 606:
    case 607:
    case 608:
    case 609:
    case 610:
    case 611:
    case 612:
    case 613:
    case 615:
    case 616:
    case 617:
    case 618:
    case 619:
    case 620:
    case 621:
    case 622:
    case 623:
    case 624:
    case 625:
    case 626:
    case 627:
    case 628:
    case 629:
    case 630:
    case 631:
    case 632:
    case 633:
    case 634:
    case 635:
    case 636:
    case 637:
    case 638:
    case 639:
    case 640:
    case 641:
    case 642:
    case 643:
    case 644:
    case 645:
    case 646:
    case 647:
    case 648:
    case 649:
    case 650:
    case 651:
    case 652:
      return result;
    default:
      abort();
  }
}