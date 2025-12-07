uint64_t awd::metrics::BluetoothAccessoryOhdSensors::default_instance(awd::metrics::BluetoothAccessoryOhdSensors *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryOhdSensors::default_instance_;
  if (!awd::metrics::BluetoothAccessoryOhdSensors::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryOhdSensors::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryOhdSensors::Clear(uint64_t this)
{
  v1 = *(this + 264);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 60) = 0u;
    *(this + 44) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 84) = 0;
    *(this + 76) = 0;
    *(this + 100) = 0;
    *(this + 92) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 152) = 0;
    *(this + 160) = 0;
    *(this + 120) = 0;
    *(this + 128) = 0;
  }

  v2 = *(this + 268);
  if (v2)
  {
    *(this + 164) = 0;
    *(this + 184) = 0;
    *(this + 208) = 0;
    *(this + 216) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 256) = 0;
    *(this + 217) = 0;
    *(this + 228) = 0;
    *(this + 220) = 0;
    *(this + 236) = 0;
  }

  *(this + 112) = 0;
  *(this + 144) = 0;
  *(this + 176) = 0;
  *(this + 200) = 0;
  *(this + 248) = 0;
  *(this + 264) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryOhdSensors::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryOhdSensors *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
LABEL_1:
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 66) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v23 = v11 + 1;
          *(a2 + 1) = v23;
          goto LABEL_128;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_128:
        if (v23 >= v8 || (v43 = *v23, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v43;
          v44 = v23 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 66) |= 2u;
        if (v44 >= v8 || *v44 != 24)
        {
          continue;
        }

        v19 = v44 + 1;
        *(a2 + 1) = v19;
LABEL_136:
        if (v19 >= v8 || (v45 = *v19, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v45;
          v46 = v19 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 66) |= 4u;
        if (v46 >= v8 || *v46 != 32)
        {
          continue;
        }

        v21 = v46 + 1;
        *(a2 + 1) = v21;
LABEL_144:
        if (v21 >= v8 || (v47 = *v21, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v47;
          v48 = v21 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 66) |= 8u;
        if (v48 >= v8 || *v48 != 40)
        {
          continue;
        }

        v16 = v48 + 1;
        *(a2 + 1) = v16;
LABEL_152:
        if (v16 >= v8 || (v49 = *v16, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v49;
          v50 = v16 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 66) |= 0x10u;
        if (v50 >= v8 || *v50 != 48)
        {
          continue;
        }

        v25 = v50 + 1;
        *(a2 + 1) = v25;
LABEL_160:
        if (v25 >= v8 || (v51 = *v25, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v51;
          v52 = v25 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 66) |= 0x20u;
        if (v52 >= v8 || *v52 != 56)
        {
          continue;
        }

        v27 = v52 + 1;
        *(a2 + 1) = v27;
LABEL_168:
        if (v27 >= v8 || (v53 = *v27, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v53;
          v54 = v27 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 66) |= 0x40u;
        if (v54 >= v8 || *v54 != 64)
        {
          continue;
        }

        v22 = v54 + 1;
        *(a2 + 1) = v22;
LABEL_176:
        if (v22 >= v8 || (v55 = *v22, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v55;
          v56 = v22 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 66) |= 0x80u;
        if (v56 >= v8 || *v56 != 72)
        {
          continue;
        }

        v30 = v56 + 1;
        *(a2 + 1) = v30;
LABEL_184:
        if (v30 >= v8 || (v57 = *v30, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v57;
          v58 = v30 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 66) |= 0x100u;
        if (v58 >= v8 || *v58 != 80)
        {
          continue;
        }

        v18 = v58 + 1;
        *(a2 + 1) = v18;
LABEL_192:
        if (v18 >= v8 || (v59 = *v18, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v59;
          v60 = v18 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 66) |= 0x200u;
        if (v60 >= v8 || *v60 != 88)
        {
          continue;
        }

        v29 = v60 + 1;
        *(a2 + 1) = v29;
LABEL_200:
        if (v29 >= v8 || (v61 = *v29, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v61;
          v62 = v29 + 1;
          *(a2 + 1) = v62;
        }

        *(this + 66) |= 0x400u;
        if (v62 >= v8 || *v62 != 96)
        {
          continue;
        }

        v15 = v62 + 1;
        *(a2 + 1) = v15;
LABEL_208:
        if (v15 >= v8 || (v63 = *v15, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v64 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v63;
          v64 = v15 + 1;
          *(a2 + 1) = v64;
        }

        *(this + 66) |= 0x800u;
        if (v64 >= v8 || *v64 != 104)
        {
          continue;
        }

        v17 = v64 + 1;
        *(a2 + 1) = v17;
LABEL_216:
        if (v17 >= v8 || (v65 = *v17, v65 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v66 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v65;
          v66 = v17 + 1;
          *(a2 + 1) = v66;
        }

        *(this + 66) |= 0x1000u;
        if (v66 >= v8 || *v66 != 112)
        {
          continue;
        }

        v26 = v66 + 1;
        *(a2 + 1) = v26;
LABEL_224:
        if (v26 >= v8 || (v67 = *v26, v67 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v68 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v67;
          v68 = v26 + 1;
          *(a2 + 1) = v68;
        }

        *(this + 66) |= 0x2000u;
        if (v68 >= v8 || *v68 != 120)
        {
          continue;
        }

        v14 = v68 + 1;
        *(a2 + 1) = v14;
LABEL_232:
        if (v14 >= v8 || (v69 = *v14, v69 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v70 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v69;
          v70 = (v14 + 1);
          *(a2 + 1) = v70;
        }

        *(this + 66) |= 0x4000u;
        if (v8 - v70 < 2 || *v70 != 128 || v70[1] != 1)
        {
          continue;
        }

        v20 = (v70 + 2);
        *(a2 + 1) = v20;
LABEL_241:
        if (v20 >= v8 || (v71 = *v20, v71 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v72 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v71;
          v72 = (v20 + 1);
          *(a2 + 1) = v72;
        }

        *(this + 66) |= 0x8000u;
        if (v8 - v72 < 2 || *v72 != 136 || v72[1] != 1)
        {
          continue;
        }

        v13 = (v72 + 2);
        *(a2 + 1) = v13;
LABEL_250:
        if (v13 >= v8 || (v73 = *v13, v73 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v74 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v73;
          v74 = (v13 + 1);
          *(a2 + 1) = v74;
        }

        *(this + 66) |= 0x10000u;
        if (v8 - v74 < 2 || *v74 != 144 || v74[1] != 1)
        {
          continue;
        }

        v24 = (v74 + 2);
        *(a2 + 1) = v24;
LABEL_259:
        if (v24 >= v8 || (v75 = *v24, v75 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v76 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v75;
          v76 = (v24 + 1);
          *(a2 + 1) = v76;
        }

        *(this + 66) |= 0x20000u;
        if (v8 - v76 < 2 || *v76 != 152 || v76[1] != 1)
        {
          continue;
        }

        v28 = (v76 + 2);
        *(a2 + 1) = v28;
LABEL_268:
        if (v28 >= v8 || (v77 = *v28, v77 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v78 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v77;
          v78 = (v28 + 1);
          *(a2 + 1) = v78;
        }

        *(this + 66) |= 0x40000u;
        if (v8 - v78 < 2 || *v78 != 165 || v78[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v78 + 2;
LABEL_277:
        v160[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
        {
          return 0;
        }

        *(this + 22) = v160[0];
        *(this + 66) |= 0x80000u;
        v79 = *(a2 + 1);
        if (*(a2 + 4) - v79 < 2 || *v79 != 173 || v79[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v79 + 2;
LABEL_282:
        v160[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
        {
          return 0;
        }

        *(this + 23) = v160[0];
        *(this + 66) |= 0x100000u;
        v80 = *(a2 + 1);
        if (*(a2 + 4) - v80 < 2 || *v80 != 181 || v80[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v80 + 2;
LABEL_287:
        v160[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
        {
          return 0;
        }

        *(this + 24) = v160[0];
        *(this + 66) |= 0x200000u;
        v81 = *(a2 + 1);
        if (*(a2 + 4) - v81 < 2 || *v81 != 189 || v81[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v81 + 2;
LABEL_292:
        v160[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
        {
          return 0;
        }

        *(this + 25) = v160[0];
        *(this + 66) |= 0x400000u;
        v82 = *(a2 + 1);
        v37 = *(a2 + 2);
        if (v37 - v82 >= 2 && *v82 == 192 && v82[1] == 1)
        {
          goto LABEL_296;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_136;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_144;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_152;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_160;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_168;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_176;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v30 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_184;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_192;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v29 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_200;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_208;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_216;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_224;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_232;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_241;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_250;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_259;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_268;
      case 0x14u:
        if (v7 == 5)
        {
          goto LABEL_277;
        }

        goto LABEL_114;
      case 0x15u:
        if (v7 == 5)
        {
          goto LABEL_282;
        }

        goto LABEL_114;
      case 0x16u:
        if (v7 == 5)
        {
          goto LABEL_287;
        }

        goto LABEL_114;
      case 0x17u:
        if (v7 == 5)
        {
          goto LABEL_292;
        }

        goto LABEL_114;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 13);
            if (!result)
            {
              return result;
            }

            goto LABEL_315;
          }

LABEL_114:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v38 = *(a2 + 1);
        v37 = *(a2 + 2);
        while (1)
        {
          v159 = 0;
          if (v38 >= v37 || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v159))
            {
              return 0;
            }
          }

          else
          {
            v159 = *v38;
            *(a2 + 1) = v38 + 1;
          }

          v83 = *(this + 28);
          if (v83 == *(this + 29))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, v83 + 1);
            v83 = *(this + 28);
          }

          v84 = v159;
          v85 = *(this + 13);
          *(this + 28) = v83 + 1;
          *(v85 + 4 * v83) = v84;
          v86 = *(this + 29) - *(this + 28);
          if (v86 >= 1)
          {
            v87 = v86 + 1;
            do
            {
              v88 = *(a2 + 1);
              v89 = *(a2 + 2);
              if (v89 - v88 < 2 || *v88 != 192 || v88[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v88 + 2;
              if ((v88 + 2) >= v89 || v88[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v159))
                {
                  return 0;
                }
              }

              else
              {
                v159 = v88[2];
                *(a2 + 1) = v88 + 3;
              }

              v90 = *(this + 28);
              if (v90 >= *(this + 29))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v160);
                v90 = *(this + 28);
              }

              v91 = v159;
              v92 = *(this + 13);
              *(this + 28) = v90 + 1;
              *(v92 + 4 * v90) = v91;
              --v87;
            }

            while (v87 > 1);
          }

LABEL_315:
          v82 = *(a2 + 1);
          v37 = *(a2 + 2);
          if (v37 - v82 < 2)
          {
            goto LABEL_1;
          }

          v93 = *v82;
          if (v93 == 205)
          {
            break;
          }

          if (v93 != 192 || v82[1] != 1)
          {
            goto LABEL_1;
          }

LABEL_296:
          v38 = (v82 + 2);
          *(a2 + 1) = v38;
        }

        if (v82[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v82 + 2;
LABEL_322:
        v160[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160))
        {
          *(this + 30) = v160[0];
          *(this + 66) |= 0x1000000u;
          v94 = *(a2 + 1);
          if (*(a2 + 4) - v94 >= 2 && *v94 == 213 && v94[1] == 1)
          {
            *(a2 + 1) = v94 + 2;
LABEL_327:
            v160[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
            {
              return 0;
            }

            *(this + 31) = v160[0];
            *(this + 66) |= 0x2000000u;
            v95 = *(a2 + 1);
            if (*(a2 + 4) - v95 >= 2 && *v95 == 221 && v95[1] == 1)
            {
              *(a2 + 1) = v95 + 2;
LABEL_332:
              v160[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
              {
                return 0;
              }

              *(this + 32) = v160[0];
              *(this + 66) |= 0x4000000u;
              v96 = *(a2 + 1);
              if (*(a2 + 4) - v96 >= 2 && *v96 == 229 && v96[1] == 1)
              {
                *(a2 + 1) = v96 + 2;
LABEL_337:
                v160[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                {
                  return 0;
                }

                *(this + 33) = v160[0];
                *(this + 66) |= 0x8000000u;
                v97 = *(a2 + 1);
                v39 = *(a2 + 2);
                if (v39 - v97 >= 2 && *v97 == 232 && v97[1] == 1)
                {
                  while (1)
                  {
                    v40 = (v97 + 2);
                    *(a2 + 1) = v40;
LABEL_342:
                    v159 = 0;
                    if (v40 >= v39 || *v40 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v159))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v159 = *v40;
                      *(a2 + 1) = v40 + 1;
                    }

                    v98 = *(this + 36);
                    if (v98 == *(this + 37))
                    {
                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, v98 + 1);
                      v98 = *(this + 36);
                    }

                    v99 = v159;
                    v100 = *(this + 17);
                    *(this + 36) = v98 + 1;
                    *(v100 + 4 * v98) = v99;
                    v101 = *(this + 37) - *(this + 36);
                    if (v101 >= 1)
                    {
                      v102 = v101 + 1;
                      do
                      {
                        v103 = *(a2 + 1);
                        v104 = *(a2 + 2);
                        if (v104 - v103 < 2 || *v103 != 232 || v103[1] != 1)
                        {
                          break;
                        }

                        *(a2 + 1) = v103 + 2;
                        if ((v103 + 2) >= v104 || v103[2] < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v159))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v159 = v103[2];
                          *(a2 + 1) = v103 + 3;
                        }

                        v105 = *(this + 36);
                        if (v105 >= *(this + 37))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v160);
                          v105 = *(this + 36);
                        }

                        v106 = v159;
                        v107 = *(this + 17);
                        *(this + 36) = v105 + 1;
                        *(v107 + 4 * v105) = v106;
                        --v102;
                      }

                      while (v102 > 1);
                    }

LABEL_360:
                    v97 = *(a2 + 1);
                    v39 = *(a2 + 2);
                    if (v39 - v97 < 2)
                    {
                      break;
                    }

                    v108 = *v97;
                    if (v108 == 245)
                    {
                      if (v97[1] == 1)
                      {
                        *(a2 + 1) = v97 + 2;
LABEL_367:
                        v160[0] = 0;
                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                        {
                          return 0;
                        }

                        *(this + 38) = v160[0];
                        *(this + 66) |= 0x20000000u;
                        v109 = *(a2 + 1);
                        if (*(a2 + 4) - v109 >= 2 && *v109 == 253 && v109[1] == 1)
                        {
                          *(a2 + 1) = v109 + 2;
LABEL_372:
                          v160[0] = 0;
                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                          {
                            return 0;
                          }

                          *(this + 39) = v160[0];
                          *(this + 66) |= 0x40000000u;
                          v110 = *(a2 + 1);
                          if (*(a2 + 4) - v110 >= 2 && *v110 == 133 && v110[1] == 2)
                          {
                            *(a2 + 1) = v110 + 2;
LABEL_377:
                            v160[0] = 0;
                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                            {
                              return 0;
                            }

                            *(this + 40) = v160[0];
                            *(this + 66) |= 0x80000000;
                            v111 = *(a2 + 1);
                            v31 = *(a2 + 2);
                            if (v31 - v111 >= 2 && *v111 == 136 && v111[1] == 2)
                            {
                              v32 = (v111 + 2);
                              *(a2 + 1) = v32;
LABEL_382:
                              v160[0] = 0;
                              if (v32 >= v31 || (v112 = *v32, (v112 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v160);
                                if (!result)
                                {
                                  return result;
                                }

                                v112 = v160[0];
                                v113 = *(a2 + 1);
                                v31 = *(a2 + 2);
                              }

                              else
                              {
                                v113 = (v32 + 1);
                                *(a2 + 1) = v113;
                              }

                              *(this + 216) = v112 != 0;
                              *(this + 67) |= 1u;
                              if (v31 - v113 >= 2 && *v113 == 144 && v113[1] == 2)
                              {
                                while (1)
                                {
                                  v36 = (v113 + 2);
                                  *(a2 + 1) = v36;
LABEL_391:
                                  v159 = 0;
                                  if (v36 >= v31 || *v36 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v159))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v159 = *v36;
                                    *(a2 + 1) = v36 + 1;
                                  }

                                  v114 = *(this + 44);
                                  if (v114 == *(this + 45))
                                  {
                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, v114 + 1);
                                    v114 = *(this + 44);
                                  }

                                  v115 = v159;
                                  v116 = *(this + 21);
                                  *(this + 44) = v114 + 1;
                                  *(v116 + 4 * v114) = v115;
                                  v117 = *(this + 45) - *(this + 44);
                                  if (v117 >= 1)
                                  {
                                    v118 = v117 + 1;
                                    do
                                    {
                                      v119 = *(a2 + 1);
                                      v120 = *(a2 + 2);
                                      if (v120 - v119 < 2 || *v119 != 144 || v119[1] != 2)
                                      {
                                        break;
                                      }

                                      *(a2 + 1) = v119 + 2;
                                      if ((v119 + 2) >= v120 || v119[2] < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v159))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v159 = v119[2];
                                        *(a2 + 1) = v119 + 3;
                                      }

                                      v121 = *(this + 44);
                                      if (v121 >= *(this + 45))
                                      {
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v160);
                                        v121 = *(this + 44);
                                      }

                                      v122 = v159;
                                      v123 = *(this + 21);
                                      *(this + 44) = v121 + 1;
                                      *(v123 + 4 * v121) = v122;
                                      --v118;
                                    }

                                    while (v118 > 1);
                                  }

LABEL_409:
                                  v113 = *(a2 + 1);
                                  v31 = *(a2 + 2);
                                  if (v31 - v113 < 2)
                                  {
                                    break;
                                  }

                                  v124 = *v113;
                                  if (v124 == 157)
                                  {
                                    if (v113[1] == 2)
                                    {
                                      *(a2 + 1) = v113 + 2;
LABEL_416:
                                      v160[0] = 0;
                                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                                      {
                                        return 0;
                                      }

                                      *(this + 41) = v160[0];
                                      *(this + 67) |= 4u;
                                      v125 = *(a2 + 1);
                                      if (*(a2 + 4) - v125 >= 2 && *v125 == 165 && v125[1] == 2)
                                      {
                                        *(a2 + 1) = v125 + 2;
LABEL_421:
                                        v160[0] = 0;
                                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                                        {
                                          return 0;
                                        }

                                        *(this + 46) = v160[0];
                                        *(this + 67) |= 8u;
                                        v126 = *(a2 + 1);
                                        if (*(a2 + 4) - v126 >= 2 && *v126 == 173 && v126[1] == 2)
                                        {
                                          *(a2 + 1) = v126 + 2;
LABEL_426:
                                          v160[0] = 0;
                                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                                          {
                                            return 0;
                                          }

                                          *(this + 47) = v160[0];
                                          *(this + 67) |= 0x10u;
                                          v127 = *(a2 + 1);
                                          if (*(a2 + 4) - v127 >= 2 && *v127 == 181 && v127[1] == 2)
                                          {
                                            *(a2 + 1) = v127 + 2;
LABEL_431:
                                            v160[0] = 0;
                                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                                            {
                                              return 0;
                                            }

                                            *(this + 52) = v160[0];
                                            *(this + 67) |= 0x20u;
                                            v128 = *(a2 + 1);
                                            v41 = *(a2 + 2);
                                            if (v41 - v128 >= 2 && *v128 == 184 && v128[1] == 2)
                                            {
                                              while (1)
                                              {
                                                v42 = (v128 + 2);
                                                *(a2 + 1) = v42;
LABEL_436:
                                                v159 = 0;
                                                if (v42 >= v41 || *v42 < 0)
                                                {
                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v159))
                                                  {
                                                    return 0;
                                                  }
                                                }

                                                else
                                                {
                                                  v159 = *v42;
                                                  *(a2 + 1) = v42 + 1;
                                                }

                                                v129 = *(this + 50);
                                                if (v129 == *(this + 51))
                                                {
                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 48, v129 + 1);
                                                  v129 = *(this + 50);
                                                }

                                                v130 = v159;
                                                v131 = *(this + 24);
                                                *(this + 50) = v129 + 1;
                                                *(v131 + 4 * v129) = v130;
                                                v132 = *(this + 51) - *(this + 50);
                                                if (v132 >= 1)
                                                {
                                                  v133 = v132 + 1;
                                                  do
                                                  {
                                                    v134 = *(a2 + 1);
                                                    v135 = *(a2 + 2);
                                                    if (v135 - v134 < 2 || *v134 != 184 || v134[1] != 2)
                                                    {
                                                      break;
                                                    }

                                                    *(a2 + 1) = v134 + 2;
                                                    if ((v134 + 2) >= v135 || v134[2] < 0)
                                                    {
                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v159))
                                                      {
                                                        return 0;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v159 = v134[2];
                                                      *(a2 + 1) = v134 + 3;
                                                    }

                                                    v136 = *(this + 50);
                                                    if (v136 >= *(this + 51))
                                                    {
                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v160);
                                                      v136 = *(this + 50);
                                                    }

                                                    v137 = v159;
                                                    v138 = *(this + 24);
                                                    *(this + 50) = v136 + 1;
                                                    *(v138 + 4 * v136) = v137;
                                                    --v133;
                                                  }

                                                  while (v133 > 1);
                                                }

LABEL_454:
                                                v128 = *(a2 + 1);
                                                v41 = *(a2 + 2);
                                                if (v41 - v128 < 2)
                                                {
                                                  break;
                                                }

                                                v139 = *v128;
                                                if (v139 == 197)
                                                {
                                                  if (v128[1] == 2)
                                                  {
                                                    *(a2 + 1) = v128 + 2;
LABEL_461:
                                                    v160[0] = 0;
                                                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                                                    {
                                                      return 0;
                                                    }

                                                    *(this + 53) = v160[0];
                                                    *(this + 67) |= 0x80u;
                                                    v140 = *(a2 + 1);
                                                    if (*(a2 + 4) - v140 >= 2 && *v140 == 205 && v140[1] == 2)
                                                    {
                                                      *(a2 + 1) = v140 + 2;
LABEL_466:
                                                      v160[0] = 0;
                                                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                                                      {
                                                        return 0;
                                                      }

                                                      *(this + 55) = v160[0];
                                                      *(this + 67) |= 0x100u;
                                                      v141 = *(a2 + 1);
                                                      if (*(a2 + 4) - v141 >= 2 && *v141 == 213 && v141[1] == 2)
                                                      {
                                                        *(a2 + 1) = v141 + 2;
LABEL_471:
                                                        v160[0] = 0;
                                                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                                                        {
                                                          return 0;
                                                        }

                                                        *(this + 56) = v160[0];
                                                        *(this + 67) |= 0x200u;
                                                        v142 = *(a2 + 1);
                                                        if (*(a2 + 4) - v142 >= 2 && *v142 == 221 && v142[1] == 2)
                                                        {
                                                          *(a2 + 1) = v142 + 2;
LABEL_476:
                                                          v160[0] = 0;
                                                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                                                          {
                                                            return 0;
                                                          }

                                                          *(this + 57) = v160[0];
                                                          *(this + 67) |= 0x400u;
                                                          v143 = *(a2 + 1);
                                                          if (*(a2 + 4) - v143 >= 2 && *v143 == 229 && v143[1] == 2)
                                                          {
                                                            *(a2 + 1) = v143 + 2;
LABEL_481:
                                                            v160[0] = 0;
                                                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                                                            {
                                                              return 0;
                                                            }

                                                            *(this + 58) = v160[0];
                                                            *(this + 67) |= 0x800u;
                                                            v144 = *(a2 + 1);
                                                            if (*(a2 + 4) - v144 >= 2 && *v144 == 237 && v144[1] == 2)
                                                            {
                                                              *(a2 + 1) = v144 + 2;
LABEL_486:
                                                              v160[0] = 0;
                                                              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                                                              {
                                                                return 0;
                                                              }

                                                              *(this + 59) = v160[0];
                                                              *(this + 67) |= 0x1000u;
                                                              v145 = *(a2 + 1);
                                                              if (*(a2 + 4) - v145 >= 2 && *v145 == 245 && v145[1] == 2)
                                                              {
                                                                *(a2 + 1) = v145 + 2;
LABEL_491:
                                                                v160[0] = 0;
                                                                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v160) & 1) == 0)
                                                                {
                                                                  return 0;
                                                                }

                                                                *(this + 64) = v160[0];
                                                                *(this + 67) |= 0x2000u;
                                                                v146 = *(a2 + 1);
                                                                v33 = *(a2 + 2);
                                                                if (v33 - v146 >= 2 && *v146 == 248 && v146[1] == 2)
                                                                {
                                                                  v34 = (v146 + 2);
                                                                  *(a2 + 1) = v34;
LABEL_496:
                                                                  v160[0] = 0;
                                                                  if (v34 >= v33 || (v147 = *v34, (v147 & 0x80000000) != 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v160);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v147 = v160[0];
                                                                    v148 = *(a2 + 1);
                                                                    v33 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    v148 = (v34 + 1);
                                                                    *(a2 + 1) = v148;
                                                                  }

                                                                  *(this + 217) = v147 != 0;
                                                                  *(this + 67) |= 0x4000u;
                                                                  if (v33 - v148 >= 2 && *v148 == 128 && v148[1] == 3)
                                                                  {
                                                                    do
                                                                    {
                                                                      v35 = (v148 + 2);
                                                                      *(a2 + 1) = v35;
LABEL_505:
                                                                      v159 = 0;
                                                                      if (v35 >= v33 || *v35 < 0)
                                                                      {
                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v159))
                                                                        {
                                                                          return 0;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v159 = *v35;
                                                                        *(a2 + 1) = v35 + 1;
                                                                      }

                                                                      v149 = *(this + 62);
                                                                      if (v149 == *(this + 63))
                                                                      {
                                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 60, v149 + 1);
                                                                        v149 = *(this + 62);
                                                                      }

                                                                      v150 = v159;
                                                                      v151 = *(this + 30);
                                                                      *(this + 62) = v149 + 1;
                                                                      *(v151 + 4 * v149) = v150;
                                                                      v152 = *(this + 63) - *(this + 62);
                                                                      if (v152 >= 1)
                                                                      {
                                                                        v153 = v152 + 1;
                                                                        do
                                                                        {
                                                                          v154 = *(a2 + 1);
                                                                          v155 = *(a2 + 2);
                                                                          if (v155 - v154 < 2 || *v154 != 128 || v154[1] != 3)
                                                                          {
                                                                            break;
                                                                          }

                                                                          *(a2 + 1) = v154 + 2;
                                                                          if ((v154 + 2) >= v155 || v154[2] < 0)
                                                                          {
                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v159))
                                                                            {
                                                                              return 0;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v159 = v154[2];
                                                                            *(a2 + 1) = v154 + 3;
                                                                          }

                                                                          v156 = *(this + 62);
                                                                          if (v156 >= *(this + 63))
                                                                          {
                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v160);
                                                                            v156 = *(this + 62);
                                                                          }

                                                                          v157 = v159;
                                                                          v158 = *(this + 30);
                                                                          *(this + 62) = v156 + 1;
                                                                          *(v158 + 4 * v156) = v157;
                                                                          --v153;
                                                                        }

                                                                        while (v153 > 1);
                                                                      }

LABEL_523:
                                                                      v148 = *(a2 + 1);
                                                                      v33 = *(a2 + 2);
                                                                    }

                                                                    while (v33 - v148 >= 2 && *v148 == 128 && v148[1] == 3);
                                                                    if (v148 == v33 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                                                                    {
                                                                      *(a2 + 8) = 0;
                                                                      result = 1;
                                                                      *(a2 + 36) = 1;
                                                                      return result;
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }

                                                  goto LABEL_1;
                                                }

                                                if (v139 != 184 || v128[1] != 2)
                                                {
                                                  goto LABEL_1;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    goto LABEL_1;
                                  }

                                  if (v124 != 144 || v113[1] != 2)
                                  {
                                    goto LABEL_1;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_1;
                    }

                    if (v108 != 232 || v97[1] != 1)
                    {
                      goto LABEL_1;
                    }
                  }
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 0x19u:
        if (v7 == 5)
        {
          goto LABEL_322;
        }

        goto LABEL_114;
      case 0x1Au:
        if (v7 == 5)
        {
          goto LABEL_327;
        }

        goto LABEL_114;
      case 0x1Bu:
        if (v7 == 5)
        {
          goto LABEL_332;
        }

        goto LABEL_114;
      case 0x1Cu:
        if (v7 == 5)
        {
          goto LABEL_337;
        }

        goto LABEL_114;
      case 0x1Du:
        if ((TagFallback & 7) == 0)
        {
          v40 = *(a2 + 1);
          v39 = *(a2 + 2);
          goto LABEL_342;
        }

        if (v7 != 2)
        {
          goto LABEL_114;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 17);
        if (!result)
        {
          return result;
        }

        goto LABEL_360;
      case 0x1Eu:
        if (v7 == 5)
        {
          goto LABEL_367;
        }

        goto LABEL_114;
      case 0x1Fu:
        if (v7 == 5)
        {
          goto LABEL_372;
        }

        goto LABEL_114;
      case 0x20u:
        if (v7 == 5)
        {
          goto LABEL_377;
        }

        goto LABEL_114;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v32 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_382;
      case 0x22u:
        if ((TagFallback & 7) == 0)
        {
          v36 = *(a2 + 1);
          v31 = *(a2 + 2);
          goto LABEL_391;
        }

        if (v7 != 2)
        {
          goto LABEL_114;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 21);
        if (!result)
        {
          return result;
        }

        goto LABEL_409;
      case 0x23u:
        if (v7 == 5)
        {
          goto LABEL_416;
        }

        goto LABEL_114;
      case 0x24u:
        if (v7 == 5)
        {
          goto LABEL_421;
        }

        goto LABEL_114;
      case 0x25u:
        if (v7 == 5)
        {
          goto LABEL_426;
        }

        goto LABEL_114;
      case 0x26u:
        if (v7 == 5)
        {
          goto LABEL_431;
        }

        goto LABEL_114;
      case 0x27u:
        if ((TagFallback & 7) == 0)
        {
          v42 = *(a2 + 1);
          v41 = *(a2 + 2);
          goto LABEL_436;
        }

        if (v7 != 2)
        {
          goto LABEL_114;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
        if (!result)
        {
          return result;
        }

        goto LABEL_454;
      case 0x28u:
        if (v7 == 5)
        {
          goto LABEL_461;
        }

        goto LABEL_114;
      case 0x29u:
        if (v7 == 5)
        {
          goto LABEL_466;
        }

        goto LABEL_114;
      case 0x2Au:
        if (v7 == 5)
        {
          goto LABEL_471;
        }

        goto LABEL_114;
      case 0x2Bu:
        if (v7 == 5)
        {
          goto LABEL_476;
        }

        goto LABEL_114;
      case 0x2Cu:
        if (v7 == 5)
        {
          goto LABEL_481;
        }

        goto LABEL_114;
      case 0x2Du:
        if (v7 == 5)
        {
          goto LABEL_486;
        }

        goto LABEL_114;
      case 0x2Eu:
        if (v7 == 5)
        {
          goto LABEL_491;
        }

        goto LABEL_114;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v34 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_496;
      case 0x30u:
        if ((TagFallback & 7) == 0)
        {
          v35 = *(a2 + 1);
          v33 = *(a2 + 2);
          goto LABEL_505;
        }

        if (v7 != 2)
        {
          goto LABEL_114;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 30);
        if (!result)
        {
          return result;
        }

        goto LABEL_523;
      default:
        goto LABEL_114;
    }
  }
}

void sub_2963C9B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryOhdSensors::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 264);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 264);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_67;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 72), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 76), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 80), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 84), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x14, a2, *(v5 + 88), a3);
  v6 = *(v5 + 264);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x15, a2, *(v5 + 92), a3);
  v6 = *(v5 + 264);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_86:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x16, a2, *(v5 + 96), a3);
  if ((*(v5 + 264) & 0x400000) != 0)
  {
LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x17, a2, *(v5 + 100), a3);
  }

LABEL_25:
  if (*(v5 + 112) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(*(v5 + 104) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 112));
  }

  v8 = *(v5 + 264);
  if ((v8 & 0x1000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x19, a2, *(v5 + 120), a3);
    v8 = *(v5 + 264);
    if ((v8 & 0x2000000) == 0)
    {
LABEL_30:
      if ((v8 & 0x4000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_90;
    }
  }

  else if ((v8 & 0x2000000) == 0)
  {
    goto LABEL_30;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1A, a2, *(v5 + 124), a3);
  v8 = *(v5 + 264);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_90:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1B, a2, *(v5 + 128), a3);
  if ((*(v5 + 264) & 0x8000000) != 0)
  {
LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1C, a2, *(v5 + 132), a3);
  }

LABEL_33:
  if (*(v5 + 144) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 136) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 144));
  }

  v10 = *(v5 + 264);
  if ((v10 & 0x20000000) == 0)
  {
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_93:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1F, a2, *(v5 + 156), a3);
    if ((*(v5 + 264) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_94;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1E, a2, *(v5 + 152), a3);
  v10 = *(v5 + 264);
  if ((v10 & 0x40000000) != 0)
  {
    goto LABEL_93;
  }

LABEL_38:
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_94:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x20, a2, *(v5 + 160), a3);
LABEL_39:
  if (*(v5 + 268))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, *(v5 + 216), a2, a4);
  }

  if (*(v5 + 176) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(*(v5 + 168) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 176));
  }

  v12 = *(v5 + 268);
  if ((v12 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x23, a2, *(v5 + 164), a3);
    v12 = *(v5 + 268);
    if ((v12 & 8) == 0)
    {
LABEL_46:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_97;
    }
  }

  else if ((v12 & 8) == 0)
  {
    goto LABEL_46;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x24, a2, *(v5 + 184), a3);
  v12 = *(v5 + 268);
  if ((v12 & 0x10) == 0)
  {
LABEL_47:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_97:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x25, a2, *(v5 + 188), a3);
  if ((*(v5 + 268) & 0x20) != 0)
  {
LABEL_48:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x26, a2, *(v5 + 208), a3);
  }

LABEL_49:
  if (*(v5 + 200) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(*(v5 + 192) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 200));
  }

  v14 = *(v5 + 268);
  if ((v14 & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x28, a2, *(v5 + 212), a3);
    v14 = *(v5 + 268);
    if ((v14 & 0x100) == 0)
    {
LABEL_54:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_101;
    }
  }

  else if ((v14 & 0x100) == 0)
  {
    goto LABEL_54;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x29, a2, *(v5 + 220), a3);
  v14 = *(v5 + 268);
  if ((v14 & 0x200) == 0)
  {
LABEL_55:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_102;
  }

LABEL_101:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2A, a2, *(v5 + 224), a3);
  v14 = *(v5 + 268);
  if ((v14 & 0x400) == 0)
  {
LABEL_56:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_103;
  }

LABEL_102:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2B, a2, *(v5 + 228), a3);
  v14 = *(v5 + 268);
  if ((v14 & 0x800) == 0)
  {
LABEL_57:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_104;
  }

LABEL_103:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2C, a2, *(v5 + 232), a3);
  v14 = *(v5 + 268);
  if ((v14 & 0x1000) == 0)
  {
LABEL_58:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_105;
  }

LABEL_104:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2D, a2, *(v5 + 236), a3);
  v14 = *(v5 + 268);
  if ((v14 & 0x2000) == 0)
  {
LABEL_59:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_105:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2E, a2, *(v5 + 256), a3);
  if ((*(v5 + 268) & 0x4000) != 0)
  {
LABEL_60:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2F, *(v5 + 217), a2, a4);
  }

LABEL_61:
  if (*(v5 + 248) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(*(v5 + 240) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 248));
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryOhdSensors::ByteSize(awd::metrics::BluetoothAccessoryOhdSensors *this, unint64_t a2)
{
  v3 = *(this + 66);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 66);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 66);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 66);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 6);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 66);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v11 = *(this + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 66);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(this + 8);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 66);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(this + 9);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 66);
  }

  else
  {
    v16 = 2;
  }

  v4 += v16;
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 66);
    }

    else
    {
      v18 = 2;
    }

    v4 += v18;
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 66);
    }

    else
    {
      v20 = 2;
    }

    v4 += v20;
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_60;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 66);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_60:
  v23 = *(this + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 66);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

LABEL_64:
  v25 = *(this + 14);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 66);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x1000) == 0)
  {
LABEL_48:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_72;
  }

LABEL_68:
  v27 = *(this + 15);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 66);
  }

  else
  {
    v28 = 2;
  }

  v4 += v28;
  if ((v3 & 0x2000) == 0)
  {
LABEL_49:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_76;
  }

LABEL_72:
  v29 = *(this + 16);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 66);
  }

  else
  {
    v30 = 2;
  }

  v4 += v30;
  if ((v3 & 0x4000) == 0)
  {
LABEL_50:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v31 = *(this + 17);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 66);
  }

  else
  {
    v32 = 2;
  }

  v4 += v32;
  if ((v3 & 0x8000) != 0)
  {
LABEL_80:
    v33 = *(this + 18);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 66);
    }

    else
    {
      v34 = 3;
    }

    v4 += v34;
  }

LABEL_84:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_110;
  }

  if ((v3 & 0x10000) == 0)
  {
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_87;
    }

LABEL_93:
    v37 = *(this + 20);
    if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
      v3 = *(this + 66);
    }

    else
    {
      v38 = 3;
    }

    v4 += v38;
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_97;
  }

  v35 = *(this + 19);
  if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
    v3 = *(this + 66);
  }

  else
  {
    v36 = 3;
  }

  v4 += v36;
  if ((v3 & 0x20000) != 0)
  {
    goto LABEL_93;
  }

LABEL_87:
  if ((v3 & 0x40000) != 0)
  {
LABEL_97:
    v39 = *(this + 21);
    if (v39 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
      v3 = *(this + 66);
    }

    else
    {
      v40 = 3;
    }

    v4 += v40;
  }

LABEL_101:
  v41 = v4 + 6;
  if ((v3 & 0x80000) == 0)
  {
    v41 = v4;
  }

  if ((v3 & 0x100000) != 0)
  {
    v41 += 6;
  }

  if ((v3 & 0x200000) != 0)
  {
    v41 += 6;
  }

  if ((v3 & 0x400000) != 0)
  {
    v4 = v41 + 6;
  }

  else
  {
    v4 = v41;
  }

LABEL_110:
  if (HIBYTE(v3))
  {
    v42 = v4 + 6;
    if ((v3 & 0x1000000) == 0)
    {
      v42 = v4;
    }

    if ((v3 & 0x2000000) != 0)
    {
      v42 += 6;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v42 += 6;
    }

    if ((v3 & 0x8000000) != 0)
    {
      v42 += 6;
    }

    if ((v3 & 0x20000000) != 0)
    {
      v42 += 6;
    }

    if ((v3 & 0x40000000) != 0)
    {
      v42 += 6;
    }

    if (v3 >= 0)
    {
      v4 = v42;
    }

    else
    {
      v4 = v42 + 6;
    }
  }

  v43 = *(this + 67);
  v44 = v4 + 3;
  if ((v43 & 1) == 0)
  {
    v44 = v4;
  }

  if ((v43 & 4) != 0)
  {
    v44 += 6;
  }

  if ((v43 & 8) != 0)
  {
    v44 += 6;
  }

  if ((v43 & 0x10) != 0)
  {
    v44 += 6;
  }

  if ((v43 & 0x20) != 0)
  {
    v44 += 6;
  }

  if ((v43 & 0x80) != 0)
  {
    v44 += 6;
  }

  if (*(this + 67))
  {
    v45 = v44;
  }

  else
  {
    v45 = v4;
  }

  if ((v43 & 0xFF00) != 0)
  {
    v46 = v45 + 6;
    if ((v43 & 0x100) == 0)
    {
      v46 = v45;
    }

    if ((v43 & 0x200) != 0)
    {
      v46 += 6;
    }

    if ((v43 & 0x400) != 0)
    {
      v46 += 6;
    }

    if ((v43 & 0x800) != 0)
    {
      v46 += 6;
    }

    if ((v43 & 0x1000) != 0)
    {
      v46 += 6;
    }

    if ((v43 & 0x2000) != 0)
    {
      v46 += 6;
    }

    v45 = v46 + 3;
    if ((v43 & 0x4000) == 0)
    {
      v45 = v46;
    }
  }

  v74 = v45;
  v47 = *(this + 28);
  if (v47 < 1)
  {
    v49 = 0;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = *(*(this + 13) + 4 * v48);
      if (v50 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
        v47 = *(this + 28);
      }

      else
      {
        v51 = 1;
      }

      v49 += v51;
      ++v48;
    }

    while (v48 < v47);
  }

  v52 = *(this + 36);
  if (v52 < 1)
  {
    v54 = 0;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(*(this + 17) + 4 * v53);
      if (v55 >= 0x80)
      {
        v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55);
        v52 = *(this + 36);
      }

      else
      {
        v56 = 1;
      }

      v54 += v56;
      ++v53;
    }

    while (v53 < v52);
  }

  v57 = *(this + 44);
  if (v57 < 1)
  {
    v59 = 0;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    do
    {
      v60 = *(*(this + 21) + 4 * v58);
      if (v60 >= 0x80)
      {
        v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60);
        v57 = *(this + 44);
      }

      else
      {
        v61 = 1;
      }

      v59 += v61;
      ++v58;
    }

    while (v58 < v57);
  }

  v62 = *(this + 50);
  if (v62 < 1)
  {
    v64 = 0;
  }

  else
  {
    v63 = 0;
    v64 = 0;
    do
    {
      v65 = *(*(this + 24) + 4 * v63);
      if (v65 >= 0x80)
      {
        v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65);
        v62 = *(this + 50);
      }

      else
      {
        v66 = 1;
      }

      v64 += v66;
      ++v63;
    }

    while (v63 < v62);
  }

  v73 = v47;
  v67 = *(this + 62);
  if (v67 < 1)
  {
    v69 = 0;
  }

  else
  {
    v68 = 0;
    v69 = 0;
    do
    {
      v70 = *(*(this + 30) + 4 * v68);
      if (v70 >= 0x80)
      {
        v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
        v67 = *(this + 62);
      }

      else
      {
        v71 = 1;
      }

      v69 += v71;
      ++v68;
    }

    while (v68 < v67);
  }

  result = (v49 + v74 + v54 + v59 + v64 + v69 + 2 * (v52 + v73 + v57 + v62 + v67));
  *(this + 65) = result;
  return result;
}

float awd::metrics::BluetoothAccessoryOhdSensors::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryOhdSensors *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAccessoryOhdSensors::CheckTypeAndMergeFrom();
  }

  return awd::metrics::BluetoothAccessoryOhdSensors::MergeFrom(this, lpsrc);
}

float awd::metrics::BluetoothAccessoryOhdSensors::CopyFrom(awd::metrics::BluetoothAccessoryOhdSensors *this, const awd::metrics::BluetoothAccessoryOhdSensors *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::BluetoothAccessoryOhdSensors::MergeFrom(this, a2);
  }

  return result;
}

double awd::metrics::BluetoothAccessoryOhdSensors::Swap(awd::metrics::BluetoothAccessoryOhdSensors *this, awd::metrics::BluetoothAccessoryOhdSensors *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v2;
    v3 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v3;
    v4 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v5;
    v6 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v6;
    v7 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    v8 = *(a2 + 14);
    *(a2 + 13) = v7;
    v9 = *(this + 14);
    *(this + 14) = v8;
    *(a2 + 14) = v9;
    LODWORD(v8) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v8;
    LODWORD(v8) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v8;
    LODWORD(v8) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v8;
    LODWORD(v8) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v8;
    v10 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    v11 = *(a2 + 18);
    *(a2 + 17) = v10;
    v12 = *(this + 18);
    *(this + 18) = v11;
    *(a2 + 18) = v12;
    LODWORD(v11) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v11;
    LODWORD(v11) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v11;
    LODWORD(v11) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v11;
    LOBYTE(v10) = *(this + 216);
    *(this + 216) = *(a2 + 216);
    *(a2 + 216) = v10;
    v13 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    v14 = *(a2 + 22);
    *(a2 + 21) = v13;
    v15 = *(this + 22);
    *(this + 22) = v14;
    *(a2 + 22) = v15;
    LODWORD(v14) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v14;
    LODWORD(v14) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v14;
    LODWORD(v14) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v14;
    LODWORD(v14) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v14;
    v16 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    v17 = *(a2 + 25);
    *(a2 + 24) = v16;
    v18 = *(this + 25);
    *(this + 25) = v17;
    *(a2 + 25) = v18;
    LODWORD(v17) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v17;
    LODWORD(v17) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v17;
    LODWORD(v17) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v17;
    LODWORD(v17) = *(this + 57);
    *(this + 57) = *(a2 + 57);
    *(a2 + 57) = v17;
    LODWORD(v17) = *(this + 58);
    *(this + 58) = *(a2 + 58);
    *(a2 + 58) = v17;
    LODWORD(v17) = *(this + 59);
    *(this + 59) = *(a2 + 59);
    *(a2 + 59) = v17;
    LODWORD(v17) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v17;
    LOBYTE(v16) = *(this + 217);
    *(this + 217) = *(a2 + 217);
    *(a2 + 217) = v16;
    v19 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    result = *(a2 + 31);
    *(a2 + 30) = v19;
    v21 = *(this + 31);
    *(this + 31) = result;
    *(a2 + 31) = v21;
    LODWORD(v19) = *(this + 66);
    *(this + 66) = *(a2 + 66);
    *(a2 + 66) = v19;
    LODWORD(v19) = *(this + 67);
    *(this + 67) = *(a2 + 67);
    *(a2 + 67) = v19;
    LODWORD(v19) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v19;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationError::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothExposureNotificationError *awd::metrics::BluetoothExposureNotificationError::BluetoothExposureNotificationError(awd::metrics::BluetoothExposureNotificationError *this, const awd::metrics::BluetoothExposureNotificationError *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4CC78;
  *(this + 6) = 0;
  awd::metrics::BluetoothExposureNotificationError::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothExposureNotificationError::MergeFrom(awd::metrics::BluetoothExposureNotificationError *this, const awd::metrics::BluetoothExposureNotificationError *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2963CAEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationError::~BluetoothExposureNotificationError(awd::metrics::BluetoothExposureNotificationError *this)
{
  *this = &unk_2A1D4CC78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CC78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CC78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothExposureNotificationError::default_instance(awd::metrics::BluetoothExposureNotificationError *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothExposureNotificationError::default_instance_;
  if (!awd::metrics::BluetoothExposureNotificationError::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothExposureNotificationError::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationError::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationError::MergePartialFromCodedStream(awd::metrics::BluetoothExposureNotificationError *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 6) |= 2u;
        if (v13 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::BluetoothExposureNotificationError::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationError::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(this + 4);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::BluetoothExposureNotificationError::CheckTypeAndMergeFrom(awd::metrics::BluetoothExposureNotificationError *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothExposureNotificationError::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothExposureNotificationError::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothExposureNotificationError::CopyFrom(awd::metrics::BluetoothExposureNotificationError *this, const awd::metrics::BluetoothExposureNotificationError *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothExposureNotificationError::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothExposureNotificationError::Swap(uint64_t this, awd::metrics::BluetoothExposureNotificationError *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

void *awd::metrics::BluetoothLeConnectionPhyStats::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[3] = 0;
  this[4] = v1;
  this[5] = 0;
  this[6] = 0;
  return this;
}

awd::metrics::BluetoothLeConnectionPhyStats *awd::metrics::BluetoothLeConnectionPhyStats::BluetoothLeConnectionPhyStats(awd::metrics::BluetoothLeConnectionPhyStats *this, const awd::metrics::BluetoothLeConnectionPhyStats *a2)
{
  *this = &unk_2A1D4CCF0;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 6) = 0;
  awd::metrics::BluetoothLeConnectionPhyStats::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeConnectionPhyStats::MergeFrom(awd::metrics::BluetoothLeConnectionPhyStats *this, const awd::metrics::BluetoothLeConnectionPhyStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v6 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 13);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 13) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 13);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v8 = *(a2 + 5);
    *(this + 13) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 13);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 6);
    *(this + 13) |= 8u;
    *(this + 6) = v9;
    v4 = *(a2 + 13);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 7);
    *(this + 13) |= 0x10u;
    *(this + 7) = v10;
    v4 = *(a2 + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

LABEL_19:
    v11 = *(a2 + 4);
    *(this + 13) |= 0x20u;
    v12 = *(this + 4);
    if (v12 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v12, v11);
    v4 = *(a2 + 13);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_22:
    v13 = *(a2 + 10);
    *(this + 13) |= 0x40u;
    *(this + 10) = v13;
    if ((*(a2 + 13) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 11);
    *(this + 13) |= 0x80u;
    *(this + 11) = v5;
  }
}

void sub_2963CB62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeConnectionPhyStats::~BluetoothLeConnectionPhyStats(awd::metrics::BluetoothLeConnectionPhyStats *this)
{
  *this = &unk_2A1D4CCF0;
  awd::metrics::BluetoothLeConnectionPhyStats::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CCF0;
  awd::metrics::BluetoothLeConnectionPhyStats::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CCF0;
  awd::metrics::BluetoothLeConnectionPhyStats::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::SharedDtor(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::default_instance(awd::metrics::BluetoothLeConnectionPhyStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeConnectionPhyStats::default_instance_;
  if (!awd::metrics::BluetoothLeConnectionPhyStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeConnectionPhyStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    if ((v1 & 0x20) != 0)
    {
      v2 = *(this + 32);
      if (v2 != MEMORY[0x29EDC9758])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 40) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::MergePartialFromCodedStream(awd::metrics::BluetoothLeConnectionPhyStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(a2 + 1);
        if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 > 6)
        {
          if (v8 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v21 = *(a2 + 1);
              v14 = *(a2 + 2);
              goto LABEL_82;
            }
          }

          else if (v8 == 8 && (TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v14 = *(a2 + 2);
            goto LABEL_90;
          }

          goto LABEL_35;
        }

        if (v8 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v19 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_68;
          }

          goto LABEL_35;
        }

        if (v8 != 6 || v9 != 2)
        {
          goto LABEL_35;
        }

        v12 = *(this + 13);
LABEL_76:
        *(this + 13) = v12 | 0x20;
        if (*(this + 4) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v30 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v30 < v14 && *v30 == 56)
        {
          v21 = v30 + 1;
          *(a2 + 1) = v21;
LABEL_82:
          if (v21 >= v14 || (v31 = *v21, v31 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v32 = *(a2 + 1);
            v14 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v31;
            v32 = v21 + 1;
            *(a2 + 1) = v32;
          }

          *(this + 13) |= 0x40u;
          if (v32 < v14 && *v32 == 64)
          {
            v15 = v32 + 1;
            *(a2 + 1) = v15;
LABEL_90:
            if (v15 >= v14 || (v33 = *v15, v33 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
              if (!result)
              {
                return result;
              }

              v34 = *(a2 + 1);
              v14 = *(a2 + 2);
            }

            else
            {
              *(this + 11) = v33;
              v34 = v15 + 1;
              *(a2 + 1) = v34;
            }

            *(this + 13) |= 0x80u;
            if (v34 == v14 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_52;
          }
        }

        else if (v8 == 4 && (TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_60;
        }

        goto LABEL_35;
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_35;
      }

      v16 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v16 >= v10 || (v17 = *v16, v17 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v17;
        v18 = v16 + 1;
        *(a2 + 1) = v18;
      }

      *(this + 13) |= 1u;
      if (v18 < v10 && *v18 == 16)
      {
        v11 = v18 + 1;
        *(a2 + 1) = v11;
LABEL_44:
        v37 = 0;
        if (v11 >= v10 || (v22 = *v11, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
          if (!result)
          {
            return result;
          }

          v22 = v37;
          v23 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v23 = v11 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 4) = v22;
        *(this + 13) |= 2u;
        if (v23 < v10 && *v23 == 24)
        {
          v20 = v23 + 1;
          *(a2 + 1) = v20;
LABEL_52:
          if (v20 >= v10 || (v24 = *v20, v24 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v25 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v24;
            v25 = v20 + 1;
            *(a2 + 1) = v25;
          }

          *(this + 13) |= 4u;
          if (v25 < v10 && *v25 == 32)
          {
            v13 = v25 + 1;
            *(a2 + 1) = v13;
LABEL_60:
            v36 = 0;
            if (v13 >= v10 || (v26 = *v13, (v26 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
              if (!result)
              {
                return result;
              }

              v26 = v36;
              v27 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v27 = v13 + 1;
              *(a2 + 1) = v27;
            }

            *(this + 6) = v26;
            *(this + 13) |= 8u;
            if (v27 < v10 && *v27 == 40)
            {
              v19 = v27 + 1;
              *(a2 + 1) = v19;
LABEL_68:
              if (v19 >= v10 || (v28 = *v19, v28 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v29 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 7) = v28;
                v29 = v19 + 1;
                *(a2 + 1) = v29;
              }

              v12 = *(this + 13) | 0x10;
              *(this + 13) = v12;
              if (v29 < v10 && *v29 == 50)
              {
                *(a2 + 1) = v29 + 1;
                goto LABEL_76;
              }
            }
          }
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_44;
    }

LABEL_35:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[13];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[4], a2, a4);
  v6 = v5[13];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[13];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v5[6], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[10], a2, a4);
    if ((v5[13] & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = v5[13];
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v7 = v5[11];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::ByteSize(awd::metrics::BluetoothLeConnectionPhyStats *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_51;
  }

  if (*(this + 52))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 13);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_13:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_15:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(this + 6);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_16:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_30:
  v11 = *(this + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_34:
  v13 = *(this + 4);
  v14 = *(v13 + 23);
  v15 = v14;
  v16 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = v16;
  }

  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    v14 = *(v13 + 23);
    v16 = *(v13 + 8);
    v3 = *(this + 13);
    v15 = *(v13 + 23);
  }

  else
  {
    v18 = 1;
  }

  if (v15 < 0)
  {
    v14 = v16;
  }

  v4 = (v4 + v18 + v14 + 1);
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

LABEL_43:
  v19 = *(this + 10);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v20 = 2;
  }

  v4 = (v20 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_47:
    v21 = *(this + 11);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    }

    else
    {
      v22 = 2;
    }

    v4 = (v22 + v4);
  }

LABEL_51:
  *(this + 12) = v4;
  return v4;
}

void awd::metrics::BluetoothLeConnectionPhyStats::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeConnectionPhyStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothLeConnectionPhyStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeConnectionPhyStats::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeConnectionPhyStats::CopyFrom(awd::metrics::BluetoothLeConnectionPhyStats *this, const awd::metrics::BluetoothLeConnectionPhyStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeConnectionPhyStats::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::Swap(uint64_t this, awd::metrics::BluetoothLeConnectionPhyStats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    v3 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v3;
    LODWORD(v3) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v3;
    LODWORD(v3) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v3;
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2963CC53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2963CC5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2963CC664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
      }

      else
      {
        *v2 = 0;
        *(v2 + 23) = 0;
      }

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE31C90, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    v3[3] = v5;
    operator new[]();
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::BluetoothMagnetPhyStats(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_0(a1);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, v3);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v3);
  }

  result = *a3;
  if (*a3)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::BluetoothA2DPAudioLinkInfo(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_0(a1);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, v2);
  }

  result = *a2;
  if (*a2)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::BluetoothHFPAudioLinkInfo(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_0(a1);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, v3);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v3);
  }

  result = *a3;
  if (*a3)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryEvent::BluetoothAccessoryEvent(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_0(a1);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, v2);
  }

  result = *a2;
  if (*a2)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::BluetoothAccessoryIedSensors(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_0(a1);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, v4);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v4);
  }

  if (*a3)
  {
    MEMORY[0x29C259EE0](*a3, v4);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::BluetoothACIMagnetLinkInfo(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_0(a1);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, v4);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v4);
  }

  if (*a3)
  {
    MEMORY[0x29C259EE0](*a3, v4);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::BluetoothACIAudioVoiceLinkInfo2(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_0(a1);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, v3);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v3);
  }

  result = *a3;
  if (*a3)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::BluetoothACIMagnetLinkInfo1(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_0(a1);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, v4);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v4);
  }

  if (*a3)
  {
    MEMORY[0x29C259EE0](*a3, v4);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::BluetoothAdvBABufferStats(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_0(a1);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, v2);
  }

  result = *a2;
  if (*a2)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::BluetoothAccessoryBatteryHealth(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryOhdSensors::BluetoothAccessoryOhdSensors(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_0(a1);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, v4);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v4);
  }

  if (*a3)
  {
    MEMORY[0x29C259EE0](*a3, v4);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}