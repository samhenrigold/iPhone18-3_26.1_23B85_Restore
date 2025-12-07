@interface EspressoFileUtils
+ (void)writeEspressoBufferToBinFile:(id)file FromBuffer:(id)buffer;
+ (void)writeEspressoBufferToTextFile:(id)file FromBuffer:(id)buffer;
+ (void)writeIKFloatTensorBuffer:(const void *)buffer ToBinFile:(id)file;
@end

@implementation EspressoFileUtils

+ (void)writeEspressoBufferToTextFile:(id)file FromBuffer:(id)buffer
{
  v39[19] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  bufferCopy = buffer;
  if (!bufferCopy)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer instance is nil.");
    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer is not an instance of CSUEspressoBuffer.");
LABEL_37:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = objc_msgSend_espressoBuffer(bufferCopy, v6, v7, v8, v9);
  v33 = bufferCopy;

  v39[6] = 0;
  v11 = MEMORY[0x1E69E5530] + 64;
  v39[0] = MEMORY[0x1E69E5530] + 64;
  v12 = *(MEMORY[0x1E69E54D0] + 16);
  v37 = *(MEMORY[0x1E69E54D0] + 8);
  *&v38[*(v37 - 24) - 8] = v12;
  v13 = &v38[*(v37 - 24) - 8];
  std::ios_base::init(v13, v38);
  v14 = MEMORY[0x1E69E5530] + 24;
  v13[1].__vftable = 0;
  v13[1].__fmtflags_ = -1;
  v37 = v14;
  v39[0] = v11;
  MEMORY[0x1AC5AC0F0](v38);
  v15 = fileCopy;
  v20 = objc_msgSend_UTF8String(v15, v16, v17, v18, v19);
  v21 = strlen(v20);
  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    operator new();
  }

  v36 = v21;
  if (v21)
  {
    memmove(&__dst, v20, v21);
  }

  *(&__dst + v22) = 0;
  std::ofstream::open();
  v23 = v10[12];
  if (v23)
  {
    v24 = v10[11];
    if (v24)
    {
      v25 = 0;
      v26 = v10[11];
      while (!v26 || !v10[10])
      {
LABEL_13:
        if (++v25 >= v23)
        {
          goto LABEL_30;
        }
      }

      v27 = 0;
      v28 = 1;
      while (1)
      {
        v29 = v27 + 1;
        if (v28)
        {
          break;
        }

LABEL_18:
        ++v27;
        if (v29 >= v24)
        {
          v23 = v10[12];
          v26 = v24;
          goto LABEL_13;
        }
      }

      v30 = 0;
      while (1)
      {
        while (1)
        {
          std::ostream::operator<<();
          v31 = v10[12];
          if (v31 >= 2)
          {
            break;
          }

          if (v31 == 1 && !((v30 + 1) % v10[10]))
          {
            goto LABEL_21;
          }

LABEL_28:
          sub_1AC084190(&v37, " ", 1);
          ++v30;
          v28 = v10[10];
          if (v30 >= v28)
          {
LABEL_17:
            v24 = v10[11];
            goto LABEL_18;
          }
        }

        if (v29 % v10[11] || (v30 + 1) % v10[10])
        {
          goto LABEL_28;
        }

LABEL_21:
        sub_1AC084190(&v37, "\n", 1);
        ++v30;
        v28 = v10[10];
        if (v30 >= v28)
        {
          goto LABEL_17;
        }
      }
    }
  }

LABEL_30:
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v38[*(v37 - 24) - 8], *&v38[*(v37 - 24) + 24] | 4);
  }

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  v37 = *MEMORY[0x1E69E54D0];
  *&v38[*(v37 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1AC5AC100](v38);
  std::ostream::~ostream();
  MEMORY[0x1AC5AC380](v39);
}

+ (void)writeEspressoBufferToBinFile:(id)file FromBuffer:(id)buffer
{
  fileCopy = file;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AC083AAC;
  v10[3] = &unk_1E7967EC8;
  v11 = fileCopy;
  v6 = fileCopy;
  objc_msgSend_accessDataUsingBlock_(buffer, v7, v10, v8, v9);
}

+ (void)writeIKFloatTensorBuffer:(const void *)buffer ToBinFile:(id)file
{
  v17[19] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v17[6] = 0;
  v5 = MEMORY[0x1E69E5530] + 64;
  v17[0] = MEMORY[0x1E69E5530] + 64;
  v6 = MEMORY[0x1E69E54D0];
  v7 = *(MEMORY[0x1E69E54D0] + 16);
  v15 = *(MEMORY[0x1E69E54D0] + 8);
  *&v16[*(v15 - 24) - 8] = v7;
  v8 = &v16[*(v15 - 24) - 8];
  std::ios_base::init(v8, v16);
  v9 = MEMORY[0x1E69E5530] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v15 = v9;
  v17[0] = v5;
  MEMORY[0x1AC5AC0F0](v16);
  v10 = fileCopy;
  objc_msgSend_UTF8String(fileCopy, v11, v12, v13, v14);
  std::ofstream::open();
  std::ostream::write();
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v16[*(v15 - 24) - 8], *&v16[*(v15 - 24) + 24] | 4);
  }

  v15 = *v6;
  *&v16[*(v15 - 24) - 8] = v6[3];
  MEMORY[0x1AC5AC100](v16);
  std::ostream::~ostream();
  MEMORY[0x1AC5AC380](v17);
}

@end