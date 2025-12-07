BOOL IIOMetadataUpdater::modifyHEIC(IIOImageSource **this, CGImageMetadata *a2, __CFError **a3)
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  IIO_LoadHEIFSymbols();
  v6 = IIOImageSource::imageRead(this[1]);
  v7 = IIOImageRead::copyData(v6);
  if (!v7)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  IIODictionary::IIODictionary(&v26);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  IIODictionary::IIODictionary(&v23);
  v9 = gFunc_CMPhotoCompressionSessionCreate(*MEMORY[0x1E695E480], v27, &v29);
  if (v9)
  {
    IIOCMErrorString(v9);
    v17 = "*** ERROR: CMPhotoCompressionSessionCreate returned %d (%s)\n";
    v18 = 1430;
LABEL_12:
    _cg_jpeg_mem_term("modifyHEIC", v18, v17);
    goto LABEL_14;
  }

  IIONumber::IIONumber(v21, 1);
  IIODictionary::setObjectForKey(&v23, value, *gIIO_kCMPhotoCompressionContainerOption_BackingType);
  IIONumber::~IIONumber(v21);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZN18IIOMetadataUpdater10modifyHEICEP15CGImageMetadataPP9__CFError_block_invoke;
  v20[3] = &__block_descriptor_tmp_78;
  v20[4] = this;
  v20[5] = a3;
  v20[6] = a2;
  v10 = gFunc_CMPhotoCompressionSessionOpenExistingContainerForModification(v29, v24, v8, &v31, v20);
  if (v10)
  {
    IIOCMErrorString(v10);
    v17 = "*** ERROR: CMPhotoCompressionSessionOpenExistingContainerForModification returned %d (%s)\n";
    v18 = 1506;
    goto LABEL_12;
  }

  v11 = gFunc_CMPhotoCompressionSessionCloseContainerAndCopyBacking(v29, 0, 0, &v30);
  if (v11)
  {
    IIOCMErrorString(v11);
    v17 = "*** ERROR: CMPhotoCompressionSessionCloseContainerAndCopyBacking returned %d (%s)\n";
    v18 = 1510;
    goto LABEL_12;
  }

  if (v30)
  {
    v12 = IIOImageSource::count(this[2]);
    BytePtr = CFDataGetBytePtr(v30);
    Length = CFDataGetLength(v30);
    v15 = IIOImageWriteSession::putBytes(v12, BytePtr, Length);
    if (v15 == CFDataGetLength(v30))
    {
      v16 = IIOImageWriteSession::finalize(v12, 0) == 0;
      goto LABEL_15;
    }
  }

  else
  {
    LogError("modifyHEIC", 1511, "*** ERROR: CMPhotoCompressionSessionCloseContainerAndCopyBacking returned noErr, but data is NULL\n");
  }

LABEL_14:
  v16 = 0;
LABEL_15:
  IIODictionary::~IIODictionary(&v23);
  IIODictionary::~IIODictionary(&v26);
  if (v29)
  {
    CFRelease(v29);
  }

LABEL_17:
  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v16;
}

void sub_1860D0408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v21 - 96));
  _Unwind_Resume(a1);
}

uint64_t IIOMetadataUpdater::modifyTIFF(IIODictionary **this, CGImageMetadata *a2, __CFError **a3)
{
  IIO_InitializeXMPToolkit();
  if (*(this + 39) == 1)
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(this[3], @"kCGImageDestinationOrientation");
    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithOrientation(this, Uint32ForKey, v8);
  }

  else if (*(this + 38) == 1)
  {
    ObjectForKey = IIODictionary::getObjectForKey(this[3], @"kCGImageDestinationDateTime");
    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithDateTime(this, ObjectForKey, a3);
  }

  else
  {
    v11 = 0;
    v12 = 1;
    if (!a2 || (*(this + 33) & 1) == 0)
    {
      goto LABEL_13;
    }

    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithMetadata(this, a2, v6);
  }

  v11 = MetadataWithOrientation;
  if (MetadataWithOrientation)
  {
    TagWithPath = CGImageMetadataGetTagWithPath(MetadataWithOrientation, 0, @"photoshop:DateCreated");
    if (TagWithPath)
    {
      CGImageMetadataSetTagWithPath(v11, 0, @"exif:DateTimeOriginal", TagWithPath);
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

LABEL_13:
  v14 = IIOImageSource::imageRead(this[1]);
  v15 = IIOImageRead::copyData(v14);
  if (v15)
  {
    CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, v15);
    Default_CTor();
  }

  IIO_TerminateXMPToolkit();
  if ((v12 & 1) == 0)
  {
    CFRelease(v11);
  }

  return 0;
}

CFTypeRef IIOMetadataUpdater::createModifiedJPEGWithOrientation(IIOMetadataUpdater *this, _JPEGFile **a2, int a3, __CFError **a4)
{
  result = _JPEGFile::findApp1ExifMarker(a2[10]);
  if (result)
  {
    if ((a3 - 9) < 0xFFFFFFF8)
    {
      v7 = 1;
    }

    else
    {
      v7 = a3;
    }

    (*(*result + 152))(result, v7);

    return _JPEGWriter::createData(a2);
  }

  return result;
}

CFTypeRef IIOMetadataUpdater::createModifiedJPEGWithDateTime(IIOMetadataUpdater *this, _JPEGFile **a2, const __CFString *cf, __CFError **a4)
{
  v7 = CFGetTypeID(cf);
  if (v7 == CFDateGetTypeID())
  {
    v42 = a4;
    v43 = a2;
    v8 = CFLocaleCopyCurrent();
    v9 = *MEMORY[0x1E695E480];
    v10 = CFDateFormatterCreate(*MEMORY[0x1E695E480], v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v10, @"yyyy-MM-dd'T'HH:mm:ss.SSSZZZZ");
    v11 = CFDateFormatterCreate(v9, v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v11, @"yyyy:MM:dd HH:mm:ss");
    v12 = CFDateFormatterCreate(v9, v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v12, @"SSS");
    v13 = CFDateFormatterCreate(v9, v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v13, @"yyyyMMdd");
    v14 = CFDateFormatterCreate(v9, v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v14, @"HHmmssZZZ");
    StringWithDate = CFDateFormatterCreateStringWithDate(v9, v11, cf);
    v45 = CFDateFormatterCreateStringWithDate(v9, v12, cf);
    v15 = CFDateFormatterCreateStringWithDate(v9, v10, cf);
    if (v15)
    {
      v16 = v15;
      MutableCopy = CFStringCreateMutableCopy(v9, 32, v15);
      if (MutableCopy)
      {
        v46.length = CFStringGetLength(v16);
        v46.location = 0;
        CFStringFindAndReplace(MutableCopy, @"GMT", &stru_1EF50EA10, v46, 0);
      }

      CFRelease(v16);
    }

    else
    {
      MutableCopy = 0;
    }

    IPTCDateStringWithXMPDateTimeString = CFDateFormatterCreateStringWithDate(v9, v13, cf);
    IPTCTimeStringWithXMPDateTimeString = CFDateFormatterCreateStringWithDate(v9, v14, cf);
    CFRelease(v8);
    CFRelease(v10);
    CFRelease(v11);
    CFRelease(v12);
    CFRelease(v13);
    CFRelease(v14);
    a2 = v43;
    EXIFDataTimeStringWithXMPDateTimeString = StringWithDate;
    SubsecTimeFromXMPDateTime = v45;
    a4 = v42;
    if (StringWithDate)
    {
LABEL_18:
      if (EXIFDataTimeStringWithXMPDateTimeString && (App1ExifMarker = _JPEGFile::findApp1ExifMarker(a2[10])) != 0)
      {
        v32 = App1ExifMarker;
        v33 = 1;
        v34 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
        if (v34)
        {
          CFStringGetCString(EXIFDataTimeStringWithXMPDateTimeString, v34, 20, 0x600u);
          (*(*v32 + 136))(v32, v34);
          if (SubsecTimeFromXMPDateTime && CFStringCompare(SubsecTimeFromXMPDateTime, @"000", 0))
          {
            Length = CFStringGetLength(SubsecTimeFromXMPDateTime);
            v33 = 1;
            v36 = malloc_type_calloc(1uLL, Length, 0x100004077774924uLL);
            if (!v36)
            {
              if (!MutableCopy)
              {
                goto LABEL_33;
              }

              goto LABEL_31;
            }

            v37 = CFStringGetLength(SubsecTimeFromXMPDateTime);
            CFStringGetCString(SubsecTimeFromXMPDateTime, v36, v37 + 1, 0x600u);
            (*(*v32 + 144))(v32, v36);
          }

          else
          {
            v36 = 0;
          }

          v33 = 1;
          if (!MutableCopy)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v36 = 0;
          if (!MutableCopy)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v36 = 0;
        v34 = 0;
        v33 = 0;
        if (!MutableCopy)
        {
          goto LABEL_33;
        }
      }

LABEL_31:
      v38 = _JPEGFile::copyXMPProperties(a2[10]);
      if (v38)
      {
        v39 = v38;
        CGImageMetadataSetValueWithPath(v38, 0, @"photoshop:DateCreated", MutableCopy);
        CGImageMetadataSetValueWithPath(v39, 0, @"xmp:CreateDate", MutableCopy);
        CGImageMetadataSetValueWithPath(v39, 0, @"xmp:ModifyDate", MutableCopy);
        _JPEGFile::setXMPProperties(a2[10], v39);
        CFRelease(v39);
        v33 = 1;
      }

LABEL_33:
      if (IPTCDateStringWithXMPDateTimeString | IPTCTimeStringWithXMPDateTimeString)
      {
        _JPEGFile::copyIPTCProperties(a2[10]);
      }

      if (v33)
      {
        Data = _JPEGWriter::createData(a2);
        if (!v34)
        {
LABEL_40:
          if (v36)
          {
            free(v36);
          }

          if (EXIFDataTimeStringWithXMPDateTimeString)
          {
            CFRelease(EXIFDataTimeStringWithXMPDateTimeString);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (SubsecTimeFromXMPDateTime)
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

      else
      {
        Data = 0;
        if (!v34)
        {
          goto LABEL_40;
        }
      }

      free(v34);
      goto LABEL_40;
    }
  }

  else
  {
    v18 = CFGetTypeID(cf);
    if (v18 == CFStringGetTypeID())
    {
      EXIFDataTimeStringWithXMPDateTimeString = CreateEXIFDataTimeStringWithXMPDateTimeString(cf);
      SubsecTimeFromXMPDateTime = CreateSubsecTimeFromXMPDateTime(cf);
      if (SubsecTimeFromXMPDateTime)
      {
        XMPDateFromXMPDateTimeAndSubsecTime = CreateXMPDateFromXMPDateTimeAndSubsecTime(cf, SubsecTimeFromXMPDateTime);
      }

      else
      {
        XMPDateFromXMPDateTimeAndSubsecTime = CreateXMPDateTimeWithXMPOrExifDateTimeString(cf);
      }

      MutableCopy = XMPDateFromXMPDateTimeAndSubsecTime;
      IPTCDateStringWithXMPDateTimeString = CreateIPTCDateStringWithXMPDateTimeString(cf, v22, v23, v24, v25, v26, v27, v28);
      IPTCTimeStringWithXMPDateTimeString = CreateIPTCTimeStringWithXMPDateTimeString(cf);
      if (EXIFDataTimeStringWithXMPDateTimeString)
      {
        goto LABEL_18;
      }
    }

    else
    {
      SubsecTimeFromXMPDateTime = 0;
      IPTCTimeStringWithXMPDateTimeString = 0;
      IPTCDateStringWithXMPDateTimeString = 0;
      MutableCopy = 0;
      EXIFDataTimeStringWithXMPDateTimeString = 0;
    }
  }

  if (MutableCopy || IPTCDateStringWithXMPDateTimeString || IPTCTimeStringWithXMPDateTimeString)
  {
    goto LABEL_18;
  }

  IIOMetadataUpdater::createModifiedJPEGWithDateTime(a4);
  Data = 0;
  if (SubsecTimeFromXMPDateTime)
  {
LABEL_47:
    CFRelease(SubsecTimeFromXMPDateTime);
  }

LABEL_48:
  if (IPTCDateStringWithXMPDateTimeString)
  {
    CFRelease(IPTCDateStringWithXMPDateTimeString);
  }

  if (IPTCTimeStringWithXMPDateTimeString)
  {
    CFRelease(IPTCTimeStringWithXMPDateTimeString);
  }

  return Data;
}

CFTypeRef IIOMetadataUpdater::createModifiedJPEGWithMetadata(IIOMetadataUpdater *this, _JPEGWriter *a2, CFTypeRef cf, __CFError **a4)
{
  v6 = ((*(*(a2 + 10) + 80) - *(*(a2 + 10) + 72)) >> 3);
  if (cf)
  {
    v7 = CFRetain(cf);
    if (v6)
    {
LABEL_3:
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *MEMORY[0x1E695E480];
      while (1)
      {
        v12 = _JPEGFile::appMarkerAtIndex(*(a2 + 10), v10);
        v13 = v12;
        if (*(v12 + 68) == 1)
        {
          v14 = *(v12 + 120);
          if (v14)
          {
            v15 = *(v12 + 128);
            if (v15 && v8 == 0)
            {
              v8 = CFDataCreate(v11, v14, v15);
            }
          }
        }

        else if ((*(v12 + 69) & 1) == 0 && *(v12 + 70) != 1)
        {
          v9 |= *(v12 + 56) == -19;
          ++v10;
          goto LABEL_15;
        }

        _JPEGFile::removeAppMarker(*(a2 + 10), v13);
        --v6;
        (*(*v13 + 8))(v13);
LABEL_15:
        if (v10 >= v6)
        {
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
    v7 = 0;
    if (((*(*(a2 + 10) + 80) - *(*(a2 + 10) + 72)) >> 3))
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v8 = 0;
LABEL_20:
  v17 = CGImagePropertiesCreateFromMetadata(v7);
  if (!v17)
  {
    operator new();
  }

  v28 = 0;
  if (CreateExifBufferFromPropertiesJPEG(v17, 0, 0, 0, v8, @"public.jpeg", &v28))
  {
    v18 = v28 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    operator new();
  }

  if (v9)
  {
    AppMarker = _JPEGFile::findAppMarker(*(a2 + 10), 65517);
    ObjectForKey = IIODictionary::getObjectForKey(v17, @"{IPTC}");
    if (ObjectForKey)
    {
      memset(v27, 0, sizeof(v27));
      IIODictionary::IIODictionary(v27, ObjectForKey);
      v21 = SizeOfIPTCData(v27);
      if (v21)
      {
        Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v21);
        v23 = Mutable;
        if (Mutable)
        {
          CFDataSetLength(Mutable, v21);
          MutableBytePtr = CFDataGetMutableBytePtr(v23);
          WriteIPTCData(v27, MutableBytePtr);
          _APP13::setIPTCData(AppMarker, v23);
          CFRelease(v23);
        }
      }

      IIODictionary::~IIODictionary(v27);
    }

    else
    {
      _APP13::setIPTCData(AppMarker, 0);
    }
  }

  if ((*(this + 36) & 1) == 0)
  {
    _JPEGFile::setXMPProperties(*(a2 + 10), v7);
  }

  Data = _JPEGWriter::createData(a2);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  (*(*v17 + 8))(v17);
  return Data;
}

uint64_t IIOMetadataUpdater::fastUpdateExifOrientationJPEG(IIOMetadataUpdater *this, CFDataRef theData, unsigned int a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  IIOScanner::IIOScanner(&v22, BytePtr, Length, 0);
  v21 = 0;
  v20 = 0;
  if (IIOScanner::getVal16(&v22) != 65496)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  while (1)
  {
    Val16 = IIOScanner::getVal16(&v22);
    if (Val16 != 65505)
    {
      v8 = IIOScanner::getVal16(&v22);
      goto LABEL_6;
    }

    v8 = IIOScanner::getVal16(&v22);
    if (!strncmp(&BytePtr[*(&v23 + 1)], "Exif", 4uLL))
    {
      break;
    }

LABEL_6:
    IIOScanner::skip(&v22, v8 - 2);
    if (Val16 == 65499)
    {
      goto LABEL_7;
    }
  }

  IIOScanner::skip(&v22, 6uLL);
  v11 = *(&v23 + 1);
  v12 = IIOScanner::getVal16(&v22);
  if (v12 == 18761)
  {
    IIOScanner::setEndianness(&v22, 1);
  }

  IIOScanner::skip(&v22, 2uLL);
  Val32 = IIOScanner::getVal32(&v22);
  IIOScanner::seek(&v22, v11 + Val32);
  v14 = IIOScanner::getVal16(&v22);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = 0;
  while (1)
  {
    IIOScanner::getTiffTag(&v22, &v20);
    v16 = v20 == 274 && WORD1(v20) == 3;
    if (v16 && HIDWORD(v20) == 1)
    {
      break;
    }

    if (v14 <= ++v15)
    {
      goto LABEL_7;
    }
  }

  v18 = __rev16(a3);
  if (BYTE4(v26))
  {
    v19 = a3;
  }

  else
  {
    v19 = v18;
  }

  *&BytePtr[*(&v23 + 1) - 4] = v19;
  v9 = 1;
LABEL_8:
  IIOScanner::~IIOScanner(&v22);
  return v9;
}

void sub_1860D145C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

__CFData *IIOMetadataUpdater::createExifChunkData(IIOMetadataUpdater *this, IIODictionary *a2, uint64_t a3, uint64_t a4)
{
  length = 0;
  ExifBufferFromPropertiesJPEG = CreateExifBufferFromPropertiesJPEG(a2, a3, a4, 0, 0, @"public.jpeg", &length);
  if (!ExifBufferFromPropertiesJPEG)
  {
    return 0;
  }

  v5 = ExifBufferFromPropertiesJPEG;
  if (length < 0x1F)
  {
    v7 = 0;
  }

  else
  {
    length -= 2;
    *(ExifBufferFromPropertiesJPEG + 2) = 1716082789;
    *bytes = bswap32(length - 4);
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    v7 = Mutable;
    if (Mutable)
    {
      CFDataAppendBytes(Mutable, bytes, 4);
      CFDataAppendBytes(v7, v5 + 2, length);
      v8 = crc32(0, 0, 0);
      v10 = bswap32(crc32(v8, v5 + 2, length));
      CFDataAppendBytes(v7, &v10, 4);
    }
  }

  free(v5);
  return v7;
}

uint64_t IIOMetadataUpdater::updatePNGExifData(IIOMetadataUpdater *this, CFDataRef theData, IIODictionary *a3, int a4, char a5)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2000000000;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v18 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!a4 || (a5 & 1) != 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___ZN18IIOMetadataUpdater17updatePNGExifDataEP8__CFDataP13IIODictionarybb_block_invoke;
    v14[3] = &unk_1E6F41DA8;
    v14[4] = v19;
    v14[5] = v17;
    v15 = a4;
    v16 = a5;
    v14[8] = BytePtr;
    v14[9] = theData;
    v14[6] = &v21;
    v14[7] = this;
    v14[10] = a3;
    EnumeratePNGUsingBlock(BytePtr, Length, v14);
    v12 = *(v22 + 24);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);
  return v12 & 1;
}

void sub_1860D16F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

unsigned __int8 *EnumeratePNGUsingBlock(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v9 = 0;
  if (*result == 137)
  {
    v3 = result;
    if (result[1] == 80 && result[2] == 78 && result[3] == 71)
    {
      v5 = 8;
      v6 = a2;
      do
      {
        while (1)
        {
          v8[1] = v5;
          v8[0] = vrev64_s32(vrev32_s8(*&v3[v5]));
          if (!a3)
          {
            break;
          }

          result = (*(a3 + 16))(a3, v8, &v9);
          if (result != -1)
          {
            break;
          }

          if (LODWORD(v8[0]) == 1229278788)
          {
            return result;
          }
        }

        if (v9)
        {
          break;
        }

        v5 += HIDWORD(v8[0]) + 12;
      }

      while (v5 <= v6 && LODWORD(v8[0]) != 1229278788);
    }
  }

  return result;
}

uint64_t ___ZN18IIOMetadataUpdater17updatePNGExifDataEP8__CFDataP13IIODictionarybb_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = 0;
  v7 = *(a1 + 56);
  v8 = *a2;
  if (*a2 > 1700284741)
  {
    if (v8 == 1700284742)
    {
      v31.location = *(a2 + 8);
      v31.length = (*(a2 + 4) + 12);
      CFDataReplaceBytes(*(a1 + 72), v31, 0, 0);
      return 0xFFFFFFFFLL;
    }

    if (v8 == 1700284774)
    {
      v14 = *(a2 + 8);
      v15 = *(a2 + 4);
      MetadataFromDatabuffer = CreateMetadataFromDatabuffer((*(a1 + 64) + v14 + 8), (v15 - 8), 0);
      if (MetadataFromDatabuffer)
      {
        v17 = MetadataFromDatabuffer;
        v32.length = (v15 + 12);
        v32.location = v14;
        CFDataReplaceBytes(*(a1 + 72), v32, 0, 0);
        ObjectForKey = IIODictionary::getObjectForKey(*(a1 + 80), @"kCGImageDestinationMetadata");
        if (ObjectForKey)
        {
          CGImageMetadataMerge(v17, ObjectForKey, 0);
        }

        v19 = CGImagePropertiesCreateFromMetadata(v17);
        if (v19)
        {
          v20 = v19;
          if (IIODictionary::containsKey(*(v7 + 24), @"kCGImageDestinationOrientation"))
          {
            Uint32ForKey = IIODictionary::getUint32ForKey(*(v7 + 24), @"kCGImageDestinationOrientation");
            IIONumber::IIONumber(v28, Uint32ForKey);
            IIODictionary::setObjectForKey(v20, v29, @"Orientation");
            IIONumber::~IIONumber(v28);
          }

          Count = IIODictionary::getCount(v20);
          if (Count)
          {
            ExifChunkData = IIOMetadataUpdater::createExifChunkData(Count, v20, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
            BytePtr = CFDataGetBytePtr(ExifChunkData);
            Length = CFDataGetLength(ExifChunkData);
            v33.location = *(a2 + 8);
            v33.length = 0;
            CFDataReplaceBytes(*(a1 + 72), v33, BytePtr, Length);
            CFRelease(ExifChunkData);
            *(*(*(a1 + 48) + 8) + 24) = 1;
          }

          (*(*v20 + 8))(v20);
        }

        CFRelease(v17);
      }

      goto LABEL_28;
    }

    if (v8 != 1766084436)
    {
      return result;
    }

LABEL_10:
    if ((*(a1 + 88) & 1) == 0 && (*(a1 + 89) & 1) == 0)
    {
      v28[0] = 0;
      v28[1] = 0;
      v29 = 0;
      IIODictionary::IIODictionary(v28);
      if (IIODictionary::containsKey(*(v7 + 24), @"kCGImageDestinationOrientation"))
      {
        v9 = IIODictionary::getUint32ForKey(*(v7 + 24), @"kCGImageDestinationOrientation");
        IIONumber::IIONumber(v26, v9);
        IIODictionary::setObjectForKey(v28, value, @"Orientation");
        IIONumber::~IIONumber(v26);
      }

      v10 = IIODictionary::getCount(v28);
      if (v10)
      {
        v11 = IIOMetadataUpdater::createExifChunkData(v10, v28, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
        v12 = CFDataGetBytePtr(v11);
        v13 = CFDataGetLength(v11);
        v30.location = *(a2 + 8);
        v30.length = 0;
        CFDataReplaceBytes(*(a1 + 72), v30, v12, v13);
        CFRelease(v11);
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      IIODictionary::~IIODictionary(v28);
    }

LABEL_28:
    result = 0;
    *a3 = 1;
    return result;
  }

  if (v8 == 1229209940)
  {
    goto LABEL_10;
  }

  if (v8 == 1229472850)
  {
    result = 0;
    if (*(a2 + 4) >= 0xDu)
    {
      *(*(*(a1 + 32) + 8) + 24) = *(*(a1 + 64) + *(a2 + 8) + 8);
      *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 64) + *(a2 + 8) + 12);
      *(*(*(a1 + 32) + 8) + 24) = bswap32(*(*(*(a1 + 32) + 8) + 24));
      *(*(*(a1 + 40) + 8) + 24) = bswap32(*(*(*(a1 + 40) + 8) + 24));
    }
  }

  return result;
}

void sub_1860D1BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

BOOL IIOMetadataUpdater::modifyXMPOnlyFile(IIODictionary **this, __CFError **a2, CGImageMetadata *a3, int a4)
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  IIO_InitializeXMPToolkit();
  if (*(this + 39) == 1)
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(this[3], @"kCGImageDestinationOrientation");
    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithOrientation(this, Uint32ForKey, v10);
  }

  else if (*(this + 38) == 1)
  {
    ObjectForKey = IIODictionary::getObjectForKey(this[3], @"kCGImageDestinationDateTime");
    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithDateTime(this, ObjectForKey, a2);
  }

  else
  {
    if (*(this + 33) != 1)
    {
      v14 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithMetadata(this, a3, v8);
  }

  v13 = MetadataWithOrientation;
  v14 = MetadataWithOrientation != 0;
  if (a4 == 1347634208 && MetadataWithOrientation)
  {
    TagWithPath = CGImageMetadataGetTagWithPath(MetadataWithOrientation, 0, @"photoshop:DateCreated");
    if (TagWithPath)
    {
      CGImageMetadataSetTagWithPath(v13, 0, @"exif:DateTimeOriginal", TagWithPath);
    }

    v14 = 1;
  }

LABEL_13:
  v16 = IIOImageSource::imageRead(this[1]);
  v17 = IIOImageRead::copyData(v16);
  if (!v17)
  {
    v23 = 0;
    goto LABEL_29;
  }

  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, v17);
  if (a4 == 1347307296)
  {
    BytePtr = CFDataGetBytePtr(v17);
    Length = CFDataGetLength(v17);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v31[2] = ___ZN18IIOMetadataUpdater17modifyXMPOnlyFileEPP9__CFErrorP15CGImageMetadataj_block_invoke;
    v31[3] = &unk_1E6F41DD0;
    v31[4] = &v36;
    v31[5] = &v32;
    v31[6] = BytePtr;
    EnumeratePNGUsingBlock(BytePtr, Length, v31);
    v21 = *(v33 + 24);
    v22 = *(v37 + 24);
    if ((v22 & v14 & 1) != 0 && (IIOMetadataUpdater::updatePNGExifData(this, MutableCopy, this[3], *(v33 + 24), 1) & 1) == 0)
    {
      _cg_jpeg_mem_term("modifyXMPOnlyFile", 1319, "*** ERROR: UpdatePNGExifData did not update Exif\n");
    }

    else if (((v21 | v22 ^ 1) & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_23:
    v29 = &unk_1EF4D90A0;
    v30 = 0;
    Default_CTor();
  }

  if (a4 == 1347634208)
  {
    goto LABEL_23;
  }

LABEL_24:
  v24 = IIOImageSource::count(this[2]);
  v25 = CFDataGetBytePtr(MutableCopy);
  v26 = CFDataGetLength(MutableCopy);
  v27 = IIOImageWriteSession::putBytes(v24, v25, v26);
  if (v27 != CFDataGetLength(MutableCopy))
  {
    v23 = 0;
    if (!MutableCopy)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = IIOImageWriteSession::finalize(v24, 0) == 0;
  if (MutableCopy)
  {
LABEL_28:
    CFRelease(MutableCopy);
  }

LABEL_29:
  IIO_TerminateXMPToolkit();
  if (v17)
  {
    CFRelease(v17);
  }

  if (v14)
  {
    CFRelease(v13);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  return v23;
}

void sub_1860D2188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ImageIO_XMP_IO::~ImageIO_XMP_IO(va);
  JUMPOUT(0x1860D2140);
}

void sub_1860D21C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN18IIOMetadataUpdater17modifyXMPOnlyFileEPP9__CFErrorP15CGImageMetadataj_block_invoke(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*a2 == 1700284742 || v3 == 1700284774)
  {
    v5 = 32;
LABEL_7:
    *(*(*(a1 + v5) + 8) + 24) = 1;
    return 0;
  }

  if (v3 == 1767135348 && a2[1] >= 0x1E && !strncmp((*(a1 + 48) + *(a2 + 1) + 8), "XML:com.adobe.xmp", 0x11uLL))
  {
    v5 = 40;
    goto LABEL_7;
  }

  return 0;
}

uint64_t ___ZN18IIOMetadataUpdater10modifyHEICEP15CGImageMetadataPP9__CFError_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = *(a1 + 32);
  memset(v9, 0, sizeof(v9));
  Value = CFDictionaryGetValue(theDict, @"ImageList");
  IIOArray::IIOArray(v9, Value);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN18IIOMetadataUpdater10modifyHEICEP15CGImageMetadataPP9__CFError_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_76_0;
  v7[4] = v3;
  v8 = *(a1 + 40);
  IIOArray::enumerate(v5, v7);
  IIOArray::~IIOArray(v9);
  return 0;
}

void ___ZN18IIOMetadataUpdater10modifyHEICEP15CGImageMetadataPP9__CFError_block_invoke_2(uint64_t a1, __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  memset(v17, 0, sizeof(v17));
  IIODictionary::IIODictionary(v17, a2);
  if (*(v3 + 39) != 1)
  {
    if (*(v3 + 38) == 1)
    {
      ObjectForKey = IIODictionary::getObjectForKey(*(v3 + 24), @"kCGImageDestinationDateTime");
      MetadataWithDateTime = IIOMetadataUpdater::createMetadataWithDateTime(v3, ObjectForKey, *(a1 + 40));
    }

    else
    {
      if ((*(v3 + 34) & 1) == 0 && *(v3 + 35) != 1)
      {
        MetadataWithOrientation = 0;
        goto LABEL_14;
      }

      MetadataWithDateTime = IIOMetadataUpdater::createMetadataWithMetadata(v3, *(a1 + 48), v4);
    }

    MetadataWithOrientation = MetadataWithDateTime;
    if (MetadataWithDateTime)
    {
      goto LABEL_10;
    }

LABEL_14:
    v11 = 1;
    goto LABEL_15;
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(*(v3 + 24), @"kCGImageDestinationOrientation");
  IIONumber::IIONumber(&v14, Uint32ForKey);
  IIODictionary::setObjectForKey(v17, &v14, *gIIO_kCMPhotoCompressionContainerDescription_Orientation);
  IIONumber::~IIONumber(&v14);
  MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithOrientation(v3, Uint32ForKey, v6);
  v14 = 0;
  v15 = 0;
  value = 0;
  IIONumber::IIONumber(&v14, Uint32ForKey);
  IIODictionary::setObjectForKey(v17, value, @"Orientation");
  IIODictionary::setObjectForKeyGroup(v17, value, @"Orientation", @"{Exif}");
  IIONumber::~IIONumber(&v14);
  if (!MetadataWithOrientation)
  {
    goto LABEL_14;
  }

LABEL_10:
  TagWithPath = CGImageMetadataGetTagWithPath(MetadataWithOrientation, 0, @"photoshop:DateCreated");
  if (TagWithPath)
  {
    CGImageMetadataSetTagWithPath(MetadataWithOrientation, 0, @"exif:DateTimeOriginal", TagWithPath);
  }

  v11 = 0;
LABEL_15:
  XMPWithEXIFFiltered = CGImageMetadataCreateXMPWithEXIFFiltered(MetadataWithOrientation);
  if (XMPWithEXIFFiltered)
  {
    v14 = 0;
    v15 = 0;
    value = 0;
    IIOArray::IIOArray(&v14);
    IIOArray::addObject(&v14, XMPWithEXIFFiltered);
    IIODictionary::setObjectForKey(v17, v15, *gIIO_kCMPhotoCompressionContainerDescription_XMPMetadata);
    CFRelease(XMPWithEXIFFiltered);
    IIOArray::~IIOArray(&v14);
  }

  if ((*(v3 + 35) & 1) != 0 || (*(v3 + 36) & 1) != 0 || *(v3 + 37) == 1)
  {
    EXIFData = CGImageMetadataCreateEXIFData(MetadataWithOrientation);
    if (EXIFData)
    {
      v14 = 0;
      v15 = 0;
      value = 0;
      IIOArray::IIOArray(&v14);
      IIOArray::addObject(&v14, EXIFData);
      IIODictionary::setObjectForKey(v17, v15, *gIIO_kCMPhotoCompressionContainerDescription_EXIFMetadata);
      CFRelease(EXIFData);
      IIOArray::~IIOArray(&v14);
    }
  }

  if ((v11 & 1) == 0)
  {
    CFRelease(MetadataWithOrientation);
  }

  IIODictionary::~IIODictionary(v17);
}

void sub_1860D25D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIO_Writer::addImageWriteFormats(IIO_Writer *this, CFMutableArrayRef theArray)
{
  v4 = *(this + 10);
  if (v4)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCanRGB");
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  CFArrayAppendValue(theArray, @"kCGImageDestinationCanCMYK");
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCanGray");
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCanLab");
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCanRGBIdx");
  if ((v4 & 0x40000) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCanICC");
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCan1BPS");
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCan2BPS");
  if ((v4 & 0x400) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_31:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCan4BPS");
  if ((v4 & 0x800) != 0)
  {
LABEL_11:
    CFArrayAppendValue(theArray, @"kCGImageDestinationCan8BPS");
  }

LABEL_12:
  if ((v4 & 0x5000) != 0)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCan16BPS");
  }

  if ((v4 & 0x10000) != 0)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCan16fBPS");
  }

  if ((v4 & 0xA000) != 0)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCan32fBPS");
  }

  if ((v4 & 0x1E000000) != 0)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCanAlpha");
  }

  if (*(this + 4) == -1)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCanMultiPage");
    if ((v4 & 0x20000) == 0)
    {
      return;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    return;
  }

  CFArrayAppendValue(theArray, @"kCGImageDestinationCanWriteOrientation");
}

uint64_t _cg_png_read_frame_head(uint64_t result, _DWORD *a2)
{
  v2 = result;
  if ((*(result + 78) & 1) == 0)
  {
    v20 = "attempt to png_read_frame_head() but no acTL present";
    goto LABEL_20;
  }

  if (!*(result + 936))
  {
    return result;
  }

  png_read_reset(result);
  v4 = 0;
  *(v2 + 76) = vand_s8(*(v2 + 76), 0xFFFFFFBFFFFDFFFFLL);
  while (1)
  {
    chunk_header = _cg_png_read_chunk_header(v2);
    v11 = *(v2 + 312);
    if (v11 == 1717846356)
    {
      break;
    }

    if (v11 == 1717785676)
    {
      png_handle_fcTL(v2, a2, chunk_header);
      v4 = 1;
    }

    else if (v11 == 1229209940)
    {
      if (v4 || *(v2 + 936) >= 2u)
      {
        v20 = "png_read_frame_head(): out of place IDAT";
        goto LABEL_20;
      }

      v18 = v2;
      v17 = chunk_header;
LABEL_14:
      png_crc_finish(v18, v17, v5, v6, v7, v8, v9);
      v4 = 0;
    }

    else
    {
      png_warning(v2, "Skipped (ignored) a chunk between APNG chunks");
      png_crc_finish(v2, chunk_header, v12, v13, v14, v15, v16);
    }
  }

  result = png_ensure_sequence_number(v2, chunk_header);
  if (!v4 && *(v2 + 936) >= 2u)
  {
    v17 = (chunk_header - 4);
    v18 = v2;
    goto LABEL_14;
  }

  v19 = *(v2 + 76);
  if ((v19 & 0x20000) == 0)
  {
    v20 = "png_read_frame_head(): out of place fdAT";
LABEL_20:
    _cg_png_error(v2, v20);
  }

  *(v2 + 392) = chunk_header - 4;
  *(v2 + 76) = v19 | 4;
  return result;
}

uint64_t png_start_read_image(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 80) & 0x40) != 0)
    {
      return png_app_error(a1, "png_start_read_image/png_read_update_info: duplicate call");
    }

    else
    {
      return png_read_start_row(a1);
    }
  }

  return a1;
}

void _cg_png_read_row(uLong a1, char *a2, char *__dst, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 434);
  v8 = *(a1 + 304);
  v9 = v7 >= 8;
  v10 = v8 * (v7 >> 3);
  if (!v9)
  {
    v10 = (v8 * *(a1 + 434) + 7) >> 3;
  }

  if (__dst)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (!a2)
  {
    v10 = 0;
  }

  png_read_row_indexed(a1, a2, &a2[v10], __dst, &__dst[v11], a6, a7);
}

void png_read_image_sized(uLong result, char **a2, int a3)
{
  if (result)
  {
    v6 = *(result + 434);
    v7 = *(result + 304);
    v8 = v6 >= 8;
    v9 = v7 * (v6 >> 3);
    v10 = v8 ? v9 : (v7 * *(result + 434) + 7) >> 3;
    if ((*(result + 80) & 0x40) != 0)
    {
      if (*(result + 428) && (*(result + 88) & 2) == 0)
      {
        png_warning(result, "Interlace handling should be turned on when using png_read_image");
        *(result + 288) = *(result + 284);
      }

      v11 = _cg_png_set_interlace_handling(result);
    }

    else
    {
      v11 = _cg_png_set_interlace_handling(result);
      png_start_read_image(result);
    }

    if (v11 >= 1)
    {
      v14 = 0;
      while (!a3)
      {
LABEL_20:
        if (++v14 == v11)
        {
          return;
        }
      }

      v15 = a3;
      v16 = a2;
      while (v16 >= a2)
      {
        v17 = v16 + 1;
        if (v16 + 1 > &a2[a3])
        {
          break;
        }

        if (v16 > v17)
        {
          break;
        }

        v18 = &(*v16)[v10];
        if (*v16 > v18)
        {
          break;
        }

        png_read_row_indexed(result, *v16, v18, 0, 0, v12, v13);
        v16 = v17;
        if (!--v15)
        {
          goto LABEL_20;
        }
      }

      __break(0x5519u);
    }
  }
}

void png_read_image(uLong result, char **a2)
{
  v2 = *(result + 284);
  if (&a2[v2] < a2)
  {
    __break(0x5519u);
  }

  else
  {
    png_read_image_sized(result, a2, v2);
  }
}

void *RADReadPlugin::RADReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4DDD90;
  return result;
}

void RADReadPlugin::~RADReadPlugin(RADReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t RADReadPlugin::loadDataFromXPCObject(RADReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_rad", &length);
    if (length == 1)
    {
      v6 = data;
      result = 0;
      *(this + 464) = *v6;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t RADReadPlugin::saveDataToXPCObject(RADReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_rad", this + 464, 1uLL);
  }

  return v4;
}

uint64_t RADReadPlugin::initialize(IIODictionary **this, IIODictionary *a2)
{
  v18 = 0;
  BoolForKey = IIODictionary::getBoolForKey(this[6], @"kCGImageSourceShouldAllowFloat");
  if (*(this + 369) != 1 || (v4 = BoolForKey, (FILE = IIOImageReadSession::createFILE(this[3])) == 0))
  {
    v16 = 4294967246;
LABEL_17:
    kdebug_trace();
    return v16;
  }

  v6 = FILE;
  v7 = _cg_RadReadRGBSize(FILE, &v18 + 1, &v18);
  if (v7)
  {
    v16 = v7;
    fclose(v6);
    goto LABEL_17;
  }

  if (v4)
  {
    v8 = 32;
  }

  else
  {
    v8 = 16;
  }

  if (v4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *(this + 128) = v8;
  *(this + 373) = 1;
  *(this + 263) = v9;
  v11 = v18;
  v10 = HIDWORD(v18);
  *(this + 61) = HIDWORD(v18);
  *(this + 62) = v11;
  *(this + 129) = 4 * v8;
  if (v4)
  {
    v12 = 7;
  }

  else
  {
    v12 = 6;
  }

  v13 = v10 << v12;
  v14 = v13 | 7;
  v15 = v13 | 8;
  if (v14 >= 0)
  {
    v15 = v14;
  }

  *(this + 63) = v15 >> 3;
  *(this + 85) = 1380401696;
  this[20] = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  *(this + 262) = 5;
  *(this + 374) = 0;
  *(this + 372) = 1;
  this[49] = 1;
  *(this + 130) = *(this + 129) / *(this + 128);
  *(this + 204) = 1;
  fclose(v6);
  return 0;
}

uint64_t RADReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t IIO_Reader_PBM::testHeader(int a1, unsigned __int8 *a2, unsigned int a3)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  IIOScanner::IIOScanner(v13, a2, a3, 0);
  Val8 = IIOScanner::getVal8(v13);
  v4 = IIOScanner::getVal8(v13);
  v6 = v4;
  v8 = Val8 == 42 && v4 == 23;
  if (Val8 == 80 && ((v4 - 49) < 7 || v4 == 102 || v4 == 70))
  {
    *(&v14 + 1) = GetPBMLookupTable(v4, v5);
    v9 = IIOScanner::lookupVal8(v13);
    if ((v9 & 0xFFFFFFFE) == 0xFFFFFFFC)
    {
      while ((v9 & 0xFE) == 0xFC)
      {
        LOBYTE(v9) = IIOScanner::lookupVal8(v13);
      }

      while (v9 == 254)
      {
          ;
        }

        LOBYTE(v9) = IIOScanner::lookupVal8(v13);
      }

      v11 = (v9 & 0x80u) == 0 || v6 == 55;
      v8 |= v11;
    }
  }

  IIOScanner::~IIOScanner(v13);
  return v8 & 1;
}

void sub_1860D30D0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860D309CLL);
}

uint64_t IIO_Reader_PBM::compareOptions(IIO_Reader_PBM *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v16, 0, sizeof(v16));
  IIODictionary::IIODictionary(v16, a2);
  memset(v15, 0, sizeof(v15));
  IIODictionary::IIODictionary(v15, a3);
  Uint32ForKey = IIODictionary::getUint32ForKey(v16, @"kCGImageSourceSubsampleFactor");
  v6 = IIODictionary::getUint32ForKey(v15, @"kCGImageSourceSubsampleFactor");
  if (Uint32ForKey <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = Uint32ForKey;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v7 == v8)
  {
    Value = CFDictionaryGetValue(a2, @"kCGImageSourceDecodeRequest");
    v10 = CFDictionaryGetValue(a3, @"kCGImageSourceDecodeRequest");
    if (Value)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v13 = (Value | v10) == 0;
    }

    else
    {
      v13 = CFStringCompare(Value, v10, 0) == kCFCompareEqualTo;
    }

    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  IIODictionary::~IIODictionary(v15);
  IIODictionary::~IIODictionary(v16);
  return v12;
}

void sub_1860D3210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIODictionary::~IIODictionary(&a9);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t ImageIOPixelConverter::extractInfo(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 <= 0x18)
  {
    v2 = dword_18622774C[v1];
    v3 = byte_1862277B0[v1];
    v4 = byte_1862277C9[v1];
    *(this + 44) = v2;
    *(this + 41) = v3;
    *(this + 48) = v4;
  }

  v5 = *(this + 49);
  if (v5 <= 0x18)
  {
    v6 = byte_1862277B0[v5];
    v7 = byte_1862277C9[v5];
    *(this + 60) = dword_18622774C[v5];
    *(this + 56) = v6;
    *(this + 64) = v7;
  }

  *(this + 68) = 0;
  if (*(this + 41) == 3)
  {
    v8 = *(this + 64);
    if (*(this + 60) == 4)
    {
      v8 |= 2u;
    }

    if (*(this + 48))
    {
      v8 |= 4u;
    }

LABEL_10:
    *(this + 68) = v8 | 8;
    return this;
  }

  if (*(this + 56) == 4)
  {
    v8 = *(this + 64);
    if (v8 == 1)
    {
      *(this + 68) = 1;
    }

    else
    {
      v8 = 0;
    }

    if (*(this + 60) == 4)
    {
      v8 |= 2u;
      *(this + 68) = v8;
    }

    if (*(this + 48) == 1)
    {
      v8 |= 4u;
      *(this + 68) = v8;
    }

    if (*(this + 44) == 4)
    {
      goto LABEL_10;
    }
  }

  return this;
}

void ImageIOPixelConverter::~ImageIOPixelConverter(ImageIOPixelConverter *this)
{
  *this = &unk_1EF4DE010;
  v1 = *(this + 1);
  if (v1)
  {
    vImageConverter_Release(v1);
  }
}

const char *PixelTypeStr(char a1)
{
  if ((a1 + 1) > 0x11u)
  {
    return "???";
  }

  else
  {
    return off_1E6F41E30[(a1 + 1)];
  }
}

uint64_t ImageIOPixelConverter::convertAnyToAny(ImageIOPixelConverter *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  rowBytes = a3->rowBytes;
  data = a3->data;
  height = a3->height;
  v6 = *(this + 41);
  v7 = *(this + 56);
  if (v6 != v7 && v6 + 1 != v7)
  {
    _cg_jpeg_mem_term("convertAnyToAny", 278, "*** unsupported src/dst channel combination: src: %d  dst: %d\n");
LABEL_9:
    memset(data, 255, height * rowBytes);
    return -1;
  }

  v9 = a2->data;
  v10 = *(this + 13);
  v11 = *(this + 37);
  v12 = v10 & 0xFF00;
  if (v11 > 8)
  {
    if (v11 > 0x10)
    {
      if (v12 != 0x2000)
      {
        goto LABEL_9;
      }

      v14 = 32;
    }

    else
    {
      if (v12 != 4096)
      {
        goto LABEL_9;
      }

      v14 = 16;
    }

    v13 = *(this + 37);
  }

  else
  {
    if (v12 != 2048)
    {
      goto LABEL_9;
    }

    v13 = 2 * v11 - 8;
    v14 = 8;
  }

  v16 = v14 - v11;
  if (*(this + 17) == 4)
  {
    v16 = 0;
    v13 = 0;
  }

  v17 = a2->height;
  if (!v17)
  {
    return 0;
  }

  v18 = 0;
  width = a2->width;
  v20 = *(this + 41);
  v21 = width;
  do
  {
    if (!v21)
    {
      goto LABEL_58;
    }

    v22 = 0;
    v23 = data + a3->rowBytes * v18;
    v24 = &v9[a2->rowBytes * v18];
    v25 = 7;
    do
    {
      if (!v20)
      {
        goto LABEL_56;
      }

      for (i = 0; i < v20; ++i)
      {
        v27 = v20 - 1;
        v29 = v6 != v7 && i == v27;
        if (v11)
        {
          v30 = 0;
          v31 = v11;
          do
          {
            v32 = (*v24 >> v25) & 1 | (2 * v30);
            v33 = __OFSUB__(v25--, 1);
            if (v25 < 0 != v33)
            {
              v25 = 7;
              ++v24;
            }

            v30 = v32;
            --v31;
          }

          while (v31);
        }

        else
        {
          v32 = 0;
        }

        v34 = bswap32(v32) >> 8;
        if (v11 != 24)
        {
          v34 = v32;
        }

        v35 = (v34 << v16 >> v13) | (v34 << v16);
        switch(BYTE1(v10))
        {
          case 0x20u:
            v38 = bswap32(v35);
            if (v11 != 32)
            {
              v38 = v35;
            }

            *v23 = v38;
            v37 = v23 + 4;
            if (v29)
            {
              *(v23 + 4) = -1;
              v23 += 8;
              break;
            }

            goto LABEL_52;
          case 0x10u:
            v36 = bswap32(v35) >> 16;
            if (v11 != 16)
            {
              LOWORD(v36) = v35;
            }

            *v23 = v36;
            v37 = v23 + 2;
            if (v29)
            {
              *(v23 + 2) = -1;
              v23 += 4;
              break;
            }

LABEL_52:
            v23 = v37;
            break;
          case 8u:
            *v23 = v35;
            if (v29)
            {
              *(v23 + 1) = -1;
              v23 += 2;
            }

            else
            {
              ++v23;
            }

            break;
        }

        v20 = *(this + 41);
      }

      width = a2->width;
LABEL_56:
      ++v22;
    }

    while (v22 < width);
    v17 = a2->height;
    v21 = width;
LABEL_58:
    ++v18;
  }

  while (v18 < v17);
  return 0;
}

uint64_t ImageIOPixelConverter::CreatePixelConverter(int *a1)
{
  v1 = *a1;
  if (*a1 <= 1)
  {
    if (!v1)
    {
      operator new();
    }

    if (v1 == 1)
    {
      operator new();
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        operator new();
      case 3:
        operator new();
      case 5:
        operator new();
    }
  }

  return 0;
}

uint64_t IIOPixelConverterGray::IIOPixelConverterGray(uint64_t a1, char a2, char a3, uint32_t a4, int a5, char a6, uint32_t a7, char a8, uint64_t a9)
{
  return IIOPixelConverterGray::IIOPixelConverterGray(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  *(a1 + 72) = 0;
  error = 0;
  *a1 = &unk_1EF4DE070;
  *(a1 + 8) = 0;
  *(a1 + 32) = a2;
  *(a1 + 49) = a6;
  *(a1 + 24) = a9;
  *(a1 + 17) = 0;
  *(a1 + 65) = a8;
  *(a1 + 40) = a3;
  *(a1 + 36) = a5 | (a4 << 8);
  if (a5)
  {
    v12 = a7;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 52) = v12 | (a7 << 8);
  ImageIOPixelConverter::extractInfo(a1);
  if (__PAIR64__(*(a1 + 36), *(a1 + 32)) == __PAIR64__(*(a1 + 52), *(a1 + 49)))
  {
    *(a1 + 16) = 0;
    return a1;
  }

  *(a1 + 16) = 1;
  v22 = 0;
  v23 = 0;
  IIOColorSpace::IIOColorSpace(&v22, *MEMORY[0x1E695F128]);
  v13 = *(a1 + 41) * a4;
  srcFormat.bitsPerComponent = a4;
  srcFormat.bitsPerPixel = v13;
  v14 = *(a1 + 44);
  srcFormat.colorSpace = v23;
  memset(&srcFormat.version, 0, 20);
  srcFormat.bitmapInfo = v14;
  memset(&destFormat.bitmapInfo, 0, 24);
  v15 = *(a1 + 56) * a7;
  destFormat.bitsPerComponent = a7;
  destFormat.bitsPerPixel = v15;
  v16 = *(a1 + 60);
  destFormat.bitmapInfo = v16;
  if (a7 == 16)
  {
    v17 = 4096;
  }

  else
  {
    if (a7 != 32)
    {
      goto LABEL_11;
    }

    v17 = 0x2000;
  }

  destFormat.bitmapInfo = v16 | v17;
LABEL_11:
  destFormat.colorSpace = v23;
  v18 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
  *(a1 + 8) = v18;
  if (!v18 || error)
  {
    IIO_vImageErrorString(error);
    _cg_jpeg_mem_term("IIOPixelConverterGray", 869, "*** IIOPixelConverterGray could not create vImageConverter '%s'\n");
  }

  IIOColorSpace::~IIOColorSpace(&v22);
  return a1;
}

uint64_t ImageIOPixelConverter::ExpandRGB888ToARGB8888(ImageIOPixelConverter *this, unint64_t a2, unsigned int a3, int a4, unsigned int a5)
{
  result = 4294967246;
  if (a5 >= 4 * a3)
  {
    v8 = a4;
    if (a5 * a4 <= a2)
    {
      v10 = 3 * a3;
      v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
      if (v11)
      {
        v12 = v11;
        v16.data = v11;
        v16.height = 1;
        v16.width = a3;
        v16.rowBytes = v10;
        v15.height = 1;
        v15.width = a3;
        v15.rowBytes = a5;
        if (v8)
        {
          v13 = (v8 - 1) * a5;
          v14 = (v8 - 1) * v10;
          do
          {
            memcpy(v12, this + v14, v10);
            v15.data = this + v13;
            vImageConvert_RGB888toBGRA8888(&v16, 0, 0xFFu, &v15, 0, 0x10u);
            v14 -= v10;
            v13 -= a5;
            --v8;
          }

          while (v8);
        }

        free(v12);
        return 0;
      }

      else
      {
        return 4294967246;
      }
    }
  }

  return result;
}

uint64_t ImageIOPixelConverter::AdjustRowBytes(ImageIOPixelConverter *this, unint64_t a2, int a3, int a4, size_t __len, unsigned int a6)
{
  v6 = 4294967246;
  if (__len >= 4 * a3 && a6 > __len)
  {
    v7 = a4;
    if (a6 * a4 <= a2)
    {
      if (a4)
      {
        v8 = this + (a4 - 1) * a6;
        v9 = __len;
        v10 = this + ((a4 - 1) * __len);
        v11 = -__len;
        v12 = -a6;
        do
        {
          memmove(v8, v10, v9);
          v10 += v11;
          v8 += v12;
          --v7;
        }

        while (v7);
      }

      return 0;
    }
  }

  return v6;
}

uint64_t IIOPixelConverterIndexed::IIOPixelConverterIndexed(uint64_t a1, char a2, char a3, uint32_t a4, char a5, uint32_t a6, char a7, uint64_t a8)
{
  *(a1 + 72) = 0;
  error = 0;
  *a1 = &unk_1EF4DE040;
  *(a1 + 8) = 0;
  *(a1 + 32) = a2;
  *(a1 + 49) = a5;
  *(a1 + 24) = a8;
  *(a1 + 17) = 4;
  *(a1 + 65) = a7;
  *(a1 + 40) = a3;
  *(a1 + 36) = a4 << 8;
  *(a1 + 52) = a6 << 8;
  ImageIOPixelConverter::extractInfo(a1);
  if (__PAIR64__(*(a1 + 36), *(a1 + 32)) == __PAIR64__(*(a1 + 52), *(a1 + 49)) || (a5 & 0xFE) == 0xC)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 16) = 1;
    v20 = 0;
    v21 = 0;
    IIOColorSpace::IIOColorSpace(&v20, *MEMORY[0x1E695F1C0]);
    v12 = *(a1 + 41) * a4;
    srcFormat.bitsPerComponent = a4;
    srcFormat.bitsPerPixel = v12;
    v13 = *(a1 + 44);
    srcFormat.colorSpace = v21;
    memset(&srcFormat.version, 0, 20);
    srcFormat.bitmapInfo = v13;
    v14 = *(a1 + 56) * a6;
    destFormat.bitsPerComponent = a6;
    destFormat.bitsPerPixel = v14;
    v15 = *(a1 + 60);
    destFormat.colorSpace = v21;
    memset(&destFormat.version, 0, 20);
    destFormat.bitmapInfo = v15;
    v16 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
    *(a1 + 8) = v16;
    if (!v16 || error)
    {
      IIO_vImageErrorString(error);
      _cg_jpeg_mem_term("IIOPixelConverterIndexed", 550, "*** IIOPixelConverterIndexed could not create vImageConverter '%s'\n");
    }

    IIOColorSpace::~IIOColorSpace(&v20);
  }

  return a1;
}

void IIOPixelConverterIndexed::~IIOPixelConverterIndexed(IIOPixelConverterIndexed *this)
{
  ImageIOPixelConverter::~ImageIOPixelConverter(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOPixelConverterIndexed::convertRow(IIOPixelConverterIndexed *this, unsigned __int8 *a2, unsigned __int8 *__dst, unsigned int a4)
{
  v5 = *(this + 9);
  HIDWORD(v7) = v5 - 256;
  LODWORD(v7) = v5 - 256;
  v6 = v7 >> 8;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      if (a4 + 1 >= 2)
      {
        v12 = (a4 + 1) >> 1;
        do
        {
          v13 = *a2++;
          *__dst = v13 >> 4;
          __dst[1] = v13 & 0xF;
          __dst += 2;
          --v12;
        }

        while (v12);
      }

      return 0;
    }

    if (v6 == 7)
    {
      if (*(this + 11))
      {
        v8 = 2 * a4;
      }

      else
      {
        v8 = a4;
      }

      memcpy(__dst, a2, v8);
      return 0;
    }
  }

  else
  {
    if (!v6)
    {
      IIOPixelConverterIndexed::expandIndex1to8(this, a2, __dst, a4);
      return 0;
    }

    if (v6 == 1)
    {
      IIOPixelConverterIndexed::expandIndex2to8(this, a2, __dst, a4);
      return 0;
    }
  }

  v9 = (BYTE1(v5) * a4 * *(this + 41)) >> 3;
  v10 = (*(this + 53) * a4 * *(this + 56)) >> 3;
  v15.data = a2;
  v15.height = 1;
  v15.width = a4;
  v15.rowBytes = v9;
  v14.data = __dst;
  v14.height = 1;
  v14.width = a4;
  v14.rowBytes = v10;
  if ((*(this + 72) & 1) == 0)
  {
    _cg_jpeg_mem_term("convertRow", 607, "🔺  check 'convertAnyToAny' usage: _srcBits: %08X not handled\n");
    *(this + 72) = 1;
  }

  return ImageIOPixelConverter::convertAnyToAny(this, &v15, &v14);
}

uint64_t IIOPixelConverterIndexed::expandIndex1to8(IIOPixelConverterIndexed *this, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  v4 = a4 + 3;
  if ((a4 + 3) >= 8)
  {
    v5 = v4 >> 3;
    do
    {
      v6 = *a2++;
      v7 = _LUT_INDEX[v6 & 0xF];
      *a3 = *(_LUT_INDEX + ((v6 >> 2) & 0x3C));
      *(a3 + 1) = v7;
      a3 += 8;
      --v5;
    }

    while (v5);
  }

  if ((v4 & 4) != 0)
  {
    *a3 = *(_LUT_INDEX + ((*a2 >> 2) & 0x3C));
  }

  return 0;
}

uint64_t IIOPixelConverterIndexed::expandIndex2to8(IIOPixelConverterIndexed *this, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  if ((a4 + 3) >= 4)
  {
    v4 = (a4 + 3) >> 2;
    do
    {
      v5 = *a2++;
      *a3 = IIOPixelConverterIndexed::expandIndex2to8(unsigned char *,unsigned char *,unsigned int)::_LUT2_4[v5 >> 6];
      a3[1] = IIOPixelConverterIndexed::expandIndex2to8(unsigned char *,unsigned char *,unsigned int)::_LUT2_4[(v5 >> 4) & 3];
      a3[2] = IIOPixelConverterIndexed::expandIndex2to8(unsigned char *,unsigned char *,unsigned int)::_LUT2_4[(v5 >> 2) & 3];
      a3[3] = IIOPixelConverterIndexed::expandIndex2to8(unsigned char *,unsigned char *,unsigned int)::_LUT2_4[v5 & 3];
      a3 += 4;
      --v4;
    }

    while (v4);
  }

  return 0;
}

void IIOPixelConverterGray::~IIOPixelConverterGray(IIOPixelConverterGray *this)
{
  ImageIOPixelConverter::~ImageIOPixelConverter(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOPixelConverterGray::convert(IIOPixelConverterGray *this, vImage_Buffer *srcs, vImage_Buffer *dests)
{
  if (__PAIR64__(*(this + 9), *(this + 32)) == __PAIR64__(*(this + 13), *(this + 49)))
  {
    data = srcs->data;
    rowBytes = srcs->rowBytes;
    if (rowBytes >= dests->rowBytes)
    {
      rowBytes = dests->rowBytes;
    }

    memcpy(dests->data, data, rowBytes * dests->height);
  }

  else
  {
    v8 = *(this + 1);
    if (v8)
    {
      v9 = iio_vImageConvert_AnyToAny(v8, srcs, dests, 0, 0);
      if (!v9)
      {
        goto LABEL_9;
      }

      IIO_vImageErrorString(v9);
      _cg_jpeg_mem_term("convert", 895, "*** vImageConvert_AnyToAny: %s\n");
    }

    _cg_jpeg_mem_term("convert", 899, "   falling back to own convertAnyToAny [Gray]\n");
    ImageIOPixelConverter::convertAnyToAny(this, srcs, dests);
  }

LABEL_9:
  if (*(this + 65) == 1)
  {
    v10 = *&dests->width;
    *&dest.data = *&dests->data;
    *&dest.width = v10;
    vImageByteSwap_Planar16U(&dest, &dest, 0x10u);
  }

  return 0;
}

uint64_t IIOPixelConverterGray::convertRow(IIOPixelConverterGray *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = (*(this + 37) * a4 * *(this + 41)) >> 3;
  v5 = (*(this + 53) * a4 * *(this + 56)) >> 3;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a4;
  v8[3] = v4;
  v7[0] = a3;
  v7[1] = 1;
  v7[2] = a4;
  v7[3] = v5;
  return (*(*this + 16))(this, v8, v7);
}

uint64_t IIOPixelConverterRGB::IIOPixelConverterRGB(uint64_t a1, char a2, char a3, uint32_t a4, int a5, int a6, int a7, char a8, unsigned __int8 a9, char a10, uint64_t a11)
{
  *(a1 + 72) = 0;
  error = 0;
  *a1 = &unk_1EF4DE0A0;
  *(a1 + 8) = 0;
  *(a1 + 32) = a2;
  *(a1 + 49) = a8;
  *(a1 + 24) = a11;
  *(a1 + 17) = 1;
  *(a1 + 65) = a10;
  *(a1 + 40) = a3;
  *(a1 + 36) = (a4 << 24) | (a5 << 16) | (a6 << 8) | a7;
  if (a7)
  {
    v13 = a9;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 52) = (16843008 * a9) | v13;
  *(a1 + 73) = 0;
  ImageIOPixelConverter::extractInfo(a1);
  v14 = *(a1 + 36);
  if (v14 <= 134744318)
  {
    if (v14 != 84215041)
    {
      v15 = 84280831;
      goto LABEL_9;
    }

LABEL_10:
    *(a1 + 16) = 0;
    return a1;
  }

  if (v14 == 168430082)
  {
    goto LABEL_10;
  }

  v15 = 134744319;
LABEL_9:
  if (v14 == v15)
  {
    goto LABEL_10;
  }

  *(a1 + 16) = 1;
  if (v14 == 134744072 && *(a1 + 52) == 134744072)
  {
    v17 = *(a1 + 32);
    if (v17 > 3)
    {
      if (v17 == 4)
      {
        *(a1 + 73) = 1;
        if ((*(a1 + 49) - 2) >= 4u)
        {
          goto LABEL_28;
        }

        v18 = (*(a1 + 49) - 2) | 8;
        goto LABEL_27;
      }

      if (v17 == 5)
      {
        *(a1 + 73) = 1;
        if ((*(a1 + 49) - 2) < 4u)
        {
          v18 = (*(a1 + 49) - 2) | 0xC;
          goto LABEL_27;
        }
      }
    }

    else if (v17 == 2)
    {
      *(a1 + 73) = 1;
      v18 = *(a1 + 49) - 2;
      if (v18 < 4u)
      {
        goto LABEL_27;
      }
    }

    else if (v17 == 3)
    {
      *(a1 + 73) = 1;
      if ((*(a1 + 49) - 2) < 4u)
      {
        v18 = (*(a1 + 49) - 2) | 4;
LABEL_27:
        *(a1 + 68) = v18;
      }
    }
  }

LABEL_28:
  if (*(a1 + 73) == 1)
  {
    goto LABEL_10;
  }

  memset(&srcFormat.colorSpace, 0, 32);
  v19 = *(a1 + 41);
  srcFormat.bitsPerComponent = a4;
  srcFormat.bitsPerPixel = v19 * a4;
  v20 = *(a1 + 44);
  srcFormat.bitmapInfo = v20;
  v21 = a4 == 8 && v19 == 4;
  v22 = !v21;
  if (v21)
  {
    v23 = 0x4000;
  }

  else
  {
    if (a4 != 16)
    {
      v22 = 0;
      goto LABEL_43;
    }

    srcFormat.bitmapInfo = v20 | 0x1000;
    if (*(a1 + 32) != 22)
    {
      v22 = 1;
      goto LABEL_43;
    }

    v23 = 4352;
  }

  srcFormat.bitmapInfo = v20 | v23;
LABEL_43:
  memset(&destFormat.colorSpace, 0, 32);
  v24 = *(a1 + 56);
  destFormat.bitsPerComponent = a9;
  destFormat.bitsPerPixel = v24 * a9;
  v25 = *(a1 + 60);
  destFormat.bitmapInfo = v25;
  if (a9 == 8 && v24 == 4)
  {
    if ((*(a1 + 49) - 2) >= 4u)
    {
      v26 = 0x4000;
    }

    else
    {
      v26 = dword_1862277F0[(*(a1 + 49) - 2)];
    }
  }

  else if (a9 == 16)
  {
    v26 = 4096;
  }

  else
  {
    if (a9 != 32)
    {
      goto LABEL_53;
    }

    v26 = 0x2000;
  }

  v25 |= v26;
  destFormat.bitmapInfo = v25;
LABEL_53:
  if (v22 && *(a1 + 49) == 22)
  {
    destFormat.bitmapInfo = v25 | 0x100;
  }

  v27 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
  *(a1 + 8) = v27;
  if (!v27 || error)
  {
    IIO_vImageErrorString(error);
    _cg_jpeg_mem_term("IIOPixelConverterRGB", 1078, "*** IIOPixelConverterRGB could not create vImageConverter '%s'\n");
  }

  return a1;
}

void IIOPixelConverterRGB::~IIOPixelConverterRGB(IIOPixelConverterRGB *this)
{
  ImageIOPixelConverter::~ImageIOPixelConverter(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOPixelConverterRGB::convertRow(IIOPixelConverterRGB *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = *(this + 37);
  v5 = *(this + 40);
  if (v5 <= *(this + 41))
  {
    v5 = *(this + 41);
  }

  v6 = (*(this + 53) * a4 * *(this + 56)) >> 3;
  v9[0] = a2;
  v9[1] = 1;
  v9[2] = a4;
  v9[3] = (v4 * a4 * v5) >> 3;
  v8[0] = a3;
  v8[1] = 1;
  v8[2] = a4;
  v8[3] = v6;
  return (*(*this + 16))(this, v9, v8);
}

uint64_t IIOPixelConverterLab::IIOPixelConverterLab(uint64_t a1, char a2, char a3, uint32_t a4, int a5, char a6, uint32_t a7, char a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 72) = 0;
  error = 0;
  *a1 = &unk_1EF4DE0D0;
  *(a1 + 8) = 0;
  *(a1 + 32) = a2;
  *(a1 + 49) = a6;
  *(a1 + 24) = a10;
  *(a1 + 17) = 3;
  *(a1 + 65) = a8;
  *(a1 + 40) = a3;
  *(a1 + 36) = (16843008 * a4) | a5;
  if (a5)
  {
    v13 = a7;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 52) = (16843008 * a7) | v13;
  ImageIOPixelConverter::extractInfo(a1);
  *(a1 + 16) = 1;
  if (__PAIR64__(*(a1 + 36), *(a1 + 32)) == __PAIR64__(*(a1 + 52), *(a1 + 49)))
  {
    *(a1 + 16) = 0;
  }

  else
  {
    memset(&srcFormat.colorSpace, 0, 32);
    v14 = *(a1 + 41);
    v15 = v14 == 4;
    srcFormat.bitsPerComponent = a4;
    srcFormat.bitsPerPixel = v14 * a4;
    v16 = *(a1 + 44);
    v17 = a4 == 8;
    if (v17 && v15)
    {
      v16 |= 0x4000u;
    }

    srcFormat.bitmapInfo = v16;
    memset(&destFormat.colorSpace, 0, 32);
    v18 = *(a1 + 56);
    destFormat.bitsPerComponent = a7;
    destFormat.bitsPerPixel = v18 * a7;
    v20 = a7 == 8 && v18 == 4;
    if (v17 && v20)
    {
      v21 = *(a1 + 60) | 0x4000;
    }

    else
    {
      v21 = *(a1 + 60);
    }

    destFormat.bitmapInfo = v21;
    v22 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
    *(a1 + 8) = v22;
    if (!v22 || error)
    {
      IIO_vImageErrorString(error);
      _cg_jpeg_mem_term("IIOPixelConverterLab", 1335, "*** IIOPixelConverterLab could not create vImageConverter '%s'\n");
    }
  }

  return a1;
}

void IIOPixelConverterLab::~IIOPixelConverterLab(IIOPixelConverterLab *this)
{
  ImageIOPixelConverter::~ImageIOPixelConverter(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOPixelConverterLab::convert(IIOPixelConverterLab *this, vImage_Buffer *srcs, vImage_Buffer *dests)
{
  if (__PAIR64__(*(this + 9), *(this + 32)) == __PAIR64__(*(this + 13), *(this + 49)))
  {
    data = srcs->data;
    rowBytes = srcs->rowBytes;
    if (rowBytes >= dests->rowBytes)
    {
      rowBytes = dests->rowBytes;
    }

    memcpy(dests->data, data, rowBytes * dests->height);
    height = dests->height;
    if (*(this + 39) == 8)
    {
      if (height)
      {
        v9 = 0;
        v10 = 0;
        width = dests->width;
        do
        {
          if (width)
          {
            v12 = dests->data + dests->rowBytes * v9;
            v13 = 1;
            do
            {
              v12[1] ^= 0x80u;
              v12[2] ^= 0x80u;
              v12 += *(this + 56);
              width = dests->width;
              v14 = width > v13++;
            }

            while (v14);
            height = dests->height;
          }

          v9 = ++v10;
        }

        while (height > v10);
      }
    }

    else if (height)
    {
      v19 = 0;
      v20 = dests->width;
      v21 = dests->data + 4;
      v22 = 2 * dests->rowBytes;
      do
      {
        if (v20)
        {
          v23 = 2 * *(this + 56);
          v24 = 1;
          v25 = v21;
          do
          {
            *(v25 - 1) ^= 0x8000u;
            *v25 ^= 0x8000u;
            v14 = v20 > v24++;
            v25 = (v25 + v23);
          }

          while (v14);
        }

        ++v19;
        v21 += v22;
      }

      while (height > v19);
    }
  }

  else
  {
    v15 = *(this + 1);
    if (v15)
    {
      v16 = iio_vImageConvert_AnyToAny(v15, srcs, dests, 0, 0);
      if (!v16)
      {
        goto LABEL_17;
      }

      IIO_vImageErrorString(v16);
      _cg_jpeg_mem_term("convert", 1392, "*** vImageConvert_AnyToAny: %s\n");
    }

    _cg_jpeg_mem_term("convert", 1396, "   falling back to own convertAnyToAny [Lab]\n");
    ImageIOPixelConverter::convertAnyToAny(this, srcs, dests);
  }

LABEL_17:
  if (*(this + 65) == 1)
  {
    v17 = *&dests->width;
    *&dest.data = *&dests->data;
    *&dest.width = v17;
    vImageByteSwap_Planar16U(&dest, &dest, 0x10u);
  }

  return 0;
}

uint64_t IIOPixelConverterLab::convertRow(IIOPixelConverterLab *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = (*(this + 37) * a4 * *(this + 41)) >> 3;
  v5 = (*(this + 53) * a4 * *(this + 56)) >> 3;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a4;
  v8[3] = v4;
  v7[0] = a3;
  v7[1] = 1;
  v7[2] = a4;
  v7[3] = v5;
  return (*(*this + 16))(this, v8, v7);
}

uint64_t IIOPixelConverterCMYK::IIOPixelConverterCMYK(uint64_t a1, char a2, char a3, uint32_t a4, int a5, int a6, int a7, uint64_t a8, char a9, unsigned __int8 a10, char a11, uint64_t a12)
{
  *(a1 + 72) = 0;
  *a1 = &unk_1EF4DE100;
  error = 0;
  *(a1 + 32) = a2;
  *(a1 + 49) = a9;
  *(a1 + 17) = 2;
  *(a1 + 24) = a12;
  *(a1 + 65) = a11;
  *(a1 + 40) = a3;
  *(a1 + 36) = (a4 << 24) | (a5 << 16) | (a6 << 8) | a7;
  *(a1 + 52) = 16843009 * a10;
  ImageIOPixelConverter::extractInfo(a1);
  *(a1 + 16) = 1;
  v26 = 0;
  v27 = 0;
  IIOColorSpace::IIOColorSpace(&v26, *MEMORY[0x1E695F118]);
  srcFormat.decode = 0;
  *&srcFormat.renderingIntent = 0;
  v14 = *(a1 + 41);
  v15 = v14 == 4;
  srcFormat.bitsPerComponent = a4;
  srcFormat.bitsPerPixel = v14 * a4;
  v16 = *(a1 + 44);
  v17 = a4 == 8;
  if (v17 && v15)
  {
    v16 |= 0x4000u;
  }

  srcFormat.colorSpace = v27;
  srcFormat.version = 0;
  srcFormat.bitmapInfo = v16;
  destFormat.decode = 0;
  *&destFormat.renderingIntent = 0;
  v18 = *(a1 + 56);
  destFormat.bitsPerComponent = a10;
  destFormat.bitsPerPixel = v18 * a10;
  v20 = a10 == 8 && v18 == 4;
  if (v17 && v20)
  {
    v21 = *(a1 + 60) | 0x4000;
  }

  else
  {
    v21 = *(a1 + 60);
  }

  destFormat.colorSpace = v27;
  destFormat.version = 0;
  destFormat.bitmapInfo = v21;
  v22 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
  *(a1 + 8) = v22;
  if (!v22 || error)
  {
    IIO_vImageErrorString(error);
    _cg_jpeg_mem_term("IIOPixelConverterCMYK", 1486, "*** IIOPixelConverterCMYK could not create vImageConverter '%s'\n");
  }

  IIOColorSpace::~IIOColorSpace(&v26);
  return a1;
}

void IIOPixelConverterCMYK::~IIOPixelConverterCMYK(IIOPixelConverterCMYK *this)
{
  ImageIOPixelConverter::~ImageIOPixelConverter(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOPixelConverterCMYK::convert(IIOPixelConverterCMYK *this, vImage_Buffer *srcs, vImage_Buffer *dests)
{
  if (*(this + 16) == 1)
  {
    v6 = *(this + 1);
    if (!v6)
    {
LABEL_5:
      _cg_jpeg_mem_term("convert", 1512, "   falling back to own convertAnyToAny [CMYK]\n");
      ImageIOPixelConverter::convertAnyToAny(this, srcs, dests);
      return 0;
    }

    v7 = iio_vImageConvert_AnyToAny(v6, srcs, dests, 0, 0);
    if (v7)
    {
      IIO_vImageErrorString(v7);
      _cg_jpeg_mem_term("convert", 1508, "*** vImageConvert_AnyToAny: %s\n");
      goto LABEL_5;
    }
  }

  return 0;
}

uint64_t IIOPixelConverterCMYK::convertRow(IIOPixelConverterCMYK *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = (*(this + 37) * a4 * *(this + 41)) >> 3;
  v5 = (*(this + 53) * a4 * *(this + 56)) >> 3;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a4;
  v8[3] = v4;
  v7[0] = a3;
  v7[1] = 1;
  v7[2] = a4;
  v7[3] = v5;
  return (*(*this + 16))(this, v8, v7);
}

void IIOColorMap::IIOColorMap(IIOColorMap *this, unsigned int a2, int a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = 0;
  *(this + 2) = 0;
  operator new[]();
}

void sub_1860D4DE0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8033FC2DF1);
  }

  _Unwind_Resume(exception_object);
}

void IIOColorMap::IIOColorMap(IIOColorMap *this, const unsigned __int8 *a2, unint64_t a3)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 8) = 0;
  if (a3 >= 0xC)
  {
    *this = *a2;
    *(this + 8) = a2[8];
    operator new[]();
  }
}

void sub_1860D4EC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8033FC2DF1);
  }

  _Unwind_Resume(exception_object);
}

void IIOColorMap::IIOColorMap(IIOColorMap *this, CFReadStreamRef stream)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 8) = 0;
  *buffer = 0;
  v6 = 0;
  *v5 = 0;
  if (CFReadStreamRead(stream, buffer, 4) == 4 && *buffer == 1346456899 && CFReadStreamRead(stream, v5, 12) == 12 && *v5 <= 0x100u)
  {
    v4 = *&v5[4];
    *this = *v5;
    *(this + 1) = v4;
    *(this + 8) = v6;
    operator new[]();
  }
}

void sub_1860D5020(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8033FC2DF1);
  }

  _Unwind_Resume(exception_object);
}

char *IIOColorMap::createSerializedData(IIOColorMap *this, unint64_t *a2)
{
  v3 = 3 * *this + 12;
  *a2 = v3;
  v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
  v5 = *this;
  *v4 = *this;
  v4[8] = *(this + 8);
  memcpy(v4 + 12, *(this + 2), 3 * v5);
  return v4;
}

uint64_t IIOColorMap::writeEmptyPlaceholderToStream(IIOColorMap *this, __CFWriteStream *a2)
{
  *buffer = 1885433187;
  if (CFWriteStreamWrite(this, buffer, 4) == 4)
  {
    return 0;
  }

  else
  {
    return 4294967260;
  }
}

unsigned int *IIOColorMap::copyToRGBX(unsigned int *this, unsigned int *a2, unint64_t a3, char a4)
{
  v4 = *this;
  if (a3 >> 2 < v4)
  {
    v4 = a3 >> 2;
  }

  if (v4)
  {
    v5 = *(this + 2);
    v6 = v4;
    v7 = a2;
    do
    {
      v8 = *v5;
      *(v7 + 2) = *(v5 + 2);
      *v7 = v8;
      *(v7 + 3) = -1;
      v5 = (v5 + 3);
      ++v7;
      --v6;
    }

    while (v6);
  }

  if (a4)
  {
    *permuteMap = 50331906;
    dest.data = a2;
    dest.height = 1;
    dest.width = v4;
    dest.rowBytes = 4 * v4;
    return vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
  }

  return this;
}

BOOL IIOColorMap::indexForColor(IIOColorMap *this, _DWORD *a2, const unsigned int *a3, _BYTE *a4, unsigned __int8 *a5)
{
  *a4 = 0;
  if (!a3)
  {
    return 0;
  }

  if (*a2 != this)
  {
    v5 = 0;
    while (a3 - 1 != v5)
    {
      v7 = a2[++v5];
      if (v7 == this)
      {
        result = v5 < a3;
        goto LABEL_8;
      }
    }

    return 0;
  }

  LOBYTE(v5) = 0;
  result = 1;
LABEL_8:
  *a4 = v5;
  return result;
}

uint64_t _cg_png_get_PLTE(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      if (a3)
      {
        if ((*(a2 + 8) & 8) != 0)
        {
          v6 = *(a2 + 24);
          if (v6 && (v6 >= v6 + 3 || v6 + 3 > *(a2 + 32)))
          {
            __break(0x5519u);
          }

          else
          {
            *a3 = v6;
            *a4 = *(a2 + 40);
            return 8;
          }
        }
      }
    }
  }

  return result;
}

void (**_cg_png_get_text(void (**a1)(void), uint64_t a2, void (***a3)(void), _DWORD *a4))(void)
{
  if (!a1)
  {
    goto LABEL_32;
  }

  if (!a2)
  {
    goto LABEL_32;
  }

  v6 = *(a2 + 164);
  if (v6 < 1)
  {
    goto LABEL_32;
  }

  if (!a3)
  {
LABEL_33:
    if (a4)
    {
      *a4 = v6;
    }

    return v6;
  }

  result = png_malloc(a1, 56 * v6);
  if (!result)
  {
LABEL_32:
    v6 = 0;
    goto LABEL_33;
  }

  v9 = 0;
  v10 = *(a2 + 176);
  v11 = v10 + 88 * *(a2 + 168);
LABEL_7:
  v12 = v10 + 88 * v9;
  v13 = v12 + 88;
  if (v12 >= v10 && v13 <= v11 && v12 < v13)
  {
    v16 = &result[7 * v9];
    *v16 = *v12;
    v17 = *(v12 + 8);
    v18 = *(v12 + 16);
    if (v17 < v18)
    {
      v19 = v17 + 1;
      while (v19 <= v18)
      {
        if (!*(v19++ - 1))
        {
          *(v16 + 1) = v17;
          v21 = *(v12 + 24);
          v22 = *(v12 + 32);
          if (v21 < v22)
          {
            v23 = v21 + 1;
            while (v23 <= v22)
            {
              if (!*(v23++ - 1))
              {
                *(v16 + 2) = v21;
                *(v16 + 24) = *(v12 + 40);
                v25 = *(v12 + 56);
                v26 = *(v12 + 64);
                if (v25 < v26)
                {
                  v27 = v25 + 1;
                  while (v27 <= v26)
                  {
                    if (!*(v27++ - 1))
                    {
                      *(v16 + 5) = v25;
                      v30 = *(v12 + 72);
                      v29 = *(v12 + 80);
                      if (v30 < v29)
                      {
                        v31 = v30 + 1;
                        while (v31 <= v29)
                        {
                          if (!*(v31++ - 1))
                          {
                            *(v16 + 6) = v30;
                            if (++v9 != v6)
                            {
                              goto LABEL_7;
                            }

                            *a3 = result;
                            goto LABEL_33;
                          }
                        }
                      }

                      goto LABEL_36;
                    }
                  }
                }

                goto LABEL_36;
              }
            }
          }

          break;
        }
      }
    }
  }

LABEL_36:
  __break(0x5519u);
  return result;
}

uint64_t _cg_png_get_next_frame_fcTL(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _WORD *a7, _WORD *a8, _BYTE *a9, _BYTE *a10)
{
  result = 0;
  if (a1 && a2)
  {
    if (a10)
    {
      v12 = a9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12 || a8 == 0 || a7 == 0 || a6 == 0 || a5 == 0 || a4 == 0 || a3 == 0 || (*(a2 + 8) & 0x40000) == 0)
    {
      return 0;
    }

    else
    {
      *a3 = *(a2 + 416);
      *a4 = *(a2 + 420);
      *a5 = *(a2 + 424);
      *a6 = *(a2 + 428);
      *a7 = *(a2 + 432);
      *a8 = *(a2 + 434);
      *a9 = *(a2 + 436);
      *a10 = *(a2 + 437);
      return 1;
    }
  }

  return result;
}

uint64_t _cg_png_get_first_frame_is_hidden(uint64_t result)
{
  if (result)
  {
    return *(result + 920) & 1;
  }

  return result;
}

uint64_t IIOWritePlugin::writeAll(IIOImageDestination **this)
{
  v2 = IIOImageDestination::pixelProviderCount(this[3]);
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = 4294967246;
    while (1)
    {
      PixelProviderAtIndex = IIOImageDestination::getPixelProviderAtIndex(this[3], v4);
      ImagePropertiesAtIndex = IIOImageDestination::getImagePropertiesAtIndex(this[3], v4);
      SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(this[3]);
      if (!PixelProviderAtIndex)
      {
        goto LABEL_6;
      }

      v9 = SourceGeomColorSpace;
      if ((*(*this + 3))(this, PixelProviderAtIndex, ImagePropertiesAtIndex, SourceGeomColorSpace, v4))
      {
        break;
      }

LABEL_7:
      v5 = 0;
      if (v3 == ++v4)
      {
        return v5;
      }
    }

    Ref = IIOImageSource::imageReadRef(PixelProviderAtIndex);
    v5 = (*(*this + 4))(this, Ref, ImagePropertiesAtIndex, v9, v4);
LABEL_6:
    if (v5)
    {
      return v5;
    }

    goto LABEL_7;
  }

  return 4294967246;
}

BOOL IIOWritePlugin::createLZFSECompressedData(IIOWritePlugin *this, unsigned __int8 *a2, size_t size, unsigned __int8 **a4, unsigned __int8 **a5)
{
  v9 = malloc_type_malloc(size, 0x100004077774924uLL);
  *a4 = v9;
  if (v9)
  {
    v9 = compression_encode_buffer(v9, size, a2, size, 0, COMPRESSION_LZFSE);
  }

  *a5 = v9;
  return v9 != 0;
}

size_t png_default_write_data(size_t result, void *__ptr, size_t a3)
{
  if (result)
  {
    v4 = result;
    result = fwrite(__ptr, 1uLL, a3, *(result + 40));
    if (result != a3)
    {
      _cg_png_error(v4, "Write Error");
    }
  }

  return result;
}

uint64_t png_default_flush(uint64_t result)
{
  if (result)
  {
    return fflush(*(result + 40));
  }

  return result;
}

const char *AppleJPEGReadPlugin::ColorConvert(IIOColorConverter *this, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 44);
  v6 = *(a2 + 120);
  v7 = *(a3 + 40);
  v8 = *(a3 + 48);
  v9 = *(a3 + 120);
  v10 = *a2;
  v11 = *a3;
  if (!v6)
  {
    v14 = *(a2 + 48);
    if ((v14 - 3) < 2)
    {
      v6 = 4 * v4;
    }

    else if (v14 == 5)
    {
      v6 = *(a2 + 40);
    }

    else if (v14)
    {
      _cg_jpeg_mem_term("ColorConvert", 91, "inRowBytes is 0\n");
      v6 = 0;
    }

    else
    {
      v6 = 3 * v4;
    }
  }

  if (!v9)
  {
    if ((v8 - 3) < 2)
    {
      v9 = 4 * v7;
    }

    else if (v8 == 5)
    {
      v9 = v7;
    }

    else if (v8)
    {
      _cg_jpeg_mem_term("ColorConvert", 110, "outRowBytes is 0\n");
      v9 = 0;
    }

    else
    {
      v9 = 3 * v7;
    }
  }

  v16.data = v10;
  v16.height = v5;
  v16.width = v4;
  v16.rowBytes = v6;
  v15.data = v11;
  v15.height = v5;
  v15.width = v7;
  v15.rowBytes = v9;
  result = IIOColorConverter::colorConvert(this, &v16, &v15);
  if (result)
  {
    v13 = IIO_vImageErrorString(result);
    return LogError("ColorConvert", 121, "*** vImageConvert_AnyToAny - %s\n", v13);
  }

  return result;
}

uint64_t AppleJPEGReadPlugin::IIORecodeAppleJPEG_to_JPEG(AppleJPEGReadPlugin *this, IIOImageDestination *a2, IIOImageSource *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIORecodeAppleJPEG_to_JPEG", 0, 0, -1, 0);
  }

  v32 = 0;
  *buffer = 0;
  IIOImageSource::count(this);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v19[0] = 0;
  v19[1] = 0;
  theString2 = *MEMORY[0x1E695F1C0];
  IIOColorSpace::IIOColorSpace(v19, *MEMORY[0x1E695F1C0]);
  v18[0] = 0;
  v18[1] = 0;
  IIOColorSpace::IIOColorSpace(v18, *MEMORY[0x1E695F0B8]);
  v5 = IIOImageDestination::resizeSourceImage(this);
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  else
  {
    ColorSpace = IIOReadPlugin::getColorSpace(this);
    cf = CGImageSourceCreateImageAtIndex(ColorSpace, 0, 0);
    if (!cf)
    {
      _cg_jpeg_mem_term("IIORecodeAppleJPEG_to_JPEG", 179, "*** ERROR: cannot get the source image...");
      goto LABEL_19;
    }
  }

  space = CGImageGetColorSpace(cf);
  Model = CGColorSpaceGetModel(space);
  if (Model >= kCGColorSpaceModelCMYK)
  {
    IIO_ColorModelString(Model);
    _cg_jpeg_mem_term("IIORecodeAppleJPEG_to_JPEG", 185, "*** ERROR: applejpeg_recode_session cannot handle non-RGB data (%s)\n");
  }

  else
  {
    Name = CGColorSpaceGetName(space);
    if (Name)
    {
      CFStringCompare(Name, theString2, 0);
    }

    if (a2)
    {
      *buffer = IIOImageSource::imageReadRef(a2);
      if (*buffer)
      {
        goto LABEL_11;
      }
    }

    else
    {
      Property = CGImageGetProperty();
      if (Property)
      {
        v34.location = 0;
        v34.length = 8;
        CFDataGetBytes(Property, v34, buffer);
      }

      if (*buffer)
      {
LABEL_11:
        IIOImageDestination::getPixelProviderAtIndex(this, 0);
        if (a2)
        {
          ImagePropertiesAtIndex = IIOImageSource::getImagePropertiesAtIndex(a2, 0);
        }

        else
        {
          ImagePropertiesAtIndex = 0;
        }

        v11 = IIOImageDestination::getImagePropertiesAtIndex(this, 0);
        IIOSkipMetadata(ImagePropertiesAtIndex);
        JPEGWritePlugin::GetImageIOCompressionQuality(v11, v12);
        IIODictionary::getBoolForKey(v11, @"kCGImageSourceCreateThumbnailWithTransform");
        IIOReadPlugin::CreateRecodeProperties(a2, ImagePropertiesAtIndex, this, v11, &v32, v13);
      }
    }

    _cg_jpeg_mem_term("IIORecodeAppleJPEG_to_JPEG", 207, "*** ERROR: cannot get the 'CGImageReadRef' of the source image...");
  }

  CGImageRelease(cf);
LABEL_19:
  if (v32)
  {
    CFRelease(v32);
  }

  IIOColorSpace::~IIOColorSpace(v18);
  IIOColorSpace::~IIOColorSpace(v19);
  return 0;
}

void sub_1860D67F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, CGColorSpaceRef a45, uint64_t a46, CGColorSpaceRef a47)
{
  IIODictionary::~IIODictionary(&a34);
  IIOColorSpace::~IIOColorSpace(&a45);
  IIOColorSpace::~IIOColorSpace(&a47);
  _Unwind_Resume(a1);
}

uint64_t IIOBitStream::CreateIIOBitStream(IIOBitStream *this, void *a2, unsigned __int8 *a3, const char *a4)
{
  result = 0;
  if (this && a2 && a3)
  {
    v6 = *a3;
    if (v6 == 119)
    {
      operator new();
    }

    if (v6 == 114)
    {
      operator new();
    }

    return 0;
  }

  return result;
}

uint64_t IIOBitStream::seek(IIOBitStream *this, unint64_t a2)
{
  if (*(this + 3) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(this + 4) = a2;
  return result;
}

void IIOBitStreamReader::~IIOBitStreamReader(IIOBitStreamReader *this)
{
  *this = &unk_1EF4DE238;
  *(this + 4) = 0;
}

{
  *this = &unk_1EF4DE238;
  *(this + 4) = 0;
  JUMPOUT(0x186602850);
}

void IIOBitStreamWriter::~IIOBitStreamWriter(IIOBitStreamWriter *this)
{
  *this = &unk_1EF4DE288;
  if (*(this + 4) < *(this + 3))
  {
    IIOBitStreamWriter::putBits(this, 7, 0);
  }
}

{
  *this = &unk_1EF4DE288;
  if (*(this + 4) < *(this + 3))
  {
    IIOBitStreamWriter::putBits(this, 7, 0);
  }

  JUMPOUT(0x186602850);
}

uint64_t _cg_TIFFRGBAImageOK(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 944))
  {
    result = 0;
    strcpy(a2, "Sorry, requested compression method is not configured");
    return result;
  }

  v10 = *(a1 + 116);
  if (v10 > 0x10 || ((1 << v10) & 0x10116) == 0)
  {
    snprintf(a2, 0x400uLL, "Sorry, can not handle images with %hu-bit samples");
    return 0;
  }

  if (*(a1 + 118) == 3)
  {
    result = 0;
    strcpy(a2, "Sorry, can not handle images with IEEE floating-point samples");
    return result;
  }

  v22 = 0;
  v13 = *(a1 + 130) - *(a1 + 212);
  if (!_cg_TIFFGetField(a1, 262, a3, a4, a5, a6, a7, a8, &v22))
  {
    if (v13 == 3)
    {
      return 1;
    }

    if (v13 != 1)
    {
      snprintf(a2, 0x400uLL, "Missing needed %s tag");
      return 0;
    }

    v22 = 1;
    goto LABEL_39;
  }

  if (v22 <= 5u)
  {
    if (v22 <= 2u)
    {
      if (v22 >= 2u)
      {
        if (v13 <= 2)
        {
          snprintf(a2, 0x400uLL, "Sorry, can not handle RGB image with %s=%d");
          return 0;
        }

        return 1;
      }

LABEL_39:
      if (*(a1 + 170) == 1 && *(a1 + 130) != 1 && *(a1 + 116) <= 7u)
      {
        snprintf(a2, 0x400uLL, "Sorry, can not handle contiguous data with %s=%hu, and %s=%hu and Bits/Sample=%hu");
        return 0;
      }

      return 1;
    }

    if (v22 == 3)
    {
      goto LABEL_39;
    }

    if (v22 == 5)
    {
      v21 = 0;
      _cg_TIFFGetFieldDefaulted(a1, 332, v14, v15, v16, v17, v18, v19, &v21);
      if (v21 != 1)
      {
        snprintf(a2, 0x400uLL, "Sorry, can not handle separated image with %s=%d");
        return 0;
      }

      if (*(a1 + 130) <= 3u)
      {
        snprintf(a2, 0x400uLL, "Sorry, can not handle separated image with %s=%hu");
        return 0;
      }

      return 1;
    }

LABEL_46:
    snprintf(a2, 0x400uLL, "Sorry, can not handle image with %s=%hu");
    return 0;
  }

  if (v22 > 0x804Bu)
  {
    if (v22 == 32844)
    {
      if (*(a1 + 120) != 34676)
      {
        snprintf(a2, 0x400uLL, "Sorry, LogL data must have %s=%d");
        return 0;
      }

      return 1;
    }

    if (v22 == 32845)
    {
      if ((*(a1 + 120) & 0xFFFE) != 0x8774)
      {
        snprintf(a2, 0x400uLL, "Sorry, LogLuv data must have %s=%d or %d");
        return 0;
      }

      if (*(a1 + 170) != 1)
      {
        snprintf(a2, 0x400uLL, "Sorry, can not handle LogLuv images with %s=%hu");
        return 0;
      }

      if (*(a1 + 130) != 3 || v13 != 3)
      {
        snprintf(a2, 0x400uLL, "Sorry, can not handle image with %s=%hu, %s=%d");
        return 0;
      }

      return 1;
    }

    goto LABEL_46;
  }

  if (v22 == 6)
  {
    return 1;
  }

  if (v22 != 8)
  {
    goto LABEL_46;
  }

  v20 = *(a1 + 116);
  if (*(a1 + 130) != 3 || v13 != 3 || (result = 1, v20 != 8) && v20 != 16)
  {
    snprintf(a2, 0x400uLL, "Sorry, can not handle image with %s=%hu, %s=%d and %s=%hu", "Samples/pixel");
    return 0;
  }

  return result;
}

void _cg_TIFFRGBAImageEnd(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    free(v2);
    *(a1 + 80) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    free(v3);
    *(a1 + 88) = 0;
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    free(v4);
    *(a1 + 96) = 0;
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    free(v5);
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    free(v6);
    *(a1 + 112) = 0;
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    free(v7);
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    free(v8);
    *(a1 + 128) = 0;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    free(v9);
    free(*(a1 + 48));
    free(*(a1 + 56));
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }
}

uint64_t _cg_TIFFRGBAImageBegin(uint64_t *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v157 = *MEMORY[0x1E69E9840];
  result = _cg_TIFFRGBAImageOK(a2, a4, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v154 = 0;
    v153 = 0;
    v152 = 0;
    __src = 0;
    *(a1 + 5) = 0u;
    a1[6] = 0;
    a1[7] = 0;
    a1[5] = 0;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 17) = 4;
    *a1 = a2;
    v19 = a1 + 14;
    *(a1 + 2) = v9;
    _cg_TIFFGetFieldDefaulted(a2, 258, v13, v14, v15, v16, v17, v18, a1 + 28);
    v26 = *(a1 + 14);
    if (v26 > 0x10 || ((1 << v26) & 0x10116) == 0)
    {
      snprintf(a4, 0x400uLL, "Sorry, can not handle images with %hu-bit samples");
      goto LABEL_207;
    }

    *(a1 + 4) = 0;
    v27 = a1 + 15;
    _cg_TIFFGetFieldDefaulted(a2, 277, v20, v21, v22, v23, v24, v25, a1 + 30);
    _cg_TIFFGetFieldDefaulted(a2, 338, v28, v29, v30, v31, v32, v33, &v153 + 2);
    if (HIWORD(v153))
    {
      v40 = *v154;
      if ((v40 - 1) < 2)
      {
LABEL_6:
        *(a1 + 4) = v40;
        goto LABEL_10;
      }

      if (!*v154 && *v27 > 3u)
      {
        v40 = 1;
        goto LABEL_6;
      }
    }

LABEL_10:
    v41 = a1 + 18;
    if (!_cg_TIFFGetField(a2, 262, v34, v35, v36, v37, v38, v39, a1 + 36))
    {
      *v41 = 0;
    }

    v48 = HIWORD(v153);
    v49 = *v27;
    if (!HIWORD(v153))
    {
      if (v49 == 4 && *v41 == 2)
      {
        v48 = 1;
        *(a1 + 4) = 1;
        HIWORD(v153) = 1;
      }

      else
      {
        v48 = 0;
      }
    }

    v50 = v49 - v48;
    _cg_TIFFGetFieldDefaulted(a2, 259, v42, v43, v44, v45, v46, v47, &v152);
    _cg_TIFFGetFieldDefaulted(a2, 284, v51, v52, v53, v54, v55, v56, &v153);
    if (_cg_TIFFGetField(a2, 262, v57, v58, v59, v60, v61, v62, a1 + 36))
    {
      v69 = *v41;
      if (v69 <= 5)
      {
        if (*v41 <= 2u)
        {
          if (v69 >= 2)
          {
            if (v50 <= 2)
            {
              snprintf(a4, 0x400uLL, "Sorry, can not handle RGB image with %s=%d");
LABEL_207:
              _cg_TIFFRGBAImageEnd(a1);
              return 0;
            }

            goto LABEL_62;
          }

LABEL_28:
          if (v153 == 1 && *v27 != 1 && *v19 <= 7u)
          {
            snprintf(a4, 0x400uLL, "Sorry, can not handle contiguous data with %s=%hu, and %s=%hu and Bits/Sample=%hu");
            goto LABEL_207;
          }

LABEL_62:
          _cg_TIFFGetField(a2, 256, v63, v64, v65, v66, v67, v68, a1 + 20);
          _cg_TIFFGetField(a2, 257, v76, v77, v78, v79, v80, v81, (a1 + 3));
          _cg_TIFFGetFieldDefaulted(a2, 274, v82, v83, v84, v85, v86, v87, (a1 + 4));
          if (v153 == 2)
          {
            v88 = *(a1 + 15);
            *(a1 + 3) = v88 < 2;
            if (v88 >= 2)
            {
              v89 = _cg_TIFFIsTiled(*a1);
              v97 = gtTileSeparate;
              if (!v89)
              {
                v97 = gtStripSeparate;
              }

              a1[8] = v97;
              a1[9] = 0;
              v98 = *(a1 + 18);
              if (v98 < 3)
              {
                v99 = *v19;
                if (v99 != 16)
                {
                  if (v99 == 8)
                  {
                    v100 = *(a1 + 4);
                    if (v100 != 2)
                    {
                      if (v100 == 1)
                      {
                        v101 = putRGBAAseparate8bittile;
                      }

                      else
                      {
                        v101 = putRGBseparate8bittile;
                      }

                      goto LABEL_202;
                    }

                    if (BuildMapUaToAa(a1))
                    {
                      v101 = putRGBUAseparate8bittile;
                      goto LABEL_202;
                    }
                  }

LABEL_203:
                  if (a1[8] && a1[9])
                  {
                    return 1;
                  }

                  goto LABEL_206;
                }

                v141 = *(a1 + 4);
                v142 = BuildMapBitdepth16To8(a1);
                if (v141 == 2)
                {
                  if (v142 && BuildMapUaToAa(a1))
                  {
                    v101 = putRGBUAseparate16bittile;
                    goto LABEL_202;
                  }

                  goto LABEL_203;
                }

                if (v141 != 1)
                {
                  if (v142)
                  {
                    v101 = putRGBseparate16bittile;
                    goto LABEL_202;
                  }

                  goto LABEL_203;
                }

                if (!v142)
                {
                  goto LABEL_203;
                }

                v101 = putRGBAAseparate16bittile;
LABEL_202:
                a1[9] = v101;
                goto LABEL_203;
              }

              if (v98 == 5)
              {
                if (*v19 != 8 || *v27 != 4)
                {
                  goto LABEL_203;
                }

                *(a1 + 4) = 1;
                v101 = putCMYKseparate8bittile;
                goto LABEL_202;
              }

              if (v98 == 6)
              {
                if (*v19 != 8)
                {
                  goto LABEL_203;
                }

                if (*v27 != 3)
                {
                  goto LABEL_203;
                }

                if (!initYCbCrConversion(a1, v90, v91, v92, v93, v94, v95, v96))
                {
                  goto LABEL_203;
                }

                LOWORD(v156[0]) = 0;
                LOWORD(v155) = 0;
                _cg_TIFFGetFieldDefaulted(*a1, 530, v124, v125, v126, v127, v128, v129, v156);
                if ((v155 | (16 * LOWORD(v156[0]))) != 0x11)
                {
                  goto LABEL_203;
                }

                v101 = putseparate8bitYCbCr11tile;
                goto LABEL_202;
              }

              goto LABEL_206;
            }
          }

          else
          {
            *(a1 + 3) = 1;
          }

          v102 = _cg_TIFFIsTiled(*a1);
          v110 = gtTileContig;
          if (!v102)
          {
            v110 = gtStripContig;
          }

          a1[8] = v110;
          a1[9] = 0;
          v111 = *(a1 + 18);
          if (v111 <= 4)
          {
            if (v111 < 2)
            {
              if (!buildMap(a1))
              {
                goto LABEL_203;
              }

              v123 = *v19;
              if (v123 <= 3)
              {
                if (v123 == 1)
                {
                  v101 = put1bitbwtile;
                }

                else
                {
                  if (v123 != 2)
                  {
                    goto LABEL_203;
                  }

                  v101 = put2bitbwtile;
                }
              }

              else
              {
                switch(v123)
                {
                  case 4u:
                    v101 = put4bitbwtile;
                    break;
                  case 8u:
                    if (*(a1 + 4) && *v27 == 2)
                    {
                      v101 = putagreytile;
                    }

                    else
                    {
                      v101 = putgreytile;
                    }

                    goto LABEL_202;
                  case 0x10u:
                    v101 = put16bitbwtile;
                    break;
                  default:
                    goto LABEL_203;
                }
              }

              goto LABEL_202;
            }

            if (v111 == 2)
            {
              v130 = *v19;
              if (v130 != 16)
              {
                if (v130 != 8)
                {
                  goto LABEL_203;
                }

                v131 = *(a1 + 4);
                v132 = *(a1 + 15);
                if (v131 == 2)
                {
                  if (v132 >= 4)
                  {
                    if (BuildMapUaToAa(a1))
                    {
                      v101 = putRGBUAcontig8bittile;
                      goto LABEL_202;
                    }

                    goto LABEL_203;
                  }
                }

                else if (v131 == 1 && v132 >= 4)
                {
                  v101 = putRGBAAcontig8bittile;
                  goto LABEL_202;
                }

                if (v132 >= 3)
                {
                  v101 = putRGBcontig8bittile;
                  goto LABEL_202;
                }

                goto LABEL_203;
              }

              v144 = *(a1 + 4);
              v145 = *(a1 + 15);
              if (v144 == 2)
              {
                if (v145 >= 4)
                {
                  if (BuildMapBitdepth16To8(a1) && BuildMapUaToAa(a1))
                  {
                    v101 = putRGBUAcontig16bittile;
                    goto LABEL_202;
                  }

                  goto LABEL_203;
                }
              }

              else if (v144 == 1 && v145 >= 4)
              {
                if (!BuildMapBitdepth16To8(a1))
                {
                  goto LABEL_203;
                }

                v101 = putRGBAAcontig16bittile;
                goto LABEL_202;
              }

              if (v145 >= 3 && BuildMapBitdepth16To8(a1))
              {
                v101 = putRGBcontig16bittile;
                goto LABEL_202;
              }

              goto LABEL_203;
            }

            if (v111 == 3)
            {
              if (!buildMap(a1))
              {
                goto LABEL_203;
              }

              v112 = *v19;
              if (v112 > 3)
              {
                if (v112 == 4)
                {
                  v101 = put4bitcmaptile;
                  goto LABEL_202;
                }

                if (v112 != 8)
                {
                  goto LABEL_203;
                }

                v101 = put8bitcmaptile;
              }

              else
              {
                if (v112 == 1)
                {
                  v101 = put1bitcmaptile;
                  goto LABEL_202;
                }

                if (v112 != 2)
                {
                  goto LABEL_203;
                }

                v101 = put2bitcmaptile;
              }

              goto LABEL_202;
            }

LABEL_206:
            strcpy(a4, "Sorry, can not handle image");
            goto LABEL_207;
          }

          if (v111 == 5)
          {
            if (*v27 >= 4u && buildMap(a1) && *v19 == 8)
            {
              if (a1[10])
              {
                v101 = putRGBcontig8bitCMYKMaptile;
              }

              else
              {
                v101 = putRGBcontig8bitCMYKtile;
              }

              goto LABEL_202;
            }

            goto LABEL_203;
          }

          if (v111 == 6)
          {
            if (*v19 != 8 || *v27 != 3 || !initYCbCrConversion(a1, v103, v104, v105, v106, v107, v108, v109))
            {
              goto LABEL_203;
            }

            LOWORD(v156[0]) = 0;
            LOWORD(v155) = 0;
            _cg_TIFFGetFieldDefaulted(*a1, 530, v133, v134, v135, v136, v137, v138, v156);
            v139 = v155 | (16 * LOWORD(v156[0]));
            v101 = putcontig8bitYCbCr44tile;
            if (v139 <= 33)
            {
              switch(v139)
              {
                case 17:
                  v101 = putcontig8bitYCbCr11tile;
                  goto LABEL_202;
                case 18:
                  v101 = putcontig8bitYCbCr12tile;
                  goto LABEL_202;
                case 33:
                  v101 = putcontig8bitYCbCr21tile;
                  goto LABEL_202;
              }

              goto LABEL_203;
            }

            if (v139 > 65)
            {
              if (v139 == 68)
              {
                goto LABEL_202;
              }

              if (v139 == 66)
              {
                v101 = putcontig8bitYCbCr42tile;
                goto LABEL_202;
              }

              goto LABEL_203;
            }

            if (v139 == 34)
            {
              v101 = putcontig8bitYCbCr22tile;
              goto LABEL_202;
            }

            if (v139 != 65)
            {
              goto LABEL_203;
            }

            v101 = putcontig8bitYCbCr41tile;
            goto LABEL_202;
          }

          if (v111 != 8)
          {
            goto LABEL_206;
          }

          if (*v27 != 3)
          {
            goto LABEL_203;
          }

          if (!buildMap(a1))
          {
            goto LABEL_203;
          }

          v119 = *v19;
          if (v119 != 16 && v119 != 8)
          {
            goto LABEL_203;
          }

          v155 = 0;
          _cg_TIFFGetFieldDefaulted(*a1, 318, v113, v114, v115, v116, v117, v118, &v155);
          v120 = v155;
          v121 = v155[1];
          if (v121 == 0.0)
          {
            TIFFErrorExtR(*a1, "initCIELabConversion", "Invalid value for WhitePoint tag.");
          }

          else
          {
            v146 = a1[14];
            if (!v146)
            {
              v146 = malloc_type_malloc(0x46CCuLL, 0x1000040DB433A44uLL);
              a1[14] = v146;
              if (!v146)
              {
                TIFFErrorExtR(*a1, "initCIELabConversion", "No space for CIE L*a*b*->RGB conversion state.");
                goto LABEL_93;
              }

              v120 = v155;
              v121 = v155[1];
            }

            v156[1] = 1120403456;
            v147 = (*v120 / v121) * 100.0;
            *&v148 = (((1.0 - *v120) - v121) / v121) * 100.0;
            *v156 = v147;
            v156[2] = v148;
            if ((TIFFCIELabToRGBInit(v146, &display_sRGB, v156) & 0x80000000) == 0)
            {
              v149 = *v19;
              if (v149 == 16)
              {
                v150 = putcontig8bitCIELab16;
              }

              else
              {
                v150 = 0;
              }

              if (v149 == 8)
              {
                v122 = putcontig8bitCIELab8;
              }

              else
              {
                v122 = v150;
              }

              goto LABEL_189;
            }

            TIFFErrorExtR(*a1, "initCIELabConversion", "Failed to initialize CIE L*a*b*->RGB conversion state.");
            free(a1[14]);
          }

LABEL_93:
          v122 = 0;
LABEL_189:
          a1[9] = v122;
          goto LABEL_203;
        }

        if (v69 == 3)
        {
          if (_cg_TIFFGetField(a2, 320, v63, v64, v65, v66, v67, v68, &__src))
          {
            v71 = *(a1 + 14);
            v72 = 2 * (1 << v71);
            a1[5] = malloc_type_malloc(v72, 0x1000040BDFB0063uLL);
            a1[6] = malloc_type_malloc(v72, 0x1000040BDFB0063uLL);
            v73 = malloc_type_malloc(v72, 0x1000040BDFB0063uLL);
            a1[7] = v73;
            v74 = a1[5];
            if (v74 && a1[6] && v73)
            {
              v75 = 2 << v71;
              _TIFFmemcpy(v74, __src, v75);
              _TIFFmemcpy(a1[6], 0, v75);
              _TIFFmemcpy(a1[7], 0, v75);
              goto LABEL_28;
            }

            v140 = "Out of memory for colormap copy";
          }

          else
          {
            v140 = "Missing required Colormap tag";
          }

          v143 = *(v140 + 1);
          *a4 = *v140;
          *(a4 + 1) = v143;
          goto LABEL_207;
        }

        if (v69 == 5)
        {
          LOWORD(v156[0]) = 0;
          _cg_TIFFGetFieldDefaulted(a2, 332, v63, v64, v65, v66, v67, v68, v156);
          if (LOWORD(v156[0]) != 1 || *v27 <= 3u)
          {
            snprintf(a4, 0x400uLL, "Sorry, can not handle separated image with %s=%hu");
            goto LABEL_207;
          }

          goto LABEL_62;
        }

LABEL_58:
        snprintf(a4, 0x400uLL, "Sorry, can not handle image with %s=%hu");
        goto LABEL_207;
      }

      if (*v41 > 0x804Bu)
      {
        if (v69 == 32844)
        {
          if (v152 != 34676)
          {
            snprintf(a4, 0x400uLL, "Sorry, LogL data must have %s=%d");
            goto LABEL_207;
          }

          _cg_TIFFSetField(a2, 65560, v63, v64, v65, v66, v67, v68, 3);
          v70 = 1;
        }

        else
        {
          if (v69 != 32845)
          {
            goto LABEL_58;
          }

          if ((v152 + 30858) <= 0xFFFDu)
          {
            snprintf(a4, 0x400uLL, "Sorry, LogLuv data must have %s=%d or %d");
            goto LABEL_207;
          }

          if (v153 != 1)
          {
            snprintf(a4, 0x400uLL, "Sorry, can not handle LogLuv images with %s=%hu", "Planarconfiguration", v153);
            return 0;
          }

          _cg_TIFFSetField(a2, 65560, v63, v64, v65, v66, v67, v68, 3);
          v70 = 2;
        }

        *v41 = v70;
        *v19 = 8;
        goto LABEL_62;
      }

      if (v69 != 6)
      {
        if (v69 == 8)
        {
          goto LABEL_62;
        }

        goto LABEL_58;
      }

      if (v153 != 1 || v152 != 7)
      {
        goto LABEL_62;
      }

      _cg_TIFFSetField(a2, 65538, v63, v64, v65, v66, v67, v68, 1);
    }

    else if (v50 != 3)
    {
      if (v50 != 1)
      {
        snprintf(a4, 0x400uLL, "Missing needed %s tag");
        goto LABEL_207;
      }

      LOWORD(v156[0]) = 0;
      _cg_TIFFGetField(a2, 259, v63, v64, v65, v66, v67, v68, v156);
      *v41 = LOWORD(v156[0]) - 2 >= 3 && LOWORD(v156[0]) != 32771;
      goto LABEL_28;
    }

    *v41 = 2;
    goto LABEL_62;
  }

  return result;
}

uint64_t _cg_TIFFRGBAImageGet(uint64_t *a1)
{
  v1 = a1[8];
  if (!v1)
  {
    v3 = *a1;
    v4 = TIFFFileName(*a1);
    TIFFErrorExtR(v3, v4, "No get routine setup");
    return 0;
  }

  if (!a1[9])
  {
    v5 = *a1;
    v6 = TIFFFileName(*a1);
    TIFFErrorExtR(v5, v6, "No put routine setupl; probably can not handle image format");
    return 0;
  }

  return v1();
}

uint64_t _cg_TIFFReadRGBAImageOriented(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v31 = *MEMORY[0x1E69E9840];
  bzero(v30, 0x400uLL);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  if (_cg_TIFFRGBAImageOK(a1, v30, v9, v10, v11, v12, v13, v14) && _cg_TIFFRGBAImageBegin(v22, a1, a6, v30, v15, v16, v17, v18))
  {
    WORD1(v23) = a5;
    v19 = _cg_TIFFRGBAImageGet(v22);
    _cg_TIFFRGBAImageEnd(v22);
  }

  else
  {
    v20 = TIFFFileName(a1);
    TIFFErrorExtR(a1, v20, "%s", v30);
    return 0;
  }

  return v19;
}

uint64_t gtTileContig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v12 = *a1;
  v71 = *(a1 + 72);
  v74 = 0;
  v72 = _cg_TIFFTileSize(v12, a2, a3, a4, a5, a6, a7, a8);
  if (!v72)
  {
    v29 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v29, "%s");
    return 0;
  }

  v75 = 0;
  _cg_TIFFGetField(v12, 322, v13, v14, v15, v16, v17, v18, &v75 + 4);
  v73 = v12;
  _cg_TIFFGetField(v12, 323, v19, v20, v21, v22, v23, v24, &v75);
  v25 = setorientation(a1);
  v26 = v25;
  v27 = v9;
  if (v25)
  {
    if (!((HIDWORD(v75) + v9) >> 31))
    {
      v70 = v8 - 1;
      v28 = -v9 - HIDWORD(v75);
      goto LABEL_9;
    }

LABEL_7:
    v30 = v12;
    v31 = TIFFFileName(v12);
    v60 = "unsupported tile size (too wide)";
    v32 = "%s";
LABEL_14:
    TIFFErrorExtR(v30, v31, v32, v60, v61);
    return 0;
  }

  if (v9 + 0x7FFFFFFF < HIDWORD(v75))
  {
    goto LABEL_7;
  }

  v70 = 0;
  v28 = v9 - HIDWORD(v75);
LABEL_9:
  v69 = v28;
  if (!HIDWORD(v75) || !v75)
  {
    v30 = v12;
    v31 = TIFFFileName(v12);
    v32 = "tile width or height is zero";
    goto LABEL_14;
  }

  v33 = *(a1 + 140) % HIDWORD(v75);
  v34 = v33 + v28;
  if (v34 != v34)
  {
    v30 = v73;
    v31 = TIFFFileName(v73);
    v60 = "Invalid skew";
    v61 = v34;
    v32 = "%s %lld";
    goto LABEL_14;
  }

  if (v8)
  {
    v64 = v33 + v28;
    v65 = v10;
    v37 = 0;
    v63 = *(a1 + 140) % HIDWORD(v75);
    v62 = HIDWORD(v75) - v33;
    v38 = v73;
    v66 = v25;
    v67 = v8;
    while (1)
    {
      v39 = v75 + (*(a1 + 136) + v37) / v75 * v75 - (*(a1 + 136) + v37);
      if (v75 + (*(a1 + 136) + v37) / v75 * v75 - *(a1 + 136) > v8)
      {
        v39 = v8 - v37;
      }

      v68 = v39;
      if (v9)
      {
        break;
      }

LABEL_36:
      v26 = v66;
      v8 = v67;
      if (v66)
      {
        v51 = -v68;
      }

      else
      {
        v51 = v68;
      }

      v70 += v51;
      v37 += v68;
      if (v37 >= v67)
      {
        v35 = 1;
        goto LABEL_42;
      }
    }

    v40 = 0;
    v41 = *(a1 + 140);
    v42 = v64;
    LODWORD(v43) = v62;
    v44 = v63;
    while (_TIFFReadTileAndAllocBuffer(v38, &v74, v72, v41, *(a1 + 136) + v37, 0, 0) != -1 || v74 && !*(a1 + 8))
    {
      v45 = (*(a1 + 136) + v37) % v75;
      v46 = _cg_TIFFTileRowSize(v38);
      v47 = v40 + v43;
      v48 = HIDWORD(v75) - (v9 - v40);
      if (v40 + v43 <= v9)
      {
        v49 = v44;
      }

      else
      {
        v49 = v48;
      }

      if (v47 <= v9)
      {
        v43 = v43;
      }

      else
      {
        v43 = v9 - v40;
      }

      if (v47 <= v9)
      {
        v50 = v42;
      }

      else
      {
        v50 = v48 + v69;
      }

      v71(a1, v65 + 4 * v9 * v70 + 4 * v40, v40, v70, v43, v68, v49, v50, &v74[v46 * v45 + *(a1 + 30) * v44]);
      v44 = 0;
      v40 = (v43 + v40);
      v41 = (v43 + v41);
      LODWORD(v43) = HIDWORD(v75);
      v42 = v69;
      v38 = v73;
      if (v40 >= v9)
      {
        goto LABEL_36;
      }
    }

    v35 = 0;
    v26 = v66;
    v8 = v67;
LABEL_42:
    v52 = v74;
    v27 = v9;
    v10 = v65;
  }

  else
  {
    v52 = 0;
    v35 = 1;
  }

  free(v52);
  if (v26 >= 2 && v8)
  {
    v53 = 0;
    for (i = 0; i != v8; ++i)
    {
      v55 = v10 + 4 * i * v9;
      v56 = (v55 + 4 * v27 - 4);
      if (v55 < v56)
      {
        v57 = v10 + 4 + 4 * v53;
        do
        {
          v58 = *(v57 - 4);
          *(v57 - 4) = *v56;
          *v56-- = v58;
          v59 = v57 >= v56;
          v57 += 4;
        }

        while (!v59);
      }

      v53 += v9;
    }
  }

  return v35;
}

uint64_t gtStripContig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v12 = *a1;
  v71 = *(a1 + 72);
  v74 = 0;
  v72 = 0;
  v73 = 0;
  v13 = *(a1 + 20);
  v65 = &v72;
  _cg_TIFFGetFieldDefaulted(v12, 530, a3, a4, a5, a6, a7, a8, &v72 + 2);
  if (!v72)
  {
    v28 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v28, "Invalid vertical YCbCr subsampling");
    return 0;
  }

  v69 = _cg_TIFFStripSize(v12, v14, v15, v16, v17, v18, v19, v20);
  v70 = setorientation(a1);
  if ((v70 & 1) == 0)
  {
    v27 = 0;
    v68 = 0;
    goto LABEL_8;
  }

  if (a3 >> 30)
  {
    v29 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v29, "Width overflow");
    return 0;
  }

  v27 = v8 - 1;
  v68 = -2 * a3;
LABEL_8:
  _cg_TIFFGetFieldDefaulted(v12, 278, v21, v22, v23, v24, v25, v26, &v73);
  if (!v73)
  {
    v55 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v55, "rowsperstrip is zero");
    return 0;
  }

  v37 = _cg_TIFFScanlineSize(v12, v30, v31, v32, v33, v34, v35, v36);
  v43 = v13 - a3;
  if (v13 < a3)
  {
    v43 = 0;
  }

  v67 = v43;
  if (v8)
  {
    v44 = v37;
    v45 = 0;
    v66 = 0x7FFFFFFFFFFFFFFFLL / v37;
    while (1)
    {
      v46 = *(a1 + 136) + v45;
      v47 = v73 - v46 % v73;
      if (v47 + v45 <= v8)
      {
        v48 = v47;
      }

      else
      {
        v48 = v8 - v45;
      }

      v49 = v48 % v72;
      v50 = v72 - v49;
      if (!v49)
      {
        v50 = 0;
      }

      v51 = v50 + v46 % v73 + v48;
      if (v44 >= 1 && v66 < v51)
      {
        v63 = TIFFFileName(v12);
        TIFFErrorExtR(v12, v63, "Integer overflow in gtStripContig");
        return 0;
      }

      v52 = _cg_TIFFComputeStrip(v12, v46, 0, v38, v39, v40, v41, v42);
      if (_TIFFReadEncodedStripAndAllocBuffer(v12, v52, &v74, v69, v44 * v51) == -1 && (!v74 || *(a1 + 8)))
      {
        break;
      }

      v71(a1, a2 + 4 * a3 * v27, 0, v27, a3, v48, v67, v68, v74 + v44 * ((*(a1 + 136) + v45) % v73) + *(a1 + 30) * *(a1 + 140), v65);
      if (v70)
      {
        v53 = -v48;
      }

      else
      {
        v53 = v48;
      }

      v27 = (v53 + v27);
      v45 += v48;
      if (v45 >= v8)
      {
        v54 = 1;
        goto LABEL_31;
      }
    }

    v54 = 0;
LABEL_31:
    if (v70 >= 2)
    {
      v56 = 0;
      for (i = 0; i != v8; ++i)
      {
        v58 = a2 + 4 * (i * a3);
        v59 = (v58 + 4 * a3 - 4);
        if (v58 < v59)
        {
          v60 = a2 + 4 + 4 * v56;
          do
          {
            v61 = *(v60 - 4);
            *(v60 - 4) = *v59;
            *v59-- = v61;
            v62 = v60 >= v59;
            v60 += 4;
          }

          while (!v62);
        }

        v56 += a3;
      }
    }
  }

  else
  {
    v54 = 1;
  }

  free(v74);
  return v54;
}

uint64_t putRGBAAcontig8bittile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, _DWORD *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    while (1)
    {
      if (a5 < 8)
      {
        v19 = a2;
        i = a5;
      }

      else
      {
        for (i = a5; i > 7; i -= 8)
        {
          *a2 = *a9;
          v12 = (a9 + v10);
          a2[1] = *v12;
          v13 = (v12 + v10);
          a2[2] = *v13;
          v14 = (v13 + v10);
          a2[3] = *v14;
          v15 = (v14 + v10);
          a2[4] = *v15;
          v16 = (v15 + v10);
          a2[5] = *v16;
          v17 = (v16 + v10);
          a2[6] = *v17;
          v18 = (v17 + v10);
          v19 = a2 + 8;
          a2[7] = *v18;
          a9 = (v18 + v10);
          a2 += 8;
        }
      }

      if (i > 3)
      {
        break;
      }

      if (i <= 1)
      {
        if (!i)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (i != 2)
      {
        goto LABEL_22;
      }

LABEL_23:
      *v19++ = *a9;
      a9 = (a9 + v10);
LABEL_24:
      *v19++ = *a9;
      a9 = (a9 + v10);
LABEL_25:
      a2 = &v19[a8];
      a9 = (a9 + v10 * a7);
      if (!--a6)
      {
        return result;
      }
    }

    if (i > 5)
    {
      if (i != 6)
      {
        *v19++ = *a9;
        a9 = (a9 + v10);
      }

      *v19++ = *a9;
      a9 = (a9 + v10);
    }

    else if (i == 4)
    {
      goto LABEL_21;
    }

    *v19++ = *a9;
    a9 = (a9 + v10);
LABEL_21:
    *v19++ = *a9;
    a9 = (a9 + v10);
LABEL_22:
    *v19++ = *a9;
    a9 = (a9 + v10);
    goto LABEL_23;
  }

  return result;
}

uint64_t BuildMapUaToAa(uint64_t *a1)
{
  if (a1[15])
  {
    BuildMapUaToAa_cold_1();
  }

  v2 = malloc_type_malloc(0x10000uLL, 0xAD1E9372uLL);
  a1[15] = v2;
  if (v2)
  {
    v3 = 0;
    v4 = vdupq_n_s32(0x80808081);
    v5.i64[0] = 0x400000004;
    v5.i64[1] = 0x400000004;
    do
    {
      v6 = 0;
      v7 = vdupq_n_s32(v3);
      v8 = xmmword_186205980;
      do
      {
        v9.i64[0] = 0x7F0000007FLL;
        v9.i64[1] = 0x7F0000007FLL;
        v10 = vmlaq_s32(v9, v8, v7);
        *&v2[v6] = vuzp1_s8(vshr_n_u16(vmovn_s32(vuzp2q_s32(vmull_u32(*v10.i8, *v4.i8), vmull_high_u32(v10, v4))), 7uLL), 0x100000000).u32[0];
        v6 += 4;
        v8 = vaddq_s32(v8, v5);
      }

      while (v6 != 256);
      ++v3;
      v2 += 256;
    }

    while (v3 != 256);
    return 1;
  }

  else
  {
    TIFFErrorExtR(*a1, "BuildMapUaToAa", "Out of memory");
    return 0;
  }
}

uint64_t putRGBUAcontig8bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    do
    {
      if (a5)
      {
        v11 = *(result + 120);
        v12 = a5;
        do
        {
          v13 = v11 + (a9[3] << 8);
          *a2++ = *(v13 + *a9) | (a9[3] << 24) | (*(v13 + a9[1]) << 8) | (*(v13 + a9[2]) << 16);
          a9 += v10;
          --v12;
        }

        while (v12);
      }

      a2 += a8;
      a9 += v10 * a7;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t putRGBcontig8bittile(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int16 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    while (1)
    {
      if (a5 < 8)
      {
        v19 = a2;
        i = a5;
      }

      else
      {
        for (i = a5; i > 7; i -= 8)
        {
          *a2 = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
          v12 = (a9 + v10);
          a2[1] = *v12 | (*(v12 + 2) << 16) | 0xFF000000;
          v13 = (v12 + v10);
          a2[2] = *v13 | (*(v13 + 2) << 16) | 0xFF000000;
          v14 = (v13 + v10);
          a2[3] = *v14 | (*(v14 + 2) << 16) | 0xFF000000;
          v15 = (v14 + v10);
          a2[4] = *v15 | (*(v15 + 2) << 16) | 0xFF000000;
          v16 = (v15 + v10);
          a2[5] = *v16 | (*(v16 + 2) << 16) | 0xFF000000;
          v17 = (v16 + v10);
          a2[6] = *v17 | (*(v17 + 2) << 16) | 0xFF000000;
          v18 = (v17 + v10);
          v19 = a2 + 8;
          a2[7] = *v18 | (*(v18 + 2) << 16) | 0xFF000000;
          a9 = (v18 + v10);
          a2 += 8;
        }
      }

      if (i > 3)
      {
        break;
      }

      if (i <= 1)
      {
        if (!i)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (i != 2)
      {
        goto LABEL_22;
      }

LABEL_23:
      *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
      a9 = (a9 + v10);
LABEL_24:
      *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
      a9 = (a9 + v10);
LABEL_25:
      a2 = &v19[a8];
      a9 = (a9 + v10 * a7);
      if (!--a6)
      {
        return result;
      }
    }

    if (i > 5)
    {
      if (i != 6)
      {
        *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
        a9 = (a9 + v10);
      }

      *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
      a9 = (a9 + v10);
    }

    else if (i == 4)
    {
      goto LABEL_21;
    }

    *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
    a9 = (a9 + v10);
LABEL_21:
    *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
    a9 = (a9 + v10);
LABEL_22:
    *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
    a9 = (a9 + v10);
    goto LABEL_23;
  }

  return result;
}

uint64_t BuildMapBitdepth16To8(uint64_t *a1)
{
  if (a1[16])
  {
    BuildMapBitdepth16To8_cold_1();
  }

  v2 = malloc_type_malloc(0x10000uLL, 0xC6A6F426uLL);
  a1[16] = v2;
  if (v2)
  {
    v3 = 0;
    v4 = xmmword_186205980;
    v5.i64[0] = 0x8000000080;
    v5.i64[1] = 0x8000000080;
    v6 = vdupq_n_s32(0xFF00FF01);
    v7.i64[0] = 0x400000004;
    v7.i64[1] = 0x400000004;
    do
    {
      v8 = vaddq_s32(v4, v5);
      *&v2[v3] = vuzp1_s8(vshr_n_u16(vmovn_s32(vuzp2q_s32(vmull_u32(*v8.i8, *v6.i8), vmull_high_u32(v8, v6))), 8uLL), *v4.i8).u32[0];
      v3 += 4;
      v4 = vaddq_s32(v4, v7);
    }

    while (v3 != 0x10000);
    return 1;
  }

  else
  {
    TIFFErrorExtR(*a1, "BuildMapBitdepth16To8", "Out of memory");
    return 0;
  }
}

uint64_t putRGBAAcontig16bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int16 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    v11 = v10 * a7;
    v12 = 2 * v10;
    do
    {
      if (a5)
      {
        v13 = *(result + 128);
        v14 = a5;
        do
        {
          *a2++ = *(v13 + *a9) | (*(v13 + a9[1]) << 8) | (*(v13 + a9[2]) << 16) | (*(v13 + a9[3]) << 24);
          a9 = (a9 + v12);
          --v14;
        }

        while (v14);
      }

      a2 += a8;
      a9 += v11;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t putRGBUAcontig16bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int16 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    v11 = v10 * a7;
    v12 = 2 * v10;
    do
    {
      if (a5)
      {
        v14 = *(result + 120);
        v13 = *(result + 128);
        v15 = a5;
        do
        {
          v16 = v14 + (*(v13 + a9[3]) << 8);
          *a2++ = *(v16 + *(v13 + *a9)) | (*(v13 + a9[3]) << 24) | (*(v16 + *(v13 + a9[1])) << 8) | (*(v16 + *(v13 + a9[2])) << 16);
          a9 = (a9 + v12);
          --v15;
        }

        while (v15);
      }

      a2 += a8;
      a9 += v11;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t putRGBcontig16bittile(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int16 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    v11 = v10 * a7;
    v12 = 2 * v10;
    do
    {
      if (a5)
      {
        v13 = *(result + 128);
        v14 = a5;
        do
        {
          *a2++ = *(v13 + *a9) | (*(v13 + a9[1]) << 8) | (*(v13 + a9[2]) << 16) | 0xFF000000;
          a9 = (a9 + v12);
          --v14;
        }

        while (v14);
      }

      a2 += a8;
      a9 += v11;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t buildMap(void *a1)
{
  v2 = *(a1 + 18);
  result = 1;
  if (v2 <= 6)
  {
    if (((1 << v2) & 0x64) != 0)
    {
      if (*(a1 + 14) == 8)
      {
        return result;
      }
    }

    else if (((1 << v2) & 3) == 0)
    {
      if (v2 != 3)
      {
        return result;
      }

      v4 = *(a1 + 14);
      v5 = 1 << v4;
      v6 = a1[5];
      v7 = a1[6];
      v8 = a1[7];
      do
      {
        if (v5-- < 1)
        {
          v47 = *a1;
          v48 = TIFFFileName(*a1);
          TIFFWarningExtR(v47, v48, "Assuming 8-bit colormap");
          goto LABEL_51;
        }

        v10 = *v6++;
        if (v10 > 0xFF)
        {
          break;
        }

        if (*v7 > 0xFFu)
        {
          break;
        }

        ++v7;
        v11 = *v8++;
      }

      while (v11 < 0x100);
      v12 = -(-1 << v4);
      v13 = a1[7] - 2;
      v14 = a1[6] - 2;
      v15 = a1[5] - 2;
      do
      {
        *(v15 + 2 * v12) = *(v15 + 2 * v12 + 1);
        *(v14 + 2 * v12) = *(v14 + 2 * v12 + 1);
        *(v13 + 2 * v12) = *(v13 + 2 * v12 + 1);
        --v12;
      }

      while (v12 > 0);
LABEL_51:
      v49 = *(a1 + 14);
      if (v49 <= 8)
      {
        v50 = a1[5];
        v51 = a1[6];
        v52 = a1[7];
        v53 = malloc_type_malloc(((8u / *(a1 + 14)) << 10) + 2048, 0x10040436913F5uLL);
        a1[12] = v53;
        if (v53)
        {
          v54 = 0;
          v55 = (v53 + 2048);
          while (1)
          {
            *(a1[12] + 8 * v54) = v55;
            if (v49 > 3)
            {
              if (v49 == 4)
              {
                v63 = 4;
                v61 = 0xFFFFFFFLL;
                v64 = v49;
                v78 = v55;
                v79 = 15;
                v65 = 8;
                goto LABEL_64;
              }

              if (v49 == 8)
              {
                v66 = v54;
                v65 = 4;
                v67 = v55;
LABEL_65:
                v55 = (v55 + v65);
                *v67 = *(v50 + 2 * v66) | (*(v51 + 2 * v66) << 8) | (*(v52 + 2 * v66) << 16) | 0xFF000000;
              }
            }

            else
            {
              if (v49 == 1)
              {
                v68 = v54 >> 7;
                v69 = (v54 >> 6) & 1;
                v70 = (v54 >> 5) & 1;
                v71 = (v54 >> 4) & 1;
                v72.i16[0] = *(v50 + 2 * v68);
                v72.i16[1] = *(v50 + 2 * v69);
                v72.i16[2] = *(v50 + 2 * v70);
                v72.i16[3] = *(v50 + 2 * v71);
                v73.i16[0] = *(v51 + 2 * v68);
                v73.i16[1] = *(v51 + 2 * v69);
                v73.i16[2] = *(v51 + 2 * v70);
                v73.i16[3] = *(v51 + 2 * v71);
                v74 = vsli_n_s16(v72, v73, 8uLL);
                v73.i16[0] = *(v52 + 2 * v68);
                v73.i16[1] = *(v52 + 2 * v69);
                v73.i16[2] = *(v52 + 2 * v70);
                v73.i16[3] = *(v52 + 2 * v71);
                *v55 = *&vorrq_s8(vshll_n_s16(v73, 0x10uLL), vmovl_u16(v74)) | __PAIR128__(0xFF000000FF000000, 0xFF000000FF000000);
                v59 = (v55 + 1);
                v56 = 3;
                v57 = 1;
                v58 = 20;
                v60 = 2;
                v61 = 1;
                v62 = 24;
                v63 = 1;
                v64 = 28;
                v65 = 32;
                goto LABEL_62;
              }

              if (v49 == 2)
              {
                v56 = 6;
                v57 = 0x3FFFFFFLL;
                v58 = 4;
                v59 = v55;
                v60 = 4;
                v61 = 3;
                v62 = 8;
                v63 = 2;
                v64 = 12;
                v65 = 16;
LABEL_62:
                v75 = (v54 >> v56) & v57;
                v76 = (v54 >> v60) & v61;
                v77 = *(v50 + 2 * v76);
                *v59 = *(v50 + 2 * v75) | (*(v51 + 2 * v75) << 8) | (*(v52 + 2 * v75) << 16) | 0xFF000000;
                v78 = (v55 + v62);
                *(v55 + v58) = v77 & 0xFFFF00FF | (*(v51 + 2 * v76) << 8) | (*(v52 + 2 * v76) << 16) | 0xFF000000;
                v79 = v61;
LABEL_64:
                v67 = (v55 + v64);
                *v78 = *(v50 + 2 * ((v54 >> v63) & v61)) | (*(v51 + 2 * ((v54 >> v63) & v61)) << 8) | (*(v52 + 2 * ((v54 >> v63) & v61)) << 16) | 0xFF000000;
                v66 = v79 & v54;
                goto LABEL_65;
              }
            }

            if (++v54 == 256)
            {
              return 1;
            }
          }
        }

        v82 = *a1;
        v83 = TIFFFileName(v82);
        TIFFErrorExtR(v82, v83, "No space for Palette mapping table");
        return 0;
      }

      return 1;
    }

    v16 = *(a1 + 14);
    if (v16 == 16)
    {
      v17 = 255;
    }

    else
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 + 1;
    v19 = malloc_type_malloc(v18, 0x100004077774924uLL);
    a1[10] = v19;
    if (v19)
    {
      if (*(a1 + 18))
      {
        if ((v17 & 0x80000000) == 0)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            *(a1[10] + v21++) = v20 / v17;
            v20 += 255;
          }

          while (v18 != v21);
        }
      }

      else if ((v17 & 0x80000000) == 0)
      {
        v24 = 0;
        v25 = 255 * v17;
        do
        {
          *(a1[10] + v24++) = v25 / v17;
          v25 -= 255;
        }

        while (v18 != v24);
      }

      v26 = *(a1 + 14);
      if (v26 > 0x10 || *(a1 + 18) > 1u)
      {
        return 1;
      }

      v27 = a1[10];
      if (v26 <= 8)
      {
        v28 = ((8u / *(a1 + 14)) << 10) + 2048;
      }

      else
      {
        v28 = 3072;
      }

      v29 = malloc_type_malloc(v28, 0x10040436913F5uLL);
      a1[11] = v29;
      if (v29)
      {
        v30 = 0;
        v31 = (v29 + 2048);
        while (1)
        {
          *(a1[11] + 8 * v30) = v31;
          if (v26 > 3)
          {
            break;
          }

          if (v26 == 1)
          {
            *v31 = (65793 * *(v27 + (v30 >> 7))) | 0xFF000000;
            v31[1] = (65793 * *(v27 + ((v30 >> 6) & 1))) | 0xFF000000;
            v31[2] = (65793 * *(v27 + ((v30 >> 5) & 1))) | 0xFF000000;
            v38 = v31 + 4;
            v31[3] = (65793 * *(v27 + ((v30 >> 4) & 1))) | 0xFF000000;
            v35 = 3;
            v36 = 1;
            v37 = 5;
            v39 = 2;
            v40 = 1;
            v41 = 6;
            v42 = 1;
            v43 = 28;
            v33 = 32;
LABEL_45:
            *v38 = (65793 * *(v27 + ((v30 >> v35) & v36))) | 0xFF000000;
            v44 = &v31[v41];
            v31[v37] = (65793 * *(v27 + ((v30 >> v39) & v40))) | 0xFF000000;
            v45 = v40;
LABEL_46:
            v46 = (65793 * *(v27 + ((v30 >> v42) & v40))) | 0xFF000000;
            v34 = (v31 + v43);
            *v44 = v46;
            v32 = v45 & v30;
            goto LABEL_47;
          }

          if (v26 == 2)
          {
            v35 = 6;
            v36 = 0x3FFFFFFLL;
            v37 = 1;
            v38 = v31;
            v39 = 4;
            v40 = 3;
            v41 = 2;
            v42 = 2;
            v43 = 12;
            v33 = 16;
            goto LABEL_45;
          }

LABEL_48:
          if (++v30 == 256)
          {
            free(a1[10]);
            a1[10] = 0;
            return 1;
          }
        }

        if (v26 == 4)
        {
          v42 = 4;
          v40 = 0xFFFFFFFLL;
          v43 = v26;
          v44 = v31;
          v45 = 15;
          v33 = 8;
          goto LABEL_46;
        }

        if (v26 != 16 && v26 != 8)
        {
          goto LABEL_48;
        }

        v32 = v30;
        v33 = 4;
        v34 = v31;
LABEL_47:
        v31 = (v31 + v33);
        *v34 = (65793 * *(v27 + v32)) | 0xFF000000;
        goto LABEL_48;
      }

      v80 = *a1;
      v81 = TIFFFileName(v80);
      TIFFErrorExtR(v80, v81, "No space for B&W mapping table");
    }

    else
    {
      v22 = *a1;
      v23 = TIFFFileName(v22);
      TIFFErrorExtR(v22, v23, "No space for photometric conversion table");
    }

    return 0;
  }

  return result;
}

uint64_t putRGBcontig8bitCMYKtile(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    while (1)
    {
      v11 = a5;
      if (a5 >= 8)
      {
        do
        {
          v12 = a9;
          *a2 = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v13 = &a9[v10 + 3];
          a2[1] = ((32897 * (*(v13 - 2) ^ 0xFF) * (*v13 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v13 - 3) ^ 0xFF) * (*v13 ^ 0xFFu)) >> 23) | ((32897 * (*(v13 - 1) ^ 0xFF) * (*v13 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v14 = &v13[v10];
          a2[2] = ((32897 * (*(v14 - 2) ^ 0xFF) * (*v14 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v14 - 3) ^ 0xFF) * (*v14 ^ 0xFFu)) >> 23) | ((32897 * (*(v14 - 1) ^ 0xFF) * (*v14 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v15 = &v14[v10];
          v16 = ((32897 * (*(v15 - 2) ^ 0xFF) * (*v15 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v15 - 3) ^ 0xFF) * (*v15 ^ 0xFFu)) >> 23) | ((32897 * (*(v15 - 1) ^ 0xFF) * (*v15 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v17 = &v15[v10];
          a2[3] = v16;
          a2[4] = ((32897 * (*(v17 - 2) ^ 0xFF) * (*v17 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v17 - 3) ^ 0xFF) * (*v17 ^ 0xFFu)) >> 23) | ((32897 * (*(v17 - 1) ^ 0xFF) * (*v17 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v18 = &v17[v10];
          a2[5] = ((32897 * (*(v18 - 2) ^ 0xFF) * (*v18 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v18 - 3) ^ 0xFF) * (*v18 ^ 0xFFu)) >> 23) | ((32897 * (*(v18 - 1) ^ 0xFF) * (*v18 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v19 = &v18[v10];
          a2[6] = ((32897 * (*(v19 - 2) ^ 0xFF) * (*v19 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v19 - 3) ^ 0xFF) * (*v19 ^ 0xFFu)) >> 23) | ((32897 * (*(v19 - 1) ^ 0xFF) * (*v19 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v20 = &v19[v10];
          v21 = *v20 ^ 0xFF;
          result = ((32897 * (*(v20 - 2) ^ 0xFFu) * v21) >> 15) & 0x1FF00;
          v22 = result | ((32897 * (*(v20 - 3) ^ 0xFFu) * v21) >> 23) | ((32897 * (*(v20 - 1) ^ 0xFFu) * v21) >> 7) & 0xFF0000 | 0xFF000000;
          v23 = a2 + 8;
          a2[7] = v22;
          v11 -= 8;
          a9 = &v20[v10 - 3];
          a2 += 8;
        }

        while (v11 > 7);
        a9 = &v12[3 * v10 + 2 * v10 + 2 * v10 + v10];
        a2 = v23;
      }

      if (v11 > 3)
      {
        break;
      }

      if (v11 <= 1)
      {
        if (!v11)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v11 != 2)
      {
        goto LABEL_20;
      }

LABEL_21:
      *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
      a9 += v10;
LABEL_22:
      *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
      a9 += v10;
LABEL_23:
      a2 += a8;
      a9 += v10 * a7;
      if (!--a6)
      {
        return result;
      }
    }

    if (v11 > 5)
    {
      if (v11 != 6)
      {
        *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
        a9 += v10;
      }

      *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
      a9 += v10;
    }

    else if (v11 == 4)
    {
      goto LABEL_19;
    }

    *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
    a9 += v10;
LABEL_19:
    *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
    a9 += v10;
LABEL_20:
    *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
    a9 += v10;
    goto LABEL_21;
  }

  return result;
}

uint64_t putRGBcontig8bitCMYKMaptile(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 80);
    v11 = *(result + 30);
    do
    {
      if (a5)
      {
        v12 = a5;
        do
        {
          v13 = a9[3] ^ 0xFF;
          result = a9[2] ^ 0xFFu;
          *a2++ = *(v10 + ((32897 * (*a9 ^ 0xFFu) * v13) >> 23)) | (*(v10 + ((32897 * (a9[1] ^ 0xFFu) * v13) >> 23)) << 8) | (*(v10 + ((32897 * result * v13) >> 23)) << 16) | 0xFF000000;
          a9 += v11;
          --v12;
        }

        while (v12);
      }

      a9 += v11 * a7;
      a2 += a8;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put8bitcmaptile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 96);
    v11 = *(result + 30);
    do
    {
      if (a5)
      {
        v12 = a5;
        do
        {
          *a2++ = **(v10 + 8 * *a9);
          a9 += v11;
          --v12;
        }

        while (v12);
      }

      a2 += a8;
      a9 += a7;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put4bitcmaptile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 96);
    do
    {
      if (a5 < 2)
      {
        v15 = a2;
        if (!a5)
        {
          goto LABEL_8;
        }
      }

      else
      {
        for (i = a5; i > 1; i -= 2)
        {
          v12 = *a9++;
          v13 = *(v10 + 8 * v12);
          *a2 = *v13;
          v14 = v13[1];
          v15 = a2 + 2;
          a2[1] = v14;
          a2 += 2;
        }

        if (!i)
        {
          goto LABEL_8;
        }
      }

      v16 = *a9++;
      *v15++ = **(v10 + 8 * v16);
LABEL_8:
      a2 = &v15[a8];
      a9 += (a7 + (a7 >> 31)) >> 1;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put2bitcmaptile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 96);
    if (a7 >= 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = a7 + 3;
    }

    v12 = v11 >> 2;
    do
    {
      if (a5 < 4)
      {
        v17 = a2;
        i = a5;
        if (a5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        for (i = a5; i > 3; i -= 4)
        {
          v14 = *a9++;
          v15 = *(v10 + 8 * v14);
          *a2 = *v15;
          a2[1] = v15[1];
          a2[2] = v15[2];
          v16 = v15[3];
          v17 = a2 + 4;
          a2[3] = v16;
          a2 += 4;
        }

        if (i)
        {
LABEL_12:
          v18 = *a9++;
          v19 = *(v10 + 8 * v18);
          if (i != 1)
          {
            if (i != 2)
            {
              v20 = *v19++;
              *v17++ = v20;
            }

            v21 = *v19++;
            *v17++ = v21;
          }

          *v17++ = *v19;
        }
      }

      a2 = &v17[a8];
      a9 += v12;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put1bitcmaptile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 96);
    if (a7 >= 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = a7 + 7;
    }

    v12 = v11 >> 3;
    while (a5 < 8)
    {
      v17 = a2;
      i = a5;
      if (a5)
      {
        goto LABEL_12;
      }

LABEL_27:
      a2 = &v17[a8];
      a9 += v12;
      if (!--a6)
      {
        return result;
      }
    }

    for (i = a5; i > 7; i -= 8)
    {
      v14 = *a9++;
      v15 = *(v10 + 8 * v14);
      *a2 = *v15;
      a2[1] = v15[1];
      a2[2] = v15[2];
      a2[3] = v15[3];
      a2[4] = v15[4];
      a2[5] = v15[5];
      a2[6] = v15[6];
      v16 = v15[7];
      v17 = a2 + 8;
      a2[7] = v16;
      a2 += 8;
    }

    if (!i)
    {
      goto LABEL_27;
    }

LABEL_12:
    v18 = *a9++;
    v19 = *(v10 + 8 * v18);
    if (i <= 3)
    {
      if (i == 1)
      {
LABEL_26:
        *v17++ = *v19;
        goto LABEL_27;
      }

      if (i == 2)
      {
LABEL_25:
        v25 = *v19++;
        *v17++ = v25;
        goto LABEL_26;
      }

LABEL_24:
      v24 = *v19++;
      *v17++ = v24;
      goto LABEL_25;
    }

    if (i > 5)
    {
      if (i != 6)
      {
        v20 = *v19++;
        *v17++ = v20;
      }

      v21 = *v19++;
      *v17++ = v21;
    }

    else if (i == 4)
    {
      goto LABEL_23;
    }

    v22 = *v19++;
    *v17++ = v22;
LABEL_23:
    v23 = *v19++;
    *v17++ = v23;
    goto LABEL_24;
  }

  return result;
}

uint64_t put16bitbwtile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a6)
  {
    v10 = 2 * *(result + 30);
    v11 = *(result + 88);
    do
    {
      if (a5)
      {
        v12 = a5;
        do
        {
          *a2++ = **(v11 + 8 * *(a9 + 1));
          a9 += v10;
          --v12;
        }

        while (v12);
      }

      a2 += a8;
      a9 += a7;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t putagreytile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 88);
    v11 = *(result + 30);
    do
    {
      if (a5)
      {
        v12 = a5;
        do
        {
          *a2++ = ((a9[1] << 24) | 0xFFFFFF) & **(v10 + 8 * *a9);
          a9 += v11;
          --v12;
        }

        while (v12);
      }

      a2 += a8;
      a9 += a7;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t putgreytile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 88);
    v11 = *(result + 30);
    do
    {
      if (a5)
      {
        v12 = a5;
        do
        {
          *a2++ = **(v10 + 8 * *a9);
          a9 += v11;
          --v12;
        }

        while (v12);
      }

      a2 += a8;
      a9 += a7;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put4bitbwtile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 88);
    do
    {
      if (a5 < 2)
      {
        v15 = a2;
        if (!a5)
        {
          goto LABEL_8;
        }
      }

      else
      {
        for (i = a5; i > 1; i -= 2)
        {
          v12 = *a9++;
          v13 = *(v10 + 8 * v12);
          *a2 = *v13;
          v14 = v13[1];
          v15 = a2 + 2;
          a2[1] = v14;
          a2 += 2;
        }

        if (!i)
        {
          goto LABEL_8;
        }
      }

      v16 = *a9++;
      *v15++ = **(v10 + 8 * v16);
LABEL_8:
      a2 = &v15[a8];
      a9 += (a7 + (a7 >> 31)) >> 1;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put2bitbwtile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 88);
    if (a7 >= 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = a7 + 3;
    }

    v12 = v11 >> 2;
    do
    {
      if (a5 < 4)
      {
        v17 = a2;
        i = a5;
        if (a5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        for (i = a5; i > 3; i -= 4)
        {
          v14 = *a9++;
          v15 = *(v10 + 8 * v14);
          *a2 = *v15;
          a2[1] = v15[1];
          a2[2] = v15[2];
          v16 = v15[3];
          v17 = a2 + 4;
          a2[3] = v16;
          a2 += 4;
        }

        if (i)
        {
LABEL_12:
          v18 = *a9++;
          v19 = *(v10 + 8 * v18);
          if (i != 1)
          {
            if (i != 2)
            {
              v20 = *v19++;
              *v17++ = v20;
            }

            v21 = *v19++;
            *v17++ = v21;
          }

          *v17++ = *v19;
        }
      }

      a2 = &v17[a8];
      a9 += v12;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put1bitbwtile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 88);
    if (a7 >= 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = a7 + 7;
    }

    v12 = v11 >> 3;
    while (a5 < 8)
    {
      v17 = a2;
      i = a5;
      if (a5)
      {
        goto LABEL_12;
      }

LABEL_27:
      a2 = &v17[a8];
      a9 += v12;
      if (!--a6)
      {
        return result;
      }
    }

    for (i = a5; i > 7; i -= 8)
    {
      v14 = *a9++;
      v15 = *(v10 + 8 * v14);
      *a2 = *v15;
      a2[1] = v15[1];
      a2[2] = v15[2];
      a2[3] = v15[3];
      a2[4] = v15[4];
      a2[5] = v15[5];
      a2[6] = v15[6];
      v16 = v15[7];
      v17 = a2 + 8;
      a2[7] = v16;
      a2 += 8;
    }

    if (!i)
    {
      goto LABEL_27;
    }

LABEL_12:
    v18 = *a9++;
    v19 = *(v10 + 8 * v18);
    if (i <= 3)
    {
      if (i == 1)
      {
LABEL_26:
        *v17++ = *v19;
        goto LABEL_27;
      }

      if (i == 2)
      {
LABEL_25:
        v25 = *v19++;
        *v17++ = v25;
        goto LABEL_26;
      }

LABEL_24:
      v24 = *v19++;
      *v17++ = v24;
      goto LABEL_25;
    }

    if (i > 5)
    {
      if (i != 6)
      {
        v20 = *v19++;
        *v17++ = v20;
      }

      v21 = *v19++;
      *v17++ = v21;
    }

    else if (i == 4)
    {
      goto LABEL_23;
    }

    v22 = *v19++;
    *v17++ = v22;
LABEL_23:
    v23 = *v19++;
    *v17++ = v23;
    goto LABEL_24;
  }

  return result;
}

BOOL initYCbCrConversion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 104) || (v9 = malloc_type_malloc(0x1830uLL, 0x100004000313F17uLL), (*(a1 + 104) = v9) != 0))
  {
    v23 = 0;
    v24 = 0;
    _cg_TIFFGetFieldDefaulted(*a1, 529, a3, a4, a5, a6, a7, a8, &v24);
    _cg_TIFFGetFieldDefaulted(*a1, 532, v11, v12, v13, v14, v15, v16, &v23);
    *&v17 = v24[1];
    if (*&v17 == 0.0)
    {
      TIFFErrorExtR(*a1, "initYCbCrConversion", "Invalid values for YCbCrCoefficients tag", v17);
    }

    else
    {
      *&v17 = *v23;
      if (*v23 > -2147500000.0 && *&v17 < 2147500000.0)
      {
        *&v17 = v23[1];
        if (*&v17 > -2147500000.0 && *&v17 < 2147500000.0)
        {
          *&v17 = v23[2];
          if (*&v17 > -2147500000.0 && *&v17 < 2147500000.0)
          {
            *&v17 = v23[3];
            if (*&v17 > -2147500000.0 && *&v17 < 2147500000.0)
            {
              *&v17 = v23[4];
              if (*&v17 > -2147500000.0 && *&v17 < 2147500000.0)
              {
                *&v17 = v23[5];
                if (*&v17 > -2147500000.0 && *&v17 < 2147500000.0)
                {
                  return TIFFYCbCrToRGBInit(*(a1 + 104), v24, v23) >= 0;
                }
              }
            }
          }
        }
      }

      TIFFErrorExtR(*a1, "initYCbCrConversion", "Invalid values for ReferenceBlackWhite tag", v17);
    }
  }

  else
  {
    TIFFErrorExtR(*a1, "initYCbCrConversion", "No space for YCbCr->RGB conversion state", v10);
  }

  return 0;
}

void *putcontig8bitYCbCr44tile(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, int a8, uint64_t a9)
{
  v10 = a6;
  v11 = a2;
  v12 = result;
  v13 = a2 + 4 * a5 + 4 * a8;
  v15 = v13 + 4 * a5 + 4 * a8;
  v16 = v15 + 4 * a5 + 4 * a8;
  v17 = 3 * a5 + 4 * a8;
  v18 = 2 * ((v9 & 0xFFFFFFFC) + a7 / 4);
  if (((a6 | a5) & 3) != 0)
  {
    if (a6)
    {
      v46 = v17;
      v42 = v18;
      do
      {
        if (a5)
        {
          v44 = v16;
          v19 = 0;
          v20 = a9 + 18;
          v21 = a5;
          while (1)
          {
            v22 = v20;
            v23 = *(v20 - 2);
            v24 = *(v20 - 1);
            v25 = v20;
            if (v21 != 1)
            {
              if (v21 != 2)
              {
                if (v21 != 3)
                {
                  if (v10 != 1)
                  {
                    if (v10 != 2)
                    {
                      if (v10 != 3)
                      {
                        v50 = 0;
                        v49 = 0;
                        TIFFYCbCrtoRGB(v12[13], *(v20 - 3), v23, v24, &v50 + 1, &v50, &v49);
                        v22 = v25;
                        *(v44 + v19 + 12) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                      }

                      v50 = 0;
                      v49 = 0;
                      TIFFYCbCrtoRGB(v12[13], *(v22 - 7), v23, v24, &v50 + 1, &v50, &v49);
                      v22 = v25;
                      *(v15 + v19 + 12) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                    }

                    v50 = 0;
                    v49 = 0;
                    TIFFYCbCrtoRGB(v12[13], *(v22 - 11), v23, v24, &v50 + 1, &v50, &v49);
                    v22 = v25;
                    *(v13 + v19 + 12) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                  }

                  v50 = 0;
                  v49 = 0;
                  TIFFYCbCrtoRGB(v12[13], *(v22 - 15), v23, v24, &v50 + 1, &v50, &v49);
                  v22 = v25;
                  *(v11 + v19 + 12) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                }

                if (v10 != 1)
                {
                  if (v10 != 2)
                  {
                    if (v10 != 3)
                    {
                      v50 = 0;
                      v49 = 0;
                      TIFFYCbCrtoRGB(v12[13], *(v22 - 4), v23, v24, &v50 + 1, &v50, &v49);
                      v22 = v25;
                      *(v44 + v19 + 8) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                    }

                    v50 = 0;
                    v49 = 0;
                    TIFFYCbCrtoRGB(v12[13], *(v22 - 8), v23, v24, &v50 + 1, &v50, &v49);
                    v22 = v25;
                    *(v15 + v19 + 8) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                  }

                  v50 = 0;
                  v49 = 0;
                  TIFFYCbCrtoRGB(v12[13], *(v22 - 12), v23, v24, &v50 + 1, &v50, &v49);
                  v22 = v25;
                  *(v13 + v19 + 8) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                }

                v50 = 0;
                v49 = 0;
                TIFFYCbCrtoRGB(v12[13], *(v22 - 16), v23, v24, &v50 + 1, &v50, &v49);
                v22 = v25;
                *(v11 + v19 + 8) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
              }

              if (v10 != 1)
              {
                if (v10 != 2)
                {
                  if (v10 != 3)
                  {
                    v50 = 0;
                    v49 = 0;
                    TIFFYCbCrtoRGB(v12[13], *(v22 - 5), v23, v24, &v50 + 1, &v50, &v49);
                    v22 = v25;
                    *(v44 + v19 + 4) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                  }

                  v50 = 0;
                  v49 = 0;
                  TIFFYCbCrtoRGB(v12[13], *(v22 - 9), v23, v24, &v50 + 1, &v50, &v49);
                  v22 = v25;
                  *(v15 + v19 + 4) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                }

                v50 = 0;
                v49 = 0;
                TIFFYCbCrtoRGB(v12[13], *(v22 - 13), v23, v24, &v50 + 1, &v50, &v49);
                v22 = v25;
                *(v13 + v19 + 4) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
              }

              v50 = 0;
              v49 = 0;
              TIFFYCbCrtoRGB(v12[13], *(v22 - 17), v23, v24, &v50 + 1, &v50, &v49);
              v22 = v25;
              *(v11 + v19 + 4) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
            }

            if (v10 != 1)
            {
              if (v10 != 2)
              {
                if (v10 != 3)
                {
                  v50 = 0;
                  v49 = 0;
                  TIFFYCbCrtoRGB(v12[13], *(v22 - 6), v23, v24, &v50 + 1, &v50, &v49);
                  v22 = v25;
                  *(v44 + v19) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                }

                v50 = 0;
                v49 = 0;
                TIFFYCbCrtoRGB(v12[13], *(v22 - 10), v23, v24, &v50 + 1, &v50, &v49);
                v22 = v25;
                *(v15 + v19) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
              }

              v50 = 0;
              v49 = 0;
              TIFFYCbCrtoRGB(v12[13], *(v22 - 14), v23, v24, &v50 + 1, &v50, &v49);
              v22 = v25;
              *(v13 + v19) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
            }

            v50 = 0;
            v49 = 0;
            a9 = v22;
            result = TIFFYCbCrtoRGB(v12[13], *(v22 - 18), v23, v24, &v50 + 1, &v50, &v49);
            *(v11 + v19) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
            if (v21 <= 3)
            {
              break;
            }

            v19 += 16;
            v20 = a9 + 18;
            v21 -= 4;
            if (!v21)
            {
              v11 += v19;
              v13 += v19;
              v15 += v19;
              v16 = v44 + v19;
              goto LABEL_40;
            }
          }

          v11 += v19 + 4 * v21;
          v13 += v19 + 4 * v21;
          v15 += v19 + 4 * v21;
          v16 = v44 + v19 + 4 * v21;
        }

LABEL_40:
        v11 += 4 * v46;
        v13 += 4 * v46;
        v15 += 4 * v46;
        a9 += v42;
        v16 += 4 * v46;
        v26 = v10 >= 4;
        v10 -= 4;
      }

      while (v10 != 0 && v26);
    }
  }

  else if (a6 >= 4)
  {
    v39 = a5 >> 2;
    v37 = 4 * v17;
    v38 = v18;
    do
    {
      v43 = v15;
      v45 = v16;
      v40 = v10;
      v27 = 0;
      v28 = (a9 + 8);
      a9 += v38;
      v29 = v39;
      v41 = v13;
      do
      {
        v30 = (v13 + v27);
        v31 = (v43 + v27);
        v48 = a9;
        v32 = v11;
        v33 = (v11 + v27);
        v34 = v28[8];
        v35 = v28[9];
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 8), v34, v35, &v50 + 1, &v50, &v49);
        *v33 = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 7), v34, v35, &v50 + 1, &v50, &v49);
        v33[1] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 6), v34, v35, &v50 + 1, &v50, &v49);
        v33[2] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 5), v34, v35, &v50 + 1, &v50, &v49);
        v33[3] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v11 = v32;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 4), v34, v35, &v50 + 1, &v50, &v49);
        *v30 = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 3), v34, v35, &v50 + 1, &v50, &v49);
        v30[1] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 2), v34, v35, &v50 + 1, &v50, &v49);
        v30[2] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 1), v34, v35, &v50 + 1, &v50, &v49);
        v30[3] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *v28, v34, v35, &v50 + 1, &v50, &v49);
        *v31 = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[1], v34, v35, &v50 + 1, &v50, &v49);
        v31[1] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[2], v34, v35, &v50 + 1, &v50, &v49);
        v31[2] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[3], v34, v35, &v50 + 1, &v50, &v49);
        v31[3] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v13 = v41;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[4], v34, v35, &v50 + 1, &v50, &v49);
        v36 = (v45 + v27);
        *v36 = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[5], v34, v35, &v50 + 1, &v50, &v49);
        v36[1] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[6], v34, v35, &v50 + 1, &v50, &v49);
        v36[2] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        result = TIFFYCbCrtoRGB(v12[13], v28[7], v34, v35, &v50 + 1, &v50, &v49);
        v36[3] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v27 += 16;
        a9 = v48 + 18;
        v28 += 18;
        --v29;
      }

      while (v29);
      v11 += v37 + v27;
      v13 = v41 + v37 + v27;
      v15 = v43 + v37 + v27;
      v16 = v45 + v37 + v27;
      v10 = v40 - 4;
    }

    while (v40 - 4 > 3);
  }

  return result;
}

void *putcontig8bitYCbCr42tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, int a8, unsigned __int8 *a9)
{
  v10 = a6;
  v11 = a5;
  v12 = a2;
  v13 = result;
  v15 = &a2[a5 + a8];
  v16 = a5 + 2 * a8;
  v17 = 2 * ((v9 & 0xFFFFFFFC) + a7 / 4);
  if (a6 & 1 | a5 & 3)
  {
    if (a6)
    {
      v18 = v16;
      v31 = 4 * a5;
      v32 = v17;
      do
      {
        if (v11)
        {
          v19 = v31;
          do
          {
            v20 = a9[8];
            v21 = a9[9];
            if (v11 != 1)
            {
              if (v11 != 2)
              {
                if (v11 != 3)
                {
                  if (v10 != 1)
                  {
                    v37 = 0;
                    v36 = 0;
                    TIFFYCbCrtoRGB(v13[13], a9[7], v20, v21, &v37 + 1, &v37, &v36);
                    v15[3] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
                  }

                  v37 = 0;
                  v36 = 0;
                  TIFFYCbCrtoRGB(v13[13], a9[3], v20, v21, &v37 + 1, &v37, &v36);
                  v12[3] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
                }

                if (v10 != 1)
                {
                  v37 = 0;
                  v36 = 0;
                  TIFFYCbCrtoRGB(v13[13], a9[6], v20, v21, &v37 + 1, &v37, &v36);
                  v15[2] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
                }

                v37 = 0;
                v36 = 0;
                TIFFYCbCrtoRGB(v13[13], a9[2], v20, v21, &v37 + 1, &v37, &v36);
                v12[2] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
              }

              if (v10 != 1)
              {
                v37 = 0;
                v36 = 0;
                TIFFYCbCrtoRGB(v13[13], a9[5], v20, v21, &v37 + 1, &v37, &v36);
                v15[1] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
              }

              v37 = 0;
              v36 = 0;
              TIFFYCbCrtoRGB(v13[13], a9[1], v20, v21, &v37 + 1, &v37, &v36);
              v12[1] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
            }

            if (v10 != 1)
            {
              v37 = 0;
              v36 = 0;
              TIFFYCbCrtoRGB(v13[13], a9[4], v20, v21, &v37 + 1, &v37, &v36);
              *v15 = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
            }

            v37 = 0;
            v36 = 0;
            v22 = *a9;
            a9 += 10;
            result = TIFFYCbCrtoRGB(v13[13], v22, v20, v21, &v37 + 1, &v37, &v36);
            v23 = (v12 + v19);
            *v12 = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
            v12 += 4;
            v24 = (v15 + v19);
            v19 -= 16;
            v25 = v11 >= 4;
            v11 -= 4;
            if (v25)
            {
              v15 += 4;
            }

            else
            {
              v15 = v24;
            }

            if (!v25)
            {
              v12 = v23;
            }
          }

          while (v11 != 0 && v25);
        }

        v12 += v18;
        a9 += v32;
        v15 += v18;
        v25 = v10 >= 2;
        v10 -= 2;
        v11 = a5;
      }

      while (v10 != 0 && v25);
    }
  }

  else if (a6 >= 2)
  {
    v35 = a5 >> 2;
    v33 = v17;
    v26 = 4 * v16;
    do
    {
      v27 = a9 + 4;
      a9 += v33;
      v28 = v35;
      do
      {
        v29 = v27[4];
        v30 = v27[5];
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], *(v27 - 4), v29, v30, &v37 + 1, &v37, &v36);
        *v12 = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], *(v27 - 3), v29, v30, &v37 + 1, &v37, &v36);
        v12[1] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], *(v27 - 2), v29, v30, &v37 + 1, &v37, &v36);
        v12[2] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], *(v27 - 1), v29, v30, &v37 + 1, &v37, &v36);
        v12[3] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], *v27, v29, v30, &v37 + 1, &v37, &v36);
        *v15 = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], v27[1], v29, v30, &v37 + 1, &v37, &v36);
        v15[1] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], v27[2], v29, v30, &v37 + 1, &v37, &v36);
        v15[2] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        result = TIFFYCbCrtoRGB(v13[13], v27[3], v29, v30, &v37 + 1, &v37, &v36);
        v12 += 4;
        v15[3] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v15 += 4;
        a9 += 10;
        v27 += 10;
        --v28;
      }

      while (v28);
      v12 = (v12 + v26);
      v15 = (v15 + v26);
      v10 -= 2;
    }

    while (v10 > 1);
  }

  return result;
}

void *putcontig8bitYCbCr41tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  v12 = result;
  v22 = a5 >> 2;
  v14 = a5 & 3;
  v23 = a8;
  v15 = 6 * (a7 / 4);
  do
  {
    if (a5 >= 4)
    {
      v16 = v22;
      do
      {
        v17 = a9[4];
        v18 = a9[5];
        v25 = 0;
        v24 = 0;
        TIFFYCbCrtoRGB(v12[13], *a9, v17, v18, &v25 + 1, &v25, &v24);
        *a2 = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
        v25 = 0;
        v24 = 0;
        TIFFYCbCrtoRGB(v12[13], a9[1], v17, v18, &v25 + 1, &v25, &v24);
        a2[1] = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
        v25 = 0;
        v24 = 0;
        TIFFYCbCrtoRGB(v12[13], a9[2], v17, v18, &v25 + 1, &v25, &v24);
        a2[2] = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
        v25 = 0;
        v24 = 0;
        result = TIFFYCbCrtoRGB(v12[13], a9[3], v17, v18, &v25 + 1, &v25, &v24);
        a2[3] = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
        a2 += 4;
        a9 += 6;
        --v16;
      }

      while (v16);
    }

    if (v14)
    {
      v19 = a9[4];
      v20 = a9[5];
      if (v14 != 1)
      {
        if (v14 != 2)
        {
          v25 = 0;
          v24 = 0;
          TIFFYCbCrtoRGB(v12[13], a9[2], v19, v20, &v25 + 1, &v25, &v24);
          a2[2] = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
        }

        v25 = 0;
        v24 = 0;
        TIFFYCbCrtoRGB(v12[13], a9[1], v19, v20, &v25 + 1, &v25, &v24);
        a2[1] = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
      }

      v25 = 0;
      v24 = 0;
      v21 = *a9;
      a9 += 6;
      result = TIFFYCbCrtoRGB(v12[13], v21, v19, v20, &v25 + 1, &v25, &v24);
      *a2 = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
      a2 += v14;
    }

    a2 += v23;
    a9 += v15;
    --a6;
  }

  while (a6);
  return result;
}

void *putcontig8bitYCbCr22tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, unsigned __int8 *a9)
{
  v9 = a6;
  v10 = a5;
  v11 = a2;
  v12 = result;
  if (a6 >= 2)
  {
    v14 = &a2[a5 + a8];
    v15 = (a5 + 2 * a8);
    v25 = (6 * ((a7 + (a7 >> 31)) >> 1));
    do
    {
      v16 = v10;
      if (v10 >= 2)
      {
        do
        {
          v17 = a9[4];
          v18 = a9[5];
          v27 = 0;
          v26 = 0;
          TIFFYCbCrtoRGB(v12[13], *a9, v17, v18, &v27 + 1, &v27, &v26);
          *v11 = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
          v27 = 0;
          v26 = 0;
          TIFFYCbCrtoRGB(v12[13], a9[1], v17, v18, &v27 + 1, &v27, &v26);
          v11[1] = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
          v27 = 0;
          v26 = 0;
          TIFFYCbCrtoRGB(v12[13], a9[2], v17, v18, &v27 + 1, &v27, &v26);
          *v14 = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
          v27 = 0;
          v26 = 0;
          result = TIFFYCbCrtoRGB(v12[13], a9[3], v17, v18, &v27 + 1, &v27, &v26);
          v14[1] = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
          v11 += 2;
          v14 += 2;
          a9 += 6;
          v16 -= 2;
        }

        while (v16 > 1);
      }

      if (v16)
      {
        v19 = a9[4];
        v20 = a9[5];
        v27 = 0;
        v26 = 0;
        TIFFYCbCrtoRGB(v12[13], *a9, v19, v20, &v27 + 1, &v27, &v26);
        *v11++ = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
        v27 = 0;
        v26 = 0;
        result = TIFFYCbCrtoRGB(v12[13], a9[2], v19, v20, &v27 + 1, &v27, &v26);
        *v14++ = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
        a9 += 6;
      }

      v11 += v15;
      v14 += v15;
      a9 += v25;
      v9 -= 2;
    }

    while (v9 > 1);
  }

  if (v9)
  {
    if (v10 >= 2)
    {
      do
      {
        v21 = a9[4];
        v22 = a9[5];
        v27 = 0;
        v26 = 0;
        TIFFYCbCrtoRGB(v12[13], *a9, v21, v22, &v27 + 1, &v27, &v26);
        *v11 = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
        v27 = 0;
        v26 = 0;
        result = TIFFYCbCrtoRGB(v12[13], a9[1], v21, v22, &v27 + 1, &v27, &v26);
        v11[1] = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
        v11 += 2;
        a9 += 6;
        v10 -= 2;
      }

      while (v10 > 1);
    }

    if (v10)
    {
      v23 = a9[4];
      v24 = a9[5];
      v27 = 0;
      v26 = 0;
      result = TIFFYCbCrtoRGB(v12[13], *a9, v23, v24, &v27 + 1, &v27, &v26);
      *v11 = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
    }
  }

  return result;
}

void *putcontig8bitYCbCr21tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned int a7, int a8, unsigned __int8 *a9)
{
  v12 = result;
  v22 = a5 >> 1;
  v14 = a8;
  v15 = ((2 * (a7 + (a7 >> 31))) & 0xFFFFFFFC);
  do
  {
    if (a5 >= 2)
    {
      v16 = v22;
      do
      {
        v17 = a9[2];
        v18 = a9[3];
        v24 = 0;
        v23 = 0;
        TIFFYCbCrtoRGB(v12[13], *a9, v17, v18, &v24 + 1, &v24, &v23);
        *a2 = HIDWORD(v24) | (v24 << 8) | (v23 << 16) | 0xFF000000;
        v24 = 0;
        v23 = 0;
        result = TIFFYCbCrtoRGB(v12[13], a9[1], v17, v18, &v24 + 1, &v24, &v23);
        a2[1] = HIDWORD(v24) | (v24 << 8) | (v23 << 16) | 0xFF000000;
        a2 += 2;
        a9 += 4;
        --v16;
      }

      while (v16);
    }

    if (a5)
    {
      v19 = a9[2];
      v20 = a9[3];
      v24 = 0;
      v23 = 0;
      v21 = *a9;
      a9 += 4;
      result = TIFFYCbCrtoRGB(v12[13], v21, v19, v20, &v24 + 1, &v24, &v23);
      *a2++ = HIDWORD(v24) | (v24 << 8) | (v23 << 16) | 0xFF000000;
    }

    a2 += v14;
    a9 += v15;
    --a6;
  }

  while (a6);
  return result;
}

void *putcontig8bitYCbCr12tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, int a7, int a8, uint64_t a9)
{
  v9 = a6;
  v10 = a5;
  v11 = a2;
  v12 = result;
  if (a6 >= 2)
  {
    v25 = 4 * a7;
    v23 = a5 + 2 * a8;
    v24 = v23;
    v14 = &a2[a5 + a8];
    do
    {
      v15 = 0;
      v16 = v11;
      v17 = v10;
      do
      {
        v18 = *(a9 + v15 + 2);
        v19 = *(a9 + v15 + 3);
        v28 = 0;
        v27 = 0;
        TIFFYCbCrtoRGB(v12[13], *(a9 + v15), v18, v19, &v28 + 1, &v28, &v27);
        v16[v15 / 4] = HIDWORD(v28) | (v28 << 8) | (v27 << 16) | 0xFF000000;
        v28 = 0;
        v27 = 0;
        result = TIFFYCbCrtoRGB(v12[13], *(a9 + v15 + 1), v18, v19, &v28 + 1, &v28, &v27);
        v14[v15 / 4] = HIDWORD(v28) | (v28 << 8) | (v27 << 16) | 0xFF000000;
        v15 += 4;
        --v17;
      }

      while (v17);
      v11 = &v16[v24 + v15 / 4];
      v14 = (v14 + v24 * 4 + v15);
      a9 += v25 + v15;
      v9 -= 2;
      v10 = a5;
    }

    while (v9 > 1);
    v11 = &v16[v23 + v15 / 4];
  }

  if (v9)
  {
    v20 = (a9 + 3);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v28 = 0;
      v27 = 0;
      result = TIFFYCbCrtoRGB(v12[13], *(v20 - 3), v21, v22, &v28 + 1, &v28, &v27);
      *v11++ = HIDWORD(v28) | (v28 << 8) | (v27 << 16) | 0xFF000000;
      v20 += 4;
      --v10;
    }

    while (v10);
  }

  return result;
}

void *putcontig8bitYCbCr11tile(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  v14 = 3 * a7;
  v15 = 4 * a8;
  do
  {
    v16 = a2;
    a2 = (a2 + v15);
    v17 = a5;
    do
    {
      v18 = a9[1];
      v19 = a9[2];
      v23 = 0;
      v22 = 0;
      v20 = *a9;
      a9 += 3;
      result = TIFFYCbCrtoRGB(*(a1 + 104), v20, v18, v19, &v23 + 1, &v23, &v22);
      *v16++ = HIDWORD(v23) | (v23 << 8) | (v22 << 16) | 0xFF000000;
      ++a2;
      --v17;
    }

    while (v17);
    a9 += v14;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t setorientation(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    if (*(a1 + 32) <= 2u)
    {
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          return result;
        }

LABEL_9:
        LOWORD(a1) = *(a1 + 34) - 1;
        if (a1 < 8u)
        {
          v4 = &unk_186227924;
          return v4[a1];
        }

        return 0;
      }

LABEL_18:
      LODWORD(a1) = *(a1 + 34) - 2;
      if (a1 < 7)
      {
        v4 = &unk_186227908;
        return v4[a1];
      }

      return 0;
    }

    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return result;
      }

LABEL_16:
      LODWORD(a1) = *(a1 + 34) - 1;
      if (a1 < 7)
      {
        v4 = &unk_186227964;
        return v4[a1];
      }

      return 0;
    }

LABEL_20:
    LOWORD(a1) = *(a1 + 34) - 1;
    if (a1 < 8u)
    {
      v4 = &unk_186227944;
      return v4[a1];
    }

    return 0;
  }

  if (*(a1 + 32) > 6u)
  {
    if (v3 == 7)
    {
      goto LABEL_20;
    }

    if (v3 == 8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 == 5)
    {
      goto LABEL_18;
    }

    if (v3 == 6)
    {
      goto LABEL_9;
    }
  }

  return result;
}

float *putcontig8bitCIELab8(float *result, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  if (a6)
  {
    v9 = a6;
    v12 = result;
    v14 = a8;
    v15 = 3 * a7;
    do
    {
      if (a5)
      {
        v16 = a5;
        do
        {
          TIFFCIELabToXYZ(*(v12 + 14), *a9, a9[1], a9[2], &v19 + 1, &v19, &v18 + 1);
          result = TIFFXYZToRGB(*(v12 + 14), &v18, &v17 + 1, &v17, *(&v19 + 1), *&v19, *(&v18 + 1));
          *a2++ = v18 | (HIDWORD(v17) << 8) | (v17 << 16) | 0xFF000000;
          a9 += 3;
          --v16;
        }

        while (v16);
      }

      a2 += v14;
      a9 += v15;
      --v9;
    }

    while (v9);
  }

  return result;
}

float *putcontig8bitCIELab16(float *result, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int16 *a9)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  if (a6)
  {
    v9 = a6;
    v12 = result;
    v14 = a8;
    v15 = 3 * a7;
    do
    {
      if (a5)
      {
        v16 = a5;
        do
        {
          TIFFCIELab16ToXYZ(*(v12 + 14), *a9, a9[1], a9[2], &v19 + 1, &v19, &v18 + 1);
          result = TIFFXYZToRGB(*(v12 + 14), &v18, &v17 + 1, &v17, *(&v19 + 1), *&v19, *(&v18 + 1));
          *a2++ = v18 | (HIDWORD(v17) << 8) | (v17 << 16) | 0xFF000000;
          a9 += 3;
          --v16;
        }

        while (v16);
      }

      a2 += v14;
      a9 += v15;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t gtTileSeparate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v12 = *a1;
  v88 = *(a1 + 72);
  v94 = 0;
  v13 = *(a1 + 16);
  v14 = _cg_TIFFTileSize(v12, a2, a3, a4, a5, a6, a7, a8);
  if (v13)
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  v16 = _TIFFMultiplySSize(v12, v15, v14, "gtTileSeparate");
  if (!v16)
  {
    return 0;
  }

  v23 = v16;
  v95[0] = 0;
  _cg_TIFFGetField(v12, 322, v17, v18, v19, v20, v21, v22, v95 + 4);
  _cg_TIFFGetField(v12, 323, v24, v25, v26, v27, v28, v29, v95);
  v30 = setorientation(a1);
  if (v30)
  {
    if (!((HIDWORD(v95[0]) + v9) >> 31))
    {
      v87 = v8 - 1;
      v31 = -v9 - HIDWORD(v95[0]);
      goto LABEL_11;
    }

LABEL_9:
    v32 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v32, "%s");
    return 0;
  }

  if (v9 + 0x7FFFFFFF < HIDWORD(v95[0]))
  {
    goto LABEL_9;
  }

  v87 = 0;
  v31 = v9 - HIDWORD(v95[0]);
LABEL_11:
  v86 = v31;
  v33 = *(a1 + 36);
  v34 = 0x1000300010001uLL >> (16 * v33);
  if (v33 >= 4)
  {
    LOWORD(v34) = 3;
  }

  v83 = v34;
  if (!HIDWORD(v95[0]) || !LODWORD(v95[0]))
  {
    v37 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v37, "tile width or height is zero");
    return 0;
  }

  v35 = *(a1 + 140) % HIDWORD(v95[0]);
  if (v35 + v31 != v35 + v31)
  {
    v36 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v36, "%s %lld");
    return 0;
  }

  if (!v8)
  {
    v38 = 1;
    goto LABEL_75;
  }

  v75 = v35 + v31;
  v76 = v9;
  v82 = v23;
  v77 = a2;
  v40 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  v93 = 0;
  v84 = (v33 < 4) & (0xBu >> (v33 & 0xF));
  v74 = *(a1 + 140) % HIDWORD(v95[0]);
  v73 = HIDWORD(v95[0]) - v35;
  v80 = 3 * v14;
  v81 = v14;
  v78 = v30;
  v79 = v8;
  do
  {
    v41 = LODWORD(v95[0]) + (*(a1 + 136) + v40) / LODWORD(v95[0]) * LODWORD(v95[0]) - (*(a1 + 136) + v40);
    if (LODWORD(v95[0]) + (*(a1 + 136) + v40) / LODWORD(v95[0]) * LODWORD(v95[0]) - *(a1 + 136) > v8)
    {
      v41 = v8 - v40;
    }

    v85 = v41;
    if (v9)
    {
      v42 = 0;
      v43 = *(a1 + 140);
      v44 = v75;
      LODWORD(v45) = v73;
      v46 = v74;
      do
      {
        v91 = v44;
        v47 = *(a1 + 136);
        if (v94)
        {
          if (_cg_TIFFReadTile(v12, v93, v43, v47 + v40, 0, 0) == -1 && *(a1 + 8))
          {
            goto LABEL_65;
          }

          if (v84)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v48 = _TIFFReadTileAndAllocBuffer(v12, &v94, v82, v43, v47 + v40, 0, 0);
          v93 = v94;
          if (v48 == -1 && (!v94 || *(a1 + 8)))
          {
            goto LABEL_65;
          }

          if (v84)
          {
            v49 = &v94[v80];
            if (!v13)
            {
              v49 = 0;
            }

            v92 = v49;
            v89 = v94;
            v90 = v94;
            goto LABEL_45;
          }

          v90 = &v94[v81];
          v89 = &v94[v81 + v81];
          v50 = &v89[v81];
          if (!v13)
          {
            v50 = 0;
          }

          v92 = v50;
        }

        if (_cg_TIFFReadTile(v12, v90, v43, *(a1 + 136) + v40, 0, 1) == -1 && *(a1 + 8) || _cg_TIFFReadTile(v12, v89, v43, *(a1 + 136) + v40, 0, 2) == -1 && *(a1 + 8))
        {
LABEL_65:
          v38 = 0;
          v64 = v78;
          v8 = v79;
          goto LABEL_66;
        }

LABEL_45:
        if (v13 && _cg_TIFFReadTile(v12, v92, v43, *(a1 + 136) + v40, 0, v83) == -1 && *(a1 + 8))
        {
          goto LABEL_65;
        }

        v51 = v9;
        v52 = v13;
        v53 = (*(a1 + 136) + v40) % LODWORD(v95[0]);
        v54 = _cg_TIFFTileRowSize(v12) * v53;
        v13 = v52;
        v9 = v51;
        v55 = v54 + *(a1 + 30) * v46;
        v56 = HIDWORD(v95[0]) - (v51 - v42);
        v57 = v42 + v45 > v51;
        if (v42 + v45 <= v51)
        {
          v58 = v46;
        }

        else
        {
          v58 = v56;
        }

        if (v42 + v45 <= v51)
        {
          v45 = v45;
        }

        else
        {
          v45 = (v51 - v42);
        }

        if (v57)
        {
          v59 = v56 + v86;
        }

        else
        {
          v59 = v91;
        }

        v60 = &v93[v55];
        v61 = &v90[v55];
        v62 = &v89[v55];
        v63 = &v92[v55];
        if (!v13)
        {
          v63 = 0;
        }

        v88(a1, v77 + 4 * v76 * v87 + 4 * v42, v42, v87, v45, v85, v58, v59, v60, v61, v62, v63);
        v46 = 0;
        v42 = (v45 + v42);
        v43 = (v45 + v43);
        LODWORD(v45) = HIDWORD(v95[0]);
        v44 = v86;
      }

      while (v42 < v51);
    }

    v64 = v78;
    v8 = v79;
    if (v78)
    {
      v65 = -v85;
    }

    else
    {
      v65 = v85;
    }

    v87 += v65;
    v40 += v85;
  }

  while (v40 < v79);
  v38 = 1;
LABEL_66:
  if (v64 >= 2)
  {
    v66 = 0;
    for (i = 0; i != v8; ++i)
    {
      v68 = v77 + 4 * (i * v9);
      v69 = (v68 + 4 * v76 - 4);
      if (v68 < v69)
      {
        v70 = v77 + 4 + 4 * v66;
        do
        {
          v71 = *(v70 - 4);
          *(v70 - 4) = *v69;
          *v69-- = v71;
          v72 = v70 >= v69;
          v70 += 4;
        }

        while (!v72);
      }

      v66 += v9;
    }
  }

LABEL_75:
  free(v94);
  return v38;
}

uint64_t gtStripSeparate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v10 = a2;
  v12 = *a1;
  v101 = *(a1 + 72);
  v110 = 0;
  v14 = *(a1 + 16);
  v13 = *(a1 + 20);
  v15 = _cg_TIFFStripSize(v12, a2, a3, a4, a5, a6, a7, a8);
  if (v14)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  v92 = v15;
  v17 = _TIFFMultiplySSize(v12, v16, v15, "gtStripSeparate");
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v100 = setorientation(a1);
  if (v100)
  {
    if (a3 >> 30)
    {
      v25 = TIFFFileName(v12);
      TIFFErrorExtR(v12, v25, "Width overflow");
      return 0;
    }

    v107 = v8 - 1;
    v99 = -2 * a3;
  }

  else
  {
    v107 = 0;
    v99 = 0;
  }

  v26 = *(a1 + 36);
  v27 = 0x1000300010001uLL >> (16 * v26);
  if (v26 >= 4)
  {
    LOWORD(v27) = 3;
  }

  v93 = v27;
  v109 = 0;
  _cg_TIFFGetFieldDefaulted(v12, 278, v19, v20, v21, v22, v23, v24, &v109);
  if (!v109)
  {
    v79 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v79, "rowsperstrip is zero");
    return 0;
  }

  v35 = _cg_TIFFScanlineSize(v12, v28, v29, v30, v31, v32, v33, v34);
  v41 = v13 - a3;
  if (v13 < a3)
  {
    v41 = 0;
  }

  v98 = v41;
  if (!v8)
  {
    v78 = 1;
    goto LABEL_65;
  }

  v42 = v8;
  v90 = v18;
  v108 = 0;
  v103 = 0;
  v104 = 0;
  v43 = 0;
  v106 = 0;
  v95 = (v26 < 4) & (0xBu >> (v26 & 0xF));
  v44 = a3;
  v91 = 0x7FFFFFFFFFFFFFFFuLL / v35;
  v96 = v12;
  v97 = a3;
  v45 = v14;
  v94 = v35;
  v102 = v8;
  while (1)
  {
    v46 = *(a1 + 136) + v43;
    if (v109 - v46 % v109 + v43 <= v42)
    {
      v47 = v109 - v46 % v109;
    }

    else
    {
      v47 = v42 - v43;
    }

    v48 = v47 + v46 % v109;
    if (v35 >= 1 && v91 < v48)
    {
      v80 = TIFFFileName(v12);
      TIFFErrorExtR(v12, v80, "Integer overflow in gtStripSeparate");
      return 0;
    }

    v105 = v47;
    v49 = v10;
    v50 = v44;
    v51 = v110;
    v52 = v35;
    v53 = _cg_TIFFComputeStrip(v12, v46, 0, v36, v37, v38, v39, v40);
    v54 = v52 * v48;
    if (v51)
    {
      break;
    }

    v61 = _TIFFReadEncodedStripAndAllocBuffer(v12, v53, &v110, v90, v54);
    v108 = v110;
    v44 = v50;
    v10 = v49;
    v42 = v102;
    v60 = v97;
    if (v61 == -1 && (!v110 || *(a1 + 8)))
    {
      v78 = 0;
      goto LABEL_58;
    }

    if (v95)
    {
      v62 = &v110[3 * v92];
      if (!v45)
      {
        v62 = 0;
      }

      v106 = v62;
      v103 = v110;
      v104 = v110;
      v12 = v96;
      goto LABEL_41;
    }

    v104 = &v110[v92];
    v103 = &v110[v92 + v92];
    v63 = &v103[v92];
    if (!v45)
    {
      v63 = 0;
    }

    v106 = v63;
    v12 = v96;
LABEL_37:
    v64 = _cg_TIFFComputeStrip(v12, v46, 1u, v55, v56, v57, v58, v59);
    if (_cg_TIFFReadEncodedStrip(v12, v64, v104, v54) == -1 && *(a1 + 8) || (v70 = _cg_TIFFComputeStrip(v12, v46, 2u, v65, v66, v67, v68, v69), _cg_TIFFReadEncodedStrip(v12, v70, v103, v54) == -1) && *(a1 + 8))
    {
LABEL_55:
      v78 = 0;
      v42 = v102;
      goto LABEL_58;
    }

LABEL_41:
    if (v45)
    {
      v71 = _cg_TIFFComputeStrip(v12, v46, v93, v55, v56, v57, v58, v59);
      if (_cg_TIFFReadEncodedStrip(v12, v71, v106, v54) == -1)
      {
        if (*(a1 + 8))
        {
          goto LABEL_55;
        }
      }
    }

    v72 = v94 * ((*(a1 + 136) + v43) % v109) + *(a1 + 30) * *(a1 + 140);
    v73 = &v108[v72];
    v74 = &v104[v72];
    v75 = &v103[v72];
    v76 = &v106[v72];
    if (!v45)
    {
      v76 = 0;
    }

    v101(a1, v10 + 4 * v60 * v107, 0, v107, v44, v105, v98, v99, v73, v74, v75, v76);
    v35 = v94;
    if (v100)
    {
      v77 = -v105;
    }

    else
    {
      v77 = v105;
    }

    v107 += v77;
    v43 += v105;
    v42 = v102;
    if (v43 >= v102)
    {
      v78 = 1;
      goto LABEL_58;
    }
  }

  if (_cg_TIFFReadEncodedStrip(v12, v53, v108, v54) != -1 || !*(a1 + 8))
  {
    v44 = v50;
    v10 = v49;
    v12 = v96;
    v60 = v97;
    if (v95)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v78 = 0;
  LODWORD(v44) = v50;
  v10 = v49;
  v42 = v102;
  v60 = v97;
LABEL_58:
  if (v100 >= 2)
  {
    v81 = 0;
    v82 = 0;
    v83 = v42;
    do
    {
      v84 = v10 + 4 * (v82 * v44);
      v85 = (v84 + 4 * v60 - 4);
      if (v84 < v85)
      {
        v86 = v10 + 4 + 4 * v81;
        do
        {
          v87 = *(v86 - 4);
          *(v86 - 4) = *v85;
          *v85-- = v87;
          v88 = v86 >= v85;
          v86 += 4;
        }

        while (!v88);
      }

      ++v82;
      v81 += v44;
    }

    while (v82 != v83);
  }

LABEL_65:
  free(v110);
  return v78;
}

void putRGBAAseparate8bittile(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12)
{
  if (a6)
  {
    while (1)
    {
      v16 = a5;
      if (a5 >= 8)
      {
        do
        {
          *a2 = *a9 | (*a10 << 8) | (*a11 << 16) | (*a12 << 24);
          a2[1] = a9[1] | (a10[1] << 8) | (a11[1] << 16) | (a12[1] << 24);
          a2[2] = a9[2] | (a10[2] << 8) | (a11[2] << 16) | (a12[2] << 24);
          a2[3] = a9[3] | (a10[3] << 8) | (a11[3] << 16) | (a12[3] << 24);
          a2[4] = a9[4] | (a10[4] << 8) | (a11[4] << 16) | (a12[4] << 24);
          a2[5] = a9[5] | (a10[5] << 8) | (a11[5] << 16) | (a12[5] << 24);
          a2[6] = a9[6] | (a10[6] << 8) | (a11[6] << 16) | (a12[6] << 24);
          v17 = a9 + 8;
          v18 = a9[7] | (a10[7] << 8) | (a11[7] << 16) | (a12[7] << 24);
          v19 = a10 + 8;
          v20 = a11 + 8;
          v21 = a12 + 8;
          v22 = a2 + 8;
          v16 -= 8;
          a12 += 8;
          a11 += 8;
          a2[7] = v18;
          a10 += 8;
          a9 = v17;
          a2 += 8;
        }

        while (v16 > 7);
        a2 = v22;
        a9 = v17;
        a10 = v19;
        a11 = v20;
        a12 = v21;
      }

      if (v16 > 3)
      {
        break;
      }

      if (v16 <= 1)
      {
        if (!v16)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (v16 != 2)
      {
        goto LABEL_19;
      }

LABEL_20:
      v59 = *a9++;
      v58 = v59;
      v60 = *a10++;
      v61 = v58 | (v60 << 8);
      v62 = *a11++;
      v63 = v61 | (v62 << 16);
      v64 = *a12++;
      *a2++ = v63 | (v64 << 24);
LABEL_21:
      v66 = *a9++;
      v65 = v66;
      v67 = *a10++;
      v68 = v65 | (v67 << 8);
      v69 = *a11++;
      v70 = v68 | (v69 << 16);
      v71 = *a12++;
      *a2++ = v70 | (v71 << 24);
LABEL_22:
      a9 += a7;
      a10 += a7;
      a11 += a7;
      a12 += a7;
      a2 += a8;
      if (!--a6)
      {
        return;
      }
    }

    if (v16 > 5)
    {
      if (v16 != 6)
      {
        v24 = *a9++;
        v23 = v24;
        v25 = *a10++;
        v26 = v23 | (v25 << 8);
        v27 = *a11++;
        v28 = v26 | (v27 << 16);
        v29 = *a12++;
        *a2++ = v28 | (v29 << 24);
      }

      v31 = *a9++;
      v30 = v31;
      v32 = *a10++;
      v33 = v30 | (v32 << 8);
      v34 = *a11++;
      v35 = v33 | (v34 << 16);
      v36 = *a12++;
      *a2++ = v35 | (v36 << 24);
    }

    else if (v16 == 4)
    {
      goto LABEL_18;
    }

    v38 = *a9++;
    v37 = v38;
    v39 = *a10++;
    v40 = v37 | (v39 << 8);
    v41 = *a11++;
    v42 = v40 | (v41 << 16);
    v43 = *a12++;
    *a2++ = v42 | (v43 << 24);
LABEL_18:
    v45 = *a9++;
    v44 = v45;
    v46 = *a10++;
    v47 = v44 | (v46 << 8);
    v48 = *a11++;
    v49 = v47 | (v48 << 16);
    v50 = *a12++;
    *a2++ = v49 | (v50 << 24);
LABEL_19:
    v52 = *a9++;
    v51 = v52;
    v53 = *a10++;
    v54 = v51 | (v53 << 8);
    v55 = *a11++;
    v56 = v54 | (v55 << 16);
    v57 = *a12++;
    *a2++ = v56 | (v57 << 24);
    goto LABEL_20;
  }
}

uint64_t putRGBUAseparate8bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12)
{
  for (; a6; --a6)
  {
    if (a5)
    {
      v16 = *(result + 120);
      v17 = a5;
      do
      {
        v19 = *a12++;
        v18 = v19;
        v20 = v16 + (v19 << 8);
        v21 = *a9++;
        v22 = *(v20 + v21);
        v23 = *a10++;
        v24 = *(v20 + v23);
        v25 = *a11++;
        *a2++ = v22 | (v18 << 24) | (v24 << 8) | (*(v20 + v25) << 16);
        --v17;
      }

      while (v17);
    }

    a9 += a7;
    a10 += a7;
    a11 += a7;
    a12 += a7;
    a2 += a8;
  }

  return result;
}

void putRGBseparate8bittile(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11)
{
  if (a6)
  {
    while (1)
    {
      v14 = a5;
      if (a5 >= 8)
      {
        do
        {
          *a2 = *a9 | (*a10 << 8) | (*a11 << 16) | 0xFF000000;
          a2[1] = a9[1] | (a10[1] << 8) | (a11[1] << 16) | 0xFF000000;
          a2[2] = a9[2] | (a10[2] << 8) | (a11[2] << 16) | 0xFF000000;
          a2[3] = a9[3] | (a10[3] << 8) | (a11[3] << 16) | 0xFF000000;
          a2[4] = a9[4] | (a10[4] << 8) | (a11[4] << 16) | 0xFF000000;
          a2[5] = a9[5] | (a10[5] << 8) | (a11[5] << 16) | 0xFF000000;
          a2[6] = a9[6] | (a10[6] << 8) | (a11[6] << 16) | 0xFF000000;
          v15 = a9 + 8;
          v16 = a10 + 8;
          v17 = a11 + 8;
          v18 = a2 + 8;
          v14 -= 8;
          a2[7] = a9[7] | (a10[7] << 8) | (a11[7] << 16) | 0xFF000000;
          a2 += 8;
          a11 += 8;
          a10 += 8;
          a9 += 8;
        }

        while (v14 > 7);
        a9 = v15;
        a10 = v16;
        a11 = v17;
        a2 = v18;
      }

      if (v14 > 3)
      {
        break;
      }

      if (v14 <= 1)
      {
        if (!v14)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (v14 != 2)
      {
        goto LABEL_19;
      }

LABEL_20:
      v45 = *a9++;
      v44 = v45;
      v47 = *a10++;
      v46 = v47;
      v48 = *a11++;
      *a2++ = v44 | (v46 << 8) | (v48 << 16) | 0xFF000000;
LABEL_21:
      v50 = *a9++;
      v49 = v50;
      v52 = *a10++;
      v51 = v52;
      v53 = *a11++;
      *a2++ = v49 | (v51 << 8) | (v53 << 16) | 0xFF000000;
LABEL_22:
      a9 += a7;
      a10 += a7;
      a11 += a7;
      a2 += a8;
      if (!--a6)
      {
        return;
      }
    }

    if (v14 > 5)
    {
      if (v14 != 6)
      {
        v20 = *a9++;
        v19 = v20;
        v22 = *a10++;
        v21 = v22;
        v23 = *a11++;
        *a2++ = v19 | (v21 << 8) | (v23 << 16) | 0xFF000000;
      }

      v25 = *a9++;
      v24 = v25;
      v27 = *a10++;
      v26 = v27;
      v28 = *a11++;
      *a2++ = v24 | (v26 << 8) | (v28 << 16) | 0xFF000000;
    }

    else if (v14 == 4)
    {
      goto LABEL_18;
    }

    v30 = *a9++;
    v29 = v30;
    v32 = *a10++;
    v31 = v32;
    v33 = *a11++;
    *a2++ = v29 | (v31 << 8) | (v33 << 16) | 0xFF000000;
LABEL_18:
    v35 = *a9++;
    v34 = v35;
    v37 = *a10++;
    v36 = v37;
    v38 = *a11++;
    *a2++ = v34 | (v36 << 8) | (v38 << 16) | 0xFF000000;
LABEL_19:
    v40 = *a9++;
    v39 = v40;
    v42 = *a10++;
    v41 = v42;
    v43 = *a11++;
    *a2++ = v39 | (v41 << 8) | (v43 << 16) | 0xFF000000;
    goto LABEL_20;
  }
}

uint64_t putRGBAAseparate16bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  for (; a6; --a6)
  {
    if (a5)
    {
      v16 = 0;
      v17 = *(result + 128);
      v18 = a5;
      do
      {
        *a2++ = *(v17 + *(a9 + v16)) | (*(v17 + *(a10 + v16)) << 8) | (*(v17 + *(a11 + v16)) << 16) | (*(v17 + *(a12 + v16)) << 24);
        v16 += 2;
        --v18;
      }

      while (v18);
      a12 += v16;
      a11 += v16;
      a10 += v16;
      a9 += v16;
    }

    a9 += 2 * a7;
    a10 += 2 * a7;
    a11 += 2 * a7;
    a12 += 2 * a7;
    a2 += a8;
  }

  return result;
}

uint64_t putRGBUAseparate16bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  for (; a6; --a6)
  {
    if (a5)
    {
      v16 = 0;
      v18 = *(result + 120);
      v17 = *(result + 128);
      v19 = a5;
      do
      {
        v20 = v18 + (*(v17 + *(a12 + v16)) << 8);
        *a2++ = *(v20 + *(v17 + *(a9 + v16))) | (*(v17 + *(a12 + v16)) << 24) | (*(v20 + *(v17 + *(a10 + v16))) << 8) | (*(v20 + *(v17 + *(a11 + v16))) << 16);
        v16 += 2;
        --v19;
      }

      while (v19);
      a12 += v16;
      a11 += v16;
      a10 += v16;
      a9 += v16;
    }

    a9 += 2 * a7;
    a10 += 2 * a7;
    a11 += 2 * a7;
    a12 += 2 * a7;
    a2 += a8;
  }

  return result;
}

uint64_t putRGBseparate16bittile(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int16 *a9, unsigned __int16 *a10, unsigned __int16 *a11)
{
  for (; a6; --a6)
  {
    if (a5)
    {
      v14 = *(result + 128);
      v15 = a5;
      do
      {
        v16 = *a9++;
        v17 = *(v14 + v16);
        v18 = *a10++;
        v19 = *(v14 + v18);
        v20 = *a11++;
        *a2++ = v17 | (v19 << 8) | (*(v14 + v20) << 16) | 0xFF000000;
        --v15;
      }

      while (v15);
    }

    a9 += a7;
    a10 += a7;
    a11 += a7;
    a2 += a8;
  }

  return result;
}

uint64_t putCMYKseparate8bittile(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12)
{
  for (; a6; --a6)
  {
    if (a5)
    {
      v16 = a5;
      do
      {
        v18 = *a12++;
        v17 = v18;
        v19 = *a9++;
        v17 ^= 0xFFu;
        v20 = 32897 * (v19 ^ 0xFF) * v17;
        v21 = *a10++;
        v22 = 32897 * (v21 ^ 0xFF) * v17;
        v23 = *a11++;
        result = (v22 >> 15) & 0x1FF00;
        *a2++ = result | (v20 >> 23) | ((32897 * (v23 ^ 0xFFu) * v17) >> 7) & 0xFF0000 | 0xFF000000;
        --v16;
      }

      while (v16);
    }

    a9 += a7;
    a10 += a7;
    a11 += a7;
    a12 += a7;
    a2 += a8;
  }

  return result;
}

void *putseparate8bitYCbCr11tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11)
{
  if (a6)
  {
    v11 = a6;
    v13 = result;
    v16 = a7;
    v17 = 4 * a8;
    do
    {
      v19 = a2;
      a2 = (a2 + v17);
      v20 = a5;
      do
      {
        v28 = 0;
        v27 = 0;
        v22 = *a9++;
        v21 = v22;
        v24 = *a10++;
        v23 = v24;
        v25 = *a11++;
        result = TIFFYCbCrtoRGB(v13[13], v21, v23, v25, &v28 + 1, &v28, &v27);
        *v19++ = HIDWORD(v28) | (v28 << 8) | (v27 << 16) | 0xFF000000;
        ++a2;
        --v20;
      }

      while (v20);
      a9 += v16;
      a10 += v16;
      a11 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

void IIOScanner::IIOScanner(IIOScanner *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  *this = &unk_1EF4DE2D8;
  *(this + 1) = a2;
  v5 = (this + 8);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (a2)
  {
    if (a3 > 0)
    {
      *(this + 2) = a3;
      *(this + 3) = 0;
      *(this + 5) = 0;
      *(this + 68) = a4;
      *(this + 16) = 0;
      return;
    }

    LogError("IIOScanner", 96, "*** IIOScanner: created with invalid buffer size: %llu\n", a4);
  }

  else
  {
    LogError("IIOScanner", 88, "*** IIOScanner: created with NULL buffer\n");
  }

  *v5 = 0;
  v5[1] = 0;
  *(this + 16) = -50;
}

uint64_t IIOScanner::getVal8(IIOScanner *this)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(this + 3), (v6 + 1) > *(this + 2)))
  {
    v10 = v1;
    LogError("getVal8", 163, "*** IIOScanner::getVal8 reached EOF\n", v2, v10, v3, v4);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  *(this + 3) = v6 + 1;
  return *(v5 + v6);
}

uint64_t IIOScanner::lookupVal8(IIOScanner *this)
{
  Val8 = IIOScanner::getVal8(this);
  v3 = *(this + 5);
  if (v3)
  {
    LOBYTE(Val8) = *(v3 + Val8);
  }

  return Val8;
}

uint64_t IIOScanner::getVal24(IIOScanner *this)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(this + 3), v7 = v6 + 3, (v6 + 3) > *(this + 2)))
  {
    v15 = v1;
    LogError("getVal24", 210, "*** IIOScanner::getVal24 reached EOF\n", v2, v15, v3, v4);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v8 = (v5 + v6);
  if (*(this + 68) == 1)
  {
    v10 = *v8++;
    v9 = v10;
  }

  else
  {
    v9 = __rev16(*(v8 + 1));
  }

  v11 = v9 | (*v8 << 16);
  *(this + 3) = v7;
  return v11;
}

uint64_t IIOScanner::getOSType(IIOScanner *this)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(this + 3), (v6 + 4) > *(this + 2)))
  {
    v11 = v1;
    LogError("getOSType", 248, "*** IIOScanner::getOSType reached EOF\n", v2, v11, v3, v4);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  LODWORD(v5) = *(v5 + v6);
  v7 = bswap32(v5);
  if (*(this + 68))
  {
    v5 = v7;
  }

  else
  {
    v5 = v5;
  }

  *(this + 3) = v6 + 4;
  return v5;
}

unint64_t IIOScanner::getVal64(IIOScanner *this)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(this + 3), (v6 + 8) > *(this + 2)))
  {
    v12 = v1;
    LogError("getVal64", 268, "*** IIOScanner::getVal64 reached EOF\n", v2, v12, v3, v4);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v7 = *(v5 + v6);
  v8 = bswap64(v7);
  if (!*(this + 68))
  {
    v7 = v8;
  }

  *(this + 3) = v6 + 8;
  return v7;
}

unint64_t IIOScanner::getTiffOffset(IIOScanner *this)
{
  if (*(this + 8) == 4)
  {
    return IIOScanner::getVal32(this);
  }

  return IIOScanner::getVal64(this);
}

unint64_t IIOScanner::getIFDCount(IIOScanner *this)
{
  if (*(this + 8) == 4)
  {
    return IIOScanner::getVal16(this);
  }

  return IIOScanner::getVal64(this);
}

unint64_t IIOScanner::sizeForTypeAndCount(IIOScanner *this, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  v4 = 1;
  switch(a2)
  {
    case 0u:
      return v3;
    case 1u:
    case 2u:
    case 6u:
    case 7u:
      goto LABEL_5;
    case 3u:
    case 8u:
      v4 = 2;
      if (!a3)
      {
        return 0;
      }

      goto LABEL_6;
    case 4u:
    case 9u:
    case 0xBu:
    case 0xDu:
      v4 = 4;
LABEL_5:
      if (a3)
      {
        goto LABEL_6;
      }

      return 0;
    case 5u:
    case 0xAu:
    case 0xCu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
      v4 = 8;
      if (!a3)
      {
        return 0;
      }

LABEL_6:
      v3 = v4 * a3;
      if (!is_mul_ok(v4, a3) || (v3 & 0x8000000000000000) != 0)
      {
        v5 = this;
        LogError("sizeForTypeAndCount", 382, "*** ERROR: IIOScanner::sizeForTypeAndCount: result size too large (%llu bytes)\n");
LABEL_9:
        *(v5 + 16) = -39;
        exception = __cxa_allocate_exception(4uLL);
        *exception = -39;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }

      return v3;
    default:
      v5 = this;
      LogError("sizeForTypeAndCount", 368, "*** IIOScanner::sizeForTypeAndCount: unknown TIFF type %u\n");
      goto LABEL_9;
  }
}

uint64_t IIOScanner::getTiffTag(uint64_t this, uint64_t a2)
{
  if (a2)
  {
    v3 = this;
    if ((*(this + 24) + 12) > *(this + 16))
    {
      *(a2 + 8) = 0;
      *a2 = 0;
      LogError("getTiffTag", 414, "*** IIOScanner::getTiffTag reached EOF\n");
      *(v3 + 64) = -39;
      exception = __cxa_allocate_exception(4uLL);
      *exception = -39;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    *a2 = IIOScanner::getVal16(this);
    *(a2 + 2) = IIOScanner::getVal16(v3);
    Val32 = IIOScanner::getVal32(v3);
    *(a2 + 4) = Val32;
    v5 = IIOScanner::sizeForTypeAndCount(v3, *(a2 + 2), Val32);
    this = IIOScanner::getVal32(v3);
    v6 = v5 - 1;
    if ((v5 - 1) <= 2)
    {
      v7 = dword_186227990[v6];
      v8 = 24 - 8 * v6;
      if (*(v3 + 68))
      {
        v8 = 0;
      }

      this = (this >> v8) & v7;
    }

    *(a2 + 8) = this;
  }

  return this;
}

unint64_t IIOScanner::getBigTiffTag(unint64_t this, uint64_t a2)
{
  if (a2)
  {
    v3 = this;
    if ((*(this + 24) + 20) > *(this + 16))
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      LogError("getBigTiffTag", 449, "*** IIOScanner::getBigTiffTag reached EOF\n");
      *(v3 + 64) = -39;
      exception = __cxa_allocate_exception(4uLL);
      *exception = -39;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    *a2 = IIOScanner::getVal16(this);
    *(a2 + 2) = IIOScanner::getVal16(v3);
    Val64 = IIOScanner::getVal64(v3);
    *(a2 + 4) = Val64;
    v5 = IIOScanner::sizeForTypeAndCount(v3, *(a2 + 2), Val64);
    this = IIOScanner::getVal64(v3);
    v6 = v5 - 1;
    if (v5 - 1 <= 6)
    {
      v7 = qword_1862279A0[v6];
      v8 = 56 - 8 * v6;
      if (*(v3 + 68))
      {
        v8 = 0;
      }

      this = (this >> v8) & v7;
    }

    *(a2 + 12) = this;
  }

  return this;
}

uint64_t IIOScanner::getString(IIOScanner *this)
{
  v2 = *(this + 2);
  v1 = *(this + 3);
  if (v1 >= v2)
  {
    return 0;
  }

  v3 = *(this + 1);
  v4 = v3 + v1;
  if (*(v3 + v1))
  {
    v5 = v1 + 1;
    while (1)
    {
      v6 = v5;
      *(this + 3) = v5;
      if (v2 == v5)
      {
        break;
      }

      ++v5;
      if (!*(v3 + v6))
      {
        v7 = v6;
        goto LABEL_10;
      }
    }

    v4 = 0;
    v7 = v2;
LABEL_10:
    v8 = v6 < v2;
  }

  else
  {
    v8 = 1;
    v7 = *(this + 3);
  }

  if (v8)
  {
    v1 = v7 + 1;
  }

  *(this + 3) = v1;
  return v4;
}

uint64_t IIOScanner::seek(IIOScanner *this, uint64_t a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      if (a2 >= 1)
      {
        v3 = *(this + 2);
        if (v3 > (a2 ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v3 = *(this + 2);
      if (a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (a3 != 1)
      {
        a2 = *(this + 3);
        goto LABEL_17;
      }

      if (a2 >= 1)
      {
        v3 = *(this + 3);
        if (v3 > (a2 ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          a2 = *(this + 2);
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v3 = *(this + 3);
      if (a2)
      {
LABEL_14:
        if (v3 < -a2)
        {
          v3 = 0;
          goto LABEL_18;
        }
      }
    }

LABEL_16:
    a2 += v3;
  }

LABEL_17:
  v3 = a2;
  if (a2 < 0)
  {
    v3 = 0;
    goto LABEL_22;
  }

LABEL_18:
  if (v3 >= *(this + 2))
  {
    v3 = *(this + 2);
  }

LABEL_22:
  *(this + 3) = v3;
  return v3;
}

size_t IIOScanner::getBytesAtOffset(IIOScanner *this, void *__dst, uint64_t a3, size_t __n)
{
  v4 = *(this + 1);
  if (!v4)
  {
    return 0;
  }

  v5 = __n;
  if (__n + a3 > *(this + 2))
  {
    return 0;
  }

  memcpy(__dst, (v4 + a3), __n);
  return v5;
}

size_t IIOScanner::getBytes(IIOScanner *this, void *__dst, size_t __n)
{
  v4 = *(this + 3);
  v5 = *(this + 1);
  if (v5 && (v6 = __n, v4 + __n <= *(this + 2)))
  {
    memcpy(__dst, (v5 + v4), __n);
    v4 = *(this + 3);
  }

  else
  {
    v6 = 0;
  }

  *(this + 3) = v4 + v6;
  return v6;
}

void ImageIO_XMP_IO::New_ImageIO_XMP_IO(ImageIO_XMP_IO *this, __CFData *a2)
{
  if (this)
  {
    v2 = CFGetTypeID(this);
    if (v2 == CFDataGetTypeID())
    {
      operator new();
    }
  }

  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 4;
  exception[1] = "New_ImageIO_XMP_IO, data must be a valid non-NULL CFMutableDataRef";
  *(exception + 16) = 0;
}

void ImageIO_XMP_IO::ImageIO_XMP_IO(ImageIO_XMP_IO *this, CFTypeRef cf)
{
  *this = &unk_1EF4DE308;
  v3 = CFRetain(cf);
  *(this + 4) = 0;
  *(this + 24) = 0;
  *(this + 1) = v3;
  *(this + 2) = 0;
}

size_t ImageIO_XMP_IO::Read(CFDataRef *this, void *a2, int a3)
{
  LODWORD(v3) = a3;
  BytePtr = CFDataGetBytePtr(this[1]);
  Length = CFDataGetLength(this[1]);
  v8 = this[2];
  if (v8 + v3 <= Length)
  {
    v3 = v3;
  }

  else
  {
    v3 = (Length - v8);
  }

  memmove(a2, v8 + BytePtr, v3);
  this[2] = (this[2] + v3);
  return v3;
}

void ImageIO_XMP_IO::Write(ImageIO_XMP_IO *this, const UInt8 *a2, unsigned int a3)
{
  v6 = *(this + 2);
  if (v6 == CFDataGetLength(*(this + 1)))
  {
    CFDataAppendBytes(*(this + 1), a2, a3);
  }

  else
  {
    v7 = *(this + 2) + a3;
    if (v7 > CFDataGetLength(*(this + 1)))
    {
      v8 = *(this + 1);
      v9 = *(this + 2) + a3;
      Length = CFDataGetLength(v8);
      CFDataIncreaseLength(v8, v9 - Length);
    }

    MutableBytePtr = CFDataGetMutableBytePtr(*(this + 1));
    memmove(&MutableBytePtr[*(this + 2)], a2, a3);
  }

  *(this + 2) += a3;
}

uint64_t ImageIO_XMP_IO::Seek(uint64_t a1, uint64_t a2, int a3)
{
  Length = CFDataGetLength(*(a1 + 8));
  switch(a3)
  {
    case 0:
      goto LABEL_6;
    case 1:
      a2 += *(a1 + 16);
      goto LABEL_6;
    case 2:
      a2 += Length;
LABEL_6:
      *(a1 + 16) = a2;
      goto LABEL_8;
  }

  a2 = *(a1 + 16);
LABEL_8:
  if (a2 <= Length)
  {
    if (a2 < 0)
    {
      a2 = 0;
      *(a1 + 16) = 0;
    }
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = CFDataGetLength(v7);
    CFDataIncreaseLength(v7, a2 - v8);
    return *(a1 + 16);
  }

  return a2;
}

void ImageIO_XMP_IO::Truncate(CFDataRef *this, const __CFData *a2)
{
  if (CFDataGetLength(this[1]) < a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    exception[1] = "ImageIO_XMP_IO::Truncate, new length is longer than current length";
    *(exception + 16) = 0;
  }

  if (this[2] > a2)
  {
    this[2] = a2;
  }

  v4 = this[1];

  CFDataSetLength(v4, a2);
}

CFDataRef ImageIO_XMP_IO::DeriveTemp(CFDataRef *this)
{
  if (!this[4])
  {
    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, this[1]);
    if (MutableCopy)
    {
      ImageIO_XMP_IO::New_ImageIO_XMP_IO(MutableCopy, v3);
    }
  }

  return this[4];
}

uint64_t ImageIO_XMP_IO::AbsorbTemp(ImageIO_XMP_IO *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "XMPFiles_IO::AbsorbTemp, no temp to absorb";
    *(exception + 16) = 0;
  }

  v3 = v2[1];
  v4 = (*(*v2 + 24))(v2);
  CFDataSetLength(*(this + 1), v4);
  v5 = *(this + 1);
  BytePtr = CFDataGetBytePtr(v3);
  v11.location = 0;
  v11.length = v4;
  CFDataReplaceBytes(v5, v11, BytePtr, v4);
  v7 = *(*this + 56);

  return v7(this);
}

uint64_t ImageIO_XMP_IO::DeleteTemp(ImageIO_XMP_IO *this)
{
  result = *(this + 4);
  if (result)
  {
    result = (*(*result + 72))(result);
    *(this + 4) = 0;
  }

  return result;
}

void ImageIO_XMP_IO::~ImageIO_XMP_IO(ImageIO_XMP_IO *this)
{
  *this = &unk_1EF4DE308;
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  if (*(this + 4))
  {
    (*(*this + 56))(this);
  }
}

{
  ImageIO_XMP_IO::~ImageIO_XMP_IO(this);

  JUMPOUT(0x186602850);
}

void IIO_Writer_ICO::~IIO_Writer_ICO(IIO_Writer_ICO *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_ICO::write(IIO_Writer_ICO *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_ICO::write", 0, 0, -1, 0);
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  ICOWritePlugin::ICOWritePlugin(v9, a2, a3);
  v5 = ICOWritePlugin::writeAll(v9);
  ICOWritePlugin::~ICOWritePlugin(v9, v6, v7);
  return v5;
}

void sub_1860DE12C(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ICOWritePlugin::~ICOWritePlugin(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860DE118);
}

void JP2WritePlugin::~JP2WritePlugin(JP2WritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t JP2WritePlugin::WriteProc(JP2WritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "JP2WritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  IIOWritePlugin::IIOWritePlugin(v11, this, a2, 1246769696);
  *&v11[0] = &unk_1EF4DE400;
  v7 = IIOWritePlugin::writeAll(v11);
  _cg_jpeg_mem_term(v11, v8, v9);
  return v7;
}

void sub_1860DE268(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860DE250);
}

void IIO_Writer_TIFF::~IIO_Writer_TIFF(IIO_Writer_TIFF *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_TIFF::write(IIO_Writer_TIFF *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_TIFF::write", 0, 0, -1, 0);
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  TIFFWritePlugin::TIFFWritePlugin(v9, a2, a3);
  v5 = TIFFWritePlugin::writeAll(v9);
  TIFFWritePlugin::~TIFFWritePlugin(v9, v6, v7);
  return v5;
}

void sub_1860DE364(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TIFFWritePlugin::~TIFFWritePlugin(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860DE350);
}

float ASTCBitsPerPixel(int a1, int a2)
{
  if (a1 != 4 || (result = 8.0, a2 != 4))
  {
    if (a1 == 5 && a2 == 5)
    {
      return 5.12;
    }

    else if (a1 == 6 && a2 == 6)
    {
      return 3.556;
    }

    else if (a1 != 8 || (result = 2.0, a2 != 8))
    {
      if (a1 == 4 && a2 == 6)
      {
        return 5.333;
      }

      else if (a1 == 8 && a2 == 10)
      {
        return 1.6;
      }

      else
      {
        v3 = a2 == 10 && a1 == 12;
        result = 1.067;
        if (!v3)
        {
          return 8.0;
        }
      }
    }
  }

  return result;
}

void IIOTextureHandler::setImp(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }
}

void sub_1860DE508(_Unwind_Exception *a1)
{
  v3 = *(v1 + 63);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

uint64_t CommonASTCReadPlugin::loadDataFromXPCObject(std::__shared_weak_count **this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (result)
  {
    this[61] = 0;
  }

  else
  {
    v7[0] = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_common_astc", v7);
    if (v7[0] == 24)
    {
      v6 = *(data + 2);
      *(this + 29) = *data;
      this[60] = v6;
      this[61] = 0;
      std::allocate_shared[abi:fe200100]<ASTCTextureImp,std::allocator<ASTCTextureImp>,unsigned int &,0>();
    }

    this[61] = 0;
    return 4294967246;
  }

  return result;
}

uint64_t CommonASTCReadPlugin::saveDataToXPCObject(CommonASTCReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_common_astc", this + 464, 0x18uLL);
  }

  return v4;
}

void CommonASTCWritePlugin::CommonASTCWritePlugin(CommonASTCWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, int a4)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, a4);
  *v4 = &unk_1EF4DE668;
  *(v4 + 44) = 0x400000044;
  *(v4 + 52) = 4;
  *(v4 + 40) = 0;
  *(v4 + 57) = 0;
  *(v4 + 61) = 0;
}

const __CFDictionary *CommonASTCWritePlugin::handleProperties(const __CFDictionary *this, IIODictionary *a2)
{
  if (a2)
  {
    v3 = this;
    if (IIODictionary::containsKey(a2, @"kCGImageDestinationLossyCompressionQuality"))
    {
      FloatForKey = IIODictionary::getFloatForKey(a2, @"kCGImageDestinationLossyCompressionQuality");
      v5 = 0.0;
      if (FloatForKey >= 0.0)
      {
        v5 = FloatForKey;
        if (FloatForKey > 1.0)
        {
          v5 = 1.0;
        }
      }

      v6 = (1.0 - v5) * 0.0032;
      *(v3 + 10) = v6;
    }

    else
    {
      *(v3 + 10) = 978433815;
    }

    ASTCBlockSize = GetASTCBlockSize(a2);
    *(v3 + 11) = ASTCBlockSize;
    *(v3 + 12) = ASTCBlockSize >> 4;
    *(v3 + 13) = ASTCBlockSize & 0xF;
    *(v3 + 56) = IIODictionary::getBoolForKey(a2, @"kCGImagePropertyASTCUseHDR");
    *(v3 + 57) = IIODictionary::getBoolForKey(a2, @"kCGImagePropertyASTCUseLZFSE");
    *(v3 + 58) = IIODictionary::getBoolForKey(a2, @"kCGImagePropertyASTCPreTwiddle");
    if (IIODictionary::containsKey(a2, @"kCGImagePropertyASTCFlipVertically"))
    {
      *(v3 + 60) = IIODictionary::getBoolForKey(a2, @"kCGImagePropertyASTCFlipVertically");
    }

    this = IIODictionary::containsKey(a2, @"kCGImagePropertyASTCWeightChannelsEqually");
    if (this)
    {
      this = IIODictionary::getBoolForKey(a2, @"kCGImagePropertyASTCWeightChannelsEqually");
      *(v3 + 61) = this;
    }
  }

  return this;
}