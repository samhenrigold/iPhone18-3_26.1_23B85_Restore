@interface SAFrameIterator
- (BOOL)hasStack;
- (NSString)debugDescription;
- (SAFrameIterator)init;
- (void)addressForStackDepth:(uint64_t)depth frames:(unsigned int)frames numFrames:(int)numFrames isUserspace:(int)userspace isSwiftAsync:(BOOL *)async isLeaf:(unsigned int *)leaf frameIndexUsed:;
- (void)binaryLoadInfoForUserAddress:(void *)address;
- (void)clearTaskData;
- (void)clearThreadData;
- (void)dealloc;
- (void)iterateFramesWithBacktraceStyle:(unint64_t)style block:(id)block;
- (void)translatedAddressForNativeAddress:(uint64_t)address;
@end

@implementation SAFrameIterator

- (SAFrameIterator)init
{
  v9.receiver = self;
  v9.super_class = SAFrameIterator;
  v2 = [(SAFrameIterator *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(SAFrame);
    frame = v2->_frame;
    v2->_frame = v3;

    v5 = [[SAExclaveFrame alloc] initWithExclave:?];
    exclaveFrame = v2->_exclaveFrame;
    v2->_exclaveFrame = v5;

    v7 = v2->_exclaveFrame;
    if (v7)
    {
      v7->super._BOOLs.bits |= 8u;
    }

    v2->_exclaveInsertionIndex = -1;
  }

  return v2;
}

- (void)clearThreadData
{
  userFrames = self->_userFrames;
  if (userFrames)
  {
    free(userFrames);
  }

  self->_userFrames = 0;
  self->_numUserFrames = 0;
  self->_isUserStackTruncated = 0;
  swiftAsyncFrames = self->_swiftAsyncFrames;
  if (swiftAsyncFrames)
  {
    free(swiftAsyncFrames);
  }

  self->_swiftAsyncFrames = 0;
  *&self->_numSwiftAsyncFrames = 0;
  self->_isSwiftAsyncStackTruncated = 0;
  kernelFrames = self->_kernelFrames;
  if (kernelFrames)
  {
    free(kernelFrames);
  }

  self->_kernelFrames = 0;
  self->_continuation = 0;
  *&self->_numKernelFrames = 0xFFFFFFFF00000000;
  *&self->_isKernelStackTruncated = 0;
}

- (void)clearTaskData
{
  userBinaryLoadInfos = self->_userBinaryLoadInfos;
  self->_userBinaryLoadInfos = 0;

  self->_assumeUserBinaryLoadInfosContainMainBinary = 0;
  sharedCache = self->_sharedCache;
  self->_sharedCache = 0;

  addressTranslations = self->_addressTranslations;
  self->_addressTranslations = 0;
}

- (void)dealloc
{
  [(SAFrameIterator *)self clearThreadData];
  v3.receiver = self;
  v3.super_class = SAFrameIterator;
  [(SAFrameIterator *)&v3 dealloc];
}

- (void)binaryLoadInfoForUserAddress:(void *)address
{
  if (address)
  {
    address = [SABinaryLoadInfo binaryLoadInfoForAddress:a2 inBinaryLoadInfos:address[8] libraryCache:address[10]];
    v2 = vars8;
  }

  return address;
}

- (void)translatedAddressForNativeAddress:(uint64_t)address
{
  v2 = a2;
  v3 = *(address + 120);
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v6 = [v3 objectForKeyedSubscript:v5];

    if (v6)
    {
      unsignedLongLongValue = [v6 unsignedLongLongValue];
      if (unsignedLongLongValue)
      {
LABEL_7:

        return unsignedLongLongValue;
      }
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
      v9 = *(address + 120);
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2];
      [v9 setObject:v8 forKeyedSubscript:v10];
    }

    unsignedLongLongValue = v2;
    goto LABEL_7;
  }

  return v2;
}

- (void)addressForStackDepth:(uint64_t)depth frames:(unsigned int)frames numFrames:(int)numFrames isUserspace:(int)userspace isSwiftAsync:(BOOL *)async isLeaf:(unsigned int *)leaf frameIndexUsed:
{
  v35 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if (!depth || (v9 = frames) == 0)
  {
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "No frames", buf, 2u);
    }

    *__error() = v27;
    _SASetCrashLogMessage(646, "No frames");
    _os_crash();
    __break(1u);
LABEL_66:
    v29 = *__error();
    v30 = _sa_logt();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v32 = v8;
      v33 = 1024;
      v34 = v9;
      _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "stack depth %d, but only %d frames", buf, 0xEu);
    }

    *__error() = v29;
    _SASetCrashLogMessage(647, "stack depth %d, but only %d frames", v8, v9);
    _os_crash();
    __break(1u);
  }

  v8 = a2;
  if (a2 >= frames)
  {
    goto LABEL_66;
  }

  if (userspace)
  {
    v13 = ~a2 + frames;
    if (!leaf)
    {
      return *(depth + 8 * v13);
    }

    goto LABEL_33;
  }

  v16 = *(self + 56);
  if (v16 > 1)
  {
    if (v16 != 3)
    {
      if (v16 != 2)
      {
        return v10;
      }

      v13 = ~a2 + frames;
      *async = v13 == 0;
      if (leaf)
      {
        *leaf = v13;
      }

      if (!numFrames || v13 || !*(self + 120))
      {
        return *(depth + 8 * v13);
      }

      goto LABEL_25;
    }

    if (numFrames)
    {
      if (*(self + 120))
      {
        v20 = frames - 2;
        v21 = frames - 1;
        if (frames - 2 == a2 || v21 == a2)
        {
          v10 = *depth;
          v25 = [(SAFrameIterator *)self translatedAddressForNativeAddress:?];
          if (v25 == v10)
          {
            if (v21 == v8)
            {
LABEL_48:
              if (leaf)
              {
                v10 = 0;
                *leaf = -1;
                return v10;
              }

              return 0;
            }

            *async = 1;
            v26 = *(depth + 8);
            v25 = [(SAFrameIterator *)self translatedAddressForNativeAddress:v26];
            if (v25 == v26)
            {
              if (leaf)
              {
                *leaf = 0;
              }

              return v10;
            }

            if (leaf)
            {
              *leaf = 1;
            }
          }

          else
          {
            if (v20 == v8)
            {
              *async = 0;
              if (leaf)
              {
                *leaf = 1;
              }

              return *(depth + 8);
            }

            *async = 1;
            if (leaf)
            {
              *leaf = 0;
            }
          }

          return v25;
        }
      }
    }

LABEL_32:
    v13 = ~a2 + frames;
    *async = v13 == 0;
    if (!leaf)
    {
      return *(depth + 8 * v13);
    }

LABEL_33:
    *leaf = v13;
    return *(depth + 8 * v13);
  }

  if (!v16)
  {
    goto LABEL_32;
  }

  if (v16 != 1)
  {
    return v10;
  }

  v17 = frames - 1;
  if (frames - 1 != a2)
  {
    v13 = frames - 2 - a2;
    *async = frames - 2 == a2;
    if (leaf)
    {
      *leaf = v13;
    }

    if (numFrames && frames - 2 == a2 && *(self + 120))
    {
      v22 = *depth;
      v10 = [(SAFrameIterator *)self translatedAddressForNativeAddress:?];
      if (v10 == v22)
      {
        v10 = v22;
        if (*(self + 28) == 1)
        {
          v23 = *(depth + 8 * v17);
          v24 = [(SAFrameIterator *)self translatedAddressForNativeAddress:v23];
          if (v24 == v23)
          {
            return v22;
          }

          else
          {
            return v24;
          }
        }
      }

      return v10;
    }

    return *(depth + 8 * v13);
  }

  if (frames != 1)
  {
    goto LABEL_48;
  }

  *async = 1;
  if (leaf)
  {
    *leaf = 0;
  }

  if (!numFrames || !*(self + 120))
  {
    return *depth;
  }

LABEL_25:
  v18 = *depth;

  return [(SAFrameIterator *)self translatedAddressForNativeAddress:v18];
}

- (void)iterateFramesWithBacktraceStyle:(unint64_t)style block:(id)block
{
  styleCopy = style;
  selfCopy = self;
  v84 = *MEMORY[0x1E69E9840];
  if ((style & 2) != 0)
  {
    goto LABEL_70;
  }

  if ((style & 8) != 0 && (style & 0x14) != 0)
  {
    v62 = *__error();
    selfCopy = _sa_logt();
    if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v81 = styleCopy;
      _os_log_error_impl(&dword_1E0E2F000, selfCopy, OS_LOG_TYPE_ERROR, "backtrace style specified both swift async only and prefer/only C root frames: 0x%llx", buf, 0xCu);
    }

    *__error() = v62;
    _SASetCrashLogMessage(853, "backtrace style specified both swift async only and prefer/only C root frames: 0x%llx", styleCopy);
    _os_crash();
    __break(1u);
LABEL_115:
    v63 = *__error();
    v64 = _sa_logt();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = *(selfCopy + 44);
      *buf = 67109120;
      *v81 = v65;
      _os_log_error_impl(&dword_1E0E2F000, v64, OS_LOG_TYPE_ERROR, "%d _numKernelFrames", buf, 8u);
    }

    *__error() = v63;
    _SASetCrashLogMessage(954, "%d _numKernelFrames", *(selfCopy + 44));
    _os_crash();
    __break(1u);
    goto LABEL_118;
  }

  numUserFrames = self->_numUserFrames;
  backtracer = self->_backtracer;
  if (backtracer - 2 < 2)
  {
    goto LABEL_7;
  }

  if (backtracer == 1)
  {
    v11 = numUserFrames >= 2;
    v12 = numUserFrames - 2;
LABEL_9:
    if (v11)
    {
      LODWORD(v4) = v12;
    }

    else
    {
      LODWORD(v4) = 0;
    }

    goto LABEL_12;
  }

  if (!backtracer)
  {
LABEL_7:
    v11 = numUserFrames != 0;
    v12 = numUserFrames - 1;
    goto LABEL_9;
  }

LABEL_12:
  if (self->_numSwiftAsyncFrames)
  {
    isSwiftAsyncStackTruncated = 1;
  }

  else
  {
    isSwiftAsyncStackTruncated = self->_isSwiftAsyncStackTruncated;
  }

  v5 = v4 + 1;
  if ((style & 0x10) != 0 || !isSwiftAsyncStackTruncated)
  {
    v14 = style & 0x18;
LABEL_35:
    v25 = 1;
    goto LABEL_36;
  }

  v14 = style & 8;
  if ((style & 4) != 0 && v5 > self->_swiftAsyncStitchIndex)
  {
    goto LABEL_35;
  }

  [(SAFrame *)self->_frame reset];
  v15 = *(selfCopy + 8);
  if (v15)
  {
    *(v15 + 8) |= 2u;
  }

  if (*(selfCopy + 26) == 1)
  {
    v16 = *(selfCopy + 8);
    if (v16)
    {
      *(v16 + 8) |= 8u;
      v17 = *(selfCopy + 8);
    }

    else
    {
      v17 = 0;
    }

    (*(block + 2))(block, v17);
    v18 = *(selfCopy + 8);
    if (v18)
    {
      *(v18 + 8) &= ~8u;
    }
  }

  v19 = *(selfCopy + 36);
  if (v19)
  {
    for (i = 0; i < v19; ++i)
    {
      v21 = [(SAFrameIterator *)selfCopy addressForStackDepth:*(selfCopy + 96) frames:v19 numFrames:1 isUserspace:1 isSwiftAsync:buf isLeaf:0 frameIndexUsed:?];
      v22 = *(selfCopy + 8);
      if (v22)
      {
        *(v22 + 16) = v21;
      }

      v23 = [(SAFrameIterator *)selfCopy binaryLoadInfoForUserAddress:v21];
      v24 = *(selfCopy + 8);
      if (v24)
      {
        objc_storeWeak((v24 + 24), v23);
      }

      (*(block + 2))(block, *(selfCopy + 8));
      v19 = *(selfCopy + 36);
    }
  }

  v25 = 0;
LABEL_36:
  v26 = isSwiftAsyncStackTruncated && v14 != 0;
  if (*(selfCopy + 40) > v5)
  {
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      v77 = *(selfCopy + 40);
      v78 = *(selfCopy + 32);
      v60 = [selfCopy debugDescription];
      uTF8String = [v60 UTF8String];
      *buf = 67109890;
      *v81 = v77;
      *&v81[4] = 1024;
      *&v81[6] = v78;
      v82 = 1024;
      *v83 = v4;
      *&v83[4] = 2080;
      *&v83[6] = uTF8String;
      _os_log_fault_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_FAULT, "_swiftAsyncStitchIndex %u, _numUserFrames %u, maxDepth %u: %s", buf, 0x1Eu);
    }

    *__error() = v27;
    *(selfCopy + 40) = v5;
  }

  if ((v25 | v26 ^ 1) != 1)
  {
    goto LABEL_70;
  }

  [*(selfCopy + 8) reset];
  if ((v25 & *(selfCopy + 25)) == 1)
  {
    v29 = *(selfCopy + 8);
    if (v29)
    {
      *(v29 + 8) |= 8u;
      v30 = *(selfCopy + 8);
    }

    else
    {
      v30 = 0;
    }

    (*(block + 2))(block, v30);
    v31 = *(selfCopy + 8);
    if (v31)
    {
      *(v31 + 8) &= ~8u;
    }
  }

  v32 = *(selfCopy + 88);
  if (!v32)
  {
    goto LABEL_70;
  }

  if (!*(selfCopy + 32))
  {
LABEL_118:
    styleCopy = *__error();
    v66 = _sa_logt();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = *(selfCopy + 32);
      *buf = 67109120;
      *v81 = v67;
      _os_log_error_impl(&dword_1E0E2F000, v66, OS_LOG_TYPE_ERROR, "%d _numUserFrames", buf, 8u);
    }

    *__error() = styleCopy;
    _SASetCrashLogMessage(906, "%d _numUserFrames", *(selfCopy + 32));
    _os_crash();
    __break(1u);
    goto LABEL_121;
  }

  if (*(selfCopy + 24) != 1)
  {
    goto LABEL_52;
  }

  firstObject = [*(selfCopy + 64) firstObject];
  loadAddress = [firstObject loadAddress];

  if (!loadAddress)
  {
    v32 = *(selfCopy + 88);
LABEL_52:
    if (*(v32 + 4))
    {
      loadAddress2 = 0x100000000;
    }

    else
    {
      loadAddress2 = *MEMORY[0x1E69E9AC8];
    }

    goto LABEL_55;
  }

  firstObject2 = [*(selfCopy + 64) firstObject];
  loadAddress2 = [firstObject2 loadAddress];

LABEL_55:
  v37 = *(selfCopy + 40);
  if (v37 > v5)
  {
LABEL_121:
    v68 = *__error();
    v69 = _sa_logt();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = *(selfCopy + 40);
      styleCopy = [selfCopy debugDescription];
      uTF8String2 = [styleCopy UTF8String];
      *buf = 67109634;
      *v81 = v70;
      *&v81[4] = 1024;
      *&v81[6] = v4;
      v82 = 2080;
      *v83 = uTF8String2;
      _os_log_error_impl(&dword_1E0E2F000, v69, OS_LOG_TYPE_ERROR, "_swiftAsyncStitchIndex %u, maxDepth %u: %s", buf, 0x18u);
    }

    *__error() = v68;
    v72 = *(selfCopy + 40);
    selfCopy = [selfCopy debugDescription];
    _SASetCrashLogMessage(921, "_swiftAsyncStitchIndex %u, maxDepth %u: %s", v72, v4, [selfCopy UTF8String]);

    _os_crash();
    __break(1u);
LABEL_124:
    v73 = *__error();
    v74 = _sa_logt();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = *(selfCopy + 32);
      v76 = *(selfCopy + 40);
      *buf = 67109888;
      *v81 = v5;
      *&v81[4] = 1024;
      *&v81[6] = v75;
      v82 = 2048;
      *v83 = styleCopy;
      *&v83[8] = 1024;
      *&v83[10] = v76;
      _os_log_error_impl(&dword_1E0E2F000, v74, OS_LOG_TYPE_ERROR, "endingDepth %u, numUserFrames %u, backtraceStyle 0x%llx, stitchIndex %u", buf, 0x1Eu);
    }

    *__error() = v73;
    _SASetCrashLogMessage(926, "endingDepth %u, numUserFrames %u, backtraceStyle 0x%llx, stitchIndex %u", v5, *(selfCopy + 32), styleCopy, *(selfCopy + 40));
    _os_crash();
    __break(1u);
  }

  v38 = v4 - v37;
  if (v25)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38 + 1;
  }

  v5 = *(selfCopy + 32);
  if (v26)
  {
    v5 = v38 + 1;
    if (v38 + 1 > *(selfCopy + 32))
    {
      goto LABEL_124;
    }
  }

  if (v39 < v5)
  {
    do
    {
      buf[0] = 0;
      v40 = [(SAFrameIterator *)selfCopy addressForStackDepth:v39 frames:*(selfCopy + 88) numFrames:*(selfCopy + 32) isUserspace:1 isSwiftAsync:0 isLeaf:buf frameIndexUsed:0];
      LOBYTE(v25) = v25 & (v40 < loadAddress2);
      if ((v25 & 1) == 0)
      {
        v41 = buf[0];
        v42 = *(selfCopy + 8);
        if (v42)
        {
          *(v42 + 8) = *(v42 + 8) & 0xFE | buf[0] ^ 1;
          v43 = *(selfCopy + 8);
          if (v43)
          {
            *(v43 + 16) = v40;
          }
        }

        v4 = [(SAFrameIterator *)selfCopy binaryLoadInfoForUserAddress:v40];
        v44 = *(selfCopy + 8);
        if (v44)
        {
          objc_storeWeak((v44 + 24), v4);
        }

        (*(block + 2))(block, *(selfCopy + 8));
        if (v41)
        {
          break;
        }
      }

      ++v39;
    }

    while (v5 != v39);
  }

LABEL_70:
  if ((styleCopy & 0x19) != 0)
  {
    return;
  }

  v45 = (selfCopy + 8);
  [*(selfCopy + 8) reset];
  if (*(selfCopy + 8))
  {
    *(*(selfCopy + 8) + 8) |= 4u;
  }

  if (!*(selfCopy + 104))
  {
    v57 = *(selfCopy + 112);
    if (!v57)
    {
      return;
    }

    if (*v45)
    {
      *(*v45 + 16) = v57;
    }

    v58 = [SABinaryLoadInfo binaryLoadInfoForAddress:"binaryLoadInfoForAddress:inBinaryLoadInfos:libraryCache:" inBinaryLoadInfos:? libraryCache:?];
    v59 = *(selfCopy + 8);
    if (v59)
    {
      objc_storeWeak((v59 + 24), v58);
    }

    goto LABEL_110;
  }

  if (!*(selfCopy + 44))
  {
    goto LABEL_115;
  }

  if (*(selfCopy + 27) == 1)
  {
    if (*v45)
    {
      *(*v45 + 8) |= 8u;
      v46 = *v45;
    }

    else
    {
      v46 = 0;
    }

    (*(block + 2))(block, v46);
    if (*v45)
    {
      *(*v45 + 8) &= ~8u;
    }
  }

  v47 = *(selfCopy + 44);
  if (*(selfCopy + 48) == -1)
  {
    v48 = 1;
  }

  else
  {
    v48 = (styleCopy >> 5) & 1;
  }

  if (*(*(selfCopy + 104) + 4))
  {
    v49 = 0xFFFFFFFFLL;
  }

  else
  {
    v49 = *MEMORY[0x1E69E9AC8] - 1;
  }

  if (v47)
  {
    v50 = 0;
    v51 = 0;
    v52 = 1;
    do
    {
      v79 = 0;
      *buf = -1;
      v53 = [(SAFrameIterator *)selfCopy addressForStackDepth:v50 frames:*(selfCopy + 104) numFrames:v47 isUserspace:0 isSwiftAsync:0 isLeaf:&v79 frameIndexUsed:buf];
      if (((v48 | v51) & 1) == 0)
      {
        if (*buf >= *(selfCopy + 48))
        {
          v51 = 0;
        }

        else
        {
          (*(block + 2))(block, *(selfCopy + 16));
          v51 = 1;
        }
      }

      v52 &= v53 < v49;
      if ((v52 & 1) == 0)
      {
        v54 = v79;
        if (*v45)
        {
          *(*v45 + 8) = *(*v45 + 8) & 0xFE | !v79;
          if (*v45)
          {
            *(*v45 + 16) = v53;
          }
        }

        v55 = [SABinaryLoadInfo binaryLoadInfoForAddress:v53 inBinaryLoadInfos:*(selfCopy + 72) libraryCache:0];
        v56 = *(selfCopy + 8);
        if (v56)
        {
          objc_storeWeak((v56 + 24), v55);
        }

        (*(block + 2))(block, *v45);
        if (v54)
        {
          break;
        }
      }

      ++v50;
      v47 = *(selfCopy + 44);
    }

    while (v50 < v47);
  }

  else
  {
    v51 = 0;
  }

  if (((v48 | v51) & 1) == 0)
  {
    v45 = (selfCopy + 16);
LABEL_110:
    (*(block + 2))(block, *v45);
  }
}

- (BOOL)hasStack
{
  if ([(SAFrameIterator *)self hasUserStack])
  {
    return 1;
  }

  return [(SAFrameIterator *)self hasKernelStack];
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  numKernelFrames = self->_numKernelFrames;
  if (numKernelFrames)
  {
    v5 = *self->_kernelFrames;
  }

  else
  {
    v5 = 0;
  }

  numUserFrames = self->_numUserFrames;
  if (numUserFrames)
  {
    v7 = *self->_userFrames;
  }

  else
  {
    v7 = 0;
  }

  numSwiftAsyncFrames = self->_numSwiftAsyncFrames;
  if (numSwiftAsyncFrames)
  {
    v9 = *self->_swiftAsyncFrames;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v3 initWithFormat:@"stack with %d kernel frames (leaf 0x%llx), %d user (leaf 0x%llx), %d swift async (leaf 0x%llx), backtracer %llu, exclave@%u", numKernelFrames, v5, numUserFrames, v7, numSwiftAsyncFrames, v9, self->_backtracer, self->_exclaveInsertionIndex];

  return v10;
}

@end