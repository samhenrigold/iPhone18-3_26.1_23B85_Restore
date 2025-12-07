@interface SMTNoiseSampler
- (SMTNoiseSampler)initWithUnigram:(float *)unigram ofSize:(unint64_t)size;
- (SMTNoiseSampler)initWithZipfOfSize:(unint64_t)size;
- (id).cxx_construct;
- (unint64_t)drawNoise;
@end

@implementation SMTNoiseSampler

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  v2 = 5489;
  *(self + 14) = 5489;
  v3 = 1;
  for (i = 15; i != 638; ++i)
  {
    v5 = 1812433253 * (v2 ^ (v2 >> 30));
    v2 = v5 + v3;
    *(self + i) = i + v5 - 14;
    ++v3;
  }

  *(self + 319) = 0;
  return self;
}

- (unint64_t)drawNoise
{
  v3 = self->_unigram.__end_ - self->_unigram.__begin_;
  v4 = v3 >> 2;
  if (v3)
  {
    v5 = v4 + 1;
    if (v4 == -1)
    {
      sub_100002234(v14, &self->_generator, 0x40uLL);
      v8 = sub_100002320(v14);
    }

    else
    {
      v6 = __clz(v5);
      v7 = 63;
      if (((v5 << v6) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = 64;
      }

      sub_100002234(v14, &self->_generator, v7 - v6);
      do
      {
        v8 = sub_100002320(v14);
      }

      while (v8 >= v5);
    }

    v4 = v8;
  }

  v9 = self->_alias.__begin_[v4];
  v10 = self->_unigram.__begin_[v4];
  v11 = sub_100002194(&self->_generator);
  if ((v11 + sub_100002194(&self->_generator) * 4294967300.0) * 5.42101086e-20 >= v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v4;
  }

  return v12;
}

- (SMTNoiseSampler)initWithUnigram:(float *)unigram ofSize:(unint64_t)size
{
  v46.receiver = self;
  v46.super_class = SMTNoiseSampler;
  v6 = [(SMTNoiseSampler *)&v46 init];
  if (!v6)
  {
    return v6;
  }

  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(v44, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  v7 = std::random_device::operator()(v44);
  LODWORD(__src[0]) = v7;
  for (i = 1; i != 624; ++i)
  {
    v7 = i + 1812433253 * (v7 ^ (v7 >> 30));
    *(__src + i) = v7;
  }

  __src[312] = 0;
  memcpy(&v6->_generator, __src, sizeof(v6->_generator));
  std::random_device::~random_device(v44);
  LODWORD(__src[0]) = 0;
  sub_100002844(&v6->_unigram.__begin_, size, __src, v9);
  begin = v6->_alias.__begin_;
  end = v6->_alias.__end_;
  v12 = end - begin;
  if (size > v12)
  {
    v13 = size - v12;
    cap = v6->_alias.__cap_;
    if (v13 > cap - end)
    {
      if (!(size >> 61))
      {
        v15 = cap - begin;
        sizeCopy = (cap - begin) >> 2;
        if (sizeCopy <= size)
        {
          sizeCopy = size;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = sizeCopy;
        }

        sub_100002B60(v17);
      }

      sub_100002C6C();
    }

    v19 = 0;
    v20 = (v13 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v21 = vdupq_n_s64(v20);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v19), xmmword_10002A6C0)));
      if (v22.i8[0])
      {
        end[v19] = 0;
      }

      if (v22.i8[4])
      {
        end[v19 + 1] = 0;
      }

      v19 += 2;
    }

    while (v20 - ((v13 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v19);
    v18 = &end[v13];
    goto LABEL_24;
  }

  if (size < v12)
  {
    v18 = &begin[size];
LABEL_24:
    v6->_alias.__end_ = v18;
  }

  memset(__src, 0, 24);
  memset(&__token, 0, sizeof(__token));
  *&v44[0].__padding_ = 0;
  if (size)
  {
    v23 = 0;
    do
    {
      v24 = unigram[v23] * size;
      v6->_unigram.__begin_[v23] = v24;
      if (v24 >= 1.0)
      {
        p_token = &__token;
      }

      else
      {
        p_token = __src;
      }

      sub_100002A88(p_token, &v44[0].__padding_);
      *&v44[0].__padding_ = ++v23;
    }

    while (size != v23);
    size = __src[0];
    v26 = __src[1];
    if (__src[1] != __src[0])
    {
      for (j = __token.__r_.__value_.__l.__size_; __token.__r_.__value_.__l.__size_ != __token.__r_.__value_.__r.__words[0]; j = __token.__r_.__value_.__l.__size_)
      {
        v28 = *(v26 - 8);
        *&v44[0].__padding_ = *(j - 8);
        v29 = *&v44[0].__padding_;
        __token.__r_.__value_.__l.__size_ = j - 8;
        v6->_alias.__begin_[v28] = *&v44[0].__padding_;
        v30 = v6->_unigram.__begin_;
        v31 = v30[v29];
        __src[1] = v26 - 8;
        v32 = v31 + -1.0 + v30[v28];
        v30[v29] = v32;
        if (v32 >= 1.0)
        {
          v33 = &__token;
        }

        else
        {
          v33 = __src;
        }

        sub_100002A88(v33, &v44[0].__padding_);
        size = __src[0];
        v26 = __src[1];
        if (__src[1] == __src[0])
        {
          break;
        }
      }

      v34 = v26 - size;
      if (v26 != size)
      {
        v35 = 0;
        v36 = v34 >> 3;
        v37 = v6->_unigram.__begin_;
        if (v36 <= 1)
        {
          v36 = 1;
        }

        do
        {
          v37[*(size + 8 * v35++)] = 1.0;
        }

        while (v36 != v35);
      }
    }
  }

  v38 = *&__token.__r_.__value_.__l.__data_;
  if (__token.__r_.__value_.__l.__size_ == __token.__r_.__value_.__r.__words[0])
  {
    if (!__token.__r_.__value_.__l.__size_)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v39 = (__token.__r_.__value_.__l.__size_ - __token.__r_.__value_.__r.__words[0]) >> 3;
    v40 = v6->_unigram.__begin_;
    if (v39 <= 1)
    {
      v39 = 1;
    }

    v41 = __token.__r_.__value_.__r.__words[0];
    do
    {
      v42 = *v41++;
      v40[v42] = 1.0;
      --v39;
    }

    while (v39);
  }

  operator delete(v38);
LABEL_50:
  if (size)
  {
    __src[1] = size;
    operator delete(size);
  }

  return v6;
}

- (SMTNoiseSampler)initWithZipfOfSize:(unint64_t)size
{
  if (size)
  {
    if (!(size >> 62))
    {
      sub_100002C84(size);
    }

    sub_100002C6C();
  }

  return [(SMTNoiseSampler *)self initWithUnigram:0 ofSize:0];
}

@end