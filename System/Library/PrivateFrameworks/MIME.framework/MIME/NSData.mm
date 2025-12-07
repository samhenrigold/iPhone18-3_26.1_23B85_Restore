@interface NSData
- (NSData)_uudecoded_large;
- (NSData)_uudecoded_small;
@end

@implementation NSData

- (NSData)_uudecoded_small
{
  selfCopy = self;
  v10[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8[0] = v2;
    v8[1] = v2;
    v3 = vcvtpd_u64_f64([(NSData *)self length]* 0.74 + 100.0);
    if (v3 <= 0x64)
    {
      v4 = 100;
    }

    else
    {
      v4 = v3;
    }

    OutputBuffer::OutputBuffer(v8, v4);
    memset(v7, 170, sizeof(v7));
    DecodeBuffer::DecodeBuffer(v7, selfCopy);
    v10[0] = &unk_1F4F334E0;
    v10[1] = v8;
    v10[3] = v10;
    v9[0] = &unk_1F4F33488;
    v9[1] = v8;
    v9[3] = v9;
    v5 = DecodeBuffer::parse(v7, v10, v9);
    std::__function::__value_func<void ()(LineOfOutput const&)>::~__value_func[abi:nn200100](v9);
    std::__function::__value_func<void ()(unsigned char)>::~__value_func[abi:nn200100](v10);
    if (v5)
    {
      [*(&v8[0] + 1) setLength:*&v8[0]];
      selfCopy = *(&v8[0] + 1);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (NSData)_uudecoded_large
{
  selfCopy = self;
  v9[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v6 = v2;
    *v7 = v2;
    TemporaryFile::TemporaryFile(&v6);
    if (v6 < 1)
    {
      goto LABEL_6;
    }

    if (!v7[0])
    {
      selfCopy = 0;
LABEL_10:

      goto LABEL_11;
    }

    memset(v5, 170, sizeof(v5));
    DecodeBuffer::DecodeBuffer(v5, selfCopy);
    v9[0] = &unk_1F4F33590;
    v9[1] = &v6;
    v9[3] = v9;
    v8[0] = &unk_1F4F33538;
    v8[1] = &v6;
    v8[3] = v8;
    v3 = DecodeBuffer::parse(v5, v9, v8);
    std::__function::__value_func<void ()(LineOfOutput const&)>::~__value_func[abi:nn200100](v8);
    std::__function::__value_func<void ()(unsigned char)>::~__value_func[abi:nn200100](v9);
    if (v3)
    {
      selfCopy = TemporaryFile::mappedData(&v6);
    }

    else
    {
LABEL_6:
      selfCopy = 0;
    }

    if (v7[0])
    {
      fclose(v7[0]);
    }

    goto LABEL_10;
  }

LABEL_11:

  return selfCopy;
}

@end