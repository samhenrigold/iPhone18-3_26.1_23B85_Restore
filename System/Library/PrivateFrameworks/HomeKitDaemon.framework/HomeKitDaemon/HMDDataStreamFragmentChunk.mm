@interface HMDDataStreamFragmentChunk
- (BOOL)isEqual:(id)equal;
- (HMDDataStreamFragmentChunk)initWithData:(id)data sequenceNumber:(id)number fragmentSequenceNumber:(id)sequenceNumber type:(id)type isLast:(BOOL)last;
- (HMDDataStreamFragmentChunk)initWithDictionaryRepresentation:(id)representation;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDDataStreamFragmentChunk

- (unint64_t)hash
{
  data = [(HMDDataStreamFragmentChunk *)self data];
  v4 = [data hash];

  sequenceNumber = [(HMDDataStreamFragmentChunk *)self sequenceNumber];
  v6 = [sequenceNumber hash] ^ v4;

  fragmentSequenceNumber = [(HMDDataStreamFragmentChunk *)self fragmentSequenceNumber];
  v8 = [fragmentSequenceNumber hash];

  type = [(HMDDataStreamFragmentChunk *)self type];
  v10 = v6 ^ v8 ^ [type hash];

  return v10 ^ [(HMDDataStreamFragmentChunk *)self isLast];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    data = [v6 data];
    data2 = [(HMDDataStreamFragmentChunk *)self data];
    if ([data isEqualToData:data2])
    {
      sequenceNumber = [v7 sequenceNumber];
      sequenceNumber2 = [(HMDDataStreamFragmentChunk *)self sequenceNumber];
      if ([sequenceNumber isEqualToNumber:sequenceNumber2])
      {
        fragmentSequenceNumber = [v7 fragmentSequenceNumber];
        fragmentSequenceNumber2 = [(HMDDataStreamFragmentChunk *)self fragmentSequenceNumber];
        if ([fragmentSequenceNumber isEqualToNumber:fragmentSequenceNumber2])
        {
          type = [v7 type];
          type2 = [(HMDDataStreamFragmentChunk *)self type];
          v21 = type;
          v16 = type;
          v17 = type2;
          if ([v16 isEqualToString:type2])
          {
            isLast = [v7 isLast];
            v18 = isLast ^ [(HMDDataStreamFragmentChunk *)self isLast]^ 1;
          }

          else
          {
            LOBYTE(v18) = 0;
          }
        }

        else
        {
          LOBYTE(v18) = 0;
        }
      }

      else
      {
        LOBYTE(v18) = 0;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (id)attributeDescriptions
{
  v22[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  data = [(HMDDataStreamFragmentChunk *)self data];
  v20 = [v4 numberWithUnsignedInteger:{objc_msgSend(data, "length")}];
  v5 = [v3 initWithName:@"Data Length" value:v20];
  v22[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  sequenceNumber = [(HMDDataStreamFragmentChunk *)self sequenceNumber];
  v8 = [v6 initWithName:@"Sequence Number" value:sequenceNumber];
  v22[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  fragmentSequenceNumber = [(HMDDataStreamFragmentChunk *)self fragmentSequenceNumber];
  v11 = [v9 initWithName:@"Fragment Sequence Number" value:fragmentSequenceNumber];
  v22[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  type = [(HMDDataStreamFragmentChunk *)self type];
  v14 = [v12 initWithName:@"Type" value:type];
  v22[3] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDataStreamFragmentChunk *)self isLast];
  v16 = HMFBooleanToString();
  v17 = [v15 initWithName:@"Is Last" value:v16];
  v22[4] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];

  return v18;
}

- (NSDictionary)dictionaryRepresentation
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"metadata";
  v11[0] = @"dataChunkSequenceNumber";
  sequenceNumber = [(HMDDataStreamFragmentChunk *)self sequenceNumber];
  v12[0] = sequenceNumber;
  v11[1] = @"dataSequenceNumber";
  fragmentSequenceNumber = [(HMDDataStreamFragmentChunk *)self fragmentSequenceNumber];
  v12[1] = fragmentSequenceNumber;
  v11[2] = @"dataType";
  type = [(HMDDataStreamFragmentChunk *)self type];
  v12[2] = type;
  v11[3] = @"isLastDataChunk";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDDataStreamFragmentChunk isLast](self, "isLast")}];
  v12[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v13[1] = @"data";
  v14[0] = v7;
  data = [(HMDDataStreamFragmentChunk *)self data];
  v14[1] = data;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v9;
}

- (HMDDataStreamFragmentChunk)initWithDictionaryRepresentation:(id)representation
{
  v41 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [representationCopy hmf_dataForKey:@"data"];
  if (v5)
  {
    v6 = [representationCopy hmf_dictionaryForKey:@"metadata"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 hmf_numberForKey:@"dataChunkSequenceNumber"];
      if (v8)
      {
        v9 = [v7 hmf_numberForKey:@"dataSequenceNumber"];
        if (v9)
        {
          v10 = [v7 hmf_stringForKey:@"dataType"];
          if (v10)
          {
            v11 = [v7 hmf_numberForKey:@"isLastDataChunk"];
            v12 = v11;
            if (v11)
            {
              selfCopy6 = -[HMDDataStreamFragmentChunk initWithData:sequenceNumber:fragmentSequenceNumber:type:isLast:](self, "initWithData:sequenceNumber:fragmentSequenceNumber:type:isLast:", v5, v8, v9, v10, [v11 BOOLValue]);
              v14 = selfCopy6;
            }

            else
            {
              context = objc_autoreleasePoolPush();
              selfCopy6 = self;
              v30 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v32 = HMFGetLogIdentifier();
                *buf = 138543874;
                v36 = v32;
                v37 = 2112;
                v38 = @"isLastDataChunk";
                v39 = 2112;
                v40 = representationCopy;
                _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Could not determine isLast (key=%@) from stream data dictionary: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(context);
              v14 = 0;
            }
          }

          else
          {
            v27 = objc_autoreleasePoolPush();
            selfCopy6 = self;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v29 = contexta = v27;
              *buf = 138543874;
              v36 = v29;
              v37 = 2112;
              v38 = @"dataType";
              v39 = 2112;
              v40 = representationCopy;
              _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Could not determine type (key=%@) from stream data dictionary: %@", buf, 0x20u);

              v27 = contexta;
            }

            objc_autoreleasePoolPop(v27);
            v14 = 0;
          }
        }

        else
        {
          v24 = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543874;
            v36 = v26;
            v37 = 2112;
            v38 = @"dataSequenceNumber";
            v39 = 2112;
            v40 = representationCopy;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Could not determine fragment sequence number (key=%@) from stream data dictionary: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v24);
          v14 = 0;
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy6 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543874;
          v36 = v23;
          v37 = 2112;
          v38 = @"dataChunkSequenceNumber";
          v39 = 2112;
          v40 = representationCopy;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not determine sequence number (key=%@) from stream data dictionary: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        v14 = 0;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v36 = v20;
        v37 = 2112;
        v38 = @"metadata";
        v39 = 2112;
        v40 = representationCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not determine metadata (key=%@) from stream data dictionary: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v14 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v17;
      v37 = 2112;
      v38 = @"data";
      v39 = 2112;
      v40 = representationCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not determine data (key=%@) from stream data dictionary: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  return v14;
}

- (HMDDataStreamFragmentChunk)initWithData:(id)data sequenceNumber:(id)number fragmentSequenceNumber:(id)sequenceNumber type:(id)type isLast:(BOOL)last
{
  dataCopy = data;
  numberCopy = number;
  sequenceNumberCopy = sequenceNumber;
  typeCopy = type;
  if (!dataCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!numberCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!sequenceNumberCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v17 = typeCopy;
  if (!typeCopy)
  {
LABEL_11:
    v27 = _HMFPreconditionFailure();
    [(HMDAudioAnalysisBulletinNotificationManager *)v27 .cxx_destruct];
    return result;
  }

  v29.receiver = self;
  v29.super_class = HMDDataStreamFragmentChunk;
  v18 = [(HMDDataStreamFragmentChunk *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_data, data);
    v20 = objc_msgSend_copy(numberCopy);
    sequenceNumber = v19->_sequenceNumber;
    v19->_sequenceNumber = v20;

    v22 = objc_msgSend_copy(sequenceNumberCopy);
    fragmentSequenceNumber = v19->_fragmentSequenceNumber;
    v19->_fragmentSequenceNumber = v22;

    v24 = objc_msgSend_copy(v17);
    type = v19->_type;
    v19->_type = v24;

    v19->_last = last;
  }

  return v19;
}

@end