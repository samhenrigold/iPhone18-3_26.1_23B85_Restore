@interface HAPTLVBase
- (BOOL)_parseFields:(id)fields;
- (BOOL)_parseMandatory:(id)mandatory optional:(id)optional;
- (HAPTLVBase)initWithTLVData:(id)data;
- (id)_parseArray:(id)array result:(id *)result objectCreator:(id)creator;
@end

@implementation HAPTLVBase

- (id)_parseArray:(id)array result:(id *)result objectCreator:(id)creator
{
  v23 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  creatorCopy = creator;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = arrayCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = creatorCopy[2](creatorCopy, *(*(&v18 + 1) + 8 * v13));
      if (!v14)
      {
        break;
      }

      v15 = v14;
      [v8 addObject:{v14, v18}];

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = [v8 copy];

  return v16;
}

- (BOOL)_parseMandatory:(id)mandatory optional:(id)optional
{
  optionalCopy = optional;
  LOBYTE(mandatory) = [(HAPTLVBase *)self _parseFields:mandatory];
  [(HAPTLVBase *)self _parseFields:optionalCopy];

  return mandatory;
}

- (BOOL)_parseFields:(id)fields
{
  v78 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  selfCopy = self;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  v6 = [HAPTLVParser parserWithData:tlvDatablob];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v7 = fieldsCopy;
  v8 = [v7 countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (!v8)
  {
    v10 = 1;
    goto LABEL_56;
  }

  v9 = v8;
  v10 = 1;
  v11 = *v66;
  v60 = v6;
  v62 = v7;
  v63 = *v66;
  do
  {
    v12 = 0;
    do
    {
      if (*v66 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v65 + 1) + 8 * v12);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [v6 parseResponseForUInt8:{objc_msgSend(v14, "tlvid")}];
          if (v15)
          {
            goto LABEL_24;
          }

          v16 = objc_autoreleasePoolPush();
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            name = [v14 name];
            tlvid = [v14 tlvid];
            tlvDatablob2 = [(HAPTLVBase *)selfCopy tlvDatablob];
            *buf = 138544130;
            v70 = v22;
            v71 = 2112;
            v72 = name;
            v73 = 2048;
            v74 = tlvid;
            v6 = v60;
            v75 = 2112;
            v76 = tlvDatablob2;
            v26 = v17;
            v27 = "%{public}@Failed to parse uint8 for tlv: %@ with ID: %tu (%@)";
            goto LABEL_37;
          }

LABEL_38:

          v43 = v16;
LABEL_39:
          objc_autoreleasePoolPop(v43);
          v10 = 0;
          v11 = v63;
          goto LABEL_40;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [v6 parseResponseForUInt16:{objc_msgSend(v14, "tlvid")}];
          if (v15)
          {
            goto LABEL_24;
          }

          v16 = objc_autoreleasePoolPush();
          v17 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          v22 = HMFGetLogIdentifier();
          name = [v14 name];
          tlvid2 = [v14 tlvid];
          tlvDatablob2 = [(HAPTLVBase *)selfCopy tlvDatablob];
          *buf = 138544130;
          v70 = v22;
          v71 = 2112;
          v72 = name;
          v73 = 2048;
          v74 = tlvid2;
          v6 = v60;
          v75 = 2112;
          v76 = tlvDatablob2;
          v26 = v17;
          v27 = "%{public}@Failed to parse uint16 for tlv: %@ with ID: %tu (%@)";
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            v15 = [v6 parseResponseForString:{objc_msgSend(v14, "tlvid")}];
            if (v15)
            {
              goto LABEL_24;
            }

            v16 = objc_autoreleasePoolPush();
            v17 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_38;
            }

            v22 = HMFGetLogIdentifier();
            name = [v14 name];
            tlvid3 = [v14 tlvid];
            tlvDatablob2 = [(HAPTLVBase *)selfCopy tlvDatablob];
            *buf = 138544130;
            v70 = v22;
            v71 = 2112;
            v72 = name;
            v73 = 2048;
            v74 = tlvid3;
            v6 = v60;
            v75 = 2112;
            v76 = tlvDatablob2;
            v26 = v17;
            v27 = "%{public}@Failed to parse String for tlv: %@ with ID: %tu (%@)";
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = v13;
                v31 = [v6 parseResponseForArray:{objc_msgSend(v30, "tlvid")}];
                if (v31)
                {
                  v32 = v31;
                  objectCreator = [v30 objectCreator];

                  if (!objectCreator)
                  {
                    [v30 setField:v32];

                    v7 = v62;
                    v11 = v63;
                    goto LABEL_41;
                  }

                  v64 = v32;
                  objectCreator2 = [v30 objectCreator];
                  v35 = [(HAPTLVBase *)selfCopy _parseArray:v32 result:&v64 objectCreator:objectCreator2];
                  v36 = v64;

                  if (v35)
                  {
                    [v30 setField:v35];
                  }

                  else
                  {
                    v51 = objc_autoreleasePoolPush();
                    v52 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      HMFGetLogIdentifier();
                      v53 = v59 = v51;
                      name2 = [v30 name];
                      tlvid4 = [v30 tlvid];
                      tlvDatablob3 = [(HAPTLVBase *)selfCopy tlvDatablob];
                      *buf = 138544130;
                      v70 = v53;
                      v71 = 2112;
                      v72 = name2;
                      v73 = 2048;
                      v74 = tlvid4;
                      v6 = v60;
                      v75 = 2112;
                      v76 = tlvDatablob3;
                      _os_log_impl(&dword_22AADC000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to construct array for tlv: %@ with ID: %tu (%@)", buf, 0x2Au);

                      v51 = v59;
                    }

                    objc_autoreleasePoolPop(v51);
                    v10 = 0;
                  }

                  v7 = v62;
                }

                else
                {
                  v45 = objc_autoreleasePoolPush();
                  v46 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    v47 = HMFGetLogIdentifier();
                    name3 = [v30 name];
                    tlvid5 = [v30 tlvid];
                    tlvDatablob4 = [(HAPTLVBase *)selfCopy tlvDatablob];
                    *buf = 138544130;
                    v70 = v47;
                    v71 = 2112;
                    v72 = name3;
                    v73 = 2048;
                    v74 = tlvid5;
                    v6 = v60;
                    v75 = 2112;
                    v76 = tlvDatablob4;
                    _os_log_impl(&dword_22AADC000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Array for tlv: %@ with ID: %tu (%@)", buf, 0x2Au);

                    v7 = v62;
                  }

                  objc_autoreleasePoolPop(v45);
                  v10 = 0;
                }

                v11 = v63;
                goto LABEL_41;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_42;
              }

              v14 = v13;
              v15 = [v6 parseResponseForUUID:{objc_msgSend(v14, "tlvid")}];
              if (!v15)
              {
                v37 = objc_autoreleasePoolPush();
                v38 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  v39 = HMFGetLogIdentifier();
                  name4 = [v14 name];
                  tlvid6 = [v14 tlvid];
                  tlvDatablob5 = [(HAPTLVBase *)selfCopy tlvDatablob];
                  *buf = 138544130;
                  v70 = v39;
                  v71 = 2112;
                  v72 = name4;
                  v73 = 2048;
                  v74 = tlvid6;
                  v6 = v60;
                  v75 = 2112;
                  v76 = tlvDatablob5;
                  _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse UUID for tlv: %@ with ID: %tu (%@)", buf, 0x2Au);

                  v7 = v62;
                }

                v43 = v37;
                goto LABEL_39;
              }

              goto LABEL_24;
            }

            v14 = v13;
            v15 = [v6 parseResponseForData:{objc_msgSend(v14, "tlvid")}];
            if (v15)
            {
              goto LABEL_24;
            }

            v16 = objc_autoreleasePoolPush();
            v17 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_38;
            }

            v22 = HMFGetLogIdentifier();
            name = [v14 name];
            tlvid7 = [v14 tlvid];
            tlvDatablob2 = [(HAPTLVBase *)selfCopy tlvDatablob];
            *buf = 138544130;
            v70 = v22;
            v71 = 2112;
            v72 = name;
            v73 = 2048;
            v74 = tlvid7;
            v6 = v60;
            v75 = 2112;
            v76 = tlvDatablob2;
            v26 = v17;
            v27 = "%{public}@Failed to parse Data for tlv: %@ with ID: %tu (%@)";
          }
        }

LABEL_37:
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x2Au);

        v7 = v62;
        goto LABEL_38;
      }

      v14 = v13;
      v15 = [v6 parseResponseForNumber:{objc_msgSend(v14, "tlvid")}];
      if (!v15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          name5 = [v14 name];
          tlvid8 = [v14 tlvid];
          tlvDatablob6 = [(HAPTLVBase *)selfCopy tlvDatablob];
          *buf = 138544130;
          v70 = v18;
          v71 = 2112;
          v72 = name5;
          v73 = 2048;
          v74 = tlvid8;
          v75 = 2112;
          v76 = tlvDatablob6;
          _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse number for tlv: %@ with ID: %tu (%@)", buf, 0x2Au);

          v7 = v62;
          v6 = v60;
        }

        goto LABEL_38;
      }

LABEL_24:
      [v14 setField:v15];
LABEL_40:

LABEL_41:
LABEL_42:
      ++v12;
    }

    while (v9 != v12);
    v57 = [v7 countByEnumeratingWithState:&v65 objects:v77 count:16];
    v9 = v57;
  }

  while (v57);
LABEL_56:

  return v10 & 1;
}

- (HAPTLVBase)initWithTLVData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = HAPTLVBase;
  v6 = [(HAPTLVBase *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_tlvDatablob, data), ![(HAPTLVBase *)v7 _parseFromTLVData]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

@end