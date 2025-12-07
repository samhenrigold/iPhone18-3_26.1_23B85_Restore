@interface MDLBundleAssetResolver
- (BOOL)canResolveAssetNamed:(id)named;
- (MDLBundleAssetResolver)initWithBundle:(NSString *)path;
- (id)resolveAssetNamed:(id)named;
@end

@implementation MDLBundleAssetResolver

- (MDLBundleAssetResolver)initWithBundle:(NSString *)path
{
  v5 = path;
  v10.receiver = self;
  v10.super_class = MDLBundleAssetResolver;
  v6 = [(MDLBundleAssetResolver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, path);
    v8 = v7;
  }

  return v7;
}

- (id)resolveAssetNamed:(id)named
{
  namedCopy = named;
  v5 = namedCopy;
  if (self->_bundle)
  {
    memset(&__str, 0, sizeof(__str));
    v6 = namedCopy;
    v17 = objc_msgSend_cStringUsingEncoding_(v6, v7, 4, v8, v13, v14, v15, v16, v9, v10, v11, v12);
    sub_239E552A0(&__str, v17);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v20 = p_str + size;
    if (size)
    {
      v21 = p_str;
      v22 = (p_str + size);
      do
      {
        v23 = v21;
        v24 = v21;
        while (1)
        {
          v25 = *v24++;
          if (v25 == 46)
          {
            break;
          }

          v23 = v24;
          if (v24 == v20)
          {
            v23 = v22;
            goto LABEL_18;
          }
        }

        v21 = (&v23->__r_.__value_.__l.__data_ + 1);
        v22 = v23;
      }

      while (v24 != v20);
    }

    else
    {
      v23 = p_str;
    }

LABEL_18:
    v27 = v23 - p_str;
    if (v23 == v20)
    {
      v28 = -1;
    }

    else
    {
      v28 = v27;
    }

    memset(&v59, 0, sizeof(v59));
    std::string::basic_string(&v59, &__str, v28 + 1, size, &v58);
    std::string::basic_string(&v58, &__str, 0, v28, &v61);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v58;
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v29, &__str, 4, *&v58.__r_.__value_.__l.__data_, v34, v35, v36, v30, v31, v32, v33);
    }

    else
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v29, v58.__r_.__value_.__l.__data_, 4, *&v58.__r_.__value_.__l.__data_, v34, v35, v36, v30, v31, v32, v33);
    }
    v42 = ;
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v37, &v59, 4, v43, v44, v45, v46, v38, v39, v40, v41);
    }

    else
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v37, v59.__r_.__value_.__l.__data_, 4, v43, v44, v45, v46, v38, v39, v40, v41);
    }
    v47 = ;
    v26 = objc_msgSend_URLForResource_withExtension_(self->_bundle, v48, v42, v47, v53, v54, v55, v56, v49, v50, v51, v52);

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)canResolveAssetNamed:(id)named
{
  namedCopy = named;
  if (namedCopy && self->_path)
  {
    v15 = objc_msgSend_resolveAssetNamed_(self, v4, namedCopy, v5, v11, v12, v13, v14, v6, v7, v8, v9);
    v16 = v15 != 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end