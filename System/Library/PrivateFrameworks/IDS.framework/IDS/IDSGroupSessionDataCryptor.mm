@interface IDSGroupSessionDataCryptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCryptor:(id)cryptor;
- (IDSGroupSessionDataCryptor)initWithCoder:(id)coder;
- (IDSGroupSessionDataCryptor)initWithTopic:(id)topic;
- (IDSGroupSessionDataCryptor)initWithTopic:(id)topic keyManager:(id)manager;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)decryptData:(id)data keyID:(id)d sequenceNumber:(unint64_t)number error:(id *)error;
- (id)encryptData:(id)data sequenceNumber:(unint64_t)number error:(id *)error;
- (id)getDecryptionKeyIDSet;
- (id)getEncryptionKeyID;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSGroupSessionDataCryptor

- (IDSGroupSessionDataCryptor)initWithTopic:(id)topic
{
  topicCopy = topic;
  v12.receiver = self;
  v12.super_class = IDSGroupSessionDataCryptor;
  v5 = [(IDSGroupSessionDataCryptor *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [topicCopy copy];
    topic = v6->_topic;
    v6->_topic = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:1282 capacity:32];
    decryptionCryptorsByKeyID = v6->_decryptionCryptorsByKeyID;
    v6->_decryptionCryptorsByKeyID = v9;
  }

  return v6;
}

- (IDSGroupSessionDataCryptor)initWithTopic:(id)topic keyManager:(id)manager
{
  v26 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v7 = [(IDSGroupSessionDataCryptor *)self initWithTopic:topic];
  v8 = v7;
  if (v7)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_195A1E3F0;
    v22[3] = &unk_1E743EEC0;
    v9 = v7;
    v23 = v9;
    [managerCopy useCurrentEncryptionkeyWithHandler:v22];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = v9[7];
    v9[7] = dictionary;

    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = sub_195A1E494;
    v20 = &unk_1E743EEC0;
    v12 = v9;
    v21 = v12;
    [managerCopy enumerateDecryptingKeysAndSaltsUsingBlock:&v17];
    groupSessionDataCryptor = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
    if (os_log_type_enabled(groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 debugDescription];
      *buf = 138412290;
      v25 = v14;
      _os_log_impl(&dword_1959FF000, groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT, "Created IDSGroupSessionDataCryptor: %@", buf, 0xCu);
    }

    if (v12[3])
    {
      v15 = [MEMORY[0x1E69A6128] pairWithFirst:v12[4] second:v12[5]];
      [v9[7] setObject:v15 forKeyedSubscript:v12[3]];
    }
  }

  return v8;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  encryptingCryptor = self->_encryptingCryptor;
  if (encryptingCryptor)
  {
    CCCryptorRelease(encryptingCryptor);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_decryptionCryptorsByKeyID;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_decryptionCryptorsByKeyID objectForKey:v9];
        value = 0xAAAAAAAAAAAAAAAALL;
        if (NSMapMember(self->_decryptionCryptorsByKeyID, v9, 0, &value) && value)
        {
          CCCryptorRelease(value);
        }
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11.receiver = self;
  v11.super_class = IDSGroupSessionDataCryptor;
  [(IDSGroupSessionDataCryptor *)&v11 dealloc];
}

- (id)encryptData:(id)data sequenceNumber:(unint64_t)number error:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  os_unfair_lock_lock(&self->_lock);
  if ([dataCopy length] < 0xFFFFFFF1)
  {
    if (self->_encryptingCryptor || (v19 = CCCryptorCreateWithMode(0, 0xBu, 0, 0, 0, [(NSData *)self->_encryptingKey bytes], [(NSData *)self->_encryptingKey length], 0, 0, 0, 0, &self->_encryptingCryptor)) == 0)
    {
      v11 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(dataCopy, "length") + 29}];
      mutableBytes = [v11 mutableBytes];
      *mutableBytes = 1;
      if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0xCuLL, mutableBytes + 1))
      {
        __assert_rtn("[IDSGroupSessionDataCryptor encryptData:sequenceNumber:error:]", "IDSGroupSessionDataCryptor.m", 197, "0 == SecRandomCopyBytes(kSecRandomDefault, IDSGROUPSESSIONCRYPTOR_NONCE_SIZE_NBYTES, nonceBytes)");
      }

      v15 = CCCryptorGCMSetIV();
      if (v15)
      {
        groupSessionDataCryptor = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
        if (os_log_type_enabled(groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT))
        {
          topic = self->_topic;
          v18 = v15;
          *buf = 138412546;
          v75 = topic;
          v76 = 2048;
          v77 = v15;
          _os_log_impl(&dword_1959FF000, groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT, "encryptData: failed to set IV for topic %@ error %ld", buf, 0x16u);
        }

        else
        {
          v18 = v15;
        }

        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to set IV for topic %@ error %ld", self->_topic, v18];
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v68 = *MEMORY[0x1E696A578];
        v69 = v27;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        *error = [v28 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v29];
      }

      else
      {
        v66 = 0xAAAAAAAAAAAAAAAALL;
        numberCopy = -86;
        LOBYTE(v66) = *mutableBytes;
        BYTE1(v66) = HIBYTE(number);
        BYTE2(v66) = BYTE6(number);
        BYTE3(v66) = BYTE5(number);
        BYTE4(v66) = BYTE4(number);
        BYTE5(v66) = BYTE3(number);
        BYTE6(v66) = BYTE2(number);
        HIBYTE(v66) = BYTE1(number);
        numberCopy = number;
        v23 = CCCryptorGCMAddAAD();
        if (v23)
        {
          groupSessionDataCryptor2 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
          if (os_log_type_enabled(groupSessionDataCryptor2, OS_LOG_TYPE_DEFAULT))
          {
            v25 = self->_topic;
            v26 = v23;
            *buf = 138412546;
            v75 = v25;
            v76 = 2048;
            v77 = v23;
            _os_log_impl(&dword_1959FF000, groupSessionDataCryptor2, OS_LOG_TYPE_DEFAULT, "encryptData: failed to add AAD for topic %@ error %ld", buf, 0x16u);
          }

          else
          {
            v26 = v23;
          }

          v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to add AAD for topic %@ error %ld", self->_topic, v26];
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = *MEMORY[0x1E696A578];
          v65 = v38;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          *error = [v39 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v40];
        }

        else
        {
          encryptingCryptor = self->_encryptingCryptor;
          v33 = dataCopy;
          v34 = MEMORY[0x19A8BA910](encryptingCryptor, [dataCopy bytes], objc_msgSend(dataCopy, "length"), mutableBytes + 13);
          if (v34)
          {
            groupSessionDataCryptor3 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
            if (os_log_type_enabled(groupSessionDataCryptor3, OS_LOG_TYPE_DEFAULT))
            {
              v36 = self->_topic;
              v37 = v34;
              *buf = 138412546;
              v75 = v36;
              v76 = 2048;
              v77 = v34;
              _os_log_impl(&dword_1959FF000, groupSessionDataCryptor3, OS_LOG_TYPE_DEFAULT, "encryptData: failed to encrypt for topic %@ error %ld", buf, 0x16u);
            }

            else
            {
              v37 = v34;
            }

            v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to encrypt for topic %@ error %ld", self->_topic, v37];
            v45 = objc_alloc(MEMORY[0x1E696ABC0]);
            v62 = *MEMORY[0x1E696A578];
            v63 = v44;
            v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
            *error = [v45 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v46];
          }

          else
          {
            [dataCopy length];
            LODWORD(v41) = CCCryptorGCMFinalize();
            if (v41)
            {
              groupSessionDataCryptor4 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
              if (os_log_type_enabled(groupSessionDataCryptor4, OS_LOG_TYPE_DEFAULT))
              {
                v43 = self->_topic;
                v41 = v41;
                *buf = 138412546;
                v75 = v43;
                v76 = 2048;
                v77 = v41;
                _os_log_impl(&dword_1959FF000, groupSessionDataCryptor4, OS_LOG_TYPE_DEFAULT, "encryptData: failed to create auth tag for topic %@ error %ld", buf, 0x16u);
              }

              else
              {
                v41 = v41;
              }

              v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to create auth tag for topic %@ error %ld", self->_topic, v41];
              v51 = objc_alloc(MEMORY[0x1E696ABC0]);
              v60 = *MEMORY[0x1E696A578];
              v61 = v50;
              v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
              *error = [v51 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v52];
            }

            else
            {
              LODWORD(v47) = CCCryptorGCMReset();
              if (!v47)
              {
                v53 = v11;
                goto LABEL_39;
              }

              groupSessionDataCryptor5 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
              if (os_log_type_enabled(groupSessionDataCryptor5, OS_LOG_TYPE_DEFAULT))
              {
                v49 = self->_topic;
                v47 = v47;
                *buf = 138412546;
                v75 = v49;
                v76 = 2048;
                v77 = v47;
                _os_log_impl(&dword_1959FF000, groupSessionDataCryptor5, OS_LOG_TYPE_DEFAULT, "encryptData: failed to reset cryptor for topic %@ error %ld", buf, 0x16u);
              }

              else
              {
                v47 = v47;
              }

              v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to reset for topic %@ error %ld", self->_topic, v47];
              v55 = objc_alloc(MEMORY[0x1E696ABC0]);
              v58 = *MEMORY[0x1E696A578];
              v59 = v54;
              v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
              *error = [v55 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v56];
            }
          }
        }
      }
    }

    else
    {
      groupSessionDataCryptor6 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
      if (os_log_type_enabled(groupSessionDataCryptor6, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_topic;
        v22 = v19;
        *buf = 138412546;
        v75 = v21;
        v76 = 2048;
        v77 = v19;
        _os_log_impl(&dword_1959FF000, groupSessionDataCryptor6, OS_LOG_TYPE_DEFAULT, "encryptData: failed to create CommonCrypto cryptor for topic %@ error %ld", buf, 0x16u);
      }

      else
      {
        v22 = v19;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - failed to create CommonCrypto cryptor for topic %@ error %ld", self->_topic, v22];
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v70 = *MEMORY[0x1E696A578];
      v71 = v11;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      *error = [v30 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v31];
    }
  }

  else
  {
    groupSessionDataCryptor7 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
    if (os_log_type_enabled(groupSessionDataCryptor7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_topic;
      *buf = 138412546;
      v75 = v10;
      v76 = 2048;
      v77 = [dataCopy length];
      _os_log_impl(&dword_1959FF000, groupSessionDataCryptor7, OS_LOG_TYPE_DEFAULT, "encryptData: plaintext larger than GCM can support for topic %@ data.length %lu", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - plaintext larger than GCM can support for topic %@ data.length %lu", self->_topic, objc_msgSend(dataCopy, "length")];
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v72 = *MEMORY[0x1E696A578];
    v73 = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    *error = [v12 initWithDomain:@"com.apple.identityservices.error" code:4 userInfo:v13];
  }

  v53 = 0;
LABEL_39:

  os_unfair_lock_unlock(&self->_lock);

  return v53;
}

- (id)getEncryptionKeyID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUUID *)self->_encryptingKeyID copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)decryptData:(id)data keyID:(id)d sequenceNumber:(unint64_t)number error:(id *)error
{
  v104[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  if ([dataCopy length] > 0x1D)
  {
    value = 0xAAAAAAAAAAAAAAAALL;
    cryptorRef = 0xAAAAAAAAAAAAAAAALL;
    v18 = [(NSMutableDictionary *)self->_decryptionKeysByKeyID objectForKeyedSubscript:dCopy];
    if (NSMapMember(self->_decryptionCryptorsByKeyID, dCopy, 0, &value))
    {
      cryptorRef = value;
    }

    else
    {
      if (!v18)
      {
        groupSessionDataCryptor = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
        if (os_log_type_enabled(groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT))
        {
          topic = self->_topic;
          *buf = 138412546;
          v96 = topic;
          v97 = 2112;
          numberCopy2 = dCopy;
          _os_log_impl(&dword_1959FF000, groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT, "decryptData: unknown keyID for topic %@ keyID %@", buf, 0x16u);
        }

        dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - unknown keyID %@", dCopy];
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v101 = *MEMORY[0x1E696A578];
        v102 = dCopy;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        *error = [v39 initWithDomain:@"com.apple.identityservices.error" code:1 userInfo:v40];

        goto LABEL_29;
      }

      first = [v18 first];
      v27 = first;
      LODWORD(v28) = CCCryptorCreateWithMode(1u, 0xBu, 0, 0, 0, [first bytes], objc_msgSend(first, "length"), 0, 0, 0, 0, &cryptorRef);
      if (v28)
      {
        groupSessionDataCryptor2 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
        if (os_log_type_enabled(groupSessionDataCryptor2, OS_LOG_TYPE_DEFAULT))
        {
          v30 = self->_topic;
          v28 = v28;
          *buf = 138412802;
          v96 = v30;
          v97 = 2112;
          numberCopy2 = dCopy;
          v99 = 2048;
          v100 = v28;
          _os_log_impl(&dword_1959FF000, groupSessionDataCryptor2, OS_LOG_TYPE_DEFAULT, "decryptData: failed to create cryptor for topic %@ keyID %@ error %ld", buf, 0x20u);
        }

        else
        {
          v28 = v28;
        }

        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - CommonCryptor fails to create cryptor for topic %@ keyID %@ error %ld", self->_topic, dCopy, v28];
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v93 = *MEMORY[0x1E696A578];
        v94 = v43;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        *error = [v44 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v45];

        goto LABEL_29;
      }

      [(NSMapTable *)self->_decryptionCryptorsByKeyID setObject:cryptorRef forKey:dCopy];
    }

    v19 = dataCopy;
    bytes = [dataCopy bytes];
    v21 = *bytes;
    if (v21 == 1)
    {
      v22 = CCCryptorGCMSetIV();
      if (!v22)
      {
        v87 = 0xAAAAAAAAAAAAAAAALL;
        numberCopy = -86;
        LOBYTE(v87) = *bytes;
        BYTE1(v87) = HIBYTE(number);
        BYTE2(v87) = BYTE6(number);
        BYTE3(v87) = BYTE5(number);
        BYTE4(v87) = BYTE4(number);
        BYTE5(v87) = BYTE3(number);
        BYTE6(v87) = BYTE2(number);
        HIBYTE(v87) = BYTE1(number);
        numberCopy = number;
        LODWORD(number) = CCCryptorGCMAddAAD();
        if (number)
        {
          groupSessionDataCryptor3 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
          if (os_log_type_enabled(groupSessionDataCryptor3, OS_LOG_TYPE_DEFAULT))
          {
            v42 = self->_topic;
            number = number;
            *buf = 138412546;
            v96 = v42;
            v97 = 2048;
            numberCopy2 = number;
            _os_log_impl(&dword_1959FF000, groupSessionDataCryptor3, OS_LOG_TYPE_DEFAULT, "encryptData: failed to add AAD for topic %@ error %ld", buf, 0x16u);
          }

          else
          {
            number = number;
          }

          number = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to add AAD for topic %@ error %ld", self->_topic, number];
          v57 = objc_alloc(MEMORY[0x1E696ABC0]);
          v85 = *MEMORY[0x1E696A578];
          v86 = number;
          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          *error = [v57 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v58];
        }

        else
        {
          v50 = [dataCopy length] - 29;
          number = [MEMORY[0x1E695DF88] dataWithLength:v50];
          v51 = cryptorRef;
          v52 = number;
          v53 = MEMORY[0x19A8BA900](v51, bytes + 13, v50, [number mutableBytes]);
          if (v53)
          {
            groupSessionDataCryptor4 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
            if (os_log_type_enabled(groupSessionDataCryptor4, OS_LOG_TYPE_DEFAULT))
            {
              v55 = self->_topic;
              v56 = v53;
              *buf = 138412802;
              v96 = v55;
              v97 = 2112;
              numberCopy2 = dCopy;
              v99 = 2048;
              v100 = v53;
              _os_log_impl(&dword_1959FF000, groupSessionDataCryptor4, OS_LOG_TYPE_DEFAULT, "decryptData: failed to decrypt for topic %@ keyID %@ error %ld", buf, 0x20u);
            }

            else
            {
              v56 = v53;
            }

            v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - CommonCryptor failed to decrypt for topic %@ keyID %@ error %ld", self->_topic, dCopy, v56];
            v64 = objc_alloc(MEMORY[0x1E696ABC0]);
            v83 = *MEMORY[0x1E696A578];
            v84 = v63;
            v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
            *error = [v64 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v65];
          }

          else
          {
            v59 = CCCryptorGCMFinalize();
            if (v59)
            {
              groupSessionDataCryptor5 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
              if (os_log_type_enabled(groupSessionDataCryptor5, OS_LOG_TYPE_DEFAULT))
              {
                v61 = self->_topic;
                v62 = v59;
                *buf = 138412802;
                v96 = v61;
                v97 = 2112;
                numberCopy2 = dCopy;
                v99 = 2048;
                v100 = v59;
                _os_log_impl(&dword_1959FF000, groupSessionDataCryptor5, OS_LOG_TYPE_DEFAULT, "decryptData: failed to verify auth tag for topic %@ keyID %@ error %ld", buf, 0x20u);
              }

              else
              {
                v62 = v59;
              }

              v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - failed to verify auth tag for topic %@ keyID %@ error %ld", self->_topic, dCopy, v62];
              v71 = objc_alloc(MEMORY[0x1E696ABC0]);
              v81 = *MEMORY[0x1E696A578];
              v82 = v70;
              v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
              *error = [v71 initWithDomain:@"com.apple.identityservices.error" code:3 userInfo:v72];
            }

            else
            {
              v66 = CCCryptorGCMReset();
              if (!v66)
              {
                v17 = number;

                goto LABEL_30;
              }

              groupSessionDataCryptor6 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
              if (os_log_type_enabled(groupSessionDataCryptor6, OS_LOG_TYPE_DEFAULT))
              {
                v68 = self->_topic;
                v69 = v66;
                *buf = 138412802;
                v96 = v68;
                v97 = 2112;
                numberCopy2 = dCopy;
                v99 = 2048;
                v100 = v66;
                _os_log_impl(&dword_1959FF000, groupSessionDataCryptor6, OS_LOG_TYPE_DEFAULT, "decryptData: failed to reset cryptor for topic %@ keyID %@ error %ld", buf, 0x20u);
              }

              else
              {
                v69 = v66;
              }

              v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - CommonCryptor failed to reset for topic %@ keyID %@ error %ld", self->_topic, dCopy, v69];
              v74 = objc_alloc(MEMORY[0x1E696ABC0]);
              v79 = *MEMORY[0x1E696A578];
              v80 = v73;
              v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
              *error = [v74 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v75];
            }
          }
        }

        v17 = 0;

        goto LABEL_30;
      }

      groupSessionDataCryptor7 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
      if (os_log_type_enabled(groupSessionDataCryptor7, OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_topic;
        v25 = v22;
        *buf = 138412802;
        v96 = v24;
        v97 = 2112;
        numberCopy2 = dCopy;
        v99 = 2048;
        v100 = v22;
        _os_log_impl(&dword_1959FF000, groupSessionDataCryptor7, OS_LOG_TYPE_DEFAULT, "decryptData: failed to set IV for topic %@ keyID %@ error %ld", buf, 0x20u);
      }

      else
      {
        v25 = v22;
      }

      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - CommonCryptor fails to set IV for topic %@ keyID %@ error %ld", self->_topic, dCopy, v25];
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v89 = *MEMORY[0x1E696A578];
      v90 = v46;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      *error = [v47 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v48];
    }

    else
    {
      groupSessionDataCryptor8 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
      if (os_log_type_enabled(groupSessionDataCryptor8, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_topic;
        *buf = 138412802;
        v96 = v32;
        v97 = 2112;
        numberCopy2 = dCopy;
        v99 = 1024;
        LODWORD(v100) = v21;
        _os_log_impl(&dword_1959FF000, groupSessionDataCryptor8, OS_LOG_TYPE_DEFAULT, "decryptData: unknown version for topic %@ keyID %@ version %u", buf, 0x1Cu);
      }

      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - unknown version for topic %@ keyID %@ version %u", self->_topic, dCopy, v21];
      v34 = objc_alloc(MEMORY[0x1E696ABC0]);
      v91 = *MEMORY[0x1E696A578];
      v92 = v33;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      *error = [v34 initWithDomain:@"com.apple.identityservices.error" code:6 userInfo:v35];
    }

LABEL_29:
    v17 = 0;
LABEL_30:

    goto LABEL_31;
  }

  groupSessionDataCryptor9 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
  if (os_log_type_enabled(groupSessionDataCryptor9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_topic;
    *buf = 138412546;
    v96 = v13;
    v97 = 2048;
    numberCopy2 = [dataCopy length];
    _os_log_impl(&dword_1959FF000, groupSessionDataCryptor9, OS_LOG_TYPE_DEFAULT, "decryptData: insufficient incoming data for topic %@ size %lu", buf, 0x16u);
  }

  dCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - data has insufficient bytes to decrypt for topic %@ keyID %@", self->_topic, dCopy];
  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v103 = *MEMORY[0x1E696A578];
  v104[0] = dCopy2;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:&v103 count:1];
  *error = [v15 initWithDomain:@"com.apple.identityservices.error" code:4 userInfo:v16];

  v17 = 0;
LABEL_31:
  os_unfair_lock_unlock(&self->_lock);

  return v17;
}

- (id)getDecryptionKeyIDSet
{
  os_unfair_lock_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_decryptionKeysByKeyID allKeys];
  v4 = [allKeys copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(IDSGroupSessionDataCryptor *)self isEqualToCryptor:equalCopy];

  return v6;
}

- (BOOL)isEqualToCryptor:(id)cryptor
{
  v22 = *MEMORY[0x1E69E9840];
  cryptorCopy = cryptor;
  if (-[NSUUID isEqual:](self->_encryptingKeyID, "isEqual:", cryptorCopy[3]) && -[NSData isEqual:](self->_encryptingKey, "isEqual:", cryptorCopy[4]) && -[NSData isEqual:](self->_encryptingKeySalt, "isEqual:", cryptorCopy[5]) && (v5 = -[NSMutableDictionary count](self->_decryptionKeysByKeyID, "count"), v5 == [cryptorCopy[7] count]))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_decryptionKeysByKeyID;
    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_decryptionKeysByKeyID objectForKeyedSubscript:v11, v17];
          v13 = [cryptorCopy[7] objectForKeyedSubscript:v11];
          v14 = [v12 isEqual:v13];

          if (!v14)
          {
            v15 = 0;
            goto LABEL_17;
          }
        }

        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_17:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  topic = self->_topic;
  encryptingKeyID = self->_encryptingKeyID;
  allKeys = [(NSMutableDictionary *)self->_decryptionKeysByKeyID allKeys];
  v8 = [v3 stringWithFormat:@"{Object:%p, Class:%@, Topic:%@, EncryptionKeyID:%@, DecryptionKeys:%@}", self, v4, topic, encryptingKeyID, allKeys];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeObject:self->_topic forKey:@"topic"];
  [coderCopy encodeObject:self->_encryptingKeyID forKey:@"encryptingKeyID"];
  [coderCopy encodeObject:self->_encryptingKey forKey:@"encryptingKey"];
  v17 = coderCopy;
  [coderCopy encodeObject:self->_encryptingKeySalt forKey:@"encryptingKeySalt"];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_decryptionKeysByKeyID;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_decryptionKeysByKeyID objectForKeyedSubscript:v13];
        [array addObject:v13];
        first = [v14 first];
        [array2 addObject:first];

        second = [v14 second];
        [array3 addObject:second];
      }

      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [v17 encodeObject:array forKey:@"decryptingKeyIDs"];
  [v17 encodeObject:array2 forKey:@"decryptingKeys"];
  [v17 encodeObject:array3 forKey:@"decryptingKeySalts"];
}

- (IDSGroupSessionDataCryptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  v6 = [(IDSGroupSessionDataCryptor *)self initWithTopic:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptingKeyID"];
    encryptingKeyID = v6->_encryptingKeyID;
    v6->_encryptingKeyID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptingKey"];
    encryptingKey = v6->_encryptingKey;
    v6->_encryptingKey = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptingKeySalt"];
    encryptingKeySalt = v6->_encryptingKeySalt;
    v6->_encryptingKeySalt = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"decryptingKeyIDs"];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"decryptingKeys"];

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"decryptingKeySalts"];

    v25 = [v16 count];
    if (v25 != [v20 count] || (v26 = objc_msgSend(v16, "count"), v26 != objc_msgSend(v24, "count")))
    {

      v36 = 0;
      goto LABEL_10;
    }

    v38 = v5;
    v39 = coderCopy;
    v27 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
    decryptionKeysByKeyID = v6->_decryptionKeysByKeyID;
    v6->_decryptionKeysByKeyID = v27;

    if ([v16 count])
    {
      v29 = 0;
      do
      {
        v30 = MEMORY[0x1E69A6128];
        v31 = [v20 objectAtIndexedSubscript:v29];
        v32 = [v24 objectAtIndexedSubscript:v29];
        v33 = [v30 pairWithFirst:v31 second:v32];
        v34 = v6->_decryptionKeysByKeyID;
        v35 = [v16 objectAtIndexedSubscript:v29];
        [(NSMutableDictionary *)v34 setObject:v33 forKeyedSubscript:v35];

        ++v29;
      }

      while (v29 < [v16 count]);
    }

    v5 = v38;
    coderCopy = v39;
  }

  v36 = v6;
LABEL_10:

  return v36;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSGroupSessionDataCryptor alloc];
  topic = self->_topic;

  return [(IDSGroupSessionDataCryptor *)v4 initWithTopic:topic];
}

@end