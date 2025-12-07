@interface CryptoBackendXPC
- (CryptoBackendXPC)initWithCoder:(id)coder;
- (CryptoBackendXPC)initWithFormat:(const void *)format baseBackendXPC:(id)c;
- (void)encodeWithCoder:(id)coder;
- (void)replaceWithBackendXPC:(id)c;
@end

@implementation CryptoBackendXPC

- (CryptoBackendXPC)initWithFormat:(const void *)format baseBackendXPC:(id)c
{
  cCopy = c;
  v16.receiver = self;
  v16.super_class = CryptoBackendXPC;
  v8 = [(CryptoBackendXPC *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseBackendXPC, c);
    v11 = **format;
    v10 = *(*format + 8);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    cryptoHeader = [(BackendXPC *)v9 cryptoHeader];
    v13 = cryptoHeader[1];
    *cryptoHeader = v11;
    cryptoHeader[1] = v10;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    baseBackendXPC = v9->_baseBackendXPC;
    if (baseBackendXPC)
    {
      objc_msgSend_backend(baseBackendXPC);
    }

    std::allocate_shared[abi:ne200100]<crypto_format_backend,std::allocator<crypto_format_backend>,std::shared_ptr<Backend>,std::shared_ptr<crypto::format> const&,0>();
  }

  return 0;
}

- (CryptoBackendXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CryptoBackendXPC;
  v5 = [(BackendXPC *)&v18 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(BackendXPC *)v5 cryptoHeader];
    crypto::format_serializer::decode(coderCopy, &v17);
    if (v17)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseBackend"];
      baseBackendXPC = v6->_baseBackendXPC;
      v6->_baseBackendXPC = v7;

      v10 = *v17;
      v9 = v17[1];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      cryptoHeader = [(BackendXPC *)v6 cryptoHeader];
      v12 = cryptoHeader[1];
      *cryptoHeader = v10;
      cryptoHeader[1] = v9;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = v6->_baseBackendXPC;
      if (v13)
      {
        objc_msgSend_backend(v13);
      }

      std::allocate_shared[abi:ne200100]<crypto_format_backend,std::allocator<crypto_format_backend>,std::shared_ptr<Backend>,std::shared_ptr<crypto::format> &,0>();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v16 = std::generic_category();
    exception[1] = 154;
    exception[2] = v16;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Failed to deserialize crypto format";
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CryptoBackendXPC;
  [(BackendXPC *)&v10 encodeWithCoder:coderCopy];
  objc_msgSend_backend(self);
  v5 = v9;
  crypto::format_serializer::encode(coderCopy, *(v8 + 48), v6);
  baseBackendXPC = [(CryptoBackendXPC *)self baseBackendXPC];
  [(crypto::format_serializer *)coderCopy encodeObject:baseBackendXPC forKey:@"baseBackend"];

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (void)replaceWithBackendXPC:(id)c
{
  cCopy = c;
  objc_msgSend_backend(self);
  if (cCopy)
  {
    objc_msgSend_backend(cCopy);
    v6 = v8;
  }

  else
  {
    v6 = 0uLL;
  }

  v7 = *(v9 + 32);
  *(v9 + 24) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  objc_storeStrong(&self->_baseBackendXPC, c);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

@end