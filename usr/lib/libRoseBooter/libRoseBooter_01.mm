uint64_t RoseTransport::sendRoseCommand(uint64_t **a1, RoseCommand *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a4)
  {
    RoseTransport::sendRoseCommand(a1);
    return 0;
  }

  *a4 = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  v11 = ACFULogging::handleMessage(LogInstance, 4, "%s::%s: Command:\n", "RoseTransport", "sendRoseCommand");
  ACFULogging::getLogInstance(v11);
  std::string::basic_string[abi:ne200100]<0>(&v32, "RoseTransport");
  v12 = std::string::append(&v32, "::");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v33, "sendRoseCommand");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v35 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  RoseCommand::getPacketData(a2);
  RoseCommand::getPacketLength(a2);
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v16 = a1[4];
  v17 = *v16;
  if ((a5 & 0x100000000) != 0)
  {
    v22 = *(v17 + 472);
    PacketData = RoseCommand::getPacketData(a2);
    PacketLength = RoseCommand::getPacketLength(a2);
    v21 = v22(v16, PacketData, PacketLength, a3, 112, a4, a5);
    if (v21)
    {
      RoseTransport::sendRoseCommand(v21);
      return 0;
    }
  }

  else
  {
    v18 = *(v17 + 264);
    v19 = RoseCommand::getPacketData(a2);
    v20 = RoseCommand::getPacketLength(a2);
    v21 = v18(v16, v19, v20, a3, 112, a4);
    if (v21)
    {
      RoseTransport::sendRoseCommand(v21);
      return 0;
    }
  }

  v25 = ACFULogging::getLogInstance(v21);
  v26 = ACFULogging::handleMessage(v25, 4, "%s::%s: Response:\n", "RoseTransport", "sendRoseCommand");
  ACFULogging::getLogInstance(v26);
  std::string::basic_string[abi:ne200100]<0>(&v32, "RoseTransport");
  v27 = std::string::append(&v32, "::");
  v28 = *&v27->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = std::string::append(&v33, "sendRoseCommand");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v35 = v29->__r_.__value_.__r.__words[2];
  *__p = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return RoseCommand::validateResponse(a2, a3, *a4);
}

void sub_2980CDF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef RoseTransport::copyCalDataToSend(RoseTransport *this, CFDataRef theData)
{
  if (!theData || CFDataGetLength(theData) < 1)
  {
    v5 = "%s::%s: bad input parameters\n";
LABEL_9:
    RoseTransport::copyCalDataToSend(v5);
    return 0;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    v5 = "%s::%s: could not get reference to data\n";
    goto LABEL_9;
  }

  result = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], BytePtr, *BytePtr + 8, *MEMORY[0x29EDB8EE8]);
  if (!result)
  {
    v5 = "%s::%s: no data available to send\n";
    goto LABEL_9;
  }

  return result;
}

uint64_t RoseTransport::pingCheck(uint64_t **this)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = std::string::basic_string[abi:ne200100]<0>(&__p, "RoseTransport-v1");
  v21 = 0;
  v3 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v3 = v23;
  }

  if (v3 >= 0x21)
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    v18 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v18 = v23;
    }

    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid command length (%lu) for hello packet\n", "RoseTransport", "pingCheck", v18);
    v12 = 3012;
  }

  else
  {
    v4 = RoseCommand::create(0, 0, 0x20uLL, 0);
    v5 = v4;
    if (v4)
    {
      if ((v24 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v24 & 0x80u) == 0)
      {
        v7 = v24;
      }

      else
      {
        v7 = v23;
      }

      Payload = RoseCommand::getPayload(v4);
      if (v7)
      {
        Payload = memmove(Payload, p_p, v7);
      }

      v9 = 1;
      while (1)
      {
        v10 = ACFULogging::getLogInstance(Payload);
        ACFULogging::handleMessage(v10, 0, "%s::%s: ping attempt #%d...\n", "RoseTransport", "pingCheck", v9);
        if (RoseTransport::sendRoseCommand(this, v5, v26, &v21, 0))
        {
          break;
        }

        __ns.__rep_ = 500000000;
        std::this_thread::sleep_for (&__ns);
        if (++v9 == 6)
        {
          v11 = ACFULogging::getLogInstance(Payload);
          ACFULogging::handleMessage(v11, 2, "%s::%s: failed to ping chip\n");
LABEL_17:
          v12 = 3003;
          goto LABEL_20;
        }
      }

      v13 = RoseTransport::parsePingResponse(this, v26, v21);
      if ((v13 & 1) == 0)
      {
        v20 = ACFULogging::getLogInstance(v13);
        ACFULogging::handleMessage(v20, 2, "%s::%s: failed to validate ping response\n");
        goto LABEL_17;
      }

      v14 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v14, 0, "%s::%s: Ping success!\n", "RoseTransport", "pingCheck");
      v12 = 0;
LABEL_20:
      RoseCommand::~RoseCommand(v5);
      operator delete(v15);
    }

    else
    {
      v19 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v19, 2, "%s::%s: failed to create command\n", "RoseTransport", "pingCheck");
      v12 = 1007;
    }
  }

  if (v24 < 0)
  {
    operator delete(__p);
  }

  return v12;
}

uint64_t RoseTransport::parsePingResponse(uint64_t a1, uint64_t a2, ACFULogging *a3)
{
  v5 = RoseCapabilities::supportsRTKitIOConfig(*(a1 + 104));
  if (v5)
  {
    if (a3 <= 0x6F)
    {
      RoseTransport::parsePingResponse(a3);
      return 0;
    }

    v7 = RoseCommand::parsePingInfo((a2 + 4));
    if ((v7 & 1) == 0)
    {
      RoseTransport::parsePingResponse(v7);
      return 0;
    }

    return 1;
  }

  if (v5)
  {
    LogInstance = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: unknown HSI version\n");
    return 0;
  }

  if (a3 <= 0x43)
  {
    RoseTransport::parsePingResponse(a3);
    return 0;
  }

  if ((*(a2 + 40) + 41) != a3)
  {
    v10 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v10, 2, "%s::%s: response size %zu doesn't match additional info size %u\n");
    return 0;
  }

  v6 = RoseCommand::parsePingInfo(a2 + 4);
  if (v6)
  {
    return 1;
  }

  RoseTransport::parsePingResponse(v6);
  return 0;
}

uint64_t RoseTransport::sendCalibration(RoseCapabilities **a1, const __CFData *a2, int a3, uint64_t a4)
{
  v56 = *MEMORY[0x29EDCA608];
  if (atomic_load_explicit(_MergedGlobals, memory_order_acquire))
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_68:
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid cal data parameter\n");
    return 1006;
  }

  v48 = a2;
  RoseTransport::sendCalibration();
  a2 = v48;
  if (!v48)
  {
    goto LABEL_68;
  }

LABEL_3:
  cf = a2;
  v7 = RoseCapabilities::requiresSeparateFirmwareTargetForCertification(a1[13]);
  if (v7)
  {
    cf = RoseTransport::copyCalDataToSend(v7, cf);
    if (!cf)
    {
      v8 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v8, 2, "%s::%s: no data availble to send\n");
      return 1006;
    }
  }

  else
  {
    CFRetain(cf);
  }

  BytePtr = CFDataGetBytePtr(cf);
  if (!BytePtr)
  {
    v44 = ACFULogging::getLogInstance(0);
    v45 = "%s::%s: Invalid cal data reference\n";
LABEL_64:
    v36 = 0;
    ACFULogging::handleMessage(v44, 2, v45, "RoseTransport", "sendCalibration");
    v37 = 1006;
    goto LABEL_53;
  }

  Length = CFDataGetLength(cf);
  if (!Length)
  {
    v44 = ACFULogging::getLogInstance(Length);
    v45 = "%s::%s: Invalid cal data size\n";
    goto LABEL_64;
  }

  v11 = Length;
  if (Length % 0x29u)
  {
    v12 = Length / 0x29u + 1;
  }

  else
  {
    v12 = Length / 0x29u;
  }

  v51 = v12;
  if (!a3)
  {
    v21 = 0;
    v20 = 32;
    goto LABEL_27;
  }

  if (RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::only_once != -1)
  {
    RoseTransport::sendCalibration();
  }

  v13 = *(&xmmword_2A18BBCD0 + 1);
  if (byte_2A18BBCE7 >= 0)
  {
    v13 = byte_2A18BBCE7;
  }

  if (v13)
  {
    v14 = RoseCommand::create(2, 55, 0x2CuLL, 1);
    Payload = RoseCommand::getPayload(v14);
    v16 = Payload;
    *(Payload + 28) = 0u;
    *Payload = 0u;
    *(Payload + 16) = 0u;
    if (*(a4 + 23) >= 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    strlcpy(Payload, v17, 8uLL);
    if (byte_2A18BBCE7 >= 0)
    {
      v18 = &xmmword_2A18BBCD0;
    }

    else
    {
      v18 = xmmword_2A18BBCD0;
    }

    strlcpy((v16 + 8), v18, 0x20uLL);
    v52 = 0;
    v19 = RoseTransport::sendRoseCommand(a1, v14, v55, &v52, 0);
    if ((v19 & 1) == 0)
    {
      v47 = ACFULogging::getLogInstance(v19);
      ACFULogging::handleMessage(v47, 2, "%s::%s: Error sending FDR blob identification\n", "RoseTransport", "sendCalibration");
      goto LABEL_61;
    }

    v20 = 56;
    v21 = v14;
LABEL_27:
    v22 = RoseCommand::create(2, v20, 0x2CuLL, 1);
    v14 = v22;
    if (v21)
    {
      RoseCommand::~RoseCommand(v21);
      operator delete(v23);
    }

    if (!v51)
    {
LABEL_42:
      v30 = ACFULogging::getLogInstance(v22);
      if (*(a4 + 23) >= 0)
      {
        v31 = a4;
      }

      else
      {
        v31 = *a4;
      }

      v32 = ACFULogging::handleMessage(v30, 3, "%s::%s: Finished sending %s, waiting for result\n", "RoseTransport", "sendCalibration", v31);
      if (*(a1 + 96) != 1 || (v53[0] = &unk_2A1EA0938, v53[1] = a1, LOBYTE(v54[0]) = a3, v54[1] = v53, memset(v54 + 1, 0, 7), v33 = ACFUSynchronize::Syncher::wait(), v32 = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v53), (v33 & 1) != 0))
      {
        v34 = ACFULogging::getLogInstance(v32);
        if (*(a4 + 23) >= 0)
        {
          v35 = a4;
        }

        else
        {
          v35 = *a4;
        }

        v36 = v14;
        ACFULogging::handleMessage(v34, 0, "%s::%s: Calibration file transfer success: %s!\n", "RoseTransport", "sendCalibration", v35);
        v37 = 0;
        goto LABEL_53;
      }

      v38 = ACFULogging::getLogInstance(v32);
      ACFULogging::handleMessage(v38, 2, "%s::%s: Timed out on cal file transfer\n", "RoseTransport", "sendCalibration");
      v37 = 3005;
      goto LABEL_52;
    }

    v24 = 1;
    while (1)
    {
      if (v11 >= 0x29u)
      {
        v25 = 41;
      }

      else
      {
        v25 = v11;
      }

      v26 = RoseCommand::setPayloadLength(v14, (v25 + 3));
      if (!v26)
      {
        v41 = ACFULogging::getLogInstance(v26);
        ACFULogging::handleMessage(v41, 2, "%s::%s: Error setting cal payload length to %lu\n", "RoseTransport", "sendCalibration", (v25 + 3));
        v37 = 1006;
        goto LABEL_52;
      }

      v27 = RoseCommand::getPayload(v14);
      *v27 = v11;
      v27[2] = v25;
      if (v11)
      {
        v27 = memmove(v27 + 3, BytePtr, v25);
      }

      v28 = ACFULogging::getLogInstance(v27);
      v29 = *(a4 + 23) >= 0 ? a4 : *a4;
      ACFULogging::handleMessage(v28, 4, "%s::%s: %s segment #%u of %u: segmentLength %u bytesRemaining %u\n", "RoseTransport", "sendCalibration", v29, v24, v51, v25, v11);
      v52 = 0;
      v22 = RoseTransport::sendRoseCommand(a1, v14, v55, &v52, 0);
      if ((v22 & 1) == 0)
      {
        break;
      }

      BytePtr += v25;
      v11 -= v25;
      if (++v24 - v51 == 1)
      {
        goto LABEL_42;
      }
    }

    v42 = ACFULogging::getLogInstance(v22);
    if (*(a4 + 23) >= 0)
    {
      v43 = a4;
    }

    else
    {
      v43 = *a4;
    }

    ACFULogging::handleMessage(v42, 2, "%s::%s: Error sending cal data: %s segment #%u of %u: segmentLength %u bytesRemaining %u\n", "RoseTransport", "sendCalibration", v43, v24, v51, v25, v11);
LABEL_61:
    v37 = 3004;
LABEL_52:
    v36 = v14;
    goto LABEL_53;
  }

  v46 = ACFULogging::getLogInstance(Length);
  v36 = 0;
  ACFULogging::handleMessage(v46, 2, "%s::%s: failed to compute host identifier\n", "RoseTransport", "sendCalibration");
  v37 = 1;
LABEL_53:
  CFRelease(cf);
  if (v36)
  {
    RoseCommand::~RoseCommand(v36);
    operator delete(v39);
  }

  return v37;
}

uint64_t ___ZN13RoseTransport15sendCalibrationEPK8__CFDatabRKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE_block_invoke()
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v25);
  v23 = 0;
  valuePtr = 0;
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0 && (v2 = CFGetTypeID(v0), v0 = CFNumberGetTypeID(), v2 == v0))
  {
    Value = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
    if (Value)
    {
      TypeID = MGCopyAnswer();
      v5 = TypeID;
      if (TypeID && (v6 = CFGetTypeID(TypeID), TypeID = CFNumberGetTypeID(), v6 == TypeID))
      {
        v7 = CFNumberGetValue(v5, kCFNumberSInt64Type, &v23);
        if (v7)
        {
          *(&v26 + *(v26 - 24) + 8) |= 0x4000u;
          LOBYTE(v20) = 48;
          v8 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v26, &v20);
          v9 = *v8;
          *(v8 + *(*v8 - 24) + 24) = 8;
          *(v8 + *(v9 - 24) + 8) = *(v8 + *(v9 - 24) + 8) & 0xFFFFFFB5 | 8;
          v10 = MEMORY[0x29C2811A0]();
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "-", 1);
          v22 = 48;
          v12 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, &v22);
          v13 = *v12;
          *(v12 + *(*v12 - 24) + 24) = 16;
          *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
          MEMORY[0x29C2811A0]();
          std::stringbuf::str();
          if (byte_2A18BBCE7 < 0)
          {
            operator delete(xmmword_2A18BBCD0);
          }

          xmmword_2A18BBCD0 = v20;
          unk_2A18BBCE0 = v21;
        }

        else
        {
          LogInstance = ACFULogging::getLogInstance(v7);
          ACFULogging::handleMessage(LogInstance, 2, "%s::%s: error converting host ECID\n");
        }
      }

      else
      {
        v17 = ACFULogging::getLogInstance(TypeID);
        ACFULogging::handleMessage(v17, 2, "%s::%s: error getting host ECID\n");
      }

      goto LABEL_10;
    }

    v18 = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(v18, 2, "%s::%s: error converting host chipID\n", "RoseTransport", "sendCalibration_block_invoke");
  }

  else
  {
    v16 = ACFULogging::getLogInstance(v0);
    ACFULogging::handleMessage(v16, 2, "%s::%s: error getting host chipID\n", "RoseTransport", "sendCalibration_block_invoke");
    if (!v1)
    {
      goto LABEL_12;
    }
  }

  v5 = 0;
LABEL_10:
  CFRelease(v1);
  if (v5)
  {
    CFRelease(v5);
  }

LABEL_12:
  v25[0] = *MEMORY[0x29EDC9528];
  v14 = *(MEMORY[0x29EDC9528] + 72);
  *(v25 + *(v25[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v26 = v14;
  v27 = MEMORY[0x29EDC9570] + 16;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  v27 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v28);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C281270](&v30);
}

void sub_2980CEE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18, MEMORY[0x29EDC9528]);
  MEMORY[0x29C281270](&a34);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_2980CF0E0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C281270](v1);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x29EDC93D0]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void RoseTransport::runCertification(RoseCapabilities **a1@<X0>, ACFULogging *a2@<X1>, ACFUFirmware **a3@<X2>, uint64_t a4@<X8>)
{
  v55 = 0;
  v56 = 0;
  v54 = -559038737;
  if (a2)
  {
    RoseTransport::runCertification(a2);
    v46 = 0;
    v47 = 1010;
    goto LABEL_36;
  }

  if (!RoseCapabilities::requiresSeparateFirmwareTargetForCertification(a1[13]))
  {
    v8 = 0;
    v9 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_25;
  }

  Manifest = ACFUFirmware::getManifest(*a3);
  v8 = ACFUFirmware::copyFWDataByTag(*a3, @"Rap,RestoreRTKitOS");
  v9 = ACFUFirmware::copyFWDataByTag(*a3, @"Rap,SoftwareBinaryDsp1");
  v10 = (*(**a3 + 32))();
  v11 = v10;
  if (!v8 || !v9)
  {
    RoseTransport::runCertification(v10);
    v46 = 0;
    v12 = 0;
    v47 = 1000;
    goto LABEL_28;
  }

  if (!Manifest)
  {
    RoseTransport::runCertification(v10);
    v12 = 0;
    v46 = 0;
    v47 = 1001;
    goto LABEL_29;
  }

  if (!v10)
  {
    RoseTransport::runCertification(0);
    v12 = 0;
    v46 = 0;
    v47 = 1002;
    goto LABEL_29;
  }

  if (RoseCapabilities::supportsRTKitIOConfig(a1[13]))
  {
    v12 = ACFUFirmware::copyFWDataByTag(*a3, @"Rap,RTKitIOConfig");
    if (!v12)
    {
      LogInstance = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(LogInstance, 3, "%s::%s: icnf firmware is missing\n", "RoseTransport", "runCertification");
    }
  }

  else
  {
    v12 = 0;
  }

  (*(*a1 + 4))(a1);
  if (*(a1 + 96) == 1)
  {
    v14 = RoseTransport::flushDebugInfo(a1);
    if (v14)
    {
      v15 = v14;
      v16 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v16, 2, "%s::%s: Error flushing the debug logs: (%d)\n", "RoseTransport", "runCertification", v15);
    }
  }

  BytePtr = CFDataGetBytePtr(v11);
  Length = CFDataGetLength(v11);
  v19 = (*(*a1 + 1))(a1, BytePtr, Length);
  if (v19)
  {
    v47 = v19;
    RoseTransport::runCertification(v19);
    v46 = 0;
    goto LABEL_29;
  }

  v20 = (*(*a1[4] + 192))(a1[4], 1);
  if (v20)
  {
    RoseTransport::runCertification(v20);
LABEL_46:
    v46 = 0;
    v47 = 3010;
    goto LABEL_29;
  }

  v21 = (*(*a1[4] + 200))(a1[4], &v54);
  v22 = v21;
  if (v21 || v54 != 1)
  {
    v48 = ACFULogging::getLogInstance(v21);
    ACFULogging::handleMessage(v48, 2, "%s::%s: failed to get bootMode (ret: 0x%08x) (bootMode: 0x%x)\n", "RoseTransport", "runCertification", v22, v54);
    goto LABEL_46;
  }

  v52 = v11;
  v53 = v9;
  v23 = a1[4];
  v24 = *v23;
  v51 = v8;
  if (!v12)
  {
    v34 = *(v24 + 96);
    v35 = CFDataGetBytePtr(Manifest);
    v36 = CFDataGetLength(Manifest);
    v37 = v9;
    v38 = CFDataGetBytePtr(v8);
    v39 = CFDataGetLength(v8);
    v40 = CFDataGetBytePtr(v37);
    v41 = CFDataGetLength(v37);
    v42 = v34(v23, v35, v36, v38, v39, v40, v41);
    if (!v42)
    {
      v12 = 0;
      goto LABEL_24;
    }

    RoseTransport::runCertification(v42);
    v12 = 0;
    v46 = 0;
    v47 = 3001;
LABEL_49:
    v11 = v52;
    v9 = v53;
    v8 = v51;
    goto LABEL_29;
  }

  v49 = *(v24 + 456);
  v50 = a4;
  v25 = CFDataGetBytePtr(Manifest);
  v26 = CFDataGetLength(Manifest);
  v27 = CFDataGetBytePtr(v8);
  v28 = CFDataGetLength(v8);
  v29 = CFDataGetBytePtr(v9);
  v30 = CFDataGetLength(v9);
  v31 = CFDataGetBytePtr(v12);
  v32 = CFDataGetLength(v12);
  v33 = v49(v23, v25, v26, v27, v28, v29, v30, v31, v32);
  if (v33)
  {
    RoseTransport::runCertification(v33);
    v46 = 0;
    v47 = 3001;
    a4 = v50;
    goto LABEL_49;
  }

  a4 = v50;
LABEL_24:
  v11 = v52;
  v9 = v53;
  v8 = v51;
LABEL_25:
  v43 = a1[4];
  v44 = *MEMORY[0x29EDB8ED8];
  v45 = (*(*v43 + 320))(v43, *MEMORY[0x29EDB8ED8], &v56, &v55);
  if (v45)
  {
    RoseTransport::runCertification(v45);
    v46 = 0;
    v47 = 3013;
  }

  else
  {
    v46 = CFDataCreateWithBytesNoCopy(v44, v56, v55, v44);
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      RoseTransport::runCertification(0);
      v47 = 4000;
    }
  }

LABEL_28:
  if (v8)
  {
LABEL_29:
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_36:
  *a4 = v46;
  *(a4 + 8) = v47;
}

void RoseTransport::~RoseTransport(id *this)
{
  *this = &unk_2A1EA0630;
  RoseTransport::destroyRoseController(this);
  v2 = this[14];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[11];
  this[11] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[10];
  this[10] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = this[8];
  this[8] = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](this + 7, 0);
  std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](this + 6, 0);

  MEMORY[0x2A1C5F0F8](this);
}

{
  RoseTransport::~RoseTransport(this);

  operator delete(v1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::mutex::~mutex((v2 + 48));
    std::condition_variable::~condition_variable(v2);

    operator delete(v3);
  }
}

uint64_t *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    v6[1] = v7;
  }

  return result;
}

void sub_2980CF9E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::allocate_shared[abi:ne200100]<ACFUCommon::PersonalizeParams,std::allocator<ACFUCommon::PersonalizeParams>,std::vector<__CFString const*> &,0>@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> &,std::allocator<ACFUCommon::PersonalizeParams>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> &,std::allocator<ACFUCommon::PersonalizeParams>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EA06C8;
  std::allocator<ACFUCommon::PersonalizeParams>::construct[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> &>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EA06C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocator<ACFUCommon::PersonalizeParams>::construct[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(&__p, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  MEMORY[0x29C280E50](a2, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_2980CFBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_2980CFC38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1EA0718;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1EA0718;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 64);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (!v4)
  {
    v5 = 0;
    *(v1 + 64) = 0;
    goto LABEL_7;
  }

  v5 = (**v4)(v4);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v2)
  {
    v3 = *v2;
LABEL_7:
    (*(v3 + 16))(v2);
  }

  return v5;
}

uint64_t std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *_ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher4waitEjNS_8functionIFbvEEEEd_UlvE_NS_9allocatorIS7_EES5_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1EA07A8;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher4waitEjNS_8functionIFbvEEEEd_UlvE_NS_9allocatorIS7_EES5_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN15ACFUSynchronize7Syncher4waitEjNSt3__18functionIFbvEEEEd_UlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
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

void *_ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher6notifyEbNS_8functionIFvvEEEEd_UlvE_NS_9allocatorIS7_EES5_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1EA0828;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher6notifyEbNS_8functionIFvvEEEEd_UlvE_NS_9allocatorIS7_EES5_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN15ACFUSynchronize7Syncher6notifyEbNSt3__18functionIFvvEEEEd_UlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EA08B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EA08B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v4 = RoseCapabilities::supportsRTKitIOConfig(*(v2 + 104));
  RoseEvent::create(v1, v3, v4, &v7);
  v5 = v7;
  v7 = 0;
  result = *(v2 + 64);
  *(v2 + 64) = v5;
  if (result)
  {
    (*(*result + 16))(result);
    result = v7;
    v7 = 0;
    if (result)
    {
      return (*(*result + 16))(result);
    }
  }

  return result;
}

uint64_t std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C281220](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2980D02B8(_Unwind_Exception *a1)
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
  MEMORY[0x29C281180](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
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

  MEMORY[0x29C281190](v13);
  return a1;
}

void sub_2980D0528(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C281190](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2980D0508);
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
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
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

void sub_2980D074C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A1EA0938;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 5) = 0;
  *(v2 + 17) = 0;
  return result;
}

__n128 std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EA0938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 64);
  if (!v3)
  {
    return 0;
  }

  if (*(a1 + 16) == 1)
  {
    if (v4)
    {
      v5 = (**v4)(v4);
LABEL_8:
      v6 = v5;
      goto LABEL_10;
    }
  }

  else
  {
    if (v7)
    {
      v5 = RoseCommandCompleteEvent::validate(v7, 32);
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_10:
  v8 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  return v6;
}

uint64_t std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL RoseBooterPerformHealing(uint64_t a1)
{
  v1 = isHealed(a1);
  if (v1)
  {
    return 1;
  }

  LogInstance = ACFULogging::getLogInstance(v1);
  v4 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: attempting to heal firmware...\n", "ACFUBootInterface", "RoseBooterPerformHealing");
  DaemonDataStore = getDaemonDataStore(v4);
  v7 = RoseBootstrappedPreflight::bootstrappedPreflight(DaemonDataStore, 0, 0, v6);
  v2 = v7 != 0;
  if (v7)
  {
    CFRelease(v7);
  }

  usleep(0x30D40u);
  return v2;
}

uint64_t isHealed(uint64_t a1)
{
  v1 = MEMORY[0x29EDBA0F8];
  v2 = getDaemonDataStore(a1);
  v3 = [v1 stringWithFormat:@"%@/ftab.bin", v2];

  v4 = [MEMORY[0x29EDB8E70] URLWithString:v3];
  v6 = v4;
  if (v4)
  {
    doesPathExist = ACFUCommon::doesPathExist(v4, v5);
    if (doesPathExist)
    {
      cf = 0;
      v13 = 0;
      v8 = MEMORY[0x29EDB8E70];
      v9 = RoseBootstrappedPreflight::copyUnsignedFirmwarePath(doesPathExist);
      v10 = [v8 URLWithString:v9];

      AMSupportCreateDataFromFileURL();
      AMSupportCreateDataFromFileURL();
    }
  }

  return 0;
}

void sub_2980D0D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    (*(*v18 + 56))(v18);
  }

  _Unwind_Resume(a1);
}

id getDaemonDataStore(uint64_t a1)
{
  if (getDaemonDataStore(void)::onceToken != -1)
  {
    getDaemonDataStore();
  }

  v2 = getDaemonDataStore(void)::systemGroupContainerPath;

  return v2;
}

uint64_t RoseBooterHasFailedForward(ACFULogging *HasFailedForward_cold_1)
{
  if (hasRoseChip(void)::onceToken != -1)
  {
    RoseBooterHasFailedForward_cold_1();
  }

  if ((hasRoseChip(void)::hasChip & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(HasFailedForward_cold_1);
    v19 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: platform does not support rose\n", "ACFUBootInterface", "RoseBooterHasFailedForward");
    v12 = 0;
    v9 = 0;
    v20 = 3;
    v23 = 2;
    goto LABEL_19;
  }

  v1 = dlopen("/System/Library/PrivateFrameworks/MobileSoftwareUpdate.framework/MobileSoftwareUpdate", 1);
  if (!v1)
  {
    RoseBooterHasFailedForward_cold_6(0);
    return 0;
  }

  v2 = v1;
  v3 = dlsym(v1, "MSUParsedToleratedFailureForStep");
  v4 = dlerror();
  if (v4 || !v3 || (v5 = dlsym(v2, "MSUCopyToleratedStatusForStep"), (v4 = dlerror()) != 0) || !v5)
  {
    RoseBooterHasFailedForward_cold_4(v4);
    return 0;
  }

  PersonalizedFirmwarePath = ACFUDataAccess::createPersonalizedFirmwarePath(@"Rose", v6);
  if (!PersonalizedFirmwarePath)
  {
    RoseBooterHasFailedForward_cold_3(0);
    return 0;
  }

  v9 = PersonalizedFirmwarePath;
  URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(PersonalizedFirmwarePath, @"ftab.bin", v8);
  if (!URLByAppendingStrings)
  {
    RoseBooterHasFailedForward_cold_2(0);
    v23 = 0;
LABEL_22:
    CFRelease(v9);
    return v23;
  }

  v12 = URLByAppendingStrings;
  doesPathExist = ACFUCommon::doesPathExist(URLByAppendingStrings, v11);
  v14 = doesPathExist;
  v15 = ACFULogging::getLogInstance(doesPathExist);
  v16 = "not ";
  if (v14)
  {
    v16 = &unk_2980D6D57;
  }

  v17 = ACFULogging::handleMessage(v15, 0, "%s::%s: firmware does %sexist\n", "ACFUBootInterface", "RoseBooterHasFailedForward", v16);
  v18 = isHealed(v17);
  v19 = v3(@"update_rose");
  v20 = v19;
  if ((v19 - 1) >= 2)
  {
    if (v19)
    {
      v23 = 0;
    }

    else
    {
      v23 = 2;
      if ((v14 & 1) == 0)
      {
        v27 = ACFULogging::getLogInstance(v19);
        v28 = "No";
        if (v18)
        {
          v28 = "Yes";
          v23 = 2;
        }

        else
        {
          v23 = 3;
        }

        v19 = ACFULogging::handleMessage(v27, 0, "%s::%s: was able to heal from no firmware state? %s\n", "ACFUBootInterface", "RoseBooterHasFailedForward", v28);
      }

      v20 = 0;
    }
  }

  else
  {
    v21 = ACFULogging::getLogInstance(v19);
    v22 = "No";
    if (v18)
    {
      v22 = "Yes";
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v19 = ACFULogging::handleMessage(v21, 0, "%s::%s: was able to heal firmware from fail forward state? %s\n", "ACFUBootInterface", "RoseBooterHasFailedForward", v22);
  }

LABEL_19:
  v25 = ACFULogging::getLogInstance(v19);
  ACFULogging::handleMessage(v25, 0, "%s::%s: RoseBooter FF Status: %d (MSU Status: %d)\n", "ACFUBootInterface", "RoseBooterHasFailedForward", v23, v20);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    goto LABEL_22;
  }

  return v23;
}

uint64_t RoseBooterAllocate(ACFULogging *a1, void *a2)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: RoseUpdater Version: %s\n", "ACFUBootInterface", "RoseBooterAllocate", "RoseUpdater-115~31852");
  v6 = ACFULogging::getLogInstance(v5);
  v7 = ACFULogging::handleMessage(v6, 0, "%s::%s: ACFU Version: %s\n", "ACFUBootInterface", "RoseBooterAllocate", "ACFU_VERSION");
  if (!a1 || !a2)
  {
    RoseBooterAllocate_cold_4(v7);
    return 0;
  }

  v8 = operator new(0x30uLL);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  v40 = 0;
  v41 = 0;
  v39 = 1;
  v9 = isHealed(v8);
  if (v9)
  {
    PersonalizedFirmwarePath = getDaemonDataStore(v9);
  }

  else
  {
    PersonalizedFirmwarePath = ACFUDataAccess::createPersonalizedFirmwarePath(@"Rose", v10);
  }

  v12 = PersonalizedFirmwarePath;
  if (PersonalizedFirmwarePath)
  {
    GetRoseTatsuTagToFileNameMap(v38);
    RTKitFirmware::create();
    std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v40, &v36);
    v13 = v36;
    v36 = 0;
    if (v13)
    {
      (*(*v13 + 56))(v13);
    }

    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v38, v38[1]);
    if (v40)
    {
      ACFUDiagnostics::create(&v36, 0, 1);
      std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(v8 + 4, &v36);
      v15 = v36;
      v36 = 0;
      if (v15)
      {
        v16 = MEMORY[0x29C280FF0]();
        operator delete(v16);
      }

      if (v8[4])
      {
        v17 = v8[5];
        v36 = v8[4];
        v37 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RoseTransport::create(&v36, a1, 0, &v35);
        std::shared_ptr<RoseTransport>::operator=[abi:ne200100]<RoseTransport,std::default_delete<RoseTransport>,0>(v8 + 2, &v35);
        v18 = v35;
        *&v35 = 0;
        if (v18)
        {
          (*(*v18 + 64))(v18);
        }

        v19 = v37;
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if (v8[2])
        {
          v20 = v8[3];
          v34 = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = v41;
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = v8[5];
          v32 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          ACFURTKitROM::create();
          v22 = v35;
          v35 = 0uLL;
          v23 = v8[1];
          *v8 = v22;
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
            if (*(&v35 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
            }
          }

          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          v24 = v34;
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          if (*v8)
          {
            v25 = 1;
LABEL_37:
            CFRelease(v12);
            goto LABEL_38;
          }

          v31 = ACFULogging::getLogInstance(v24);
          ACFULogging::handleMessage(v31, 2, "%s::%s: failed to create rtkitROM object\n");
        }

        else
        {
          v30 = ACFULogging::getLogInstance(v19);
          ACFULogging::handleMessage(v30, 2, "%s::%s: failed to create transport object\n");
        }
      }

      else
      {
        v29 = ACFULogging::getLogInstance(v15);
        ACFULogging::handleMessage(v29, 2, "%s::%s: failed to create diagnostics object\n");
      }
    }

    else
    {
      v28 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v28, 2, "%s::%s: failed to create firmware object\n");
    }

    v25 = 0;
    goto LABEL_37;
  }

  v27 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v27, 2, "%s::%s: failed to get rose firmware path\n", "ACFUBootInterface", "RoseBooterInit");
  v25 = 0;
LABEL_38:
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if ((v25 & 1) == 0)
  {
    RoseBooterAllocate_cold_3(v8);
    return 0;
  }

  *a2 = v8;
  return 1;
}

void sub_2980D14DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v24 = *(v22 - 56);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

ACFULogging *RoseBooterPreflight(uint64_t a1)
{
  if (!a1)
  {
    RoseBooterPreflight_cold_4(0);
    return 0;
  }

  v2 = *a1;
  if (!v2)
  {
    RoseBooterPreflight_cold_3(0);
    return 0;
  }

  if (!*(a1 + 16))
  {
    RoseBooterPreflight_cold_2(v2);
    return 0;
  }

  if (!*(a1 + 32))
  {
    RoseBooterPreflight_cold_1(v2);
    return 0;
  }

  v3 = (**v2)(&v15);
  v5 = v15;
  v4 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = v16;
    v6 = v17;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (!v6)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_11;
    }

LABEL_26:
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to gather personalization parameters: %d\n", "ACFUBootInterface", "RoseBooterPreflight", v6);
    goto LABEL_29;
  }

  v6 = v17;
  if (v17)
  {
    goto LABEL_26;
  }

LABEL_11:
  v7 = (*(*v5 + 8))(v5);
  v8 = v7;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (v8)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_15;
    }

LABEL_27:
    v13 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v13, 0, "%s::%s: all required personalization parameters are not available\n");
    goto LABEL_29;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_15:
  v9 = (**v5)(v5);
  v10 = v9;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (!v10)
  {
    v14 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v14, 2, "%s::%s: Could not allocate preflight dictionary\n");
LABEL_29:
    v10 = 0;
    if (!v4)
    {
      return v10;
    }

    goto LABEL_19;
  }

  if (v4)
  {
LABEL_19:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v10;
}

void sub_2980D178C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseBooterBootChip(uint64_t a1, int *a2, int *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (!a1)
  {
    RoseBooterBootChip_cold_4(0);
    return 1005;
  }

  if (!*a1)
  {
    RoseBooterBootChip_cold_3(a1);
    return 1005;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    RoseBooterBootChip_cold_2(0);
    return 1005;
  }

  if (!*(a1 + 32))
  {
    RoseBooterBootChip_cold_1(v6);
    return 1005;
  }

  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
  }

  RoseTransport::getCapabilities(v7, &valuePtr);
  v9 = RoseCapabilities::supportsRTKitIOConfig(valuePtr);
  v10 = v48;
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (!v9)
  {
    v15 = 0;
    goto LABEL_28;
  }

  v11 = isHealed(v10);
  if (v11)
  {
    v13 = RoseBootstrappedPreflight::copyUnsignedFirmwarePath(v11);
  }

  else
  {
    v13 = ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(@"Rose", v12);
  }

  v15 = v13;
  if (v13)
  {
    Symlink = ACFUCommon::createSymlink(@"/tmp/FTABHarvest/", v13, @"rose-symlink-ftab.bin", v14);
    v17 = Symlink;
    LogInstance = ACFULogging::getLogInstance(Symlink);
    if (v17)
    {
      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: successfully created symlink for symbol harvest (tmp directory)\n");
      goto LABEL_28;
    }

    v19 = "%s::%s: failed to create symlink for symbol harvest (tmp directory)\n";
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v19 = "%s::%s: failed to get firmware path for symbol harvest (tmp directory), skipping symlinking\n";
  }

  ACFULogging::handleMessage(LogInstance, 2, v19, "ACFUBootInterface", "RoseBooterBootChip");
LABEL_28:
  v20 = ACFURTKitROM::bootFirmware(*a1);
  v21 = v20;
  if (!v20)
  {
    goto LABEL_41;
  }

  v22 = ACFULogging::getLogInstance(v20);
  ACFULogging::handleMessage(v22, 2, "%s::%s: failed to boot rose: %d\n", "ACFUBootInterface", "RoseBooterBootChip", v21);
  v23 = *(a1 + 16);
  v45 = 0;
  v46 = 0;
  v24 = (*(*v23 + 40))(v23, &v45, 0);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v25 = ACFUDiagnostics::copyItem(*(a1 + 32), @"RoseControllerState");
  v26 = v25;
  if (!v24 && v25 && (TypeID = CFDictionaryGetTypeID(), v25 = CFGetTypeID(v26), TypeID == v25))
  {
    v28 = ACFULogging::getLogInstance(v25);
    ACFULogging::handleMessage(v28, 0, "%s::%s: Starting dump of debug info:\n", "ACFUBootInterface", "RoseBooterBootChip");
    CFDictionaryApplyFunction(v26, RoseBooterBootChip::$_0::__invoke, 0);
    v30 = ACFULogging::getLogInstance(v29);
    ACFULogging::handleMessage(v30, 0, "%s::%s: Finished dumping of debug info\n", "ACFUBootInterface", "RoseBooterBootChip");
    if (a2)
    {
      Value = CFDictionaryGetValue(v26, @"RoseServiceState");
      if (Value)
      {
        v32 = Value;
        v33 = CFGetTypeID(Value);
        if (v33 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          v34 = CFNumberGetValue(v32, kCFNumberSInt64Type, &valuePtr);
          if (v34)
          {
            v35 = valuePtr;
          }

          else
          {
            v38 = ACFULogging::getLogInstance(v34);
            ACFULogging::handleMessage(v38, 2, "%s::%s: Unable to get RoseServiceState as a number\n", "ACFUBootInterface", "RoseBooterBootChip");
            v35 = -1;
          }

          *a2 = v35;
        }
      }
    }

    if (a3)
    {
      v39 = CFDictionaryGetValue(v26, @"SecureROMStatus");
      if (v39)
      {
        v40 = v39;
        v41 = CFGetTypeID(v39);
        if (v41 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          v42 = CFNumberGetValue(v40, kCFNumberSInt64Type, &valuePtr);
          if (v42)
          {
            v43 = valuePtr;
          }

          else
          {
            v44 = ACFULogging::getLogInstance(v42);
            ACFULogging::handleMessage(v44, 2, "%s::%s: Unable to get SecureROMStatus as a number\n", "ACFUBootInterface", "RoseBooterBootChip");
            v43 = -1;
          }

          *a3 = v43;
        }
      }
    }
  }

  else
  {
    v36 = ACFULogging::getLogInstance(v25);
    ACFULogging::handleMessage(v36, 2, "%s::%s: failed to get debug info: %d\n", "ACFUBootInterface", "RoseBooterBootChip", v24);
    if (!v26)
    {
      goto LABEL_41;
    }
  }

  CFRelease(v26);
LABEL_41:
  if (v15)
  {
    CFRelease(v15);
  }

  return v21;
}

void sub_2980D1BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(ACFUDataAccess *a1, const __CFString *a2)
{
  if (!a1)
  {
    ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(0);
    return 0;
  }

  PersonalizedFirmwarePath = ACFUDataAccess::createPersonalizedFirmwarePath(a1, a2);
  if (!PersonalizedFirmwarePath)
  {
    ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(0);
    return 0;
  }

  v3 = PersonalizedFirmwarePath;
  v4 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@/%@", PersonalizedFirmwarePath, @"ftab.bin");
  if (!v4)
  {
    ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(0);
  }

  CFRelease(v3);
  return v4;
}

uint64_t RoseBooterSendCalWithOptions(uint64_t *a1, int a2, int *a3, __int16 a4)
{
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v65 = 0;
  v66 = 0;
  v64 = &v65;
  v61 = a4 & 0x101;
  v62 = 0;
  v7 = a1[2];
  {
    v8 = a1[3];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
  }

  RoseTransport::getCapabilities(v7, &v58);
  v63 = RoseCapabilities::supportsRTKitIOConfig(v58);
  v9 = v59[0];
  if (v59[0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59[0]);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v59[0] = 0;
  v59[1] = 0;
  v58 = v59;
  if (!a3)
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid parameters\n");
LABEL_80:
    v12 = 1005;
    goto LABEL_73;
  }

  if (!*a1)
  {
    v44 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v44, 2, "%s::%s: invalid rtkitROM handle\n");
    goto LABEL_80;
  }

  if (!a1[2])
  {
    v45 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v45, 2, "%s::%s: invalid transport handle\n");
    goto LABEL_80;
  }

  v10 = ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage(v10, 0, "%s::%s: Requested calibration files 0x%x\n", "ACFUBootInterface", "RoseBooterSendCalWithOptions", a2);
  *a3 = 0;
  v11 = (*(*a1[2] + 24))(a1[2]);
  v12 = v11;
  if (v11)
  {
    v46 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v46, 2, "%s::%s: failed to ping device\n", "ACFUBootInterface", "RoseBooterSendCalWithOptions");
  }

  else
  {
    v47 = a3;
    for (i = 1; i < 7; i *= 2)
    {
      if ((i & a2) != 0)
      {
        switch(i)
        {
          case 1:
            v14 = 0;
            break;
          case 4:
            v14 = 2;
            break;
          case 2:
            v14 = 1;
            break;
          default:
            v42 = ACFULogging::getLogInstance(v11);
            ACFULogging::handleMessage(v42, 2, "%s::%s: invalid calibration type %d\n", "ACFUBootInterface", "RoseBooterSendCalWithOptions", i);
            v12 = 5001;
            goto LABEL_73;
        }

        v15 = v68;
        if (v68 >= v69)
        {
          v17 = v67;
          v18 = v68 - v67;
          v19 = v68 - v67;
          v20 = v19 + 1;
          if ((v19 + 1) >> 62)
          {
            std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
          }

          v21 = v69 - v67;
          if ((v69 - v67) >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v22 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            v23 = std::__allocate_at_least[abi:ne200100]<std::allocator<RoseCapabilities::CalibrationType>>(&v67, v22);
            v22 = v24;
            v17 = v67;
            v18 = v68 - v67;
          }

          else
          {
            v23 = 0;
          }

          v25 = &v23[4 * v19];
          v26 = &v23[4 * v22];
          v27 = &v25[-(v68 - v67)];
          *v25 = v14;
          v16 = v25 + 1;
          memcpy(v27, v17, v18);
          v11 = v67;
          v67 = v27;
          v68 = v16;
          v69 = v26;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          *v68 = v14;
          v16 = v15 + 1;
        }

        v68 = v16;
      }
    }

    v28 = a1[3];
    v52 = a1[2];
    v53 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = a1[1];
    v50 = *a1;
    v51 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = a1[2];
    {
      v31 = a1[3];
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v31 = 0;
    }

    RoseTransport::getCapabilities(v30, &v48);
    RoseCalibration::sendCalibration(&v52, &v50, &v48, &v61, &v67, &v54);
    std::__tree<RoseCapabilities::CalibrationType>::__assign_multi<std::__tree_const_iterator<RoseCapabilities::CalibrationType,std::__tree_node<RoseCapabilities::CalibrationType,void *> *,long>>(&v58, v54, &v55);
    v60 = v57;
    std::__tree<RoseCapabilities::CalibrationType>::destroy(&v54, v55);
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    std::set<RoseCapabilities::CalibrationType>::set[abi:ne200100](&v54, &v58);
    std::__tree<RoseCapabilities::CalibrationType>::destroy(&v64, v65);
    v32 = v55;
    v64 = v54;
    v65 = v55;
    v66 = v56;
    if (v56)
    {
      v55[2] = &v65;
      v54 = &v55;
      v55 = 0;
      v56 = 0;
      v32 = 0;
    }

    else
    {
      v64 = &v65;
    }

    std::__tree<RoseCapabilities::CalibrationType>::destroy(&v54, v32);
    v33 = v64;
    if (v64 != &v65)
    {
      v34 = *v47;
      do
      {
        v35 = v33[7];
        if (v35 == 1)
        {
          v36 = 2;
        }

        else
        {
          v36 = 1;
        }

        if (v35 == 2)
        {
          v37 = 4;
        }

        else
        {
          v37 = v36;
        }

        v38 = *(v33 + 1);
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = *(v33 + 2);
            v40 = *v39 == v33;
            v33 = v39;
          }

          while (!v40);
        }

        v34 |= v37;
        v33 = v39;
      }

      while (v39 != &v65);
      *v47 = v34;
    }

    v12 = v60;
  }

LABEL_73:
  std::__tree<RoseCapabilities::CalibrationType>::destroy(&v58, v59[0]);
  std::__tree<RoseCapabilities::CalibrationType>::destroy(&v64, v65);
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  return v12;
}

void sub_2980D21B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  std::__tree<RoseCapabilities::CalibrationType>::destroy(&a23, a24);
  std::__tree<RoseCapabilities::CalibrationType>::destroy(v24 - 136, *(v24 - 128));
  v26 = *(v24 - 112);
  if (v26)
  {
    *(v24 - 104) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

ACFUCommon::FDRDataClass *RoseBooterGetCal(ACFULogging *a1, int a2)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v31 = 0;
  LOWORD(v29[0]) = 0;
  v29[1] = 0;
  v30 = 0;
  if (!a1)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid parameters\n");
    goto LABEL_39;
  }

  if (!*a1)
  {
    v20 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v20, 2, "%s::%s: invalid rtkitROM handle\n");
    goto LABEL_39;
  }

  v3 = *(a1 + 2);
  if (!v3)
  {
    v21 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v21, 2, "%s::%s: invalid transport handle\n");
    goto LABEL_39;
  }

  switch(a2)
  {
    case 1:
      v5 = 0;
      break;
    case 4:
      v5 = 2;
      break;
    case 2:
      v5 = 1;
      break;
    default:
      v17 = ACFULogging::getLogInstance(v3);
      ACFULogging::handleMessage(v17, 2, "%s::%s: invalid calibration type %d\n", "ACFUBootInterface", "RoseBooterGetCal", a2);
LABEL_39:
      v16 = 0;
      goto LABEL_52;
  }

  if (v6)
  {
    v7 = *(a1 + 3);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
  }

  RoseTransport::getCapabilities(v6, &v26);
  RoseCapabilities::supportedFDRDataClassesForCalibrationType(v26, v5, &v28);
  std::vector<ACFUCommon::FDRDataClass>::__assign_with_size[abi:ne200100]<ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*>(&v33, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v28.__r_.__value_.__l.__size_ - v28.__r_.__value_.__r.__words[0]) >> 4));
  v36 = &v28;
  std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v36);
  v8 = v27;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v33 == v34)
  {
    v22 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v22, 2, "%s::%s: no data classes supported for requested calibration type\n");
    goto LABEL_39;
  }

  size = (***(a1 + 2))(&v28);
  v10 = *&v28.__r_.__value_.__l.__data_;
  if (!v28.__r_.__value_.__l.__size_)
  {
    if (!LODWORD(v28.__r_.__value_.__r.__words[2]))
    {
      if (*(v28.__r_.__value_.__r.__words[0] + 16) & 1) != 0 && (*(v28.__r_.__value_.__r.__words[0] + 48))
      {
LABEL_29:
        ACFUCommon::Parameter::GetDataAsType<unsigned short>(v10 + 8, &v32);
        if (*(&v10 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
          atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        ACFUCommon::Parameter::GetDataAsType<unsigned long long>(v10 + 40, &v31);
        if (*(&v10 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
        }

        v13 = v33;
        v14 = v34;
        while (v13 != v14)
        {
          DataLocalCopy = ACFUFDR::getDataLocalCopy();
          if (v28.__r_.__value_.__l.__size_)
          {
            v18 = ACFULogging::getLogInstance(DataLocalCopy);
            ACFULogging::handleMessage(v18, 2, "%s::%s: failed to verify FDR data\n", "ACFUBootInterface", "RoseBooterGetCal");
            goto LABEL_49;
          }

          v16 = v28.__r_.__value_.__r.__words[0];
          if (v28.__r_.__value_.__r.__words[0])
          {
            goto LABEL_50;
          }

          v13 += 48;
        }

        goto LABEL_49;
      }

      goto LABEL_48;
    }

LABEL_46:
    v23 = ACFULogging::getLogInstance(size);
    ACFULogging::handleMessage(v23, 2, "%s::%s: failed to gather personalization parameters\n");
    goto LABEL_49;
  }

  atomic_fetch_add_explicit((v28.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  size = v28.__r_.__value_.__l.__size_;
  v11 = v28.__r_.__value_.__r.__words[2];
  if (v28.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28.__r_.__value_.__l.__size_);
  }

  if (v11)
  {
    goto LABEL_46;
  }

  atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
  if (*(v10 + 16))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    v12 = *(v10 + 48);
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
    if (v12)
    {
      atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
      goto LABEL_29;
    }
  }

  else
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }

LABEL_48:
  v24 = ACFULogging::getLogInstance(size);
  ACFULogging::handleMessage(v24, 2, "%s::%s: failed to get chip parameters for FDR data instance\n");
LABEL_49:
  v16 = 0;
LABEL_50:
  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }

LABEL_52:
  v29[0] = &v33;
  std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](v29);
  return v16;
}

void sub_2980D2638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  a18 = (v19 - 64);
  std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

BOOL RoseBooterDestroy(void *__p)
{
  if (__p)
  {
    v2 = __p[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = __p[1];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(__p);
  }

  else
  {
    RoseBooterDestroy_cold_1(0);
  }

  return __p != 0;
}

uint64_t ___ZL18getDaemonDataStorev_block_invoke()
{
  v0 = getDaemonDataStore(void)::systemGroupContainerPath;
  getDaemonDataStore(void)::systemGroupContainerPath = @"/var/db/nearbyd/";

  LogInstance = ACFULogging::getLogInstance(v1);
  return ACFULogging::handleMessage(LogInstance, 0, "%s::%s: persistent path: %s\n", "ACFUBootInterface", "getDaemonDataStore_block_invoke", [@"/var/db/nearbyd/" UTF8String]);
}

void ___ZL11hasRoseChipv_block_invoke()
{
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService && (CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"ECID", *MEMORY[0x29EDB8ED8], 0)) != 0)
  {
    CFRelease(CFProperty);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  hasRoseChip(void)::hasChip = v4;
}

void RoseBooter::~RoseBooter(RoseBooter *this)
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

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void RoseBooterBootChip::$_0::__invoke(RoseBooterBootChip::$_0 *this, void *a2, const void *a3, void *a4)
{
  v6 = CFGetTypeID(this);
  TypeID = CFStringGetTypeID();
  if (v6 == TypeID)
  {
    ACFUCommon::stringFromCFString(&v30, this, v8);
    v9 = CFGetTypeID(a2);
    v10 = CFStringGetTypeID();
    if (v9 == v10)
    {
      LogInstance = ACFULogging::getLogInstance(v10);
      if (v32 < 0)
      {
        if (v31)
        {
          v13 = v30;
        }

        else
        {
          v13 = "UNDEF";
        }
      }

      else if (v32)
      {
        v13 = &v30;
      }

      else
      {
        v13 = "UNDEF";
      }

      ACFUCommon::stringFromCFString(valuePtr, a2, v11);
      if ((v29 & 0x80u) == 0)
      {
        v22 = v29;
      }

      else
      {
        v22 = valuePtr[1];
      }

      if (v22)
      {
        ACFUCommon::stringFromCFString(__p, a2, v21);
        if (v27 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }
      }

      else
      {
        v23 = "UNDEF";
      }

      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: %s: %s\n", "ACFUBootInterface", "operator()", v13, v23);
      if (v22 && v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    else
    {
      v15 = CFNumberGetTypeID();
      if (v9 == v15)
      {
        valuePtr[0] = 0;
        Value = CFNumberGetValue(a2, kCFNumberSInt64Type, valuePtr);
        if (Value)
        {
          v17 = ACFULogging::getLogInstance(Value);
          if (v32 < 0)
          {
            if (v31)
            {
              v18 = v30;
            }

            else
            {
              v18 = "UNDEF";
            }
          }

          else
          {
            v18 = &v30;
            if (!v32)
            {
              v18 = "UNDEF";
            }
          }

          ACFULogging::handleMessage(v17, 0, "%s::%s: %s: %lld\n", "ACFUBootInterface", "operator()", v18, valuePtr[0]);
        }

        else
        {
          v24 = ACFULogging::getLogInstance(Value);
          if (v32 < 0)
          {
            if (v31)
            {
              v25 = v30;
            }

            else
            {
              v25 = "UNDEF";
            }
          }

          else
          {
            v25 = &v30;
            if (!v32)
            {
              v25 = "UNDEF";
            }
          }

          ACFULogging::handleMessage(v24, 2, "%s::%s: Unable to print the number value for for Key: %s\n", "ACFUBootInterface", "operator()", v25);
        }
      }

      else
      {
        v19 = ACFULogging::getLogInstance(v15);
        if (v32 < 0)
        {
          if (v31)
          {
            v20 = v30;
          }

          else
          {
            v20 = "UNDEF";
          }
        }

        else
        {
          v20 = &v30;
          if (!v32)
          {
            v20 = "UNDEF";
          }
        }

        ACFULogging::handleMessage(v19, 2, "%s::%s: Unknown value type: %lu for Key: %s\n", "ACFUBootInterface", "operator()", v9, v20);
      }
    }

    if (v32 < 0)
    {
      operator delete(v30);
    }
  }

  else
  {
    v14 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v14, 2, "%s::%s: The key is not a CFString type. The type is: %lu\n", "ACFUBootInterface", "operator()", v6);
  }
}

void sub_2980D2B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<RoseCapabilities::CalibrationType>::__assign_multi<std::__tree_const_iterator<RoseCapabilities::CalibrationType,std::__tree_node<RoseCapabilities::CalibrationType,void *> *,long>>(void *result, int *a2, int *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = v9[7];
          std::__tree<RoseCapabilities::CalibrationType>::__node_insert_multi(v5, v8);
          v8 = v15;
          v16 = v15;
          if (v15)
          {
            v15 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v15);
          }

          v10 = *(v9 + 1);
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = *(v9 + 2);
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = std::__tree<RoseCapabilities::CalibrationType>::__emplace_multi<RoseCapabilities::CalibrationType const&>(v5, a2 + 7);
      v12 = *(a2 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(a2 + 2);
          v11 = *v13 == a2;
          a2 = v13;
        }

        while (!v11);
      }

      a2 = v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_2980D2CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<RoseCapabilities::CalibrationType>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t *std::__tree<RoseCapabilities::CalibrationType>::__emplace_multi<RoseCapabilities::CalibrationType const&>(uint64_t a1, int *a2)
{
  v4 = operator new(0x20uLL);
  v5 = *a2;
  *(v4 + 7) = *a2;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (v7)
  {
    do
    {
      while (1)
      {
        v6 = v7;
        if (v5 >= *(v7 + 7))
        {
          break;
        }

        v7 = *v7;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v7 = v7[1];
    }

    while (v7);
    v8 = v6 + 1;
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_8:
  std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v6, v8, v4);
  return v4;
}

void std::vector<ACFUCommon::FDRDataClass>::__assign_with_size[abi:ne200100]<ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*>(uint64_t a1, ACFUCommon::FDRDataClass *a2, ACFUCommon::FDRDataClass *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<ACFUCommon::FDRDataClass>::__vdeallocate(a1);
    if (a4 > 0x555555555555555)
    {
      std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    std::vector<ACFUCommon::FDRDataClass>::__vallocate[abi:ne200100](a1, v10);
    v11 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*>(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 4) < a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *>(&v16, a2, (a2 + v12), v8);
    v11 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*>(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  std::__copy_impl::operator()[abi:ne200100]<ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *>(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 48;
      std::allocator<ACFUCommon::FDRDataClass>::destroy[abi:ne200100](a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void std::vector<ACFUCommon::FDRDataClass>::__vdeallocate(char **a1)
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
        v3 -= 48;
        std::allocator<ACFUCommon::FDRDataClass>::destroy[abi:ne200100](a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*>(uint64_t a1, ACFUCommon::FDRDataClass *a2, ACFUCommon::FDRDataClass *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      ACFUCommon::FDRDataClass::FDRDataClass(v4, v6);
      v6 = (v6 + 48);
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

ACFUCommon::FDRDataClass *std::__copy_impl::operator()[abi:ne200100]<ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *>(int a1, ACFUCommon::FDRDataClass *a2, ACFUCommon::FDRDataClass *a3, std::string *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      ACFUCommon::FDRDataClass::FDRDataClass(&v8, v5);
      ACFUCommon::FDRDataClass::operator=(a4, &v8);
      if (v10 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      v5 = (v5 + 48);
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

std::string *ACFUCommon::FDRDataClass::operator=(std::string *this, std::string *__str)
{
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v6 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = this->__r_.__value_.__l.__size_;
  }

  if (size != v6)
  {
    goto LABEL_27;
  }

  v8 = v4 >= 0 ? __str : __str->__r_.__value_.__r.__words[0];
  v9 = v7 >= 0 ? this : this->__r_.__value_.__r.__words[0];
  if (memcmp(v8, v9, size))
  {
    goto LABEL_27;
  }

  v10 = SHIBYTE(__str[1].__r_.__value_.__r.__words[2]);
  if (v10 >= 0)
  {
    v11 = HIBYTE(__str[1].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __str[1].__r_.__value_.__l.__size_;
  }

  v12 = HIBYTE(this[1].__r_.__value_.__r.__words[2]);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = this[1].__r_.__value_.__l.__size_;
  }

  if (v11 != v12 || (v10 >= 0 ? (data = __str + 1) : (data = __str[1].__r_.__value_.__l.__data_), v13 >= 0 ? (v15 = this + 1) : (v15 = this[1].__r_.__value_.__l.__data_), memcmp(data, v15, v11)))
  {
LABEL_27:
    std::string::operator=(this, __str);
    std::string::operator=(this + 1, __str + 1);
  }

  return this;
}

uint64_t RoseRestoreHost::createRequest(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: security mode demotion disallowed for Rose\n", "RoseRestoreHost", "createRequest");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create output request dictionary\n", "RoseRestoreHost", "createRequest");
}

uint64_t RoseRestoreHost::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Bad chip ID size\n", "RoseRestoreHost", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize base class\n", "RoseRestoreHost", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create capabilities\n", "RoseRestoreHost", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: No chip ID\n", "RoseRestoreHost", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: No device info\n", "RoseRestoreHost", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Bad options\n", "RoseRestoreHost", "init");
}

uint64_t RoseEvent::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate event\n", "RoseEvent", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad input parameter\n", "RoseEvent", "init");
}

uint64_t RoseEvent::validate(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: message is not an event\n", "RoseEvent", "validate");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get event data\n", "RoseEvent", "validate");
}

uint64_t RoseCommandCompleteEvent::validate(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid event format\n", "RoseEvent", "validate");
}

{
  OUTLINED_FUNCTION_1(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: Unrecognized event/size: gid: 0x%02x oid: 0x%03x msg type: 0x%02x size: %zu\n", "RoseEvent", "validate", v3, v4, v5, v6);
}

uint64_t RoseCommandCompleteEvent::validate(ACFULogging *a1, unsigned __int16 *a2, uint64_t a3)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Error in event: expectedCompleteEvent 0x%02x status 0x%x\n", "RoseEvent", "validate", *a1, *a2);
  v7 = *(*a3 + 24);

  return v7(a3);
}

uint64_t RoseFDRTrustEvaluationCompleteEvent::validate(ACFULogging *a1, void *a2, uint64_t a3)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Error in event: status 0x%04x, trustEvaluationError 0x%016llx\n", "RoseEvent", "validate", *a1, *a2);
  v7 = *(*a3 + 24);

  return v7(a3);
}

uint64_t RoseInitDoneEvent::validate(ACFULogging *a1)
{
  v3 = OUTLINED_FUNCTION_1(a1);
  ACFULogging::handleMessage(v3, 2, "%s::%s: Error in event: status 0x%x\n", "RoseEvent", "validate", *v2);
  v4 = *(*v1 + 24);

  return v4(v1);
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned short>(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 2)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

uint64_t RoseBootstrappedPreflight::bootstrappedPreflight()
{
  OUTLINED_FUNCTION_0_0();
  return (*(v0 + 64))();
}

{
  OUTLINED_FUNCTION_0_0();
  return (*(v0 + 56))();
}

{
  OUTLINED_FUNCTION_0_0();
  return (*(v0 + 56))();
}

uint64_t RoseTransport::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Unable to get the current Rose chip power state\n", "RoseTransport", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Unable to power on Rose chip\n", "RoseTransport", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create capabilities\n", "RoseTransport", "init");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to get chipID (ret: 0x%08x)\n", v3, v4, v5);
}

uint64_t RoseTransport::createRoseController(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to set log sink: 0x%x\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to set dispatch queue: 0x%x\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to register event callback: 0x%x\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to register crash callback: 0x%x\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create event syncher\n", "RoseTransport", "createRoseController");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create crash syncher\n", "RoseTransport", "createRoseController");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create dispatch queue\n", "RoseTransport", "createRoseController");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to query rose plugin interface\n", "RoseTransport", "createRoseController");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: creating rose plugin interface failed: 0x%x\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to get rose driver: 0x%x\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to find rose service\n", "RoseTransport", "createRoseController");
}

uint64_t RoseTransport::getPowerState(const void *a1)
{
  CFRelease(a1);
  LogInstance = ACFULogging::getLogInstance(v1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: getDebugInfo failed\n", "RoseTransport", "getPowerState");
}

uint64_t RoseTransport::getBootNonceHash(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to get boot nonce hash 1st time (ret: 0x%08x)\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: bad boot nonce hash size 1st time: %zu\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to generate a boot nonce (ret: 0x%08x)\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to get boot nonce hash 2nd time (ret: 0x%08x)\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: bad boot nonce hash size 2nd time: %zu\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: boot nonce hash is all zero (%zu bytes) after successful nonce generation\n", v3, v4, v5);
}

uint64_t RoseTransport::setNonce(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: SetHostBootNonce failed with error (ret: 0x%08x)\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad parameter\n", "RoseTransport", "setNonce");
}

uint64_t RoseTransport::pushFirmware(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to set bootMode (ret: 0x%08x)\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Boot mode failed to update: expected 0x%x, found 0x%x\n", "RoseTransport", "pushFirmware", 0, *a1);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: DownloadCustomFirmwareExt failed with error (ret: 0x%08x)\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: DownloadCustomFirmware failed with error (ret: 0x%08x)\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Manifest for firmware is missing!\n", "RoseTransport", "pushFirmware");
}

uint64_t RoseTransport::isCrashLogAvailable(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: error while trying to dequeue FirwmareCrashLogs (ret: 0x%8x)\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: invalid crashlog of size: %zu\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad parameter\n", "RoseTransport", "isCrashLogAvailable");
}

uint64_t RoseTransport::collectFirmwareLogs(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: pausing firmware logs failed (ret: 0x%08x)\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to dequeue firmware logs (ret: 0x%08x)\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: dequeued more logs than we have room for (%zu > %zu)\n", "RoseTransport", "collectFirmwareLogs", *a1, 0x400uLL);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate buffer for firmware logs\n", "RoseTransport", "collectFirmwareLogs");
}

uint64_t RoseTransport::logCrashLogReason(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Crash string section version mismatch. Expected: 0x%x Version in Crashlog: 0x%x\n", "RoseTransport", "logCrashLogReason", 257, *a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: crashlog section is too small. Section signature: 0x%x version: 0x%x size: %d\n", "RoseTransport", "logCrashLogReason", *a1, *(a1 + 2), *(a1 + 3));
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: crashLogSize is too small\n", "RoseTransport", "logCrashLogReason");
}

uint64_t RoseTransport::collectIOReport(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: group pruning failed\n", "RoseTransport", "collectIOReport");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create ioReport array\n", "RoseTransport", "collectIOReport");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: IOReportCreateSamples failed\n", "RoseTransport", "collectIOReport");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: Unexpected subscribed channel count: %d\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: IOReportCreateSubscription failed\n", "RoseTransport", "collectIOReport");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: IOReportCopyAllChannels failed\n", "RoseTransport", "collectIOReport");
}

uint64_t RoseTransport::getDebugInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to get debug info  (ret: 0x%08x)\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate dict\n", "RoseTransport", "getDebugInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: no diagnostics object provided\n", "RoseTransport", "getDebugInfo");
}

uint64_t RoseTransport::getRoseDebugInfoDict(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: error getting debug info: 0x%x\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid debugInfoDict\n", "RoseTransport", "getRoseDebugInfoDict");
}

uint64_t RoseTransport::sendRoseCommand(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to perform command with timeout: 0x%08x\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to perform command: 0x%08x\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad parameter\n", "RoseTransport", "sendRoseCommand");
}

uint64_t RoseTransport::parsePingResponse(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to parse HSI2 ping info\n", "RoseTransport", "parsePingResponse");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: response size %zu too small for HSI2\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to parse HSI1 ping info\n", "RoseTransport", "parsePingResponse");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: response size %zu too small for HSI1\n", v3, v4, v5);
}

void RoseTransport::sendCalibration()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    unk_2A18BBCE0 = 0;
    xmmword_2A18BBCD0 = 0uLL;
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A18BBCD0, &dword_2980C0000);

    __cxa_guard_release(_MergedGlobals);
  }
}

{
  dispatch_once(&RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::only_once, &__block_literal_global_1);
}

uint64_t RoseTransport::runCertification(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: unsupported sikblobtype: %u\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to set bootNonce\n", "RoseTransport", "runCertification");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to set bootMode (ret: 0x%08x)\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: DownloadCustomFirmwareExt failed with error (ret: 0x%08x)\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: DownloadCustomFirmware failed with error (ret: 0x%08x)\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to collect the SiK CSR (ret: 0x%08x)\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create data payload (ret: 0x%08x)\n", "RoseTransport", "runCertification", 0);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: firmware does not have bootNonce available\n", "RoseTransport", "runCertification");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Manifest for firmware is missing!\n", "RoseTransport", "runCertification");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Firmware to push is missing!\n", "RoseTransport", "runCertification");
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned long long>(uint64_t a1, void *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 8)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

uint64_t RoseBooterAllocate_cold_3(RoseBooter *a1)
{
  RoseBooter::~RoseBooter(a1);
  operator delete(v1);
  LogInstance = ACFULogging::getLogInstance(v2);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: booter init failed\n", "ACFUBootInterface", "RoseBooterAllocate");
}

uint64_t ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create firmware path\n", "ACFUBootInterface", "copyFWPath");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get firmware path\n", "ACFUBootInterface", "copyFWPath");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to determine if FW exists due to bad input parameter\n", "ACFUBootInterface", "copyFWPath");
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t RTKitFirmware::create()
{
  return MEMORY[0x2A1C5F128]();
}

{
  return MEMORY[0x2A1C5F130]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}