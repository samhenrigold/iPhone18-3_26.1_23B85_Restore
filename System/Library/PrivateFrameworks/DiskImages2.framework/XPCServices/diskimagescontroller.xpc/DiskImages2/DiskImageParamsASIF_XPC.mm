@interface DiskImageParamsASIF_XPC
- (BOOL)setBlockSize:(unint64_t)size error:(id *)error;
- (DiskImageParamsASIF_XPC)initWithBackendXPC:(id)c header:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)di_asif :header;
- (DiskImageParamsASIF_XPC)initWithCoder:(id)coder;
- (id)instanceID;
- (int)setSizeWithDiskImage:(void *)image newSize:(unint64_t)size;
- (unique_ptr<DiskImage,)createSinkDiskImage;
- (void)encodeWithCoder:(id)coder;
- (void)setHeader:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)di_asif :header;
@end

@implementation DiskImageParamsASIF_XPC

- (DiskImageParamsASIF_XPC)initWithBackendXPC:(id)c header:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)di_asif :header
{
  cCopy = c;
  v12.receiver = self;
  v12.super_class = DiskImageParamsASIF_XPC;
  v7 = [(DiskImageParamsXPC *)&v12 initWithBackendXPC:cCopy];
  v8 = v7;
  if (v7)
  {
    v9 = *di_asif.__ptr_;
    *di_asif.__ptr_ = 0;
    ptr = v7->_header.__ptr_;
    v8->_header.__ptr_ = v9;
    if (ptr)
    {
      operator delete();
    }

    if (v9)
    {
      [(DiskImageParamsXPC *)v8 setBlockSize:*(v9 + 68)];
    }
  }

  return v8;
}

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v4 = backendXPC;
  if (backendXPC)
  {
    objc_msgSend_backend(backendXPC);
  }

  else
  {
    lpsrc[0] = 0;
    lpsrc[1] = 0;
  }

  v5 = lpsrc[1];
  if (lpsrc[1])
  {
    atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
  }

  while (1)
  {
    v6 = lpsrc[0];
    if (!lpsrc[0])
    {
      break;
    }

    v8 = lpsrc[1];
    if (v7)
    {
      v12 = v7;
      if (lpsrc[1])
      {
        atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
      }

      *&v27 = 0x200000001;
      sub_1000B03A8("header_ignore_fields_t", 2, &v27, 2);
      v12[98] = 2;
      if (v8)
      {
        sub_10000367C(v8);
      }

LABEL_25:
      if (self->_header.__ptr_)
      {
        backendXPC2 = [(DiskImageParamsXPC *)self backendXPC];
        v14 = backendXPC2;
        if (backendXPC2)
        {
          objc_msgSend_backend(backendXPC2);
        }

        else
        {
          v23 = 0;
          v24 = 0;
        }

        sub_10019A824(&v23, &v26);
        sub_10004B28C(&v26, &v27);
        if (*(&v26 + 1))
        {
          sub_10000367C(*(&v26 + 1));
        }

        if (v24)
        {
          sub_10000367C(v24);
        }

        v16 = v27;
        if (v27)
        {
          sub_1001593CC(*(v27 + 40));
          atomic_store(*(*(v16 + 40) + 16), (*(v16 + 40) + 64));
        }

        if (*(&v27 + 1))
        {
          sub_10000367C(*(&v27 + 1));
        }

        backendXPC3 = [(DiskImageParamsXPC *)self backendXPC];
        v18 = backendXPC3;
        if (backendXPC3)
        {
          objc_msgSend_backend(backendXPC3);
          v19 = v27;
        }

        else
        {
          v19 = 0;
          v27 = 0uLL;
        }

        v20 = (*(*v19 + 40))(v19);
        if (*(&v27 + 1))
        {
          sub_10000367C(*(&v27 + 1));
        }

        if (v20)
        {
          backendXPC4 = [(DiskImageParamsXPC *)self backendXPC];
          if (backendXPC4)
          {
            objc_msgSend_backend(backendXPC4);
          }

          else
          {
            v27 = 0uLL;
          }

          operator new();
        }

        backendXPC5 = [(DiskImageParamsXPC *)self backendXPC];
        if (backendXPC5)
        {
          objc_msgSend_backend(backendXPC5);
        }

        else
        {
          v27 = 0uLL;
        }

        operator new();
      }

      [(DiskImageParamsXPC *)self blockSize];
      [(DiskImageParamsXPC *)self blockSize];
      backendXPC6 = [(DiskImageParamsXPC *)self backendXPC];
      if (backendXPC6)
      {
        objc_msgSend_backend(backendXPC6);
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      operator new();
    }

    if (lpsrc[1])
    {
      goto LABEL_9;
    }

LABEL_10:
    if (v5)
    {
      sub_10000367C(v5);
    }

    sub_10019AD28(lpsrc, &v27);
    v9 = v27;
    v27 = 0uLL;
    v10 = lpsrc[1];
    *lpsrc = v9;
    if (v10)
    {
      sub_10000367C(v10);
      v11 = lpsrc[0];
      if (*(&v27 + 1))
      {
        sub_10000367C(*(&v27 + 1));
      }

      v5 = v8;
      if (v11 == v6)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v5 = v8;
      if (v9 == v6)
      {
        goto LABEL_25;
      }
    }
  }

  v8 = lpsrc[1];
  if (!lpsrc[1])
  {
    goto LABEL_10;
  }

LABEL_9:
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  goto LABEL_10;
}

- (int)setSizeWithDiskImage:(void *)image newSize:(unint64_t)size
{
  v8[0].receiver = self;
  v8[0].super_class = DiskImageParamsASIF_XPC;
  v5 = [(objc_super *)v8 setSizeWithDiskImage:image newSize:size];
  if (!v5)
  {
    v6 = *(image + 4);
    v10 = *(image + 3);
    v11 = v6;
    *v12 = *(image + 5);
    *&v12[14] = *(image + 94);
    v8[1] = *(image + 104);
    v9 = *(image + 15);
    operator new();
  }

  return v5;
}

- (DiskImageParamsASIF_XPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DiskImageParamsASIF_XPC;
  v5 = [(DiskImageParamsXPC *)&v10 initWithCoder:coderCopy];
  if (v5 && [coderCopy containsValueForKey:@"sparseHeader"])
  {
    v9 = 0;
    if ([coderCopy decodeBytesForKey:@"sparseHeader" returnedLength:&v9])
    {
      if (v9 == 108)
      {
        operator new();
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v8);
    sub_1000026BC(v8, "Unexpected ASIF header length (", 31);
    std::ostream::operator<<();
    sub_1000026BC(v8, ")", 1);
    sub_100004290(exception, v8, 0x9Au);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = DiskImageParamsASIF_XPC;
  [(DiskImageParamsXPC *)&v6 encodeWithCoder:coderCopy];
  ptr = self->_header.__ptr_;
  if (ptr)
  {
    [coderCopy encodeBytes:ptr length:108 forKey:@"sparseHeader"];
  }
}

- (id)instanceID
{
  if (self->_header.__ptr_)
  {
    bzero(v11, 0x210uLL);
    v8.receiver = self;
    v8.super_class = DiskImageParamsASIF_XPC;
    instanceID = [(DiskImageParamsXPC *)&v8 instanceID];
    [instanceID getUUIDBytes:v11];
    v4 = [NSUUID alloc];
    v10[0] = sub_10019E174(v11, 528);
    v10[1] = v5;
    instanceID2 = [v4 initWithUUIDBytes:v10];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DiskImageParamsASIF_XPC;
    instanceID2 = [(DiskImageParamsXPC *)&v9 instanceID];
  }

  return instanceID2;
}

- (BOOL)setBlockSize:(unint64_t)size error:(id *)error
{
  ptr = self->_header.__ptr_;
  if (ptr && *(ptr + 34) != size)
  {

    return [DIError failWithPOSIXCode:22 description:@"Invalid block size for image" error:error];
  }

  else
  {
    [(DiskImageParamsXPC *)self setBlockSize:size, error, v4, v5];
    return 1;
  }
}

- (void)setHeader:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)di_asif :header
{
  v3 = *di_asif.__ptr_;
  if (*di_asif.__ptr_)
  {
    *di_asif.__ptr_ = 0;
    ptr = self->_header.__ptr_;
    self->_header.__ptr_ = v3;
    if (ptr)
    {
      operator delete();
    }

    v6 = *(v3 + 68);

    [(DiskImageParamsXPC *)self setBlockSize:v6];
  }
}

@end