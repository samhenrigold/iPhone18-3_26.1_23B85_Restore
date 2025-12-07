uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  MEMORY[0x1EEE9AC00](a1);
  bzero(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = *(a2 + 16);
  RESyncBitWriterConstructBackedNoAlloc();
  v6 = (*(*(a1 + 32) + 16))();
  *(a2 + 16) = RESyncBitWriterSize() + v5;
  RESyncBitWriterDestructNoDealloc();
  return v6;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  MEMORY[0x1EEE9AC00](a1);
  bzero(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  RESyncBitReaderConstructNoAlloc();
  v7 = (*(*(a1 + 32) + 16))();
  re::snapshot::BufferDecoder::skipData(a2, a3);
  RESyncBitReaderDestructNoDealloc();
  return v7;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v14 = RESyncBitWriterOpenBuffer();
  v15 = 0u;
  v16 = 0u;
  re::DynamicString::setCapacity(&v15, 0);
  v17 = a5;
  v18 = a4;
  v8 = (*(*(*(a1 + 32) + 16) + 16))();
  v9 = RESyncBitWriterCloseBuffer();
  if ((v8 & 1) == 0)
  {
    v10 = *re::ecsNetworkLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      if (BYTE8(v15))
      {
        v13 = v16;
      }

      else
      {
        v13 = &v15 + 9;
      }

      *buf = 136380931;
      *&buf[4] = v12;
      v20 = 2081;
      v21 = v13;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to write OPACK payload of type %{private}s: %{private}s", buf, 0x16u);
    }
  }

  if (v15 && (BYTE8(v15) & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  return v8;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v14 = RESyncBitWriterOpenBuffer();
  v15 = 0u;
  v16 = 0u;
  re::DynamicString::setCapacity(&v15, 0);
  v17 = a5;
  v18 = a4;
  v8 = (*(**(a1 + 32) + 16))();
  v9 = RESyncBitWriterCloseBuffer();
  if ((v8 & 1) == 0)
  {
    v10 = *re::ecsNetworkLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      if (BYTE8(v15))
      {
        v13 = v16;
      }

      else
      {
        v13 = &v15 + 9;
      }

      *buf = 136380931;
      *&buf[4] = v12;
      v20 = 2081;
      v21 = v13;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to write raw snapshot of type %{private}s: %{private}s", buf, 0x16u);
    }
  }

  if (v15 && (BYTE8(v15) & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  return v8;
}

re *___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v17 = -1;
  v18 = 0;
  v19 = a5;
  v20 = a6;
  v21 = 0;
  v15 = a2;
  v16 = a2 + a3;
  v12 = &unk_1F5D17190;
  v7 = (*(*(*(a1 + 32) + 24) + 16))();
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = *re::ecsNetworkLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 136380675;
      v23 = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to read OPACK payload of type %{private}s", buf, 0xCu);
    }
  }

  return v8;
}

re *___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v17 = -1;
  v18 = 0;
  v19 = a5;
  v20 = a6;
  v21 = 0;
  v15 = a2;
  v16 = a2 + a3;
  v12 = &unk_1F5D172F0;
  v7 = (*(*(*(a1 + 32) + 8) + 16))();
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = *re::ecsNetworkLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 136380675;
      v23 = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to read raw snapshot of type %{private}s", buf, 0xCu);
    }
  }

  return v8;
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v17 = RESyncBitWriterOpenBuffer();
  v18 = 0;
  v19 = 0;
  v20 = a2;
  v22 = 0u;
  v23 = 0u;
  re::DynamicString::setCapacity(&v22, 0);
  v24 = a5;
  v25 = a4;
  v16 = &unk_1F5D16F10;
  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(&v16, a3, *(a1 + 32));
  if (BYTE8(v22))
  {
    v10 = *(&v22 + 1) >> 1;
  }

  else
  {
    v10 = BYTE8(v22) >> 1;
  }

  v11 = RESyncBitWriterCloseBuffer();
  if (v10)
  {
    v12 = *re::ecsNetworkLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 32) + 48);
      if (BYTE8(v22))
      {
        v15 = v23;
      }

      else
      {
        v15 = &v22 + 9;
      }

      *buf = 136380931;
      *&buf[4] = v14;
      v27 = 2081;
      v28 = v15;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to write OPACK payload of type %{private}s: %{private}s", buf, 0x16u);
    }
  }

  v16 = &unk_1F5D16DD0;
  if (v22 && (BYTE8(v22) & 1) != 0)
  {
    (*(*v22 + 40))();
  }

  return v10 == 0;
}

re *___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_18(uint64_t a1, const char *a2, const char *a3, double *a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v12[1] = a2;
  v12[2] = a3;
  v13 = -1;
  v14 = 0;
  v15 = a5;
  v16 = a6;
  v17 = 0;
  v12[3] = a2;
  v12[4] = &a3[a2];
  v12[0] = &unk_1F5D17190;
  v7 = re::snapshot::DecoderOPACK::apply(v12, a4, *(a1 + 32));
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = *re::ecsNetworkLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1 + 32) + 48);
      *buf = 136380675;
      v19 = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to read OPACK payload of type %{private}s", buf, 0xCu);
    }
  }

  return v8;
}

uint64_t re::snapshot::DecoderOPACK::apply(const char **this, double *a2, const re::IntrospectionBase *a3)
{
  re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
  v4 = this[3];
  if (v4 != this[4])
  {
    re::snapshot::BufferDecoder::error(this, "failed to consume input: %zu vs %zu", v4 - this[1], this[2]);
  }

  v5 = *(this + 44);
  if (v5 == 1)
  {
    re::snapshot::BufferDecoder::logInput(this);
  }

  return v5 ^ 1u;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_20(_anonymous_namespace_ *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2)
  {
    v3 = v2 >> 1;
  }

  else
  {
    v3 = v2 >> 1;
  }

  if (v3)
  {
    return 0;
  }

  v7 = *(a1 + 4);
  v8 = *(a2 + 80);
  v9 = *(a2 + 72);
  v10 = *(a2 + 8);
  HIDWORD(v11) = *(a2 + 20);
  v12 = *(a2 + 24);
  memset(v13, 0, sizeof(v13));
  re::DynamicString::setCapacity(v13, 0);
  v14 = v9;
  v15 = v8;
  LODWORD(v11) = *(a2 + 16);
  v4 = (*(*(v7 + 16) + 16))();
  *(a2 + 16) = v11;
  *(a2 + 8) = v10;
  *(a2 + 24) = v12;
  re::DynamicString::operator=((a2 + 40), v13);
  if (*&v13[0] && (BYTE8(v13[0]) & 1) != 0)
  {
    (*(**&v13[0] + 40))();
  }

  return v4;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_22(uint64_t a1, re::snapshot::BufferDecoder *a2, unsigned int a3)
{
  v13 = *(a2 + 8);
  v5 = a3;
  v6 = re::Slice<unsigned char>::range(&v13, *(a2 + 3) - v13, *(a2 + 3) - v13 + a3);
  v8 = v7;
  v9 = (*(*a2 + 32))(a2);
  v10 = (*(*a2 + 40))(a2);
  v15 = v6;
  v16 = v8;
  v19 = -1;
  v20 = 0;
  v21 = v9;
  v22 = v10;
  v23 = 0;
  v17 = v6;
  v18 = v6 + v8;
  v14 = &unk_1F5D17190;
  v11 = (*(*(*(a1 + 32) + 24) + 16))();
  re::snapshot::BufferDecoder::skipData(a2, v5);
  return v11;
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3(uint64_t a1, re::snapshot::BufferEncoder *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  Length = (*(a1 + 32))(a3, *(a1 + 40), "json");
  v6 = Length;
  if (!Length || (Length = CFDataGetLength(Length)) == 0)
  {
    v12 = *re::ecsNetworkLogObjects(Length);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a1 + 40) + 32);
      v14 = 136380675;
      v15 = v13;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to encode custom component of type %{private}s.", &v14, 0xCu);
      if (!v6)
      {
        return 0;
      }
    }

    else if (!v6)
    {
      return 0;
    }

    CFRelease(v6);
    return 0;
  }

  v7 = Length;
  BytePtr = CFDataGetBytePtr(v6);
  re::snapshot::BufferEncoder::writeRaw<true>(a2, BytePtr, v7);
  CFRelease(v6);
  v9 = *(a2 + 6);
  if (v9)
  {
    v10 = v9 >> 1;
  }

  else
  {
    v10 = v9 >> 1;
  }

  return v10 == 0;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_26(uint64_t a1, const UInt8 **a2, CFIndex length, uint64_t a4)
{
  v7 = length;
  v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2[3], length, *MEMORY[0x1E695E498]);
  v9 = (*(a1 + 32))(a4, *(a1 + 40), v8, "json");
  CFRelease(v8);
  re::snapshot::BufferDecoder::skipData(a2, v7);
  return v9;
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_28(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4)
  {
    return 0;
  }

  v9 = *(a1 + 4);
  v10 = *(a2 + 8);
  v11 = *(a2 + 20);
  v12 = *(a2 + 80);
  v13 = *(a2 + 72);
  v16 = &unk_1F5D16DD0;
  v17 = v10;
  LODWORD(v18) = 0;
  HIDWORD(v18) = v11;
  v19 = *(a2 + 24);
  memset(v20, 0, sizeof(v20));
  re::DynamicString::setCapacity(v20, 0);
  v21 = v13;
  v22 = v12;
  v16 = &unk_1F5D16F10;
  LODWORD(v18) = *(a2 + 16);
  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(&v16, a3, v9);
  v14 = v19;
  if (BYTE8(v20[0]))
  {
    v15 = *(&v20[0] + 1) >> 1;
  }

  else
  {
    v15 = BYTE8(v20[0]) >> 1;
  }

  v5 = v15 == 0;
  *(a2 + 16) = v18;
  *(a2 + 8) = v17;
  *(a2 + 24) = v14;
  re::DynamicString::operator=((a2 + 40), v20);
  v16 = &unk_1F5D16DD0;
  if (*&v20[0] && (BYTE8(v20[0]) & 1) != 0)
  {
    (*(**&v20[0] + 40))();
  }

  return v5;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3_30(uint64_t a1, re::snapshot::BufferDecoder *a2, unsigned int a3, double *a4)
{
  v15 = *(a2 + 8);
  v7 = a3;
  v8 = re::Slice<unsigned char>::range(&v15, *(a2 + 3) - v15, *(a2 + 3) - v15 + a3);
  v10 = v9;
  v11 = (*(*a2 + 32))(a2);
  v12 = (*(*a2 + 40))(a2);
  v16[1] = v8;
  v16[2] = v10;
  v17 = -1;
  v18 = 0;
  v19 = v11;
  v20 = v12;
  v21 = 0;
  v16[3] = v8;
  v16[4] = &v10[v8];
  v16[0] = &unk_1F5D17190;
  v13 = re::snapshot::DecoderOPACK::apply(v16, a4, *(a1 + 32));
  re::snapshot::BufferDecoder::skipData(a2, v7);
  return v13;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_5(uint64_t a1, re::snapshot::BufferDecoder *a2, unsigned int a3)
{
  v13 = *(a2 + 8);
  v5 = a3;
  v6 = re::Slice<unsigned char>::range(&v13, *(a2 + 3) - v13, *(a2 + 3) - v13 + a3);
  v8 = v7;
  v9 = (*(*a2 + 32))(a2);
  v10 = (*(*a2 + 40))(a2);
  v15 = v6;
  v16 = v8;
  v19 = -1;
  v20 = 0;
  v21 = v9;
  v22 = v10;
  v23 = 0;
  v17 = v6;
  v18 = v6 + v8;
  v14 = &unk_1F5D172F0;
  v11 = (*(*(*(a1 + 32) + 8) + 16))();
  re::snapshot::BufferDecoder::skipData(a2, v5);
  return v11;
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_6(uint64_t a1, re::snapshot::EncoderRaw *a2, uint64_t a3)
{
  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a2, a3, *(a1 + 32));
  v4 = *(a2 + 6);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  return v5 == 0;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_7(uint64_t a1, re::snapshot::BufferDecoder *a2, unsigned int a3, const re::IntrospectionBase **a4)
{
  v15 = *(a2 + 8);
  v7 = a3;
  v8 = re::Slice<unsigned char>::range(&v15, *(a2 + 3) - v15, *(a2 + 3) - v15 + a3);
  v10 = v9;
  v11 = (*(*a2 + 32))(a2);
  v12 = (*(*a2 + 40))(a2);
  v16[1] = v8;
  v16[2] = v10;
  v17 = -1;
  v18 = 0;
  v19 = v11;
  v20 = v12;
  v21 = 0;
  v16[3] = v8;
  v16[4] = &v10[v8];
  v16[0] = &unk_1F5D172F0;
  v13 = re::snapshot::DecoderRaw::apply(v16, a4, *(a1 + 32));
  re::snapshot::BufferDecoder::skipData(a2, v7);
  return v13;
}

uint64_t re::snapshot::DecoderRaw::apply(const char **this, const re::IntrospectionBase **a2, const re::IntrospectionBase *a3)
{
  re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
  v4 = this[3];
  if (v4 != this[4])
  {
    re::snapshot::BufferDecoder::error(this, "failed to consume input: %zu vs %zu", v4 - this[1], this[2]);
  }

  v5 = *(this + 44);
  if (v5 == 1)
  {
    re::snapshot::BufferDecoder::logInput(this);
  }

  return v5 ^ 1u;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3_44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = RESyncBitReaderDataPtr();
  v5 = RESyncBitReaderBytesLeft();
  MEMORY[0x1E69049A0](a3, v4, v5);
  RESyncBitReaderBytesLeft();
  RESyncBitReaderSkipData();
  return RESyncBitWriterIsOverflow() ^ 1;
}

void ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_4_49(uint64_t a1, uint64_t a2)
{
  RESyncBitReaderDataPtr();
  RESyncBitReaderBytesLeft();

  JUMPOUT(0x1E69049A0);
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_5_54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  Length = (*(a1 + 32))(a3, *(a1 + 40), "json");
  v6 = Length;
  if (!Length || (Length = CFDataGetLength(Length)) == 0)
  {
    v13 = *re::ecsNetworkLogObjects(Length);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 40) + 32);
      v15 = 136380675;
      v16 = v14;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Failed to encode custom component of type %{private}s.", &v15, 0xCu);
      if (!v6)
      {
        return 0;
      }
    }

    else if (!v6)
    {
      return 0;
    }

    CFRelease(v6);
    return 0;
  }

  v7 = Length;
  BytePtr = CFDataGetBytePtr(v6);
  MEMORY[0x1E69049A0](a2, BytePtr, v7);
  CFRelease(v6);
  IsOverflow = RESyncBitWriterIsOverflow();
  if (!IsOverflow)
  {
    return 1;
  }

  v10 = *re::ecsNetworkLogObjects(IsOverflow);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v12 = *(*(a1 + 40) + 32);
    v15 = 136380675;
    v16 = v12;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to write data payload of type %{private}s", &v15, 0xCu);
    return 0;
  }

  return result;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_56(uint64_t a1, const UInt8 *a2, CFIndex a3, uint64_t a4)
{
  v6 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  v7 = (*(a1 + 32))(a4, *(a1 + 40), v6, "json");
  CFRelease(v6);
  return v7;
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v17 = RESyncBitWriterOpenBuffer();
  v18 = 0;
  v19 = 0;
  v20 = a2;
  v22 = 0u;
  v23 = 0u;
  re::DynamicString::setCapacity(&v22, 0);
  v24 = a5;
  v25 = a4;
  v16 = &unk_1F5D17050;
  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(&v16, a3, *(a1 + 32));
  if (BYTE8(v22))
  {
    v10 = *(&v22 + 1) >> 1;
  }

  else
  {
    v10 = BYTE8(v22) >> 1;
  }

  v11 = RESyncBitWriterCloseBuffer();
  if (v10)
  {
    v12 = *re::ecsNetworkLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 32) + 48);
      if (BYTE8(v22))
      {
        v15 = v23;
      }

      else
      {
        v15 = &v22 + 9;
      }

      *buf = 136380931;
      *&buf[4] = v14;
      v27 = 2081;
      v28 = v15;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to write raw snapshot of type %{private}s: %{private}s", buf, 0x16u);
    }
  }

  v16 = &unk_1F5D16DD0;
  if (v22 && (BYTE8(v22) & 1) != 0)
  {
    (*(*v22 + 40))();
  }

  return v10 == 0;
}

re *___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_60(uint64_t a1, const char *a2, const char *a3, const re::IntrospectionBase **a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v12[1] = a2;
  v12[2] = a3;
  v13 = -1;
  v14 = 0;
  v15 = a5;
  v16 = a6;
  v17 = 0;
  v12[3] = a2;
  v12[4] = &a3[a2];
  v12[0] = &unk_1F5D172F0;
  v7 = re::snapshot::DecoderRaw::apply(v12, a4, *(a1 + 32));
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = *re::ecsNetworkLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1 + 32) + 48);
      *buf = 136380675;
      v19 = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to read raw snapshot of type %{private}s", buf, 0xCu);
    }
  }

  return v8;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SyncObjectContextEntry = RESyncGetSyncObjectContextEntry();
  v7 = *(a1 + 32);
  v8 = RESyncBitReaderDataPtr();
  v9 = RESyncBitReaderSize();
  v10 = RESyncBitReaderSkipData();
  v11 = *(v7 + 16);
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SyncObjectContextEntry = RESyncGetSyncObjectContextEntry();
  v8 = *(*(a1 + 32) + 16);
  v9 = SyncObjectContextEntry + 448;
  v10 = *(a1 + 32);

  return v8(v10, a2, a3, v9, 6);
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  ContextSupportsProtocolLevelWalnut = RESyncObjectReadContextSupportsProtocolLevelWalnut();
  *v13 = RESyncBitReaderBytesLeft();
  if ((ContextSupportsProtocolLevelWalnut & 1) == 0)
  {
    RESyncBiasedVLQRead();
  }

  v7 = RESyncBitReaderDataPtr();
  RESyncBitReaderSkipData();
  if (RESyncBitReaderIsOverflow())
  {
    return 0;
  }

  IsLocalSession = RESyncObjectReadContextIsLocalSession();
  if ((IsLocalSession & 1) == 0 && *(a1 + 72) != 1)
  {
    memset(&v12[1], 0, 24);
    v11[0] = re::PassthroughAssetSerialization::instance(void)::instance;
    v11[1] = 0;
    v11[2] = RESyncObjectReadContextGetSourcePeerID();
    v11[3] = v12;
    v11[4] = 0;
    operator new();
  }

  MEMORY[0x1E69049A0](a3, v7, v13[0]);
  return 1;
}

void ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  RESyncObjectWriteContextSupportsProtocolLevelWalnut();
  RESyncBitReaderBytesLeft();
  RESyncBitReaderDataPtr();
  v5 = RESyncObjectWriteContextIsLocalSession();
  if ((v5 & 1) != 0 || *(a1 + 112) == 1)
  {

    JUMPOUT(0x1E69049A0);
  }

  memset(&v7[1], 0, 24);
  v6[0] = re::PassthroughAssetSerialization::instance(void)::instance;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = v7;
  v6[4] = 0;
  v8 = 0;
  operator new();
}

uint64_t __destroy_helper_block_8_64c74_ZTSN2re12DynamicArrayIPFNS_6ResultINS_4UnitENS_13DynamicStringEEEPvS5_EEE(uint64_t a1)
{
  v3 = (a1 + 64);
  result = *(a1 + 64);
  if (result)
  {
    if (*(a1 + 96))
    {
      result = (*(*result + 40))(result);
    }

    *(a1 + 96) = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    ++*(a1 + 88);
  }

  return result;
}

const char **re::ecs2::IntrospectedNetworkTypeHelper::shouldSerializeAsJson(re::ecs2::ComponentTypeBase const&,re::IntrospectionBase const&)::$_0::__invoke(uint64_t a1)
{
  if (*(a1 + 16) != 8)
  {
    return 0;
  }

  v1 = *(a1 + 56);
  if (!v1)
  {
    return 0;
  }

  for (i = *(a1 + 64); ; ++i)
  {
    v3 = *i;
    if (**i == 1)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  if (*(v3 + 10) || strcmp("__JSON__", v3[1]))
  {
    return 0;
  }

  return v3;
}

uint64_t _ZZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseEEUb1_EN3__38__invokeEPvPhjPj(re::snapshot::BufferEncoder *this, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = *(this + 4);
  v7 = *(this + 5);
  v8 = v6 + *a4;
  if (v8 <= v7)
  {
    goto LABEL_2;
  }

  v11 = re::snapshot::BufferEncoder::grow(this, v8);
  if (v11)
  {
    LODWORD(v6) = *(this + 4);
    LODWORD(v7) = *(this + 5);
LABEL_2:
    v9 = *(this + 1);
    *a4 = v7 - v6;
    return v9 + *(this + 4);
  }

  v12 = *re::ecsNetworkLogObjects(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[NetworkSystem] failed to grow snapshot buffer for BitWriter.", v13, 2u);
  }

  return 0;
}

__n128 _ZNKSt3__110__function6__funcIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS2_17IntrospectionBaseEPKNS3_17ComponentTypeBaseEEUb_E3__1NS_9allocatorISB_EEFvPvEE7__cloneEPNS0_6__baseISF_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3B90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS2_17IntrospectionBaseEPKNS3_17ComponentTypeBaseEEUb_E3__1NS_9allocatorISB_EEFvPvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseEEUb_E3__1))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS2_17IntrospectionBaseEPKNS3_17ComponentTypeBaseEEUb0_E3__2NS_9allocatorISB_EEFvPvEE7__cloneEPNS0_6__baseISF_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3C10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS2_17IntrospectionBaseEPKNS3_17ComponentTypeBaseEEUb0_E3__2NS_9allocatorISB_EEFvPvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseEEUb0_E3__2))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<float *>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    if (v6 >= *(a1 + 16))
    {
      re::DynamicArray<float *>::setCapacity(a1, a2[2]);
      v7 = *(a1 + 16);
      if (v7)
      {
        memmove(*(a1 + 32), a2[4], 8 * v7);
        v7 = *(a1 + 16);
      }

      memcpy((*(a1 + 32) + 8 * v7), (a2[4] + 8 * v7), 8 * (v6 - v7));
    }

    else if (v6)
    {
      memmove(*(a1 + 32), a2[4], 8 * v6);
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

void *re::ecs2::allocInfo_ImagePresentationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_297, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_297))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB460, "ImagePresentationSystem");
    __cxa_guard_release(&_MergedGlobals_297);
  }

  return &unk_1EE1AB460;
}

void re::ecs2::initInfo_ImagePresentationSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xEFBCDC8F382DBD08;
  v8[1] = "ImagePresentationSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x10000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ImagePresentationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImagePresentationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImagePresentationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ImagePresentationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ImagePresentationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImagePresentationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImagePresentationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

re::ecs2::ImagePresentationSystem *re::ecs2::ImagePresentationSystem::ImagePresentationSystem(re::ecs2::ImagePresentationSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CF3C90;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  v3 = *re::imagePresentationLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "[ImagePresentationSystem] System initialized.", v5, 2u);
  }

  return this;
}

_anonymous_namespace_ *re::ecs2::ImagePresentationSystem::willAddSystemToECSService(re::ecs2::ImagePresentationSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  v4 = re::ServiceLocator::serviceOrNull<re::AssetService>(v3);
  if (v4)
  {
    *(this + 29) = v4;
  }

  v5 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 30) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v5);
  v6 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ImagePresentationService>(v6);
  if (result)
  {
    *(this + 31) = result;
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ImagePresentationService>(uint64_t a1)
{
  {
    re::introspect<re::ImagePresentationService>(BOOL)::info = re::introspect_ImagePresentationService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ImagePresentationService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

double re::ecs2::ImagePresentationSystem::willRemoveSystemFromECSService(re::ecs2::ImagePresentationSystem *this)
{
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

re::ImagePresentationManager *re::ecs2::ImagePresentationSystem::willAddSceneToECSService(re::ImagePresentationManager *this, re::EventBus **a2)
{
  if (a2)
  {
    this = *(this + 31);
    if (this)
    {
      return re::ImagePresentationManager::registerScene(this, a2);
    }
  }

  return this;
}

re::ImagePresentationManager *re::ecs2::ImagePresentationSystem::willRemoveSceneFromECSService(re::ImagePresentationManager *this, re::ecs2::Scene *a2)
{
  if (a2)
  {
    this = *(this + 31);
    if (this)
    {
      return re::ImagePresentationManager::unregisterScene(this, a2);
    }
  }

  return this;
}

void re::ecs2::ImagePresentationSystem::update(uint64_t SpatialMediaComponentHelper, int a2, uint64_t a3)
{
  if (*(SpatialMediaComponentHelper + 232) && (v3 = SpatialMediaComponentHelper, (v4 = *(SpatialMediaComponentHelper + 240)) != 0) && (v5 = *(SpatialMediaComponentHelper + 248)) != 0)
  {
    v6 = *(SpatialMediaComponentHelper + 224);
    if (!v6 || (*(v6 + 432) & 0x10) != 0)
    {
      v16[0] = *(SpatialMediaComponentHelper + 232);
      v16[1] = v4;
      v16[2] = v5;
      v7 = *(a3 + 200);
      if (v7)
      {
        v9 = *(a3 + 216);
        v10 = &v9[v7];
        do
        {
          v11 = *v9;
          re::MediaDefaults::logEnabled(SpatialMediaComponentHelper);
          SpatialMediaComponentHelper = re::ecs2::SceneComponentTable::get((v11 + 200), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (SpatialMediaComponentHelper)
          {
            v12 = *(SpatialMediaComponentHelper + 384);
            if (v12)
            {
              v13 = *(SpatialMediaComponentHelper + 400);
              v14 = 8 * v12;
              do
              {
                v15 = *(*v13 + 16);
                if (v15 && (*(v15 + 304) & 1) != 0)
                {
                  SpatialMediaComponentHelper = re::SpatialMediaManager::getSpatialMediaComponentHelper(*(v3 + 248), *(*v13 + 16));
                  if (SpatialMediaComponentHelper)
                  {
                    re::ecs2::ImagePresentationComponentHelper::impl::update(*SpatialMediaComponentHelper, v15, v16, *&a2);
                  }
                }

                v13 += 8;
                v14 -= 8;
              }

              while (v14);
            }
          }

          ++v9;
        }

        while (v9 != v10);
      }
    }
  }

  else
  {

    re::MediaDefaults::logEnabled(SpatialMediaComponentHelper);
  }
}

void re::ecs2::ImagePresentationSystem::~ImagePresentationSystem(re::ecs2::ImagePresentationSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_ImagePresentationService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_298))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB4F8, "ImagePresentationService");
    __cxa_guard_release(&_MergedGlobals_298);
  }

  return &unk_1EE1AB4F8;
}

void re::initInfo_ImagePresentationService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x7DEB557892DCA00;
  v8[1] = "ImagePresentationService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_ImagePresentationService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::ecs2::ImageBasedLightReceiverManager::updateIBLData(re::ecs2::ImageBasedLightReceiverManager *this, unint64_t a2, re::RenderManager *a3, re::TransformService *a4)
{
  v121 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 20);
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 12);
  v115 = -1.0;
  if (v8)
  {
    v91 = 0x7FB5C51BA04C45D6;
    v92 = "imageBasedLight:systemIBLIntensity";
    v9 = re::DebugSettingsManager::getWithErrorCode<float>(v8, &v91, &v115);
    if (v91)
    {
      if (v91)
      {
      }
    }
  }

  v10 = *(re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
  if (*(a2 + 224) > v10)
  {
    v11 = *(*(a2 + 240) + 8 * v10);
    if (v11)
    {
      v12 = *(v11 + 384);
      if (v12)
      {
        v13 = *(v11 + 400);
        v14 = &v13[v12];
        do
        {
          v15 = *v13;
          if (*(*v13 + 1304))
          {
            if ((*(v15 + 152) & 1) == 0)
            {
              re::MaterialParameterBlock::MaterialParameterBlock(&v86, a3);
              LOBYTE(v91) = 1;
              re::MaterialParameterBlock::MaterialParameterBlock(&v92, &v86);
              re::Optional<re::MaterialParameterBlock>::operator=(v15 + 152, &v91);
              if (v91 == 1)
              {
                (*v92)();
              }

              re::MaterialParameterBlock::~MaterialParameterBlock(&v86);
            }

            v16 = v115;
            if (v115 < 0.0 || (*(v15 + 148) & 1) == 0)
            {
              v16 = exp2f(*(v15 + 28));
            }

            v97 = v16;
            if (*(v15 + 1208) == 1)
            {
              re::TransformService::worldMatrix(a4, *(v15 + 16), 0, &v86);
              *buf = 0u;
              v116 = 0u;
              v117[0] = xmmword_1E30474D0;
              v17 = re::decomposeScaleRotationTranslation<float>(&v86, buf, v117, &v116);
              v18 = 0;
              LODWORD(v28) = v117[0];
              v33.i32[0] = DWORD2(v117[0]);
              v19 = *&v28 * (*&v28 + *&v28);
              v20 = *(v117 + 1) * (*(v117 + 1) + *(v117 + 1));
              v21 = v33.f32[0] * (v33.f32[0] + v33.f32[0]);
              *&v35 = (*&v28 + *&v28) * *(v117 + 1);
              v22 = (*&v28 + *&v28) * *(v117 + 2);
              v23 = (*(v117 + 1) + *(v117 + 1)) * *(v117 + 2);
              v24 = (*&v28 + *&v28) * *(v117 + 3);
              v25 = (*(v117 + 1) + *(v117 + 1)) * *(v117 + 3);
              v33.f32[0] = (v33.f32[0] + v33.f32[0]) * *(v117 + 3);
              *&v28 = 1.0 - (v20 + v21);
              v26 = v28;
              *&v26.i32[1] = *&v35 + v33.f32[0];
              *v27.i32 = *&v35 - v33.f32[0];
              v33.f32[0] = v22 + v25;
              DWORD1(v28) = v27.i32[0];
              *(&v28 + 2) = v22 + v25;
              v33.f32[1] = v23 - v24;
              *&v35 = v22 - v25;
              v29 = vzip1q_s32(v26, v33);
              v30 = v26;
              v30.i32[2] = v35;
              *v26.i32 = 1.0 - (v19 + v21);
              *v31.i32 = v23 + v24;
              v32 = v27;
              v32.i32[1] = v26.i32[0];
              v32.i32[2] = v31.i32[0];
              v33.f32[2] = 1.0 - (v19 + v20);
              v34 = vzip2q_s32(v29, vdupq_lane_s32(*v26.i8, 0));
              DWORD1(v35) = v31.i32[0];
              DWORD2(v35) = v33.i32[2];
              v117[0] = vzip1q_s32(v29, v27);
              v117[1] = v34;
              v117[2] = vzip1q_s32(vzip2q_s32(v30, v33), v31);
              do
              {
                *&buf[v18 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(v117[v18])), v32, *&v117[v18], 1), v33, v117[v18], 2);
                ++v18;
              }

              while (v18 != 3);
              v36 = vdupq_n_s32(0x38D1B717u);
              v37 = vandq_s8(vandq_s8(vcgeq_f32(v36, vabdq_f32(xmmword_1E3047680, v119)), vcgeq_f32(v36, vabdq_f32(xmmword_1E3047670, *buf))), vcgeq_f32(v36, vabdq_f32(xmmword_1E30476A0, v120)));
              v37.i32[3] = v37.i32[2];
              if ((vminvq_u32(v37) & 0x80000000) == 0)
              {
                v38 = *re::ecsComponentsLogObjects(v17);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  v39 = *(*(v15 + 16) + 296);
                  *buf = 136315138;
                  *&buf[4] = v39;
                  _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "The world transform of the entity [%s] includes non-uniform scaling.                                     Set the rotation of its IBL component to identity.", buf, 0xCu);
                }

                v34 = xmmword_1E3047680;
                v28 = xmmword_1E3047670;
                v35 = xmmword_1E30476A0;
              }

              LODWORD(v92) = DWORD2(v28);
              v94 = v34.i32[2];
              v91 = v28;
              v93 = v34.i64[0];
              v96 = DWORD2(v35);
              v95 = v35;
            }

            else
            {
              LODWORD(v92) = 0;
              v91 = 1065353216;
              v94 = 0;
              v93 = 0x3F80000000000000;
              v96 = 1065353216;
              v95 = 0;
            }

            v98 = *(v15 + 1200);
            v40 = *(v15 + 1288);
            v41 = *(v15 + 1296);
            v86.i64[0] = *(v15 + 1280);
            v86.i8[12] = v41;
            v86.i32[2] = v40;
            *&v42 = re::ColorGamut3F::as(&v86, v7, 1);
            DWORD2(v42) = v43;
            v99 = v42;
            re::ColorManager::computeWPCMatrix((*(a3 + 15) + 2048), *(a3 + 12), &v86);
            v101 = v86.i32[2];
            v103 = v88;
            v105 = v90;
            v100 = v86.i64[0];
            v102 = v87;
            v104 = v89;
            v106 = *(v15 + 1204);
            if (*(v15 + 1209) == 1)
            {
              v45 = *(v15 + 1216);
              v44 = *(v15 + 1232);
              v46 = *(v15 + 1248);
            }

            else
            {
              v44 = xmmword_1E3090300;
              v46 = unk_1E3090310;
              v45 = _PromotedConst_0;
            }

            v108 = DWORD2(v45);
            v110 = DWORD2(v44);
            v107 = v45;
            v109 = v44;
            v112 = DWORD2(v46);
            v111 = v46;
            if (*(v15 + 136))
            {
              v113 = *(v15 + 140);
              v47 = 0;
              if (*(v15 + 137) == 1)
              {
                v47 = *(v15 + 144);
              }
            }

            else
            {
              v113 = 0;
              v47 = 0;
            }

            v114 = v47;
            v48 = [*(a3 + 26) newBufferWithBytes:&v91 length:208 options:0];
            *buf = v48;
            v119.i32[2] = 0;
            v120.i32[0] = 0;
            v120.i32[1] = [v48 length];
            v84 = 0x262DF9A294ABAC1CLL;
            v81[0] = 0;
            v82 = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v81, buf);
            v83 = v120.i64[0];
            v49 = re::MaterialParameterBlock::setBuffer((v15 + 160), &v84, v81, v85);
            v85[0] = 0;
            if (v82 != -1)
            {
              (off_1F5CF3D78[v82])(v117, v81, v49);
            }

            v82 = -1;
            v84 = 0;
            if (v119.i32[2] != -1)
            {
              (off_1F5CF3D78[v119.u32[2]])(v117, buf);
            }

            if (v48)
            {
            }
          }

          ++v13;
        }

        while (v13 != v14);
      }
    }
  }

  v50 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(&v91, this + 56, a2, v50 ^ (v50 >> 31));
  v51 = *(this + 9) + 80 * HIDWORD(v92);
  if (*(v51 + 56))
  {
    v52 = 0;
    while (1)
    {
      v53 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v51 + 16, v52);
      v54 = (v53 + 152);
      if ((*v54 & 1) == 0)
      {
        re::MaterialParameterBlock::MaterialParameterBlock(&v86, a3);
        LOBYTE(v91) = 1;
        re::MaterialParameterBlock::MaterialParameterBlock(&v92, &v86);
        re::Optional<re::MaterialParameterBlock>::operator=(v54, &v91);
        if (v91 == 1)
        {
          (*v92)(&v92);
        }

        re::MaterialParameterBlock::~MaterialParameterBlock(&v86);
      }

      if (!*(v53 + 96))
      {
        break;
      }

      v55 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>((v53 + 88));
      if (v55)
      {
        v56 = v55;
        v57 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v55 + 24));
        v58 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v56 + 72));
        v86 = 0uLL;
        memset(buf, 0, sizeof(buf));
        v117[0] = 0uLL;
        re::AssetHandle::AssetHandle(&v91, (v56 + 48));
        if (v92)
        {
          v59 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v91);
        }

        else
        {
          v59 = 0;
        }

        re::TextureHandle::operator=(&v86, v57 + 8);
        re::TextureHandle::operator=(buf, v58 + 8);
        if (v59)
        {
          v63 = (v59 + 8);
        }

        else
        {
          v63 = &v86;
        }

        re::TextureHandle::operator=(v117, v63);
        re::MaterialParameterBlock::setTextureHandle(v80, (v53 + 160), "texturePrefilteredDiffuse", &v86);
        v80[0] = 0;
        re::MaterialParameterBlock::setTextureHandle(v79, (v53 + 160), "texturePrefilteredSpecular", buf);
        v79[0] = 0;
        re::MaterialParameterBlock::setTextureHandle(v78, (v53 + 160), "texturePrefilteredSSSDiffuse", v117);
        v78[0] = 0;
        re::AssetHandle::~AssetHandle(&v91);
        re::TextureHandle::invalidate(v117);
        re::TextureHandle::invalidate(buf);
        v61 = &v86;
        goto LABEL_60;
      }

      re::AssetHandle::loadAsync((v53 + 88));
      v62 = 1;
LABEL_61:
      if ((*(v53 + 136) & 1) != 0 || *(v53 + 1208) == 1)
      {
        if (*(v53 + 120))
        {
          v64 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>((v53 + 112));
          if (!v64)
          {
            re::AssetHandle::loadAsync((v53 + 112));
LABEL_71:
            ++v52;
            goto LABEL_72;
          }

          v65 = v64;
          v66 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v64 + 24));
          v67 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v65 + 72));
          v92 = 0;
          v91 = 0;
          v86 = 0uLL;
          re::TextureHandle::operator=(&v91, v66 + 8);
          re::TextureHandle::operator=(&v86, v67 + 8);
          re::MaterialParameterBlock::setTextureHandle(v74, (v53 + 160), "texturePrefilteredBlendDiffuse", &v91);
          v74[0] = 0;
          re::MaterialParameterBlock::setTextureHandle(v73, (v53 + 160), "texturePrefilteredBlendSpecular", &v86);
          v73[0] = 0;
        }

        else
        {
          v68 = *(a3 + 7);
          v92 = 0;
          v91 = 0;
          re::TextureManager::registerTexture(v68, (v68 + 88), &v86);
          re::TextureHandle::operator=(&v91, &v86);
          re::TextureHandle::invalidate(&v86);
          v86 = 0uLL;
          re::TextureManager::registerTexture(*(a3 + 7), (v68 + 88), buf);
          re::TextureHandle::operator=(&v86, buf);
          re::TextureHandle::invalidate(buf);
          re::MaterialParameterBlock::setTextureHandle(v72, (v53 + 160), "texturePrefilteredBlendDiffuse", &v91);
          v72[0] = 0;
          re::MaterialParameterBlock::setTextureHandle(v71, (v53 + 160), "texturePrefilteredBlendSpecular", &v86);
          v71[0] = 0;
        }

        re::TextureHandle::invalidate(&v86);
        re::TextureHandle::invalidate(&v91);
      }

      if (v62)
      {
        goto LABEL_71;
      }

      re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::removeAt(v51 + 16, v52);
LABEL_72:
      if (v52 >= *(v51 + 56))
      {
        return;
      }
    }

    v60 = *(a3 + 7);
    v92 = 0;
    v91 = 0;
    re::TextureManager::registerTexture(v60, (v60 + 88), &v86);
    re::TextureHandle::operator=(&v91, &v86);
    re::TextureHandle::invalidate(&v86);
    v86 = 0uLL;
    re::TextureManager::registerTexture(*(a3 + 7), (v60 + 88), buf);
    re::TextureHandle::operator=(&v86, buf);
    re::TextureHandle::invalidate(buf);
    re::MaterialParameterBlock::setTextureHandle(v77, (v53 + 160), "texturePrefilteredDiffuse", &v91);
    v77[0] = 0;
    re::MaterialParameterBlock::setTextureHandle(v76, (v53 + 160), "texturePrefilteredSpecular", &v86);
    v76[0] = 0;
    re::MaterialParameterBlock::setTextureHandle(v75, (v53 + 160), "texturePrefilteredSSSDiffuse", &v91);
    v75[0] = 0;
    re::TextureHandle::invalidate(&v86);
    v61 = &v91;
LABEL_60:
    re::TextureHandle::invalidate(v61);
    v62 = 0;
    goto LABEL_61;
  }
}

uint64_t re::Optional<re::MaterialParameterBlock>::operator=(uint64_t a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      re::MaterialParameterBlock::operator=(a1 + 8, (a2 + 8));
    }

    else
    {
      (**(a1 + 8))();
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::MaterialParameterBlock::MaterialParameterBlock(a1 + 8, (a2 + 8));
  }

  return a1;
}

unint64_t re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::removeAt(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 848, a2, v3);
    result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v8, v9);
    __break(1u);
  }

  else
  {
    v5 = v3 - 1;
    if (v3 - 1 > a2)
    {
      v6 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1, v5);
      *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1, a2) = v6;
      v5 = *(a1 + 40) - 1;
    }

    result = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1, v5);
    --*(a1 + 40);
    ++*(a1 + 48);
  }

  return result;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::getEntityToImageBasedLightReceiverComponentMap(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v5, a1 + 8, a2, v3 ^ (v3 >> 31));
  return *(a1 + 24) + 72 * v6 + 16;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::registerScene(re::ecs2::ImageBasedLightReceiverManager *this, unint64_t a2)
{
  v117 = *MEMORY[0x1E69E9840];
  v80 = a2;
  v81 = 0;
  memset(v78, 0, sizeof(v78));
  DWORD1(v78[2]) = 0x7FFFFFFF;
  v82 = 0;
  v83 = 0;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v81, this + 8, a2, v5);
  if (HIDWORD(v82) == 0x7FFFFFFF)
  {
    v6 = re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(this + 8, v82, v81);
    *(v6 + 8) = a2;
    *(v6 + 16) = 0u;
    v78[0] = 0u;
    *(v6 + 32) = 0;
    *&v78[1] = 0;
    *(v6 + 40) = xmmword_1E3058120;
    *(&v78[1] + 8) = xmmword_1E3058120;
    *(v6 + 56) = 1;
    ++*(this + 12);
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v78);
  v79 = 0;
  v78[0] = 0u;
  v78[1] = 1uLL;
  v78[2] = 0uLL;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(&v81, this + 56, a2, v5);
  if (HIDWORD(v82) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(this + 56, v82, v81);
    *(v7 + 16) = 0;
    v7 += 16;
    *(v7 - 8) = a2;
    *(v7 + 8) = 0;
    *(v7 + 16) = 1;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 24) = 0;
    *(v7 + 48) = 0;
    re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v7, v78);
    ++*(this + 24);
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v78);
  v8 = *&v78[0];
  if (*&v78[0] && (v78[1] & 1) == 0)
  {
    v8 = (*(**&v78[0] + 40))();
  }

  v78[0] = 0uLL;
  LODWORD(v78[1]) = 1;
  memset(&v78[1] + 8, 0, 24);
  LODWORD(v79) = 0;
  v11 = *(a2 + 288);
  if (!v11)
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track IBL parameter changes.", "eventBus", "registerScene", 293);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track IBL parameter changes.");
    __break(1u);
  }

  v115 = re::globalAllocators(v9)[2];
  v12 = (*(*v115 + 32))(v115, 32, 0);
  *v12 = &unk_1F5CF3D98;
  v12[1] = this;
  v12[2] = re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentDidActivateEventHandler;
  v12[3] = 0;
  v116 = v12;
  v13 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v11, v114, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v15 = v14;
  v16 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v16 = v13;
  v16[1] = v15;
  v17 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v114);
  v112 = re::globalAllocators(v17)[2];
  v18 = (*(*v112 + 32))(v112, 32, 0);
  *v18 = &unk_1F5CF3DF0;
  v18[1] = this;
  v18[2] = re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentWillDeactivateEventHandler;
  v18[3] = 0;
  v113 = v18;
  v19 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v11, v111, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v21 = v20;
  v22 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v22 = v19;
  v22[1] = v21;
  v23 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v111);
  v109 = re::globalAllocators(v23)[2];
  v24 = (*(*v109 + 32))(v109, 32, 0);
  *v24 = &unk_1F5CF3E48;
  v24[1] = this;
  v24[2] = re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentWillDeactivateEventHandlerSceneEntityEvent;
  v24[3] = 0;
  v110 = v24;
  v25 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v11, v108, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v27 = v26;
  v28 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v28 = v25;
  v28[1] = v27;
  v29 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v108);
  v106 = re::globalAllocators(v29)[2];
  v30 = (*(*v106 + 32))(v106, 32, 0);
  *v30 = &unk_1F5CF3EA0;
  v30[1] = this;
  v30[2] = re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentDidChangeEventHandler;
  v30[3] = 0;
  v107 = v30;
  v31 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v11, v105, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v33 = v32;
  v34 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v34 = v31;
  v34[1] = v33;
  v35 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v105);
  v103 = re::globalAllocators(v35)[2];
  v36 = (*(*v103 + 32))(v103, 32, 0);
  *v36 = &unk_1F5CF3EF8;
  v36[1] = this;
  v36[2] = re::ecs2::ImageBasedLightReceiverManager::entityAddEventHandler;
  v36[3] = 0;
  v104 = v36;
  v37 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidAddEvent>(v11, v102, 0, 0);
  v39 = v38;
  v40 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v40 = v37;
  v40[1] = v39;
  v41 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(v102);
  v100 = re::globalAllocators(v41)[2];
  v42 = (*(*v100 + 32))(v100, 32, 0);
  *v42 = &unk_1F5CF3F50;
  v42[1] = this;
  v42[2] = re::ecs2::ImageBasedLightReceiverManager::entityRemoveEventHandler;
  v42[3] = 0;
  v101 = v42;
  v43 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v11, v99, 0, 0);
  v45 = v44;
  v46 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v46 = v43;
  v46[1] = v45;
  v47 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v99);
  v97 = re::globalAllocators(v47)[2];
  v48 = (*(*v97 + 32))(v97, 32, 0);
  *v48 = &unk_1F5CF3FA8;
  v48[1] = this;
  v48[2] = re::ecs2::ImageBasedLightReceiverManager::entityReparentEventHandler;
  v48[3] = 0;
  v98 = v48;
  v49 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v11, v96, 0, 0);
  v51 = v50;
  v52 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v52 = v49;
  v52[1] = v51;
  v53 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v96);
  v94 = re::globalAllocators(v53)[2];
  v54 = (*(*v94 + 32))(v94, 32, 0);
  *v54 = &unk_1F5CF3D98;
  v54[1] = this;
  v54[2] = re::ecs2::ImageBasedLightReceiverManager::iblComponentDidActivateEventHandler;
  v54[3] = 0;
  v95 = v54;
  v55 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v11, v93, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v57 = v56;
  v58 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v58 = v55;
  v58[1] = v57;
  v59 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v93);
  v91 = re::globalAllocators(v59)[2];
  v60 = (*(*v91 + 32))(v91, 32, 0);
  *v60 = &unk_1F5CF3DF0;
  v60[1] = this;
  v60[2] = re::ecs2::ImageBasedLightReceiverManager::iblComponentWillDeactivateEventHandler;
  v60[3] = 0;
  v92 = v60;
  v61 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v11, v90, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v63 = v62;
  v64 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v64 = v61;
  v64[1] = v63;
  v65 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v90);
  v88 = re::globalAllocators(v65)[2];
  v66 = (*(*v88 + 32))(v88, 32, 0);
  *v66 = &unk_1F5CF3E48;
  v66[1] = this;
  v66[2] = re::ecs2::ImageBasedLightReceiverManager::iblComponentWillDeactivateEventHandlerSceneEntityEvent;
  v66[3] = 0;
  v89 = v66;
  v67 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v11, v87, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v69 = v68;
  v70 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v70 = v67;
  v70[1] = v69;
  v71 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v87);
  v85 = re::globalAllocators(v71)[2];
  v72 = (*(*v85 + 32))(v85, 32, 0);
  *v72 = &unk_1F5CF3EA0;
  v72[1] = this;
  v72[2] = re::ecs2::ImageBasedLightReceiverManager::iblComponentDidChangeEventHandler;
  v72[3] = 0;
  v86 = v72;
  v73 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v11, v84, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v75 = v74;
  v76 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v76 = v73;
  v76[1] = v75;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v84);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 104, &v80, v78);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v78);
  result = *&v78[0];
  if (*&v78[0])
  {
    if ((v78[1] & 1) == 0)
    {
      return (*(**&v78[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentDidActivateEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, uint64_t a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!re::ecs2::EntityHandle::isNull(v4 + 4))
  {
    re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLReceiverComponentCache(a1, v4, a2);
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentWillDeactivateEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, uint64_t a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v5 = a2;
  do
  {
    v6 = v5;
    v5 = *(v5 + 32);
  }

  while (v5);
  re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(a1, v4, a2, *(v6 + 24));
  *(v4 + 7) = 0;
  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentWillDeactivateEventHandlerSceneEntityEvent(re::ecs2::ImageBasedLightReceiverManager *a1, uint64_t a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v5 = a2;
  do
  {
    v6 = v5;
    v5 = *(v5 + 32);
  }

  while (v5);
  re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(a1, v4, a2, *(v6 + 24));
  *(v4 + 7) = 0;
  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::entityAddEventHandler(uint64_t a1, unint64_t a2)
{
  v15 = a2;
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v6 = *(v5 + 24);
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v16, a1 + 8, v6, v7 ^ (v7 >> 31));
  v8 = *(a1 + 24) + 72 * HIDWORD(v17);
  v9 = *(a2 + 32);
  if (v9 && (*(v9 + 304) & 0x80) != 0)
  {
    v9 = 0;
  }

  v16 = v9;
  v10 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v8 + 16, &v16);
  if (v10)
  {
    v11 = *v10;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v8 + 16, &v15, v12 ^ (v12 >> 31), &v16);
    if (HIDWORD(v17) == 0x7FFFFFFF)
    {
      v13 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(v8 + 16, v17, v16);
      *(v13 + 8) = v15;
      *(v13 + 16) = v11;
      ++*(v8 + 56);
    }
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::entityRemoveEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, re::ecs2::Entity *a2)
{
  v8 = a2;
  do
  {
    v3 = a2;
    a2 = *(a2 + 4);
  }

  while (a2);
  v4 = *(v3 + 3);
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v9, a1 + 8, v4, v5 ^ (v5 >> 31));
  v6 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(*(a1 + 3) + 72 * v10 + 16, &v8);
  if (v6)
  {
    re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(a1, v8, *v6, 0);
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::entityReparentEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, re::ecs2::ImageBasedLightReceiverComponent **a2, uint64_t *a3)
{
  v22 = a2;
  v6 = a2;
  do
  {
    v7 = v6;
    v6 = *(v6 + 4);
  }

  while (v6);
  v8 = *(v7 + 3);
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v23, a1 + 8, v8, v9 ^ (v9 >> 31));
  v10 = *(a1 + 3);
  v11 = *a3;
  v23 = *a3;
  v12 = a2[4];
  if (v12)
  {
    if ((*(v12 + 304) & 0x80) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = a2[4];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v10 + 72 * v24;
  if (!v11 || (v15 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v14 + 16, &v23)) == 0)
  {
    v16 = 0;
    if (!v13)
    {
      goto LABEL_16;
    }

LABEL_13:
    v21 = v13;
    v17 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v14 + 16, &v21);
    if (v17)
    {
      v13 = *v17;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_16;
  }

  v16 = *v15;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v18 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v14 + 16, &v22);
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 == v16)
  {
    re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(a1, v22, v19, v13);
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblComponentDidActivateEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, char *a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 4);
  }

  while (v4);
  v6 = *(v5 + 3);
  v7 = re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v7)
  {
    v8 = *(v7 + 384);
    if (v8)
    {
      v9 = *(v7 + 400);
      v10 = 8 * v8;
      do
      {
        v11 = *v9;
        if (re::ecs2::EntityHandle::resolve((*v9 + 32), v6) == a2)
        {
          re::ecs2::ImageBasedLightReceiverManager::processIBLReceiverComponentDidChange(a1, *(v11 + 16));
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblComponentWillDeactivateEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, uint64_t a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = *(v4 + 24);
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v7 = re::ecs2::SceneComponentTable::get((v5 + 200), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v7)
  {
    v8 = *(v7 + 384);
    if (v8)
    {
      v9 = *(v7 + 400);
      v10 = 8 * v8;
      do
      {
        v11 = *v9;
        if (*(*v9 + 7) == v6)
        {
          re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(a1, *v9, *(v11 + 2), v5);
          *(v11 + 7) = 0;
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblComponentWillDeactivateEventHandlerSceneEntityEvent(re::ecs2::ImageBasedLightReceiverManager *a1, char *a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 4);
  }

  while (v4);
  v6 = *(v5 + 3);
  v7 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v8 = re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v8)
  {
    v9 = *(v8 + 384);
    if (v9)
    {
      v10 = *(v8 + 400);
      v11 = 8 * v9;
      do
      {
        v12 = *v10;
        if (*(*v10 + 7) == v7)
        {
          re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(a1, *v10, *(v12 + 2), v6);
          *(v12 + 7) = 0;
        }

        if (re::ecs2::EntityHandle::resolve(v12 + 4, v6) == a2)
        {
          re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(a1, v12, *(v12 + 2), v6);
          re::ecs2::EntityHandle::reset((v12 + 32));
          objc_destroyWeak(v12 + 4);
          *(v12 + 4) = 0;
        }

        ++v10;
        v11 -= 8;
      }

      while (v11);
    }
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblComponentDidChangeEventHandler(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v5 = v4;
  do
  {
    v6 = v2;
    v2 = *(v2 + 32);
  }

  while (v2);
  if (*(v4 + 1304))
  {
    v7 = *(v6 + 24);
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
    v9 = v8 ^ (v8 >> 31);
    re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v11, a1 + 56, v7, v9);
    re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::indexOf(v11, *(a1 + 72) + 80 * v12 + 16, v5);
    if ((v11[0] & 1) == 0)
    {
      re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v11, a1 + 56, v7, v9);
      *re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::addUninitialized(*(a1 + 72) + 80 * v12 + 16) = v5;
    }
  }

  return 0;
}

BOOL re::ecs2::ImageBasedLightReceiverManager::unregisterScene(re::ecs2::ImageBasedLightReceiverManager *this, unint64_t a2)
{
  v23 = a2;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v24, this + 8, a2, v5);
  v6 = v26;
  if (v26 != 0x7FFFFFFF)
  {
    v7 = *(this + 3);
    v8 = (v7 + 72 * v26);
    v9 = *v8 & 0x7FFFFFFF;
    if (v27 == 0x7FFFFFFF)
    {
      *(*(this + 2) + 4 * v25) = v9;
    }

    else
    {
      *(v7 + 72 * v27) = *(v7 + 72 * v27) & 0x80000000 | v9;
    }

    v10 = *v8;
    if ((*v8 & 0x80000000) != 0)
    {
      *v8 = v10 & 0x7FFFFFFF;
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v8 + 2);
      v7 = *(this + 3);
      v10 = *(v7 + 72 * v6);
    }

    *(v7 + 72 * v6) = *(this + 11) | v10 & 0x80000000;
    --*(this + 9);
    v11 = *(this + 12) + 1;
    *(this + 11) = v6;
    *(this + 12) = v11;
  }

  re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v24, this + 56, a2, v5);
  v12 = v26;
  if (v26 != 0x7FFFFFFF)
  {
    v13 = *(this + 9);
    v14 = *(v13 + 80 * v26) & 0x7FFFFFFF;
    if (v27 == 0x7FFFFFFF)
    {
      *(*(this + 8) + 4 * v25) = v14;
    }

    else
    {
      *(v13 + 80 * v27) = *(v13 + 80 * v27) & 0x80000000 | v14;
    }

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(v13, v12);
    *(*(this + 9) + 80 * v12) = *(*(this + 9) + 80 * v12) & 0x80000000 | *(this + 23);
    --*(this + 21);
    v15 = *(this + 24) + 1;
    *(this + 23) = v12;
    *(this + 24) = v15;
  }

  v16 = *(a2 + 288);
  v17 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 104, &v23);
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + 40);
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v18, i);
        re::EventBus::unsubscribe(v16, *v21, v21[1]);
      }
    }
  }

  return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 104, &v23);
}

void re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLReceiverComponentCache(re::ecs2::ImageBasedLightComponent *this, id *a2, re::ecs2::Entity *a3)
{
  v6 = a3;
  do
  {
    v7 = v6;
    v6 = *(v6 + 4);
  }

  while (v6);
  v8 = *(v7 + 3);
  if (!a2[7])
  {
    if (ResolvedIBLComponent)
    {
      re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLComponentCache(this, ResolvedIBLComponent, a2, v8);
    }
  }

  if (*(a3 + 304))
  {
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
    re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v15, this + 8, v8, v10 ^ (v10 >> 31));
    v11 = *(a3 + 4);
    if (v11 && (*(v11 + 304) & 0x80) == 0 && (v12 = *(this + 3) + 72 * v16, v15 = *(a3 + 4), (v13 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v12 + 16, &v15)) != 0))
    {
      v14 = *v13;
    }

    else
    {
      v14 = 0;
    }

    re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(this, a3, v14, a2);
  }
}

void re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(re::ecs2::ImageBasedLightReceiverManager *this, re::ecs2::ImageBasedLightReceiverComponent *a2, re::ecs2::Entity *a3, unint64_t a4)
{
  v8 = *(a2 + 7);
  if (v8)
  {
    re::ecs2::ImageBasedLightReceiverManager::removeIBLComponentCache(this, v8, a4);
  }

  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v14, this + 8, a4, v9 ^ (v9 >> 31));
  v10 = *(a3 + 4);
  if (v10 && (*(v10 + 304) & 0x80) == 0 && (v11 = *(this + 3) + 72 * v15, v14 = *(a3 + 4), (v12 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v11 + 16, &v14)) != 0))
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(this, a3, a2, v13);
}

void re::ecs2::ImageBasedLightReceiverManager::processIBLReceiverComponentDidChange(re::ecs2::ImageBasedLightReceiverManager *this, re::ecs2::Entity *a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v5 = v4;
  v6 = a2;
  do
  {
    v7 = v6;
    v6 = *(v6 + 4);
  }

  while (v6);
  v8 = *(v7 + 3);
  isNull = re::ecs2::EntityHandle::isNull((v4 + 32));
  v11 = *(v5 + 7);
  if (isNull)
  {
    if (v11)
    {
      re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(this, v5, a2, v8);
      *(v5 + 7) = 0;
    }
  }

  else if (v11)
  {
    v13 = *(v5 + 7);
    if (ResolvedIBLComponent != v13)
    {
      v14 = ResolvedIBLComponent;
      re::ecs2::ImageBasedLightReceiverManager::removeIBLComponentCache(this, v13, v8);
      if (v14)
      {

        re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLComponentCache(this, v14, v5, v8);
      }
    }
  }

  else
  {

    re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLReceiverComponentCache(this, v5, a2);
  }
}

void re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(re::ecs2::ImageBasedLightReceiverManager *this, unint64_t a2, re::ecs2::ImageBasedLightReceiverComponent *a3, re::ecs2::ImageBasedLightReceiverComponent *a4)
{
  v27 = a2;
  v8 = a2;
  do
  {
    v9 = v8;
    v8 = *(v8 + 32);
  }

  while (v8);
  v10 = *(v9 + 24);
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v28, this + 8, v10, v11 ^ (v11 >> 31));
  v12 = *(this + 3) + 72 * HIDWORD(v29);
  if (a4)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v12 + 16, &v27, v13 ^ (v13 >> 31), &v28);
    v14 = HIDWORD(v29);
    if (HIDWORD(v29) == 0x7FFFFFFF)
    {
      v15 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(v12 + 16, v29, v28);
      *(v15 + 8) = v27;
      *(v15 + 16) = a4;
      ++*(v12 + 56);
    }

    else
    {
      ++*(v12 + 56);
      *(*(v12 + 32) + 32 * v14 + 16) = a4;
    }
  }

  else
  {
    v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v12 + 16, &v27, v16 ^ (v16 >> 31), &v28);
    v17 = HIDWORD(v29);
    if (HIDWORD(v29) != 0x7FFFFFFF)
    {
      v18 = *(v12 + 32);
      v19 = *(v18 + 32 * HIDWORD(v29)) & 0x7FFFFFFF;
      if (v30 == 0x7FFFFFFF)
      {
        *(*(v12 + 24) + 4 * v29) = v19;
        v17 = HIDWORD(v29);
      }

      else
      {
        *(v18 + 32 * v30) = *(v18 + 32 * v30) & 0x80000000 | v19;
      }

      *(v18 + 32 * v17) = *(v12 + 52);
      --*(v12 + 44);
      v20 = *(v12 + 56) + 1;
      *(v12 + 52) = v17;
      *(v12 + 56) = v20;
    }
  }

  v21 = *(v27 + 344);
  if (v21)
  {
    v22 = *(v27 + 360);
    v23 = 8 * v21;
    do
    {
      v24 = *v22;
      if (*v22)
      {
        v25 = (v24 + 8);
      }

      v28 = v24;
      v26 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v12 + 16, &v28);
      if (!v26 || *v26 == a3)
      {
        re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(this, v24, a3, a4);
      }

      if (v24)
      {
      }

      ++v22;
      v23 -= 8;
    }

    while (v23);
  }
}

char *anonymous namespace::getResolvedIBLComponent(id *this, re::ecs2::ImageBasedLightReceiverComponent *a2, const re::ecs2::Scene *a3)
{
  result = re::ecs2::EntityHandle::resolve(this + 4, a2);
  if (result)
  {
    if (result[304])
    {
      return re::ecs2::EntityComponentCollection::get((result + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLComponentCache(void *this, re::ecs2::ImageBasedLightComponent *a2, re::ecs2::ImageBasedLightReceiverComponent *a3, unint64_t a4)
{
  if (!*(a2 + 163))
  {
    v7 = this;
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) >> 27));
    v9 = v8 ^ (v8 >> 31);
    re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v10, (this + 7), a4, v9);
    this = re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::indexOf(v10, v7[9] + 80 * v11 + 16, a2);
    if ((v10[0] & 1) == 0)
    {
      re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v10, (v7 + 7), a4, v9);
      this = re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::addUninitialized(v7[9] + 80 * v11 + 16);
      *this = a2;
    }
  }

  ++*(a2 + 163);
  *(a3 + 7) = a2;
  return this;
}

unint64_t re::ecs2::ImageBasedLightReceiverManager::removeIBLComponentCache(unint64_t this, re::ecs2::ImageBasedLightComponent *a2, unint64_t a3)
{
  v5 = *(a2 + 163) - 1;
  *(a2 + 163) = v5;
  if (!v5)
  {
    v13 = v3;
    v14 = v4;
    v8 = this;
    v11[0] = 0;
    re::Optional<re::MaterialParameterBlock>::operator=(a2 + 152, v11);
    if (v11[0] == 1)
    {
      (*v12)();
    }

    v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
    re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v11, v8 + 56, a3, v9 ^ (v9 >> 31));
    v10 = *(v8 + 72) + 80 * HIDWORD(v12);
    this = re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::indexOf(v11, v10 + 16, a2);
    if (v11[0] == 1)
    {
      return re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::removeAt(v10 + 16, v12);
    }
  }

  return this;
}

void re::ecs2::ImageBasedLightReceiverManager::~ImageBasedLightReceiverManager(re::ecs2::ImageBasedLightReceiverManager *this)
{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 13);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 7);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 1);
}

{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 13);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 7);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

void re::MaterialParameterBlock::~MaterialParameterBlock(re::MaterialParameterBlock *this)
{
  *this = &unk_1F5CF4000;
  re::MaterialParameterBlock::deinit(this);
  v2 = *(this + 124);
  if (v2)
  {

    *(this + 124) = 0;
  }

  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 111);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 824);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 760);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(this + 696);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 632);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 568);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 504);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 440);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 376);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 312);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 248);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 184);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 144);
  re::DynamicArray<re::BufferSlice>::deinit(this + 104);
  re::DynamicArray<re::TextureHandle>::deinit(this + 64);
  re::DynamicArray<unsigned long>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::MaterialParameterBlock::~MaterialParameterBlock(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3D98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3D98;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3DF0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3DF0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3E48;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3E48;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3EA0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3EA0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3EF8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3EF8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3F50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3F50;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3FA8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3FA8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(a1[2], v3++);
      }

      while (v3 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (result + 80 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = (v2 + 4);
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v3);

    return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3);
  }

  return result;
}

double re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, *(v13 + 64) % *(a1 + 24), *(v13 + 64));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0u;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 32) = 0;
                *(v17 + 16) = 0u;
                *(v17 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v17, (v13 + 16));
              }

              v13 += 72;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 72 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 72 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 72 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 64) = a3;
  ++*(a1 + 28);
  return v19 + 72 * v5;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, *(v13 + 72) % *(a1 + 24), *(v13 + 72));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 8) = 0;
                *(v17 + 16) = 1;
                *(v17 + 48) = 0;
                *(v17 + 32) = 0;
                *(v17 + 40) = 0;
                *(v17 + 24) = 0;
                re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v17, v13 + 16);
              }

              v13 += 80;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 80 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 80 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 80 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 72) = a3;
  ++*(a1 + 28);
  return v19 + 80 * v5;
}

uint64_t re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::indexOf(uint64_t result, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  if (v3)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    while (1)
    {
      v6 = v4 >> 5;
      if (v5 <= v4 >> 5)
      {
        v12 = 0;
        memset(v21, 0, sizeof(v21));
        v9 = MEMORY[0x1E69E9C10];
        v13 = 136315906;
        v14 = "operator[]";
        v15 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v10 = 3;
        }

        else
        {
          v10 = 2;
        }

        v16 = 866;
        v17 = 2048;
        v18 = v6;
        v19 = 2048;
        v20 = v5;
        _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
        _os_crash_msg();
        __break(1u);
      }

      v7 = a2 + 24;
      if ((*(a2 + 16) & 1) == 0)
      {
        v7 = *(a2 + 32);
      }

      if (*(*(v7 + 8 * v6) + 8 * (v4 & 0x1F)) == a3)
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4 == v3)
  {
LABEL_11:
    v8 = 0;
  }

  else
  {
    *(result + 8) = v4;
    v8 = 1;
  }

  *result = v8;
  return result;
}

uint64_t re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 5)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 5;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 0x1F);
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 32 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 256, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

float32x2_t re::poseFromOriginAndXYAxes@<D0>(uint64_t *a1@<X0>, float32x4_t *a2@<X1>, int32x4_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = vmulq_f32(*a2, *a2);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  v6 = vrsqrte_f32(v5);
  v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
  v8 = vmulq_n_f32(*a2, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a3, *a3), *a3, 0xCuLL), vnegq_f32(v8)), *a3, v9);
  v11 = vmulq_f32(v10, v10);
  *&v12 = v11.f32[1] + (v11.f32[2] + v11.f32[0]);
  v13 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  *v10.i8 = vrsqrte_f32(v12);
  *v10.i8 = vmul_f32(*v10.i8, vrsqrts_f32(v12, vmul_f32(*v10.i8, *v10.i8)));
  v14 = vmulq_n_f32(v13, vmul_f32(*v10.i8, vrsqrts_f32(v12, vmul_f32(*v10.i8, *v10.i8))).f32[0]);
  v15 = vmlaq_f32(vmulq_f32(v9, vnegq_f32(v14)), v8, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL));
  v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
  v17 = vmulq_f32(v15, v15);
  v4.f32[0] = v17.f32[1] + (v17.f32[2] + v17.f32[0]);
  *v17.f32 = vrsqrte_f32(v4.u32[0]);
  *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v4.u32[0], vmul_f32(*v17.f32, *v17.f32)));
  v18 = *a1;
  v19 = a1[1];
  v21[0] = v8;
  v21[1] = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(v4.u32[0], vmul_f32(*v17.f32, *v17.f32))).f32[0]);
  v21[2] = v14;
  return re::Pose<float>::Pose(a4, v18, v19, v21);
}

void *re::ecs2::allocInfo_AudioTetherComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB590))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB5B0, "AudioTetherComponent");
    __cxa_guard_release(&qword_1EE1AB590);
  }

  return &unk_1EE1AB5B0;
}

void re::ecs2::initInfo_AudioTetherComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0xE2320D5BE5AEBCEALL;
  v24[1] = "AudioTetherComponent";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&_MergedGlobals_299, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_299))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AB598 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint64_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "uniquePid";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AB5A0 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<unsigned char [16]>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "anchorIdentifier";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1900000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AB5A8 = v22;
    __cxa_guard_release(&_MergedGlobals_299);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AB598;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioTetherComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioTetherComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioTetherComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioTetherComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220AudioTetherComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v23 = v25;
}

re::ecs2::AudioTetherComponent *re::ecs2::AudioTetherComponent::AudioTetherComponent(re::ecs2::AudioTetherComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF4048;
  *(this + 6) = getpid();
  uuid_generate_random(this + 25);
  return this;
}

void re::ecs2::AudioTetherComponent::~AudioTetherComponent(re::ecs2::AudioTetherComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220AudioTetherComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

uint64_t re::ecs2::VertexCacheComponent::resetDeformerInputs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v15[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = 0;
  }

  inited = objc_initWeak(&location, v9);
  memset(v15, 0, 24);
  v15[3] = re::globalAllocators(inited)[2];
  v15[4] = 0;
  re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::reset((a1 + 192), &location, a3, v15);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v15);
  objc_destroyWeak(&location);
  if (a5)
  {
    v11 = 168 * a5;
    v12 = (a4 + 144);
    do
    {
      ++*(v12 - 129);
      *v12 = 0;
      v12 += 21;
      v11 -= 168;
    }

    while (v11);
  }

  return a1 + 192;
}

double re::ecs2::VertexCacheComponent::initializeBindPoint(re::ecs2::VertexCacheComponent *this, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(this + 21);
  v5 = *(this + 11);
  if (v4 >= v5)
  {
    v5 = *(this + 21);
  }

  else
  {
    if (*(this + 20) < v5)
    {
      re::DynamicArray<re::BindPoint>::setCapacity(this + 19, v5);
      v4 = *(this + 21);
    }

    v7 = v5 - v4;
    if (v5 > v4)
    {
      v8 = 48 * v4;
      v6 = 0uLL;
      do
      {
        v9 = *(this + 23) + v8;
        *(v9 + 40) = 0;
        *v9 = 0uLL;
        *(v9 + 16) = 0uLL;
        *(v9 + 32) = 0;
        v8 += 48;
        --v7;
      }

      while (v7);
    }

    *(this + 21) = v5;
    ++*(this + 44);
  }

  if (v5 <= a2)
  {
    *v35 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    v28 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v5;
    _os_log_send_and_compose_impl(v16, v35, &v42, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v27, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  if (*(*(this + 23) + 48 * a2 + 24))
  {
    return *&v6;
  }

  v10 = *(this + 2);
  if (!v10 || !*(v10 + 23))
  {
    return *&v6;
  }

  re::makeBindNode(v34, v10);
  re::DynamicString::format(&v24, "VertexCache.vertexCacheTimes[%zu]", v11, a2);
  v12 = v25[1];
  if ((v25[0] & 1) == 0)
  {
    v12 = v25 + 1;
  }

  v13 = LOBYTE(v25[0]) >> 1;
  if (v25[0])
  {
    v13 = v25[0] >> 1;
  }

  *&v23 = v12;
  *(&v23 + 1) = v13;
  {
    re::introspect<float>(BOOL)::info = re::introspect_float(0, v20);
  }

  re::BindNode::bindPointWithOverride(v27, v34, re::introspect<float>(BOOL)::info, &v23);
  v5 = *(this + 21);
  if (v5 <= a2)
  {
LABEL_28:
    v26 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v35 = 136315906;
    *&v35[4] = "operator[]";
    v36 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = a2;
    v40 = 2048;
    v41 = v5;
    _os_log_send_and_compose_impl(v19, &v26, &v42, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
  }

  v14 = (*(this + 23) + 48 * a2);
  *v14 = *v27;
  re::DynamicArray<re::RigDataValue>::operator=((v14 + 1), &v27[8]);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v27[8]);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v27[8]);
  if (v24 && (v25[0] & 1) != 0)
  {
    (*(*v24 + 40))();
  }

  *&v6 = re::BindNode::deinit(v34);
  return *&v6;
}

re::ecs2::VertexCacheComponentStateImpl *re::ecs2::VertexCacheComponentStateImpl::VertexCacheComponentStateImpl(re::ecs2::VertexCacheComponentStateImpl *this, re::ecs2::VertexCacheSystem *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF40D0;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 16), v4);
  return this;
}

BOOL re::ecs2::VertexCacheComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, size_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v35, a5, 0);
  v23 = a4;
  v24 = *&v35[0];
  v25 = DWORD2(v35[0]);
  if (*&v35[0] != a5 || DWORD2(v35[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v23);
      v12 = *(*(v10 + 16) + 192);
      v11 = *(*(v10 + 16) + 200);
      if (v11)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13 || !*(v12 + 40) || !v11[30])
      {
        goto LABEL_14;
      }

      v14 = v11[46];
      if (v14 <= 0xF)
      {
        v26 = 0;
        memset(v35, 0, sizeof(v35));
        v20 = MEMORY[0x1E69E9C10];
        v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v27 = 136315906;
        v28 = "operator[]";
        v29 = 1024;
        if (v21)
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v30 = 476;
        v31 = 2048;
        v32 = 15;
        v33 = 2048;
        v34 = v14;
        _os_log_send_and_compose_impl(v22, &v26, v35, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v23, v24);
        _os_crash_msg();
        __break(1u);
      }

      if (*(v11[47] + 1448))
      {
        v15 = v23;
        v16 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v24);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v15, v16, a3[5]);
      }

      else
      {
LABEL_14:
        v17 = v23;
        v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v24);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v17, v18, a3[4]);
        re::ecs2::VertexCacheComponent::resetDeformerInputs(v10, *(*(*(a1 + 8) + 232) + 144), 0, 0, 0);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v24);
    }

    while (v24 != a5 || v25 != 0xFFFF || HIWORD(v25) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

BOOL re::ecs2::VertexCacheComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v133 = *MEMORY[0x1E69E9840];
  v7 = *(*(a1 + 8) + 256);
  if (v7)
  {
    v110 = (*(*v7 + 104))(v7, a2);
  }

  else
  {
    v110 = 0;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v128, a5, 0);
  v117 = a4;
  v118 = v128;
  v119 = DWORD2(v128);
  if (v128 != a5 || DWORD2(v128) != 0xFFFFFFFFLL)
  {
    v9 = 24;
    v10.i64[0] = 0x7F0000007FLL;
    v10.i64[1] = 0x7F0000007FLL;
    v106 = vnegq_f32(v10);
    while (1)
    {
      v11 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v117);
      v12 = v11;
      v13 = *(v11 + 16);
      v14 = v13[25];
      v113 = *(v14[49] + 96);
      v114 = *(v14[49] + 88);
      v15 = v14[31];
      v16 = *(v11 + 200);
      if (v16)
      {
        v17 = v15 != *v16 || v110 == 0;
        if (!v17 && v110 == v16[1])
        {
          goto LABEL_85;
        }

        re::ecs2::VertexCacheComponent::resetDeformerInputs(v11, *(*(*(a1 + 8) + 232) + 144), 0, v113, v114);
      }

      v18 = v13[24];
      v19 = re::AssetHandle::loadedAsset<re::MeshAsset>((v18 + 32));
      if (v19)
      {
        break;
      }

      v69 = *(v18 + 40);
      if (v69)
      {
        v70 = atomic_load((v69 + 896));
        if (v70 == 3)
        {
          v71 = v117;
          v72 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v118);
          v73 = a3[2];
          v74 = a3[4];
          goto LABEL_84;
        }
      }

      re::AssetHandle::loadAsync((v18 + 32));
LABEL_85:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v118);
      if (v118 == a5 && v119 == 0xFFFF && HIWORD(v119) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v20 = v19;
    v112 = re::ecs2::EntityComponentCollection::getOrAdd((v13 + 6), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v21 = (v20 + 640);
    v22 = re::ecs2::EntityComponentCollection::get((v13 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v22)
    {
      v23 = (v22 + 216);
    }

    else
    {
      v23 = v21;
    }

    v24 = v12[6];
    v25 = *(*(a1 + 8) + 232);
    v26 = re::globalAllocators(v22);
    v27 = (*(*v26[2] + 32))(v26[2], 40, 8);
    *v27 = v15;
    *(v27 + 1) = v110;
    *(v27 + 3) = v24;
    *(v27 + 4) = 0;
    if (!v24)
    {
      re::ecs2::VertexCacheComponent::resetDeformerInputs(v12, *(v25 + 144), v27, v113, v114);
      goto LABEL_83;
    }

    if (v24 >= 0x2E8BA2E8BA2E8BBLL)
    {
LABEL_102:
      re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, v24);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v98, v100);
      __break(1u);
    }

    else
    {
      *(v27 + 4) = v29;
      if (v29)
      {
        v31 = v29;
        if (v24 != 1)
        {
          bzero(v29, 88 * v24 - 88);
          v31 += 88 * v24 - 88;
        }

        *(v31 + 10) = 0;
        *(v31 + 3) = 0u;
        *(v31 + 4) = 0u;
        *(v31 + 1) = 0u;
        *(v31 + 2) = 0u;
        *v31 = 0u;
        v32 = re::ecs2::VertexCacheComponent::resetDeformerInputs(v12, *(v25 + 144), v27, v113, v114);
        v108 = v24;
        v109 = v32;
        v33 = 0;
        v34 = 0;
        while (1)
        {
          v105 = v33;
          while (1)
          {
            v35 = v12[6];
            if (v35 <= v34)
            {
              v115.i64[0] = 0;
              v131 = 0u;
              v132 = 0u;
              v129 = 0u;
              v130 = 0u;
              v128 = 0u;
              v76 = MEMORY[0x1E69E9C10];
              v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v121 = 136315906;
              *&v121[4] = "operator[]";
              v122 = 1024;
              if (v77)
              {
                v78 = 3;
              }

              else
              {
                v78 = 2;
              }

              v123 = 789;
              v124 = 2048;
              v125 = v34;
              v126 = 2048;
              *v127 = v35;
              _os_log_send_and_compose_impl(v78, &v115, &v128, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v121, 38, v101, v102);
              _os_crash_msg();
              __break(1u);
LABEL_93:
              re::internal::assertLog(6, v67, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v24, v114);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v97, v99);
              __break(1u);
LABEL_94:
              v115.i64[0] = 0;
              v131 = 0u;
              v132 = 0u;
              v129 = 0u;
              v130 = 0u;
              v128 = 0u;
              v79 = MEMORY[0x1E69E9C10];
              v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v121 = 136315906;
              *&v121[4] = "operator[]";
              v122 = 1024;
              if (v80)
              {
                v81 = 3;
              }

              else
              {
                v81 = 2;
              }

              v123 = 468;
              v124 = 2048;
              v125 = v34;
              v126 = 2048;
              *v127 = v35;
              _os_log_send_and_compose_impl(v81, &v115, &v128, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v121, 38, v101, v102);
              _os_crash_msg();
              __break(1u);
LABEL_98:
              v120 = 0;
              v131 = 0u;
              v132 = 0u;
              v129 = 0u;
              v130 = 0u;
              v128 = 0u;
              v82 = MEMORY[0x1E69E9C10];
              v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v121 = 136315906;
              *&v121[4] = "operator[]";
              v122 = 1024;
              if (v83)
              {
                v84 = 3;
              }

              else
              {
                v84 = 2;
              }

              v123 = 476;
              v124 = 2048;
              v125 = 0;
              v126 = 2048;
              *v127 = 0;
              _os_log_send_and_compose_impl(v84, &v120, &v128, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v121, 38, v101, v102);
              _os_crash_msg();
              __break(1u);
              goto LABEL_102;
            }

            v36 = (v12[8] + 24 * v34);
            if (!*(v36 + 1))
            {
              goto LABEL_72;
            }

            v37 = re::VertexCacheAsset::assetType(v32);
            v32 = re::AssetHandle::assetWithType(v36, v37, 1);
            if (!v32)
            {
              break;
            }

            v38 = v32;
            if (*(v32 + 49) == 30 && v34 < v12[11])
            {
              v39 = *(v32 + 48);
              if (v34 < v12[16])
              {
                v40 = (v12[18] + 2 * v34);
                if (*v40 == 1)
                {
                  v39 = v40[1];
                }
              }

              v41 = *(v109 + 8);
              v35 = *(v41 + 24);
              if (v35 <= v34)
              {
                goto LABEL_94;
              }

              v42 = *(v12[13] + 4 * v34);
              v35 = *(v41 + 32) + 88 * v34;
              v43.i64[0] = 0x7F0000007FLL;
              v43.i64[1] = 0x7F0000007FLL;
              v115 = v106;
              v116 = v43;
              v25 = *(v32 + 72) * *(v32 + 80);
              v44 = *(v32 + 56);
              if (v42 <= v44)
              {
                *&v128 = *(v32 + 112);
                DWORD2(v129) = 0;
                LODWORD(v130) = 0;
                DWORD1(v130) = v25;
                *(v35 + 84) = 0;
                std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v35, &v128);
                *(v35 + 32) = v130;
                re::BufferSlice::deinit((v35 + 40));
                *(v35 + 80) = 0;
                if (DWORD2(v129) != -1)
                {
                  (off_1F5CF41B8[DWORD2(v129)])(v121, &v128);
                }

                if (!*(v38 + 96))
                {
                  goto LABEL_98;
                }

                v62 = *(v38 + 104);
              }

              else
              {
                v45 = *(v32 + 52);
                v46 = *(v32 + 64);
                if (v42 >= (v44 + (v45 * v46)))
                {
                  v9 = v46 - 1;
                  v24 = ((v46 - 1) * v25);
                  *&v128 = *(v32 + 112);
                  DWORD2(v129) = 0;
                  *&v130 = __PAIR64__(v25, v24);
                  *(v35 + 84) = 0;
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v35, &v128);
                  *(v35 + 32) = v130;
                  re::BufferSlice::deinit((v35 + 40));
                  *(v35 + 80) = 0;
                  if (DWORD2(v129) != -1)
                  {
                    (off_1F5CF41B8[DWORD2(v129)])(v121, &v128);
                  }

                  v25 = *(v38 + 96);
                  if (v25 <= v9)
                  {
                    goto LABEL_104;
                  }
                }

                else
                {
                  v47 = (v42 - v44) / v45;
                  v48 = floorf(v47);
                  v49 = v48 + ceilf(v47 - v48);
                  v5 = (v49 + 0.5);
                  if ((v39 & (v46 != v5)) != 0)
                  {
                    v50 = v47 - (v49 + -1.0);
                    v103 = v5 - 1;
                    *&v128 = *(v32 + 112);
                    DWORD2(v129) = 0;
                    LODWORD(v130) = (v5 - 1) * v25;
                    DWORD1(v130) = v25;
                    *v121 = *(v38 + 112);
                    HIDWORD(v125) = 0;
                    *&v127[2] = v25 * v5;
                    *&v127[6] = v25;
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v35, &v128);
                    *(v35 + 32) = v130;
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v35 + 40, v121);
                    *(v35 + 72) = *&v127[2];
                    *(v35 + 80) = v50;
                    *(v35 + 84) = 0;
                    if (HIDWORD(v125) != -1)
                    {
                      (off_1F5CF41B8[HIDWORD(v125)])(&v120, v121);
                    }

                    if (DWORD2(v129) != -1)
                    {
                      (off_1F5CF41B8[DWORD2(v129)])(v121, &v128);
                    }

                    v25 = *(v38 + 96);
                    v24 = v5 - 1;
                    if (v25 <= v103)
                    {
                      goto LABEL_112;
                    }

                    v51 = *(v38 + 104);
                    v52 = (v51 + 32 * v103);
                    v53 = v52[1];
                    v115 = *v52;
                    v116 = v53;
                    if (v25 <= v5)
                    {
                      goto LABEL_116;
                    }

                    v54 = (v51 + 32 * v5);
                    v55 = v115;
                    v56 = v116;
                    v55.i32[3] = 0;
                    v57 = *v54;
                    v57.i32[3] = 0;
                    v115 = vminnmq_f32(v55, v57);
                    v58 = v54[1];
                    v56.i32[3] = 0;
                    v58.i32[3] = 0;
                    v59 = vmaxnmq_f32(v56, v58);
                    goto LABEL_65;
                  }

                  if (v46 <= v5)
                  {
                    v9 = v46 - 1;
                  }

                  else
                  {
                    v9 = (v49 + 0.5);
                  }

                  v24 = (v9 * v25);
                  *&v128 = *(v32 + 112);
                  DWORD2(v129) = 0;
                  LODWORD(v130) = v9 * v25;
                  DWORD1(v130) = v25;
                  *(v35 + 84) = 0;
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v35, &v128);
                  *(v35 + 32) = v130;
                  re::BufferSlice::deinit((v35 + 40));
                  *(v35 + 80) = 0;
                  if (DWORD2(v129) != -1)
                  {
                    (off_1F5CF41B8[DWORD2(v129)])(v121, &v128);
                  }

                  v25 = *(v38 + 96);
                  if (v25 <= v9)
                  {
                    goto LABEL_108;
                  }
                }

                v62 = (*(v38 + 104) + 32 * v9);
              }

              v59 = v62[1];
              v115 = *v62;
LABEL_65:
              v116 = v59;
              v25 = v14[32];
              re::MeshNameMap::meshInstancePartsForIdentifier(&v128, v23, (v38 + 8));
              v9 = v128;
              if (v128)
              {
                v5 = 0;
                do
                {
                  *v121 = v5;
                  v63 = (*(**(&v130 + 1) + 16))(*(&v130 + 1), v121);
                  v64 = re::MeshNameMap::meshPartStartIndexForInstance(v23, v63) + WORD2(v63);
                  v65 = re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex((v14 + 29), v64);
                  if (v25 > v65)
                  {
                    v24 = v65;
                    v66 = *(*(*(a1 + 8) + 232) + 144);
                    re::ecs2::DynamicBoundingBoxComponent::setMeshPartEstimatedBoundingBox(v112, *(v66 + 24) & 0xFFFFFFFFFFFFFFFLL | (*(v66 + 16) << 60), v64, &v115);
                    if (v114 <= v24)
                    {
                      goto LABEL_93;
                    }

                    v68 = v113 + 168 * v24;
                    ++*(v68 + 15);
                    *(v68 + 144) = v35;
                  }

                  ++v5;
                }

                while (v9 != v5);
              }

              re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v128 + 8);
              v32 = re::ecs2::Component::markDirty(v112);
              v9 = 24;
              v24 = v108;
            }

LABEL_72:
            if (++v34 == v24)
            {
              if (v105)
              {
                goto LABEL_85;
              }

LABEL_83:
              v71 = v117;
              v72 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v118);
              v73 = a3[2];
              v74 = a3[6];
LABEL_84:
              re::ecs2::ComponentBucketsBase::moveComponent(v73, v71, v72, v74);
              goto LABEL_85;
            }
          }

          v60 = *(v36 + 1);
          if (v60)
          {
            v61 = atomic_load((v60 + 896));
            if (v61 == 3)
            {
              goto LABEL_72;
            }
          }

          re::AssetHandle::loadAsync(v36);
          ++v34;
          v33 = 1;
          if (v34 == v24)
          {
            goto LABEL_85;
          }
        }
      }
    }

    re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
LABEL_104:
    v120 = 0;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v128 = 0u;
    v85 = MEMORY[0x1E69E9C10];
    v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v121 = 136315906;
    *&v121[4] = "operator[]";
    v122 = 1024;
    if (v86)
    {
      v87 = 3;
    }

    else
    {
      v87 = 2;
    }

    v123 = 476;
    v124 = 2048;
    v125 = v9;
    v126 = 2048;
    *v127 = v25;
    _os_log_send_and_compose_impl(v87, &v120, &v128, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v121, 38, v101, v102);
    _os_crash_msg();
    __break(1u);
LABEL_108:
    v120 = 0;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v128 = 0u;
    v88 = MEMORY[0x1E69E9C10];
    v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v121 = 136315906;
    *&v121[4] = "operator[]";
    v122 = 1024;
    if (v89)
    {
      v90 = 3;
    }

    else
    {
      v90 = 2;
    }

    v123 = 476;
    v124 = 2048;
    v125 = v9;
    v126 = 2048;
    *v127 = v25;
    _os_log_send_and_compose_impl(v90, &v120, &v128, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v121, 38, v101, v102);
    _os_crash_msg();
    __break(1u);
LABEL_112:
    v120 = 0;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v128 = 0u;
    v91 = MEMORY[0x1E69E9C10];
    v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v121 = 136315906;
    *&v121[4] = "operator[]";
    v122 = 1024;
    if (v92)
    {
      v93 = 3;
    }

    else
    {
      v93 = 2;
    }

    v123 = 476;
    v124 = 2048;
    v125 = v24;
    v126 = 2048;
    *v127 = v25;
    _os_log_send_and_compose_impl(v93, &v120, &v128, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v121, 38, v101, v102);
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v120 = 0;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v128 = 0u;
    v94 = MEMORY[0x1E69E9C10];
    v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v121 = 136315906;
    *&v121[4] = "operator[]";
    v122 = 1024;
    if (v95)
    {
      v96 = 3;
    }

    else
    {
      v96 = 2;
    }

    v123 = 476;
    v124 = 2048;
    v125 = v5;
    v126 = 2048;
    *v127 = v25;
    _os_log_send_and_compose_impl(v96, &v120, &v128, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v121, 38, v101, v102);
    _os_crash_msg();
    __break(1u);
  }

  return *(a5 + 40) != 0;
}

void *re::ecs2::VertexCacheSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a2;
  v32[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v31);
  re::StackScratchAllocator::StackScratchAllocator(v44);
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v38 = v44;
  v39 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v38, 0);
  v40 += 2;
  v5 = a1[64];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v43 = a1[64];
  v33[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v38, v6, v33);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v33[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 45, v33);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[46] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 59));
  v34 = 1;
  v35 = 0;
  v36 = 0;
  v33[0] = v44;
  v33[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
  v34 += 2;
  v12 = a1[64];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v37 = a1[64];
  v45 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 59), &v38);
  v14 = v42;
  if (v40)
  {
    v14 = &v41;
  }

  v15 = v39;
  if ((v39 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 38), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v32, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v32, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v32, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v33, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v33, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v38, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 59), v33);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 38));
  if (v33[0] && (v34 & 1) == 0)
  {
    (*(*v33[0] + 40))();
  }

  if (v38 && (v40 & 1) == 0)
  {
    (*(*v38 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v44);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v31);
}

_anonymous_namespace_ *re::ecs2::VertexCacheSystem::willAddSystemToECSService(re::ecs2::VertexCacheSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 32) = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(v2);

  return re::ecs2::DeformationSubsystem::willAddSystemToECSService(this);
}

double re::ecs2::VertexCacheSystem::willRemoveSystemFromECSService(re::ecs2::VertexCacheSystem *this)
{
  *(this + 32) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

unint64_t re::ecs2::VertexCacheSystem::willAddSceneToECSService(re::ecs2::VertexCacheSystem *this, re::ecs2::Scene *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(this + 54);
  v5 = *(this + 110);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 448);
    }

    else
    {
      v6 = *(this + 57);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 448);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 57);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 424, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::init(v12, this + 304, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 45, &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 424, v44);
    v13 = v44;
    goto LABEL_49;
  }

LABEL_17:
  v51 = 0u;
  v44 = 0u;
  *&v45 = 0;
  v46 = 0u;
  v47 = 0u;
  *(&v45 + 1) = -1;
  v48 = 0;
  v49 = 1;
  v50 = 0uLL;
  v14 = *(this + 43);
  *&v51 = 0;
  v15 = *(this + 39);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,4ul>::setBucketsCapacity(this + 38, (v14 + 4) >> 2);
    v15 = *(this + 39);
  }

  if (v15 <= v14 >> 2)
  {
    v53 = 0;
    memset(v62, 0, sizeof(v62));
    v40 = MEMORY[0x1E69E9C10];
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v57 = 858;
    v58 = 2048;
    v59 = v14 >> 2;
    v60 = 2048;
    v61 = v15;
    _os_log_send_and_compose_impl(v41, &v53, v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(this + 320))
  {
    v16 = this + 328;
  }

  else
  {
    v16 = *(this + 42);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 43);
  ++*(this + 88);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *(v18 + 48) = v47;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v47 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v44);
  v23 = *(this + 43);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::init(v24, this + 304, v52);
  *&v62[0] = *(this + 43) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 45, &v52, v62);
  v25 = *(this + 43);
  v26 = *(this + 58);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 58) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 424), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 58) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 440))
    {
      v30 = this + 448;
    }

    else
    {
      v30 = *(this + 57);
    }

    *&v30[8 * *(this + 54) - 8] &= v28;
  }

  v31 = *(this + 43);
  v32 = *(this + 64);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 64) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 472), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 64) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 488))
    {
      v36 = this + 496;
    }

    else
    {
      v36 = *(this + 63);
    }

    *&v36[8 * *(this + 60) - 8] &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 472, v13);
  if (*(this + 536) == 1)
  {
    v38 = *(this + 65);
    v39 = *(v52 + 47);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 304);
  }

  return result;
}

uint64_t re::ecs2::VertexCacheSystem::willRemoveSceneFromECSService(re::ecs2::VertexCacheSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 45, &v15);
  if (result != -1)
  {
    v4 = *(this + 46) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 424, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 472, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, v11[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 360, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_VertexCacheComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB648))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB6C8, "VertexCacheComponent");
    __cxa_guard_release(&qword_1EE1AB648);
  }

  return &unk_1EE1AB6C8;
}

void re::ecs2::initInfo_VertexCacheComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0xF2B611314067C4FELL;
  v27[1] = "VertexCacheComponent";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1AB650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB650))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AB668 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "vertexCaches";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AB670 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "vertexCacheTimes";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x4800000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AB678 = v22;
    v23 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::Optional<BOOL>>>::get(v23, v24);
    v25 = (*(*v23 + 32))(v23, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "interpolationOverride";
    *(v25 + 16) = &qword_1EE1AB688;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x7000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1AB680 = v25;
    __cxa_guard_release(&qword_1EE1AB650);
  }

  *(this + 2) = 0xF800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1AB668;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VertexCacheComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VertexCacheComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VertexCacheComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VertexCacheComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220VertexCacheComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v26 = v28;
}

void re::IntrospectionInfo<re::DynamicArray<re::Optional<BOOL>>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AB660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB660))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1AB688);
    qword_1EE1AB688 = &unk_1F5CF4338;
    __cxa_guard_release(&qword_1EE1AB660);
  }

  if ((_MergedGlobals_300 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, a2);
    if ((_MergedGlobals_300 & 1) == 0)
    {
      v3 = v2;
      _MergedGlobals_300 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AB688, 0);
      qword_1EE1AB698 = 0x2800000003;
      dword_1EE1AB6A0 = v4;
      word_1EE1AB6A4 = 0;
      *&xmmword_1EE1AB6A8 = 0;
      *(&xmmword_1EE1AB6A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AB6B8 = v3;
      unk_1EE1AB6C0 = 0;
      qword_1EE1AB688 = &unk_1F5CF4338;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1AB688);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1AB6A8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void *re::internal::defaultDestruct<re::ecs2::VertexCacheComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::~FramePersistentPtr((a3 + 192));
  re::DynamicArray<re::BindPoint>::deinit(a3 + 152);
  re::DynamicArray<unsigned long>::deinit(a3 + 112);
  re::DynamicArray<unsigned long>::deinit(a3 + 72);
  re::DynamicArray<re::AssetHandle>::deinit(a3 + 32);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void *re::internal::defaultDestructV2<re::ecs2::VertexCacheComponent>(uint64_t a1)
{
  re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::~FramePersistentPtr((a1 + 192));
  re::DynamicArray<re::BindPoint>::deinit(a1 + 152);
  re::DynamicArray<unsigned long>::deinit(a1 + 112);
  re::DynamicArray<unsigned long>::deinit(a1 + 72);
  re::DynamicArray<re::AssetHandle>::deinit(a1 + 32);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

void *re::ecs2::allocInfo_VertexCacheSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB658))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB758, "VertexCacheSystem");
    __cxa_guard_release(&qword_1EE1AB658);
  }

  return &unk_1EE1AB758;
}

void re::ecs2::initInfo_VertexCacheSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xDE383D715B7ED7DALL;
  v8[1] = "VertexCacheSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x22000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_VertexCacheSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VertexCacheSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VertexCacheSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VertexCacheSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VertexCacheSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VertexCacheSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VertexCacheSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::VertexCacheSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 38);
  a3[33] = &unk_1F5CF40D0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 35);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::VertexCacheSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 38);
  a1[33] = &unk_1F5CF40D0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);

  re::ecs2::System::~System(a1);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::VertexCacheComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::VertexCacheSystem::~VertexCacheSystem(re::ecs2::VertexCacheSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);
  *(this + 33) = &unk_1F5CF40D0;
  re::FixedArray<CoreIKTransform>::deinit(this + 35);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);
  *(this + 33) = &unk_1F5CF40D0;
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::BindPoint>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::BindPoint>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          *(v11 + 8) = 0;
          v13 = v8[1];
          v14 = v8[2];
          v15 = (v8 + 1);
          v11[1] = v13;
          v11[2] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[3];
          v11[3] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[5];
          v11[5] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 8);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v15);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v15);
          v11 += 6;
          v8 = (v15 + 40);
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CF41D8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF4230;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF4288;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF42E0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CF41D8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CF4230;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CF4288;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CF42E0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF41D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF41D8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4230;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4230;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4288;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4288;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF42E0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF42E0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::IntrospectionInfo<re::Optional<BOOL>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionOptional<BOOL>::IntrospectionOptional();
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_BOOL(1, a2);
  if ((re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info, 0);
    qword_1EE186528 = 0x20000000DLL;
    dword_1EE186530 = v8;
    word_1EE186534 = 0;
    *&xmmword_1EE186538 = 0;
    *(&xmmword_1EE186538 + 1) = 0xFFFFFFFFLL;
    qword_1EE186548 = v7;
    qword_1EE186550 = 0;
    re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info = &unk_1F5CF43D0;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186538 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info;
}

void *re::IntrospectionDynamicArray<re::Optional<BOOL>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Optional<BOOL>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Optional<BOOL>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Optional<BOOL>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Optional<BOOL>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::Optional<BOOL>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Optional<BOOL>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::Optional<BOOL>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Optional<BOOL>>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  if (v8 >= v9)
  {
    v10 = v8 + 1;
    if (v9 < v8 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v9;
        if (!v9)
        {
          v11 = 8;
        }

        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        re::DynamicArray<re::Optional<BOOL>>::setCapacity(a4, v12);
      }

      else
      {
        re::DynamicArray<re::Optional<BOOL>>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v8 = *(a4 + 16);
  }

  v13 = *(a4 + 32);
  *(v13 + 2 * v8) = 0;
  v14 = v8 + 1;
  *(a4 + 16) = v14;
  ++*(a4 + 24);
  v15 = (v13 + 2 * v14 - 2);
  re::introspectionInitElement(a2, a3, a1[6], v15);
  return v15;
}

unint64_t re::IntrospectionDynamicArray<re::Optional<BOOL>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 2 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 2 * a3;
}

void *re::DynamicArray<re::Optional<BOOL>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::Optional<BOOL>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if ((a2 & 0x8000000000000000) != 0)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 2, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 2 * a2;
          result = (*(*result + 32))(result, 2 * a2, 1);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_17:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v7 + 1;
        v11 = 2 * v9;
        v12 = (v8 + 1);
        do
        {
          v13 = *(v12 - 1);
          *(v10 - 1) = v13;
          if (v13 == 1)
          {
            *v10 = *v12;
          }

          v10 += 2;
          v12 += 2;
          v11 -= 2;
        }

        while (v11);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_17;
    }
  }

  return result;
}

void *re::DynamicArray<re::Optional<BOOL>>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::Optional<BOOL>>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 0;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
      v9 = (v3[4] + 2 * v4 + 16);
      do
      {
        v10 = vdupq_n_s64(v6);
        v11 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E3049620)));
        if (vuzp1_s8(vuzp1_s16(v11, *v7.i8), *v7.i8).u8[0])
        {
          *(v9 - 16) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v11, *&v7), *&v7).i8[1])
        {
          *(v9 - 14) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E3049640)))), *&v7).i8[2])
        {
          *(v9 - 12) = 0;
          *(v9 - 10) = 0;
        }

        v12 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E3049660)));
        if (vuzp1_s8(*&v7, vuzp1_s16(v12, *&v7)).i32[1])
        {
          *(v9 - 8) = 0;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v12, *&v7)).i8[5])
        {
          *(v9 - 6) = 0;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E305F210))))).i8[6])
        {
          *(v9 - 4) = 0;
          *(v9 - 2) = 0;
        }

        v13 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E30903F0)));
        if (vuzp1_s8(vuzp1_s16(v13, *v7.i8), *v7.i8).u8[0])
        {
          *v9 = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v13, *&v7), *&v7).i8[1])
        {
          v9[2] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E30903E0)))), *&v7).i8[2])
        {
          v9[4] = 0;
          v9[6] = 0;
        }

        v14 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E30903D0)));
        if (vuzp1_s8(*&v7, vuzp1_s16(v14, *&v7)).i32[1])
        {
          v9[8] = 0;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v14, *&v7)).i8[5])
        {
          v9[10] = 0;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E30903C0))))).i8[6])
        {
          v9[12] = 0;
          v9[14] = 0;
        }

        v6 += 16;
        v9 += 32;
      }

      while (v8 != v6);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void re::TypeBuilderHelper::registerOptional<BOOL>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginOptionalType(v10, a2, 2uLL, 1uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

uint64_t re::IntrospectionOptional<BOOL>::IntrospectionOptional()
{
  ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info, 0);
  *(&qword_1EE186528 + 6) = 0;
  qword_1EE186528 = 0;
  *&xmmword_1EE186538 = 0;
  *(&xmmword_1EE186538 + 1) = 0xFFFFFFFFLL;
  re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info = &unk_1F5CBA310;
  qword_1EE186550 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE186548);
  re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info = &unk_1F5CF43D0;
  return result;
}

void *re::IntrospectionOptional<BOOL>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<BOOL>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<BOOL>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<BOOL>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Optional<BOOL>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Optional<BOOL>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::Optional<BOOL>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 2 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 2;
        v11 -= 2;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 2 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 2 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::VertexCacheComponent>(uint64_t a1)
{
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = 0u;
  v2 = (a1 + 192);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1220;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 184) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0;
  inited = objc_initWeak(v2, 0);
  *(a1 + 200) = 0;
  *(a1 + 232) = re::globalAllocators(inited)[2];
  *(a1 + 240) = 0;
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs220VertexCacheComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::accessibility::introspect_Importance(re::ecs2::accessibility *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AB7F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AB7F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB7F8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AB838, "Importance", 1, 1, 1, 1);
      qword_1EE1AB838 = &unk_1F5D0C658;
      qword_1EE1AB878 = &re::ecs2::accessibility::introspect_Importance(BOOL)::enumTable;
      dword_1EE1AB848 = 9;
      __cxa_guard_release(&qword_1EE1AB7F8);
    }

    if (_MergedGlobals_301)
    {
      break;
    }

    _MergedGlobals_301 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AB838, a2);
    v33 = 0xE65B5EB096D28;
    v34 = "Importance";
    v37 = 0x31CD534126;
    v38 = "uint8_t";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1AB878;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE1AB858 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v32);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1AB7F0))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Default";
      qword_1EE1AB810 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "High";
      qword_1EE1AB818 = v31;
      __cxa_guard_release(&qword_1EE1AB7F0);
    }
  }
}

void *re::ecs2::accessibility::allocInfo_CustomContent(re::ecs2::accessibility *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB800))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB880, "CustomContent");
    __cxa_guard_release(&qword_1EE1AB800);
  }

  return &unk_1EE1AB880;
}

void re::ecs2::accessibility::initInfo_CustomContent(re::ecs2::accessibility *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0xDF8C99149F5BF50;
  v19[1] = "CustomContent";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1AB808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB808))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "label";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1AB820 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "value";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AB828 = v14;
    v15 = re::introspectionAllocator();
    re::ecs2::accessibility::introspect_Importance(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "importance";
    *(v17 + 16) = &qword_1EE1AB838;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4000000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1AB830 = v17;
    __cxa_guard_release(&qword_1EE1AB808);
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AB820;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::accessibility::CustomContent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::accessibility::CustomContent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::accessibility::CustomContent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::accessibility::CustomContent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

void *re::internal::defaultConstruct<re::ecs2::accessibility::CustomContent>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  v5 = (a3 + 32);

  return re::DynamicString::setCapacity(v5, 0);
}

double re::internal::defaultDestruct<re::ecs2::accessibility::CustomContent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::accessibility::CustomContent>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  v3 = (a1 + 32);

  return re::DynamicString::setCapacity(v3, 0);
}

double re::internal::defaultDestructV2<re::ecs2::accessibility::CustomContent>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

uint64_t re::GeomAttribute::accessValues<int>(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 16))(a1))
  {
    return 0;
  }

  if (!a1[5])
  {
    v7 = 0;
    memset(v16, 0, sizeof(v16));
    v4 = MEMORY[0x1E69E9C10];
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v11 = 797;
    v12 = 2048;
    v13 = 0;
    v14 = 2048;
    v15 = 0;
    _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a1[7];
  (*(*a1 + 16))(a1);
  return v2;
}

uint64_t re::audio::anonymous namespace::AttributesNeededForTheseModes(int a1, int a2)
{
  if ((a1 - 2) >= 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x10010101080204uLL >> (8 * (a1 - 2));
  }

  v3 = v2 | 8;
  v4 = v2 | 1;
  v5 = v2 | 0x10;
  if (a2 != 8)
  {
    v5 = v2;
  }

  if (a2 != 5)
  {
    v4 = v5;
  }

  if (a2 != 4)
  {
    v3 = v4;
  }

  v6 = v2 | 4;
  if (a2 == 3)
  {
    v2 |= 2u;
  }

  if (a2 == 2)
  {
    v2 = v6;
  }

  if (a2 > 3)
  {
    return v3;
  }

  return v2;
}

void re::audio::MeshVisualizer::setupMaterials(re::audio::MeshVisualizer *this, const re::internal::AssetTypeRegistry **a2, re::RenderManager *a3)
{
  v5 = *(this + 26);
  if (v5 != 1)
  {
    if (v5)
    {
      return;
    }

    re::AssetManager::assetHandle(a2, "engine:AudioMeshDebugVisualization.rematerialdefinition", &v15);
    v6 = *(this + 3);
    *(this + 3) = v15;
    v15 = v6;
    v7 = *(this + 8);
    *(this + 8) = v16;
    v16 = v7;
    re::AssetHandle::~AssetHandle(&v15);
    re::AssetHandle::loadAsync((this + 48));
    v8 = 1;
    goto LABEL_7;
  }

  v9 = *(this + 7);
  if (v9)
  {
    v10 = atomic_load((v9 + 896));
    if (v10 == 2)
    {
      re::AssetHandle::AssetHandle(v14, (this + 48));
      re::MaterialAsset::makeMaterialMemoryAsset(a2, a3, v14, 0, 0);
      v12 = *(this + 72);
      *(this + 72) = v15;
      v15 = v12;
      v13 = *(this + 11);
      *(this + 11) = v16;
      v16 = v13;
      re::AssetHandle::~AssetHandle(&v15);
      re::AssetHandle::~AssetHandle(v14);
      v8 = 2;
LABEL_7:
      *(this + 26) = v8;
    }
  }
}

void re::audio::MeshVisualizer::setMaterial(re::audio::MeshVisualizer *this, re::RenderManager *a2, re::PrimitiveRenderingContext *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 26) == 2)
  {
    *(a3 + 140) = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 72)) + 1776);
    if (*(this + 24))
    {
      MurmurHash3_x64_128("Transparent", 0xBuLL, 0, &v11);
      v10.n128_u64[0] = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
      v6 = strlen(re::audio::MeshVisualizer::setMaterial(re::RenderManager *,re::PrimitiveRenderingContext *)::solidTechniqueNames[*(this + 24) - 1]);
      if (v6)
      {
        MurmurHash3_x64_128(re::audio::MeshVisualizer::setMaterial(re::RenderManager *,re::PrimitiveRenderingContext *)::solidTechniqueNames[*(this + 24) - 1], v6, 0, &v11);
        v7 = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
      }

      else
      {
        v7 = 0;
      }

      v10.n128_u64[1] = v7;
      re::DynamicArray<re::RigNodeConstraint>::add((a3 + 1136), &v10);
    }

    if (*(this + 25))
    {
      MurmurHash3_x64_128("PrimitiveRendererWireframe", 0x1AuLL, 0, &v11);
      v10.n128_u64[0] = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
      v8 = strlen(re::audio::MeshVisualizer::setMaterial(re::RenderManager *,re::PrimitiveRenderingContext *)::wireTechniqueNames[*(this + 25) - 1]);
      if (v8)
      {
        MurmurHash3_x64_128(re::audio::MeshVisualizer::setMaterial(re::RenderManager *,re::PrimitiveRenderingContext *)::wireTechniqueNames[*(this + 25) - 1], v8, 0, &v11);
        v9 = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
      }

      else
      {
        v9 = 0;
      }

      v10.n128_u64[1] = v9;
      re::DynamicArray<re::RigNodeConstraint>::add((a3 + 1136), &v10);
    }

    *(this + 14) = a2;
  }
}

void re::audio::MeshVisualizer::addDebugVisMesh(unint64_t a1, const re::AssetHandle *a2, _DWORD *a3)
{
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = *(v6 + 792);
  }

  else
  {
    v7 = 0;
  }

  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, a2, v7 ^ (v8 >> 31) ^ v8, &v10);
  if (v11 == 0x7FFFFFFF)
  {
    re::AssetHandle::AssetHandle(v9, a2);
    re::audio::MeshVisualizer::updateDebugVisMesh(a1, v9, a3);
    re::AssetHandle::~AssetHandle(v9);
  }
}

void re::audio::MeshVisualizer::updateDebugVisMesh(unint64_t a1, const re::AssetHandle *a2, _DWORD *a3)
{
  v5 = a1;
  v250 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 96);
  if (__PAIR64__(*(v5 + 100), v6))
  {
    if (a3[10])
    {
      {
        v9 = *(v5 + 120);
        v11 = a3;
        v12 = v10;
        v13 = a3[10];
        v207 = v11;
        if ((v10 & 2) != 0 && (v14 = re::internal::GeomAttributeManager::attributeByName((v11 + 16), "classification")) != 0)
        {
          v212 = re::GeomAttribute::accessValues<int>(v14);
          v16 = v15;
        }

        else
        {
          v212 = 0;
          v16 = 0xFFFFFFFFLL;
        }

        v213 = v16;
        v20 = v9 << 32;
        if (v12 >= 8 && (v21 = re::internal::GeomAttributeManager::attributeByName((v207 + 64), re::AcousticMeshAsset::kMaterialAttributeName)) != 0)
        {
          v216 = re::GeomAttribute::accessValues<int>(v21);
          v23 = v22;
        }

        else
        {
          v216 = 0;
          v23 = 0xFFFFFFFFLL;
        }

        v218 = v23;
        if ((v12 & 2) == 0 || *(v5 + 400) == 1) && ((v12 & 8) == 0 || *(v5 + 401) == 1) && (v12 < 0x10 || (*(v5 + 402)))
        {
          v24 = *(v207 + 10);
          if (!*(v207 + 10))
          {
            goto LABEL_289;
          }

          v25 = 0;
          v26 = (*(v207 + 7) + 12);
          do
          {
            v27 = *v26;
            v26 += 4;
            if (v27 == -1)
            {
              v28 = 1;
            }

            else
            {
              v28 = 2;
            }

            v25 += v28;
            --v24;
          }

          while (v24);
          v29 = 3 * v25;
          v30 = 1;
        }

        else
        {
          if (!v13)
          {
            goto LABEL_289;
          }

          v31 = 0;
          v29 = 0;
          v32 = *(v207 + 5);
          v33 = (*(v207 + 7) + 12);
          do
          {
            if ((v12 & 2) != 0)
            {
              if (v213 <= v31)
              {
                goto LABEL_315;
              }

              v34 = *(v212 + 4 * v31);
              v35 = v34 >= 1 && *(v5 + 376) > v34;
              if (v35 && ((*(*(v5 + 368) + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34) & 1) != 0)
              {
                goto LABEL_69;
              }
            }

            if ((v12 & 8) != 0)
            {
              if (v218 <= v31)
              {
                goto LABEL_319;
              }

              v36 = *(v216 + 4 * v31);
              v37 = v36 >= 1 && *(v5 + 296) > v36;
              if (v37 && ((*(*(v5 + 288) + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v36) & 1) != 0)
              {
                goto LABEL_69;
              }
            }

            if (v12 >= 0x10)
            {
              if (v218 <= v31)
              {
                goto LABEL_327;
              }

              v38 = *(v216 + 4 * v31);
              v39 = v38 >= 1 && *(v5 + 216) > v38;
              if (v39 && ((*(*(v5 + 208) + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v38) & 1) != 0)
              {
LABEL_69:
                if (v32 <= v31)
                {
                  goto LABEL_323;
                }

                if (*v33 == -1)
                {
                  v29 += 3;
                }

                else
                {
                  v29 += 6;
                }
              }
            }

            ++v31;
            v33 += 4;
          }

          while (v13 != v31);
          v30 = 0;
          if (!v29)
          {
            goto LABEL_289;
          }
        }

        v201 = v30;
        v196 = v29;
        v40 = *(v5 + 112);
        if (v40)
        {
          v41 = *(v40 + 208);
        }

        else
        {
          v41 = MTLCreateSystemDefaultDevice();
        }

        v42 = v41;

        v195 = v42;
        v43 = [objc_msgSend(v42 newBufferWithLength:4 * v196 options:{0), "contents"}];
        *v224 = 0u;
        *v225 = 0u;
        v226 = 1065353216;
        v44 = v196;
        std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(v224, v44);
        *v221 = 0u;
        *__p = 0u;
        v223 = 1065353216;
        std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(v221, v44);
        v20 = *(v207 + 5);
        v209 = v5;
        if (!v20)
        {
          v46 = 0;
          goto LABEL_205;
        }

        v45 = 0;
        v3 = 0;
        v46 = 0;
        v47 = 0;
        v198 = v43 + 8;
        v199 = v43 + 4;
        v200 = v43;
        v197 = v43 + 16;
        v48 = 0x9E3779B97F4A7C17;
        v49 = v201;
        v214 = v12;
        while (1)
        {
          if (v49)
          {
            goto LABEL_82;
          }

          if ((v12 & 2) != 0)
          {
            if (v213 <= v3)
            {
              goto LABEL_359;
            }

            v84 = *(v212 + 4 * v3);
            v85 = v84 >= 1 && *(v5 + 376) > v84;
            if (v85 && ((*(*(v5 + 368) + ((v84 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v84) & 1) != 0)
            {
              goto LABEL_82;
            }
          }

          if ((v12 & 8) != 0)
          {
            if (v218 <= v3)
            {
              goto LABEL_363;
            }

            v86 = *(v216 + 4 * v3);
            if (v86 >= 1 && *(v5 + 296) > v86)
            {
              v88 = *(*(v5 + 288) + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v86);
              if (v12 < 0x10 || v88)
              {
                if (!v88)
                {
                  goto LABEL_201;
                }

                goto LABEL_82;
              }
            }

            else if (v12 <= 0xF)
            {
              goto LABEL_201;
            }
          }

          else if (v12 < 0x10)
          {
            goto LABEL_201;
          }

          if (v218 <= v3)
          {
            goto LABEL_367;
          }

          v89 = *(v216 + 4 * v3);
          if (v89 < 1 || *(v5 + 216) <= v89 || ((*(*(v5 + 208) + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
          {
LABEL_201:
            v83 = v47;
            goto LABEL_202;
          }

LABEL_82:
          v205 = v47;
          v206 = v45;
          *&v237[2] = 0;
          memset(v235, 0, sizeof(v235));
          if (v20 <= v3)
          {
            goto LABEL_339;
          }

          v50 = *(v207 + 7);
          v32 = *(v50 + 16 * v3 + 12);
          if (v32 == -1)
          {
            v51 = 3;
          }

          else
          {
            v51 = 4;
          }

          re::DynamicArray<float>::resize(v235, v51);
          v53 = 0;
          v20 = *&v235[16];
          v54 = *&v237[2];
          do
          {
            if (v20 == v53)
            {
              *v238 = 0;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v245 = 0u;
              v135 = MEMORY[0x1E69E9C10];
              v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v232 = 136315906;
              *&v232[4] = "operator[]";
              *&v232[12] = 1024;
              if (v136)
              {
                v137 = 3;
              }

              else
              {
                v137 = 2;
              }

              *&v232[14] = 789;
              *&v232[18] = 2048;
              *&v232[20] = v20;
              v233 = 2048;
              *v234 = v20;
              _os_log_send_and_compose_impl(v137, v238, &v245, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v192, v193);
              _os_crash_msg();
              __break(1u);
LABEL_295:
              v231 = 0;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v245 = 0u;
              v138 = MEMORY[0x1E69E9C10];
              v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v238 = 136315906;
              *&v238[4] = "operator[]";
              v239 = 1024;
              if (v139)
              {
                v140 = 3;
              }

              else
              {
                v140 = 2;
              }

              v240 = 789;
              v241 = 2048;
              v242 = v5;
              v243 = 2048;
              v244 = v20;
              _os_log_send_and_compose_impl(v140, &v231, &v245, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v192, v193);
              _os_crash_msg();
              __break(1u);
LABEL_299:
              v231 = 0;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v245 = 0u;
              v141 = MEMORY[0x1E69E9C10];
              v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v238 = 136315906;
              *&v238[4] = "operator[]";
              v239 = 1024;
              if (v142)
              {
                v143 = 3;
              }

              else
              {
                v143 = 2;
              }

              v240 = 613;
              v241 = 2048;
              v242 = v3;
              v243 = 2048;
              v244 = v213;
              _os_log_send_and_compose_impl(v143, &v231, &v245, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v192, v193);
              _os_crash_msg();
              __break(1u);
LABEL_303:
              v231 = 0;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v245 = 0u;
              v144 = MEMORY[0x1E69E9C10];
              v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v238 = 136315906;
              *&v238[4] = "operator[]";
              v239 = 1024;
              if (v145)
              {
                v146 = 3;
              }

              else
              {
                v146 = 2;
              }

              v240 = 613;
              v241 = 2048;
              v242 = v3;
              v243 = 2048;
              v244 = v218;
              _os_log_send_and_compose_impl(v146, &v231, &v245, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v192, v193);
              _os_crash_msg();
              __break(1u);
LABEL_307:
              v231 = 0;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v245 = 0u;
              v109 = MEMORY[0x1E69E9C10];
              v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v238 = 136315906;
              *&v238[4] = "operator[]";
              v239 = 1024;
              if (v147)
              {
                v148 = 3;
              }

              else
              {
                v148 = 2;
              }

              v240 = 613;
              v241 = 2048;
              v242 = v3;
              v243 = 2048;
              v244 = v218;
              _os_log_send_and_compose_impl(v148, &v231, &v245, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v192, v193);
              _os_crash_msg();
              __break(1u);
LABEL_311:
              *v232 = 0;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v245 = 0u;
              v31 = MEMORY[0x1E69E9C10];
              v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v235 = 136315906;
              *&v235[4] = "operator[]";
              *&v235[12] = 1024;
              if (v149)
              {
                v150 = 3;
              }

              else
              {
                v150 = 2;
              }

              *&v235[14] = 613;
              *&v235[18] = 2048;
              *&v235[20] = v109;
              v236 = 2048;
              *v237 = v218;
              _os_log_send_and_compose_impl(v150, v232, &v245, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v235, 38, v192, v194);
              _os_crash_msg();
              __break(1u);
LABEL_315:
              *v232 = 0;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v245 = 0u;
              v151 = MEMORY[0x1E69E9C10];
              v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v235 = 136315906;
              *&v235[4] = "operator[]";
              *&v235[12] = 1024;
              if (v152)
              {
                v153 = 3;
              }

              else
              {
                v153 = 2;
              }

              *&v235[14] = 613;
              *&v235[18] = 2048;
              *&v235[20] = v31;
              v236 = 2048;
              *v237 = v213;
              _os_log_send_and_compose_impl(v153, v232, &v245, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v235, 38, v192, v193);
              _os_crash_msg();
              __break(1u);
LABEL_319:
              *v232 = 0;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v245 = 0u;
              v154 = MEMORY[0x1E69E9C10];
              v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v235 = 136315906;
              *&v235[4] = "operator[]";
              *&v235[12] = 1024;
              if (v155)
              {
                v156 = 3;
              }

              else
              {
                v156 = 2;
              }

              *&v235[14] = 613;
              *&v235[18] = 2048;
              *&v235[20] = v31;
              v236 = 2048;
              *v237 = v218;
              _os_log_send_and_compose_impl(v156, v232, &v245, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v235, 38, v192, v193);
              _os_crash_msg();
              __break(1u);
LABEL_323:
              *v232 = 0;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v245 = 0u;
              v157 = MEMORY[0x1E69E9C10];
              v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v235 = 136315906;
              *&v235[4] = "operator[]";
              *&v235[12] = 1024;
              if (v158)
              {
                v159 = 3;
              }

              else
              {
                v159 = 2;
              }

              *&v235[14] = 797;
              *&v235[18] = 2048;
              *&v235[20] = v31;
              v236 = 2048;
              *v237 = v32;
              _os_log_send_and_compose_impl(v159, v232, &v245, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v235, 38, v192, v193);
              _os_crash_msg();
              __break(1u);
LABEL_327:
              *v232 = 0;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v245 = 0u;
              v109 = MEMORY[0x1E69E9C10];
              v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v235 = 136315906;
              *&v235[4] = "operator[]";
              *&v235[12] = 1024;
              if (v160)
              {
                v161 = 3;
              }

              else
              {
                v161 = 2;
              }

              *&v235[14] = 613;
              *&v235[18] = 2048;
              *&v235[20] = v31;
              v236 = 2048;
              *v237 = v218;
              _os_log_send_and_compose_impl(v161, v232, &v245, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v235, 38, v192, v193);
              _os_crash_msg();
              __break(1u);
LABEL_331:
              *v232 = 0;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v245 = 0u;
              v162 = MEMORY[0x1E69E9C10];
              v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v235 = 136315906;
              *&v235[4] = "operator[]";
              if (v163)
              {
                v164 = 3;
              }

              else
              {
                v164 = 2;
              }

              *&v235[12] = 1024;
              *&v235[14] = 613;
              *&v235[18] = 2048;
              *&v235[20] = v109;
              v236 = 2048;
              *v237 = v206;
              _os_log_send_and_compose_impl(v164, v232, &v245, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v235, 38, v192, v194);
              _os_crash_msg();
              __break(1u);
              goto LABEL_335;
            }

            *(v54 + 4 * v53) = *(v50 + v206 + 4 * v53);
            ++v53;
          }

          while (v51 != v53);
          v203 = v32;
          *&v234[2] = 0;
          memset(&v232[8], 0, 20);
          re::DynamicArray<int>::setCapacity(v232, v51);
          v5 = 0;
          ++*&v232[24];
          v215 = v3;
          v219 = v51;
          do
          {
            v230 = 0;
            v20 = *&v235[16];
            if (*&v235[16] <= v5)
            {
              goto LABEL_295;
            }

            v55 = *(*&v237[2] + 4 * v5);
            LODWORD(v227) = *(*&v237[2] + 4 * v5);
            if ((v12 & 2) != 0)
            {
              if (v213 <= v3)
              {
                goto LABEL_299;
              }

              v56 = *(v212 + 4 * v3);
            }

            else
            {
              v56 = -1;
            }

            HIDWORD(v227) = v56;
            if ((v12 & 8) != 0)
            {
              if (v218 <= v3)
              {
                goto LABEL_303;
              }

              v57 = *(v216 + 4 * v3);
              v228 = v57;
              if (v12 <= 0xF)
              {
                v58 = -1;
              }

              else
              {
                v58 = v57;
              }
            }

            else
            {
              v57 = -1;
              v228 = -1;
              v58 = -1;
              if (v12 > 0xF)
              {
                if (v218 <= v3)
                {
                  goto LABEL_307;
                }

                v58 = *(v216 + 4 * v3);
                v57 = -1;
              }
            }

            v229 = v58;
            LOBYTE(v230) = v12;
            v59 = v55 + v48;
            LODWORD(v245) = 0;
            if ((v12 & 2) != 0)
            {
              v59 ^= v48 + (v59 << 6) + (v59 >> 2) + v56;
            }

            if ((v12 & 8) != 0)
            {
              v59 ^= v48 + v57 + (v59 << 6) + (v59 >> 2);
            }

            if (v12 >= 0x10)
            {
              v60 = (v48 + v58 + (v59 << 6) + (v59 >> 2)) ^ v59;
            }

            else
            {
              v60 = v59;
            }

            v61 = v224[1];
            if (!v224[1])
            {
              LODWORD(v245) = v46;
              goto LABEL_142;
            }

            v62 = v48;
            v63 = vcnt_s8(v224[1]);
            v63.i16[0] = vaddlv_u8(v63);
            v64 = v63.u32[0];
            if (v63.u32[0] > 1uLL)
            {
              v65 = v60;
              if (v60 >= v224[1])
              {
                v65 = v60 % v224[1];
              }
            }

            else
            {
              v65 = (v224[1] - 1) & v60;
            }

            v66 = v224[0];
            v67 = *(v224[0] + v65);
            if (!v67 || (v68 = *v67) == 0)
            {
LABEL_127:
              LODWORD(v245) = v46;
              if (v64 > 1)
              {
                v70 = v60;
                if (v60 >= v61)
                {
                  v70 = v60 % v61;
                }
              }

              else
              {
                v70 = (v61 - 1) & v60;
              }

              v71 = v66[v70];
              if (v71)
              {
                v72 = *v71;
                if (*v71)
                {
                  do
                  {
                    v73 = v72[1];
                    if (v73 == v60)
                    {
                      {
                        v3 = v215;
                        v48 = v62;
                        v12 = v214;
                        if (!v221[1])
                        {
                          goto LABEL_159;
                        }

                        v74 = vcnt_s8(v221[1]);
                        v74.i16[0] = vaddlv_u8(v74);
                        if (v74.u32[0] > 1uLL)
                        {
                          v75 = v46;
                          if (v221[1] <= v46)
                          {
                            v75 = v46 % LODWORD(v221[1]);
                          }
                        }

                        else
                        {
                          v75 = (LODWORD(v221[1]) - 1) & v46;
                        }

                        v76 = *(v221[0] + v75);
                        if (!v76 || (v77 = *v76) == 0)
                        {
LABEL_159:
                          operator new();
                        }

                        while (1)
                        {
                          v78 = v77[1];
                          if (v78 == v46)
                          {
                            if (*(v77 + 4) == v46)
                            {
                              ++v46;
                              goto LABEL_162;
                            }
                          }

                          else
                          {
                            if (v74.u32[0] > 1uLL)
                            {
                              if (v78 >= v221[1])
                              {
                                v78 %= v221[1];
                              }
                            }

                            else
                            {
                              v78 &= v221[1] - 1;
                            }

                            if (v78 != v75)
                            {
                              goto LABEL_159;
                            }
                          }

                          v77 = *v77;
                          if (!v77)
                          {
                            goto LABEL_159;
                          }
                        }
                      }
                    }

                    else
                    {
                      if (v64 > 1)
                      {
                        if (v73 >= v61)
                        {
                          v73 %= v61;
                        }
                      }

                      else
                      {
                        v73 &= v61 - 1;
                      }

                      if (v73 != v70)
                      {
                        break;
                      }
                    }

                    v72 = *v72;
                  }

                  while (v72);
                }
              }

LABEL_142:
              operator new();
            }

            while (1)
            {
              v69 = v68[1];
              if (v69 == v60)
              {
                break;
              }

              if (v64 > 1)
              {
                if (v69 >= v61)
                {
                  v69 %= v61;
                }
              }

              else
              {
                v69 &= v61 - 1;
              }

              if (v69 != v65)
              {
                goto LABEL_127;
              }

LABEL_126:
              v68 = *v68;
              if (!v68)
              {
                goto LABEL_127;
              }
            }

            {
              goto LABEL_126;
            }

            LODWORD(v245) = *(v68 + 9);
            v3 = v215;
            v48 = v62;
            v12 = v214;
LABEL_162:
            v32 = v219;
            re::DynamicArray<int>::add(v232, &v245);
            ++v5;
          }

          while (v5 != v219);
          v79 = *&v232[16];
          if (!*&v232[16])
          {
            goto LABEL_343;
          }

          v80 = *&v234[2];
          v81 = (v200 + 4 * v205);
          *v81 = **&v234[2];
          v5 = v209;
          if (v79 == 1)
          {
LABEL_347:
            v227 = 0;
            v248 = 0u;
            v249 = 0u;
            v246 = 0u;
            v247 = 0u;
            v245 = 0u;
            v174 = MEMORY[0x1E69E9C10];
            v175 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v238 = 136315906;
            *&v238[4] = "operator[]";
            v239 = 1024;
            if (v175)
            {
              v176 = 3;
            }

            else
            {
              v176 = 2;
            }

            v240 = 789;
            v241 = 2048;
            v242 = 1;
            v243 = 2048;
            v244 = 1;
            _os_log_send_and_compose_impl(v176, &v227, &v245, 80, &dword_1E1C61000, v174, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v192, v193);
            _os_crash_msg();
            __break(1u);
LABEL_351:
            v227 = 0;
            v248 = 0u;
            v249 = 0u;
            v246 = 0u;
            v247 = 0u;
            v245 = 0u;
            v177 = MEMORY[0x1E69E9C10];
            v178 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v238 = 136315906;
            *&v238[4] = "operator[]";
            v239 = 1024;
            if (v178)
            {
              v179 = 3;
            }

            else
            {
              v179 = 2;
            }

            v240 = 789;
            v241 = 2048;
            v242 = 2;
            v243 = 2048;
            v244 = 2;
            _os_log_send_and_compose_impl(v179, &v227, &v245, 80, &dword_1E1C61000, v177, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v192, v193);
            _os_crash_msg();
            __break(1u);
LABEL_355:
            v227 = 0;
            v248 = 0u;
            v249 = 0u;
            v246 = 0u;
            v247 = 0u;
            v245 = 0u;
            v180 = MEMORY[0x1E69E9C10];
            v181 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v238 = 136315906;
            *&v238[4] = "operator[]";
            v239 = 1024;
            if (v181)
            {
              v182 = 3;
            }

            else
            {
              v182 = 2;
            }

            v240 = 789;
            v241 = 2048;
            v242 = 3;
            v243 = 2048;
            v244 = 3;
            _os_log_send_and_compose_impl(v182, &v227, &v245, 80, &dword_1E1C61000, v180, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v192, v193);
            _os_crash_msg();
            __break(1u);
LABEL_359:
            *v232 = 0;
            v248 = 0u;
            v249 = 0u;
            v246 = 0u;
            v247 = 0u;
            v245 = 0u;
            v183 = MEMORY[0x1E69E9C10];
            v184 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v235 = 136315906;
            *&v235[4] = "operator[]";
            *&v235[12] = 1024;
            if (v184)
            {
              v185 = 3;
            }

            else
            {
              v185 = 2;
            }

            *&v235[14] = 613;
            *&v235[18] = 2048;
            *&v235[20] = v3;
            v236 = 2048;
            *v237 = v213;
            _os_log_send_and_compose_impl(v185, v232, &v245, 80, &dword_1E1C61000, v183, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v235, 38, v192, v193);
            _os_crash_msg();
            __break(1u);
LABEL_363:
            *v232 = 0;
            v248 = 0u;
            v249 = 0u;
            v246 = 0u;
            v247 = 0u;
            v245 = 0u;
            v186 = MEMORY[0x1E69E9C10];
            v187 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v235 = 136315906;
            *&v235[4] = "operator[]";
            *&v235[12] = 1024;
            if (v187)
            {
              v188 = 3;
            }

            else
            {
              v188 = 2;
            }

            *&v235[14] = 613;
            *&v235[18] = 2048;
            *&v235[20] = v3;
            v236 = 2048;
            *v237 = v218;
            _os_log_send_and_compose_impl(v188, v232, &v245, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v235, 38, v192, v193);
            _os_crash_msg();
            __break(1u);
LABEL_367:
            *v232 = 0;
            v248 = 0u;
            v249 = 0u;
            v246 = 0u;
            v247 = 0u;
            v245 = 0u;
            v189 = MEMORY[0x1E69E9C10];
            v190 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v235 = 136315906;
            *&v235[4] = "operator[]";
            *&v235[12] = 1024;
            if (v190)
            {
              v191 = 3;
            }

            else
            {
              v191 = 2;
            }

            *&v235[14] = 613;
            *&v235[18] = 2048;
            *&v235[20] = v3;
            v236 = 2048;
            *v237 = v218;
            _os_log_send_and_compose_impl(v191, v232, &v245, 80, &dword_1E1C61000, v189, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v235, 38, v192, v193);
            _os_crash_msg();
            __break(1u);
          }

          *(v199 + 4 * v205) = v80[1];
          if (v79 <= 2)
          {
            goto LABEL_351;
          }

          v82 = v80[2];
          v83 = v205 + 3;
          *(v198 + 4 * v205) = v82;
          if (v203 == -1)
          {
            goto LABEL_169;
          }

          *(v200 + 4 * v83) = v82;
          if (v79 == 3)
          {
            goto LABEL_355;
          }

          *(v197 + 4 * v205) = v80[3];
          v83 = v205 + 6;
          v81[5] = *v80;
LABEL_169:
          if (*v232)
          {
            (*(**v232 + 40))(*v232);
          }

          if (*v235 && *&v237[2])
          {
            (*(**v235 + 40))();
          }

          v45 = v206;
          v20 = *(v207 + 5);
          v49 = v201;
LABEL_202:
          ++v3;
          v45 += 16;
          v47 = v83;
          if (v3 >= v20)
          {
LABEL_205:
            v220 = v46;
            v90 = 12 * v46;
            v91 = [v195 newBufferWithLength:v90 options:0];
            v217 = re::GeomMesh::accessVertexPositions(v207);
            v218 = v92;
            v93 = [v91 contents];
            if ((v12 & 1) != 0 && (v94 = [v195 newBufferWithLength:v90 options:0], (v95 = re::internal::GeomAttributeManager::attributeByName((v207 + 64), "vertexNormal")) != 0))
            {
              v204 = re::GeomAttribute::accessValues<int>(v95);
              LODWORD(v206) = v96;
              v97 = [v94 contents];
            }

            else
            {
              v204 = 0;
              v97 = 0;
              LODWORD(v206) = -1;
            }

            v194 = v91;
            if ((v12 & 4) != 0 && (v98 = [v195 newBufferWithLength:v90 options:0], (v99 = re::internal::GeomAttributeManager::attributeByName((v207 + 64), "vertexColor")) != 0))
            {
              v202 = re::GeomAttribute::accessValues<int>(v99);
              LODWORD(v205) = v100;
              v3 = [v98 contents];
            }

            else
            {
              v202 = 0;
              v3 = 0;
              LODWORD(v205) = -1;
            }

            v101 = 16 * v220;
            if ((v12 & 2) != 0)
            {
              v211 = [objc_msgSend(v195 newBufferWithLength:16 * v220 options:{0), "contents"}];
            }

            else
            {
              v211 = 0;
            }

            if ((v12 & 8) != 0)
            {
              v210 = [objc_msgSend(v195 newBufferWithLength:v101 options:{0), "contents"}];
            }

            else
            {
              v210 = 0;
            }

            if (v12 < 0x10)
            {
              v208 = 0;
            }

            else
            {
              v208 = [objc_msgSend(v195 newBufferWithLength:v101 options:{0), "contents"}];
            }

            if (!v220)
            {
              goto LABEL_280;
            }

            v32 = 0;
            LODWORD(v213) = (v3 != 0) & (v12 >> 2);
            v20 = (v210 != 0) & (v12 >> 3);
            v103 = v12 > 0xF && v208 != 0;
            while (1)
            {
              if (!v221[1])
              {
                goto LABEL_245;
              }

              v104 = vcnt_s8(v221[1]);
              v104.i16[0] = vaddlv_u8(v104);
              if (v104.u32[0] > 1uLL)
              {
                v105 = v32;
                if (v221[1] <= v32)
                {
                  v105 = v32 % LODWORD(v221[1]);
                }
              }

              else
              {
                v105 = (v221[1] + 0xFFFFFFFF) & v32;
              }

              v106 = *(v221[0] + v105);
              if (!v106 || (v107 = *v106) == 0)
              {
LABEL_245:
                operator new();
              }

              while (1)
              {
                v108 = v107[1];
                if (v108 == v32)
                {
                  break;
                }

                if (v104.u32[0] > 1uLL)
                {
                  if (v108 >= v221[1])
                  {
                    v108 %= v221[1];
                  }
                }

                else
                {
                  v108 &= v221[1] - 1;
                }

                if (v108 != v105)
                {
                  goto LABEL_245;
                }

LABEL_244:
                v107 = *v107;
                if (!v107)
                {
                  goto LABEL_245;
                }
              }

              if (v32 != *(v107 + 4))
              {
                goto LABEL_244;
              }

              v109 = *(v107 + 5);
              if (v109 >= v218)
              {
                goto LABEL_311;
              }

              v110 = (v217 + 16 * v109);
              v111 = (3 * v32);
              *(v93 + 4 * v111) = *v110;
              v112 = (v111 + 1);
              *(v93 + 4 * v112) = v110[1];
              v113 = v110[2];
              v114 = (v111 + 2);
              *(v93 + 4 * v114) = v113;
              if ((v12 & (v97 != 0)) == 0)
              {
                goto LABEL_250;
              }

              if (v206 <= v109)
              {
                goto LABEL_331;
              }

              v115 = (v204 + 16 * v109);
              *(v97 + 4 * v111) = *v115;
              *(v97 + 4 * v112) = v115[1];
              *(v97 + 4 * v114) = v115[2];
LABEL_250:
              if (v213)
              {
                if (v205 > v109)
                {
                  v116 = (v202 + 16 * v109);
                  *(v3 + 4 * v111) = *v116;
                  *(v3 + 4 * v112) = v116[1];
                  *(v3 + 4 * v114) = v116[2];
                  goto LABEL_253;
                }

LABEL_335:
                *v232 = 0;
                v248 = 0u;
                v249 = 0u;
                v246 = 0u;
                v247 = 0u;
                v245 = 0u;
                v165 = MEMORY[0x1E69E9C10];
                v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v235 = 136315906;
                *&v235[4] = "operator[]";
                if (v166)
                {
                  v167 = 3;
                }

                else
                {
                  v167 = 2;
                }

                *&v235[12] = 1024;
                *&v235[14] = 613;
                *&v235[18] = 2048;
                *&v235[20] = v109;
                v236 = 2048;
                *v237 = v205;
                _os_log_send_and_compose_impl(v167, v232, &v245, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v235, 38, v192, v194);
                _os_crash_msg();
                __break(1u);
LABEL_339:
                *v238 = 0;
                v248 = 0u;
                v249 = 0u;
                v246 = 0u;
                v247 = 0u;
                v245 = 0u;
                v168 = MEMORY[0x1E69E9C10];
                v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v232 = 136315906;
                *&v232[4] = "operator[]";
                *&v232[12] = 1024;
                if (v169)
                {
                  v170 = 3;
                }

                else
                {
                  v170 = 2;
                }

                *&v232[14] = 797;
                *&v232[18] = 2048;
                *&v232[20] = v3;
                v233 = 2048;
                *v234 = v20;
                _os_log_send_and_compose_impl(v170, v238, &v245, 80, &dword_1E1C61000, v168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v232, 38, v192, v193);
                _os_crash_msg();
                __break(1u);
LABEL_343:
                v227 = 0;
                v248 = 0u;
                v249 = 0u;
                v246 = 0u;
                v247 = 0u;
                v245 = 0u;
                v171 = MEMORY[0x1E69E9C10];
                v172 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v238 = 136315906;
                *&v238[4] = "operator[]";
                v239 = 1024;
                if (v172)
                {
                  v173 = 3;
                }

                else
                {
                  v173 = 2;
                }

                v240 = 789;
                v241 = 2048;
                v242 = 0;
                v243 = 2048;
                v244 = 0;
                _os_log_send_and_compose_impl(v173, &v227, &v245, 80, &dword_1E1C61000, v171, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v192, v193);
                _os_crash_msg();
                __break(1u);
                goto LABEL_347;
              }

LABEL_253:
              if (((v211 != 0) & (v12 >> 1)) != 0)
              {
                v117 = *(v107 + 6);
                v118 = v209[40];
                v119 = (v209[41] - v118) >> 4 <= v117 || v117 <= 0;
                v120 = (v118 + 16 * v117);
                if (v119)
                {
                  v120 = v209 + 44;
                }

                *(v211 + 16 * (v32 & 0x3FFFFFFF)) = *v120;
                if (!v20)
                {
LABEL_261:
                  if (v103)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_269;
                }
              }

              else if (!v20)
              {
                goto LABEL_261;
              }

              v125 = *(v107 + 7);
              v126 = v209[30];
              v127 = (v209[31] - v126) >> 4 <= v125 || v125 <= 0;
              v128 = (v126 + 16 * v125);
              if (v127)
              {
                v128 = v209 + 34;
              }

              *(v210 + 16 * (v32 & 0x3FFFFFFF)) = *v128;
              if (v103)
              {
LABEL_262:
                v121 = *(v107 + 8);
                v122 = v209[20];
                v123 = (v209[21] - v122) >> 4 <= v121 || v121 <= 0;
                v124 = (v122 + 16 * v121);
                if (v123)
                {
                  v124 = v209 + 24;
                }

                *(v208 + (v32 & 0x3FFFFFFF)) = *v124;
              }

LABEL_269:
              if (++v32 == v220)
              {
LABEL_280:
                v129 = __p[0];
                if (__p[0])
                {
                  do
                  {
                    v130 = *v129;
                    operator delete(v129);
                    v129 = v130;
                  }

                  while (v130);
                }

                v131 = v221[0];
                v221[0] = 0;
                if (v131)
                {
                  operator delete(v131);
                }

                v132 = v225[0];
                if (v225[0])
                {
                  do
                  {
                    v133 = *v132;
                    operator delete(v132);
                    v132 = v133;
                  }

                  while (v133);
                }

                v134 = v224[0];
                v224[0] = 0;
                if (v134)
                {
                  operator delete(v134);
                }

LABEL_289:
                operator new();
              }
            }
          }
        }
      }
    }
  }
}

double re::audio::MeshVisualizer::removeDebugVisMeshesNotInUse(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 28))
  {
    return result;
  }

  if (!*(a2 + 28))
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v8);
    }

    if (*(a1 + 32))
    {
      v10 = 0;
      v11 = 0;
      do
      {
        re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free(*(a1 + 16) + v10);
        ++v11;
        v10 += 56;
      }

      while (v11 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v12 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v12;
    return result;
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v44 = 0x7FFFFFFFLL;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 14;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 == v4)
  {
    return re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(&v41);
  }

  do
  {
    v13 = *(a1 + 16) + 56 * v5;
    v14 = *(a2 + 24);
    v15 = *(v13 + 16);
    v16 = v15 ^ (v15 >> 30);
    if (!v14 || (!v15 ? (v17 = 0) : (v17 = *(v15 + 792)), v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v16) ^ ((0xBF58476D1CE4E5B9 * v16) >> 27)), v19 = *(*(a2 + 8) + 4 * ((v17 ^ (v18 >> 31) ^ v18) % v14)), v19 == 0x7FFFFFFF))
    {
LABEL_24:
      if (v15)
      {
        v21 = *(v15 + 792);
      }

      else
      {
        v21 = 0;
      }

      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v16) ^ ((0xBF58476D1CE4E5B9 * v16) >> 27));
      v23 = v21 ^ (v22 >> 31) ^ v22;
      if (!DWORD2(v42))
      {
        LODWORD(v24) = 0;
LABEL_33:
        re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addAsCopy(&v41, v24, v23, v13 + 8, (v13 + 8));
        ++HIDWORD(v44);
        LODWORD(v4) = *(a1 + 32);
        goto LABEL_34;
      }

      v24 = v23 % DWORD2(v42);
      v25 = *(*(&v41 + 1) + 4 * v24);
      if (v25 == 0x7FFFFFFF)
      {
        goto LABEL_33;
      }

      while (*(v42 + 40 * v25 + 24) != v15)
      {
        v25 = *(v42 + 40 * v25 + 8) & 0x7FFFFFFF;
        if (v25 == 0x7FFFFFFF)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v20 = *(a2 + 16);
      while (*(v20 + 40 * v19 + 24) != v15)
      {
        v19 = *(v20 + 40 * v19 + 8) & 0x7FFFFFFF;
        if (v19 == 0x7FFFFFFF)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_34:
    if (v4 <= v5 + 1)
    {
      v26 = v5 + 1;
    }

    else
    {
      v26 = v4;
    }

    while (v26 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(a1 + 16) + 56 * v5) & 0x80000000) != 0)
      {
        goto LABEL_41;
      }
    }

    LODWORD(v5) = v26;
LABEL_41:
    ;
  }

  while (v5 != v4);
  v27 = v43;
  if (v43)
  {
    v28 = 0;
    v29 = v42;
    v30 = 8;
    while ((*(v42 + v30) & 0x80000000) == 0)
    {
      ++v28;
      v30 += 40;
      if (v43 == v28)
      {
        LODWORD(v28) = v43;
        break;
      }
    }

    if (v43 != v28)
    {
      do
      {
        re::AssetHandle::AssetHandle(v39, (v29 + 40 * v28 + 16));
        if (v40)
        {
          v31 = *(v40 + 792);
        }

        else
        {
          v31 = 0;
        }

        v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) >> 27));
        re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, v39, v31 ^ (v32 >> 31) ^ v32, &v45);
        v33 = v47;
        if (v47 != 0x7FFFFFFF)
        {
          v34 = *(a1 + 16);
          v35 = *(v34 + 56 * v47) & 0x7FFFFFFF;
          if (v48 == 0x7FFFFFFF)
          {
            *(*(a1 + 8) + 4 * v46) = v35;
            v33 = v47;
          }

          else
          {
            *(v34 + 56 * v48) = *(v34 + 56 * v48) & 0x80000000 | v35;
          }

          re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free(v34 + 56 * v33);
          v36 = v47;
          v37 = *(a1 + 40);
          *(*(a1 + 16) + 56 * v47) = *(*(a1 + 16) + 56 * v47) & 0x80000000 | *(a1 + 36);
          --*(a1 + 28);
          *(a1 + 36) = v36;
          *(a1 + 40) = v37 + 1;
        }

        re::AssetHandle::~AssetHandle(v39);
        v29 = v42;
        if (v43 <= v28 + 1)
        {
          v38 = v28 + 1;
        }

        else
        {
          v38 = v43;
        }

        while (v38 - 1 != v28)
        {
          LODWORD(v28) = v28 + 1;
          if ((*(v42 + 40 * v28 + 8) & 0x80000000) != 0)
          {
            goto LABEL_63;
          }
        }

        LODWORD(v28) = v38;
LABEL_63:
        ;
      }

      while (v28 != v27);
    }
  }

  return re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(&v41);
}

void re::audio::MeshVisualizer::addMeshAttributes(uint64_t a1, id **a2, uint64_t a3, _OWORD *a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v139.n128_u64[0] = 0;
  v139.n128_u64[1] = &str_67;
  v142 = 0;
  LODWORD(v143) = 0;
  LODWORD(v144) = 0;
  v130 = 0;
  v131 = &str_67;
  v8 = (*a2)[1];
  v129 = **a2;
  v9 = v129;
  v132 = 0;
  v133 = &str_67;
  v136 = 0;
  LODWORD(v137) = 0;
  LODWORD(v138) = 0;
  re::StringID::operator=(&v132, &v130);
  v134 = 1;
  v135 = v8;
  v10 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v129);
  v11 = v132;
  v12 = v133;
  v132 = 0;
  v133 = &str_67;
  v13 = v139.n128_u8[0];
  v14 = v139.n128_u64[1];
  v139.n128_u64[0] = v11;
  v139.n128_u64[1] = v12;
  if (v13)
  {
  }

  v140 = v134;
  v141 = v135;
  NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
  v143 = v137;
  v144 = v138;
  v15 = v136;
  if (v136)
  {

    v136 = 0;
  }

  if (v132)
  {
    if (v132)
    {
    }
  }

  v132 = 0;
  v133 = &str_67;
  v16 = v129;
  if (v129)
  {

    v129 = 0;
  }

  if (v130)
  {
    if (v130)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  v130 = 0;
  v131 = &str_67;
  v18 = (*a2)[4];
  v128 = (*a2)[3];
  v19 = v128;
  v132 = 0;
  v133 = &str_67;
  v136 = 0;
  LODWORD(v137) = 0;
  LODWORD(v138) = 0;
  re::StringID::operator=(&v132, &v130);
  v134 = 1;
  v135 = v18;
  v20 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v128);
  v21 = v132;
  v22 = v133;
  v132 = 0;
  v133 = &str_67;
  v23 = v139.n128_u8[0];
  v24 = v139.n128_u64[1];
  v139.n128_u64[0] = v21;
  v139.n128_u64[1] = v22;
  if (v23)
  {
  }

  v140 = v134;
  v141 = v135;
  NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
  v143 = v137;
  v144 = v138;
  v25 = v136;
  if (v136)
  {

    v136 = 0;
  }

  if (v132)
  {
    if (v132)
    {
    }
  }

  v132 = 0;
  v133 = &str_67;
  v26 = v128;
  if (v128)
  {

    v128 = 0;
  }

  if (v130)
  {
    if (v130)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  v28 = *a2;
  if (*(*a2 + 72) == 1)
  {
    v130 = 0;
    v131 = &str_67;
    v29 = (*a2)[7];
    v127 = (*a2)[6];
    v30 = v127;
    v132 = 0;
    v133 = &str_67;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    re::StringID::operator=(&v132, &v130);
    v134 = 1;
    v135 = v29;
    v31 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v127);
    v32 = v132;
    v33 = v133;
    v132 = 0;
    v133 = &str_67;
    v34 = v139.n128_u8[0];
    v35 = v139.n128_u64[1];
    v139.n128_u64[0] = v32;
    v139.n128_u64[1] = v33;
    if (v34)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v36 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    v37 = v127;
    if (v127)
    {

      v127 = 0;
    }

    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
    v28 = *a2;
  }

  if (*(v28 + 136) == 1)
  {
    v130 = 0;
    v131 = &str_67;
    v38 = (*a2)[15];
    v126 = (*a2)[14];
    v39 = v126;
    v132 = 0;
    v133 = &str_67;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    re::StringID::operator=(&v132, &v130);
    v134 = 1;
    v135 = v38;
    v40 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v126);
    v41 = v132;
    v42 = v133;
    v132 = 0;
    v133 = &str_67;
    v43 = v139.n128_u8[0];
    v44 = v139.n128_u64[1];
    v139.n128_u64[0] = v41;
    v139.n128_u64[1] = v42;
    if (v43)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v45 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    v46 = v126;
    if (v126)
    {

      v126 = 0;
    }

    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
    v28 = *a2;
  }

  if (*(v28 + 104) == 1)
  {
    v130 = 0;
    v131 = &str_67;
    v47 = (*a2)[11];
    v125 = (*a2)[10];
    v48 = v125;
    v132 = 0;
    v133 = &str_67;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    re::StringID::operator=(&v132, &v130);
    v134 = 1;
    v135 = v47;
    v49 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v125);
    v50 = v132;
    v51 = v133;
    v132 = 0;
    v133 = &str_67;
    v52 = v139.n128_u8[0];
    v53 = v139.n128_u64[1];
    v139.n128_u64[0] = v50;
    v139.n128_u64[1] = v51;
    if (v52)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v54 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    v55 = v125;
    if (v125)
    {

      v125 = 0;
    }

    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
    v28 = *a2;
  }

  if (*(v28 + 168) == 1)
  {
    v130 = 0;
    v131 = &str_67;
    v56 = (*a2)[19];
    v124 = (*a2)[18];
    v57 = v124;
    v132 = 0;
    v133 = &str_67;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    re::StringID::operator=(&v132, &v130);
    v134 = 1;
    v135 = v56;
    v58 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v124);
    v59 = v132;
    v60 = v133;
    v132 = 0;
    v133 = &str_67;
    v61 = v139.n128_u8[0];
    v62 = v139.n128_u64[1];
    v139.n128_u64[0] = v59;
    v139.n128_u64[1] = v60;
    if (v61)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v63 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    v64 = v124;
    if (v124)
    {

      v124 = 0;
    }

    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
    v28 = *a2;
  }

  if (*(v28 + 200) == 1)
  {
    v130 = 0;
    v131 = &str_67;
    v65 = (*a2)[23];
    v123 = (*a2)[22];
    v66 = v123;
    v132 = 0;
    v133 = &str_67;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    re::StringID::operator=(&v132, &v130);
    v134 = 1;
    v135 = v65;
    v67 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v123);
    v68 = v132;
    v69 = v133;
    v132 = 0;
    v133 = &str_67;
    v70 = v139.n128_u8[0];
    v71 = v139.n128_u64[1];
    v139.n128_u64[0] = v68;
    v139.n128_u64[1] = v69;
    if (v70)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v72 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    v73 = v123;
    if (v123)
    {

      v123 = 0;
    }

    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  }

  v130 = 0;
  v131 = &str_67;
  *v122 = a4[2];
  v74 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector3<float>>(&v130, v122, &v132);
  v75 = v132;
  v76 = v133;
  v132 = 0;
  v133 = &str_67;
  v77 = v139.n128_u8[0];
  v78 = v139.n128_u64[1];
  v139.n128_u64[0] = v75;
  v139.n128_u64[1] = v76;
  if (v77)
  {
  }

  v140 = v134;
  v141 = v135;
  NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
  v143 = v137;
  v144 = v138;
  v79 = v136;
  if (v136)
  {

    v136 = 0;
  }

  if (v132)
  {
    if (v132)
    {
    }
  }

  v132 = 0;
  v133 = &str_67;
  if (v130)
  {
    if (v130)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  v130 = 0;
  v131 = &str_67;
  *v122 = a4[1];
  v81 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector4<float>>(&v130, v122, &v132);
  v82 = v132;
  v83 = v133;
  v132 = 0;
  v133 = &str_67;
  v84 = v139.n128_u8[0];
  v85 = v139.n128_u64[1];
  v139.n128_u64[0] = v82;
  v139.n128_u64[1] = v83;
  if (v84)
  {
  }

  v140 = v134;
  v141 = v135;
  NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
  v143 = v137;
  v144 = v138;
  v86 = v136;
  if (v136)
  {

    v136 = 0;
  }

  if (v132)
  {
    if (v132)
    {
    }
  }

  v132 = 0;
  v133 = &str_67;
  if (v130)
  {
    if (v130)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  v130 = 0;
  v131 = &str_67;
  *v122 = *a4;
  v88 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector3<float>>(&v130, v122, &v132);
  v89 = v132;
  v90 = v133;
  v132 = 0;
  v133 = &str_67;
  v91 = v139.n128_u8[0];
  v92 = v139.n128_u64[1];
  v139.n128_u64[0] = v89;
  v139.n128_u64[1] = v90;
  if (v91)
  {
  }

  v140 = v134;
  v141 = v135;
  NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
  v143 = v137;
  v144 = v138;
  v93 = v136;
  if (v136)
  {

    v136 = 0;
  }

  if (v132)
  {
    if (v132)
    {
    }
  }

  v132 = 0;
  v133 = &str_67;
  if (v130)
  {
    if (v130)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  v95 = *(a1 + 96);
  if (v95 == 6 || *(a1 + 100) == 6)
  {
    v122[0] = 1.0 / (((*(a1 + 120) - *(*a2 + 53)) / 50.0) + 1.0);
    v130 = 0;
    v131 = &str_67;
    v96 = re::PrimitiveMeshAttribute::uniformCustomAttribute<float>(&v130, v122, &v132);
    v97 = v132;
    v98 = v133;
    v132 = 0;
    v133 = &str_67;
    v99 = v139.n128_u8[0];
    v100 = v139.n128_u64[1];
    v139.n128_u64[0] = v97;
    v139.n128_u64[1] = v98;
    if (v99)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v101 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
    v95 = *(a1 + 96);
  }

  if (v95 == 7)
  {
    v130 = 0;
    v131 = &str_67;
    *v122 = *(a1 + 128);
    v102 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector4<float>>(&v130, v122, &v132);
    v103 = v132;
    v104 = v133;
    v132 = 0;
    v133 = &str_67;
    v105 = v139.n128_u8[0];
    v106 = v139.n128_u64[1];
    v139.n128_u64[0] = v103;
    v139.n128_u64[1] = v104;
    if (v105)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v107 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  }

  if (*(a1 + 100) == 7)
  {
    v130 = 0;
    v131 = &str_67;
    *v122 = *(a1 + 144);
    v108 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector4<float>>(&v130, v122, &v132);
    v109 = v132;
    v110 = v133;
    v132 = 0;
    v133 = &str_67;
    v111 = v139.n128_u8[0];
    v112 = v139.n128_u64[1];
    v139.n128_u64[0] = v109;
    v139.n128_u64[1] = v110;
    if (v111)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v113 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  }

  v114 = *a2;
  *(a3 + 80) = (*a2)[2];
  *(a3 + 88) = v114[5];
  __asm
  {
    FMOV            V0.4S, #-25.0
    FMOV            V1.4S, #25.0
  }

  *(a3 + 48) = _Q0;
  *(a3 + 64) = _Q1;
  v121 = v142;
  if (v142)
  {

    v142 = 0;
  }

  if (v139.n128_u8[0])
  {
    if (v139.n128_u8[0])
    {
    }
  }
}

__n128 re::DynamicArray<re::PrimitiveMeshAttribute>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PrimitiveMeshAttribute>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + (v4 << 6));
  v6 = a2->n128_u64[0];
  v5->n128_u64[0] = v5->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | a2->n128_u64[0] & 1;
  v5->n128_u64[0] = a2->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5->n128_u64[1] = a2->n128_u64[1];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = &str_67;
  LOWORD(v6) = a2[1].n128_u16[0];
  v5[1].n128_u8[2] = a2[1].n128_u8[2];
  v5[1].n128_u16[0] = v6;
  v5[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = 0;
  result = a2[2];
  v8 = a2[3];
  v5[2] = result;
  v5[3] = v8;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}