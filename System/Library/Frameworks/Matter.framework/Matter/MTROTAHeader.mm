@interface MTROTAHeader
- (MTROTAHeader)initWithData:(NSData *)data;
@end

@implementation MTROTAHeader

- (MTROTAHeader)initWithData:(NSData *)data
{
  v4 = data;
  v42.receiver = self;
  v42.super_class = MTROTAHeader;
  v5 = [(MTROTAHeader *)&v42 init];
  if (v5)
  {
    v41 = 0;
    sub_2393C50D0(v40);
    if (v40[0])
    {
      v6 = v4;
      sub_238DB6950(&v29, [(NSData *)v6 bytes], [(NSData *)v6 length]);

      v39 = v29;
      *(&v29 + 1) = 0;
      v30 = 0;
      v32[0] = 0;
      v33[0] = 0;
      v34 = 0;
      v35 = 0;
      v37 = 0;
      v38 = 0;
      if (!sub_2393C5120(v40, &v39, &v29))
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v29];
        vendorID = v5->_vendorID;
        v5->_vendorID = v8;

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v29)];
        productID = v5->_productID;
        v5->_productID = v10;

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
        payloadSize = v5->_payloadSize;
        v5->_payloadSize = v12;

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD1(v29)];
        softwareVersion = v5->_softwareVersion;
        v5->_softwareVersion = v14;

        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(&v29 + 1) length:v30 encoding:4];
        softwareVersionString = v5->_softwareVersionString;
        v5->_softwareVersionString = v16;

        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v34 length:v35 encoding:4];
        releaseNotesURL = v5->_releaseNotesURL;
        v5->_releaseNotesURL = v18;

        v20 = [MEMORY[0x277CBEA90] dataWithBytes:v37 length:v38];
        imageDigest = v5->_imageDigest;
        v5->_imageDigest = v20;

        v5->_imageDigestType = v36;
        if (v32[0] == 1)
        {
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238F41E94(v32, v22)}];
        }

        else
        {
          v23 = 0;
        }

        minApplicableVersion = v5->_minApplicableVersion;
        v5->_minApplicableVersion = v23;

        if (v33[0] == 1)
        {
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238F41E94(v33, v25)}];
        }

        else
        {
          v26 = 0;
        }

        maxApplicableVersion = v5->_maxApplicableVersion;
        v5->_maxApplicableVersion = v26;

        sub_2393C50E8(v40);
        v7 = v5;
        goto LABEL_14;
      }

      sub_2393C50E8(v40);
    }

    v7 = 0;
LABEL_14:
    sub_238DCCA48(&v41);
    goto LABEL_15;
  }

  v7 = 0;
LABEL_15:

  return v7;
}

@end