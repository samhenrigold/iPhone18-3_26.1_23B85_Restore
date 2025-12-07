@interface MTRCertificates
+ (BOOL)isCertificate:(MTRCertificateDERBytes)certificate1 equalTo:(MTRCertificateDERBytes)certificate2;
+ (BOOL)keypair:(id)keypair matchesCertificate:(NSData *)certificate;
+ (MTRCSRDERBytes)createCertificateSigningRequest:(id)keypair error:(NSError *)error;
+ (MTRCertificateDERBytes)convertMatterCertificate:(MTRCertificateTLVBytes)matterCertificate;
+ (MTRCertificateDERBytes)createIntermediateCertificate:(id)rootKeypair rootCertificate:(MTRCertificateDERBytes)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID error:(NSError *)error;
+ (MTRCertificateDERBytes)createIntermediateCertificate:(id)rootKeypair rootCertificate:(MTRCertificateDERBytes)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error;
+ (MTRCertificateDERBytes)createOperationalCertificate:(id)signingKeypair signingCertificate:(MTRCertificateDERBytes)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricID:(NSNumber *)fabricID nodeID:(NSNumber *)nodeID caseAuthenticatedTags:(NSSet *)caseAuthenticatedTags error:(NSError *)error;
+ (MTRCertificateDERBytes)createOperationalCertificate:(id)signingKeypair signingCertificate:(MTRCertificateDERBytes)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricID:(NSNumber *)fabricID nodeID:(NSNumber *)nodeID caseAuthenticatedTags:(NSSet *)caseAuthenticatedTags validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error;
+ (MTRCertificateDERBytes)createRootCertificate:(id)keypair issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID error:(NSError *)error;
+ (MTRCertificateDERBytes)createRootCertificate:(id)keypair issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error;
+ (MTRCertificateTLVBytes)convertX509Certificate:(MTRCertificateDERBytes)x509Certificate;
+ (NSData)generateCertificateSigningRequest:(id)keypair error:(NSError *)error;
+ (NSData)generateIntermediateCertificate:(id)rootKeypair rootCertificate:(NSData *)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerId:(NSNumber *)issuerId fabricId:(NSNumber *)fabricId error:(NSError *)error;
+ (NSData)generateOperationalCertificate:(id)signingKeypair signingCertificate:(NSData *)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricId:(NSNumber *)fabricId nodeId:(NSNumber *)nodeId caseAuthenticatedTags:(NSArray *)caseAuthenticatedTags error:(NSError *)error;
+ (NSData)generateRootCertificate:(id)keypair issuerId:(NSNumber *)issuerId fabricId:(NSNumber *)fabricId error:(NSError *)error;
+ (NSData)publicKeyFromCSR:(MTRCSRDERBytes)csr error:(NSError *)error;
@end

@implementation MTRCertificates

+ (MTRCertificateDERBytes)createRootCertificate:(id)keypair issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = keypair;
  v12 = issuerID;
  v13 = fabricID;
  v14 = validityPeriod;
  v15 = sub_2393D9044(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Generating root certificate", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "Generating root certificate");
  }

  v23 = 0;
  v16 = sub_2392D32A8(v11, v12, v13, v14, &v23);
  v18 = v17;
  v19 = v23;
  if (error)
  {
    *error = sub_23921C1E4(MTRError, v16, v18);
  }

  if (v16)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_2393C9138();
      *buf = 136315138;
      v25 = v20;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Generating root certificate failed: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v21 = sub_2393C9138();
      sub_2393D5320(0, 1, "Generating root certificate failed: %s", v21);
    }
  }

  return v19;
}

+ (MTRCertificateDERBytes)createRootCertificate:(id)keypair issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID error:(NSError *)error
{
  v10 = keypair;
  v11 = issuerID;
  v12 = fabricID;
  v13 = objc_alloc(MEMORY[0x277CCA970]);
  v14 = [MEMORY[0x277CBEAA8] now];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v16 = [v13 initWithStartDate:v14 endDate:distantFuture];

  v17 = [self createRootCertificate:v10 issuerID:v11 fabricID:v12 validityPeriod:v16 error:error];

  return v17;
}

+ (MTRCertificateDERBytes)createIntermediateCertificate:(id)rootKeypair rootCertificate:(MTRCertificateDERBytes)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = rootKeypair;
  v15 = rootCertificate;
  v16 = issuerID;
  v17 = fabricID;
  v18 = validityPeriod;
  v19 = sub_2393D9044(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "Generating intermediate certificate", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "Generating intermediate certificate");
  }

  v27 = 0;
  v20 = sub_2392D3768(v14, v15, intermediatePublicKey, v16, v17, v18, &v27);
  v22 = v21;
  v23 = v27;
  if (error)
  {
    *error = sub_23921C1E4(MTRError, v20, v22);
  }

  if (v20)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_2393C9138();
      *buf = 136315138;
      v29 = v24;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Generating intermediate certificate failed: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v25 = sub_2393C9138();
      sub_2393D5320(0, 1, "Generating intermediate certificate failed: %s", v25);
    }
  }

  return v23;
}

+ (MTRCertificateDERBytes)createIntermediateCertificate:(id)rootKeypair rootCertificate:(MTRCertificateDERBytes)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID error:(NSError *)error
{
  v14 = rootKeypair;
  v15 = rootCertificate;
  v16 = issuerID;
  v17 = fabricID;
  v18 = objc_alloc(MEMORY[0x277CCA970]);
  v19 = [MEMORY[0x277CBEAA8] now];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v21 = [v18 initWithStartDate:v19 endDate:distantFuture];

  v22 = [self createIntermediateCertificate:v14 rootCertificate:v15 intermediatePublicKey:intermediatePublicKey issuerID:v16 fabricID:v17 validityPeriod:v21 error:error];

  return v22;
}

+ (MTRCertificateDERBytes)createOperationalCertificate:(id)signingKeypair signingCertificate:(MTRCertificateDERBytes)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricID:(NSNumber *)fabricID nodeID:(NSNumber *)nodeID caseAuthenticatedTags:(NSSet *)caseAuthenticatedTags validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = signingKeypair;
  v15 = signingCertificate;
  v16 = fabricID;
  v17 = nodeID;
  v18 = caseAuthenticatedTags;
  v19 = validityPeriod;
  v20 = sub_2393D9044(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "Generating operational certificate", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "Generating operational certificate");
  }

  v29 = 0;
  v21 = sub_2392D3CD8(v28, v15, operationalPublicKey, v16, v17, v18, v19, &v29);
  v23 = v22;
  v24 = v29;
  if (error)
  {
    *error = sub_23921C1E4(MTRError, v21, v23);
  }

  if (v21)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = sub_2393C9138();
      *buf = 136315138;
      v31 = v25;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Generating operational certificate failed: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v26 = sub_2393C9138();
      sub_2393D5320(0, 1, "Generating operational certificate failed: %s", v26);
    }
  }

  return v24;
}

+ (MTRCertificateDERBytes)createOperationalCertificate:(id)signingKeypair signingCertificate:(MTRCertificateDERBytes)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricID:(NSNumber *)fabricID nodeID:(NSNumber *)nodeID caseAuthenticatedTags:(NSSet *)caseAuthenticatedTags error:(NSError *)error
{
  v25 = signingKeypair;
  v15 = signingCertificate;
  v16 = fabricID;
  v17 = nodeID;
  v18 = caseAuthenticatedTags;
  v19 = objc_alloc(MEMORY[0x277CCA970]);
  v20 = [MEMORY[0x277CBEAA8] now];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v22 = [v19 initWithStartDate:v20 endDate:distantFuture];

  v23 = [self createOperationalCertificate:v25 signingCertificate:v15 operationalPublicKey:operationalPublicKey fabricID:v16 nodeID:v17 caseAuthenticatedTags:v18 validityPeriod:v22 error:error];

  return v23;
}

+ (BOOL)keypair:(id)keypair matchesCertificate:(NSData *)certificate
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = keypair;
  v6 = certificate;
  v18 = &unk_284BB9138;
  if (sub_238DC3C3C(v5, &v18))
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Can't extract public key from keypair: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v8 = sub_2393C9138();
      sub_2393D5320(0, 1, "Can't extract public key from keypair: %s", v8);
    }
  }

  else
  {
    *buf = &unk_284BB9138;
    v9 = v6;
    v10 = v9;
    sub_238DB6950(v20, [(NSData *)v9 bytes], [(NSData *)v9 length]);

    v16 = *v20;
    if (!sub_2393FA970(&v16, buf))
    {
      v14 = memcmp(&buf[8], &v19, 0x41uLL) == 0;
      goto LABEL_12;
    }

    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_2393C9138();
      *v20 = 136315138;
      *&v20[4] = v12;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Can't extract public key from certificate: %s", v20, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v13 = sub_2393C9138();
      sub_2393D5320(0, 1, "Can't extract public key from certificate: %s", v13);
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

+ (BOOL)isCertificate:(MTRCertificateDERBytes)certificate1 equalTo:(MTRCertificateDERBytes)certificate2
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = certificate1;
  v6 = certificate2;
  v34 = &unk_284BB9138;
  v7 = v5;
  v8 = v7;
  sub_238DB6950(buf, [(NSData *)v7 bytes], [(NSData *)v7 length]);

  *v30 = *buf;
  if (sub_2393FA970(v30, &v34))
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Can't extract public key from first certificate: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v11 = sub_2393C9138();
      sub_2393D5320(0, 1, "Can't extract public key from first certificate: %s", v11);
    }

    goto LABEL_12;
  }

  v32 = &unk_284BB9138;
  v12 = v6;
  v13 = v12;
  sub_238DB6950(buf, [(NSData *)v12 bytes], [(NSData *)v12 length]);

  *v30 = *buf;
  if (sub_2393FA970(v30, &v32))
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Can't extract public key from second certificate: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v16 = sub_2393C9138();
      sub_2393D5320(0, 1, "Can't extract public key from second certificate: %s", v16);
    }

    goto LABEL_12;
  }

  if (memcmp(&v35, &v33, 0x41uLL))
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  sub_23949ECF0(buf);
  v19 = v7;
  v20 = v19;
  sub_238DB6950(v30, [(NSData *)v19 bytes], [(NSData *)v19 length]);

  *v36 = *v30;
  if (sub_2394A09DC(v36, buf))
  {
    v21 = sub_2393D9044(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_2393C9138();
      *v30 = 136315138;
      *&v30[4] = v22;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Can't extract subject DN from first certificate: %s", v30, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v23 = sub_2393C9138();
      sub_2393D5320(0, 1, "Can't extract subject DN from first certificate: %s", v23);
    }

    v17 = 0;
  }

  else
  {
    sub_23949ECF0(v30);
    v24 = v12;
    v25 = v24;
    sub_238DB6950(v36, [(NSData *)v24 bytes], [(NSData *)v24 length]);

    v29 = *v36;
    if (sub_2394A09DC(&v29, v30))
    {
      v26 = sub_2393D9044(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = sub_2393C9138();
        *v36 = 136315138;
        *&v36[4] = v27;
        _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Can't extract subject DN from second certificate: %s", v36, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v28 = sub_2393C9138();
        sub_2393D5320(0, 1, "Can't extract subject DN from second certificate: %s", v28);
      }

      v17 = 0;
    }

    else
    {
      v17 = sub_23949EB88(buf, v30);
    }

    nullsub_56();
  }

  nullsub_56();
LABEL_13:

  return v17;
}

+ (MTRCSRDERBytes)createCertificateSigningRequest:(id)keypair error:(NSError *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = keypair;
  v14[1] = &unk_284BB9138;
  v15 = 0;
  v14[0] = &unk_284BA8C20;
  v16 = 0;
  v17 = &unk_284BB9138;
  v7 = sub_238DC3B28(v14, v5);
  if (v7 || (v11 = &v13, v12 = 255, v7 = sub_2393F3C24(v14, &v11), v7))
  {
    if (error)
    {
      sub_23921C1E4(MTRError, v7, v6);
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_238DB6950(v10, v11, v12);
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v10[0] length:v10[1]];
  }

  sub_2393F96B4(v14);

  return v8;
}

+ (MTRCertificateTLVBytes)convertX509Certificate:(MTRCertificateDERBytes)x509Certificate
{
  v14[50] = *MEMORY[0x277D85DE8];
  v3 = x509Certificate;
  sub_238DB6950(v14, [(NSData *)v3 bytes], [(NSData *)v3 length]);

  v11 = v14;
  v12 = 400;
  v4 = sub_2394A1510(v14[0], v14[1], &v11);
  v5 = sub_2393D9044(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "convertX509Certificate: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v8 = sub_2393C9138();
      sub_2393D5320(0, 1, "convertX509Certificate: %s", v8);
    }

    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "convertX509Certificate: Success", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3, "convertX509Certificate: Success");
    }

    sub_238DB6950(buf, v11, v12);
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:*buf length:?];
  }

  return v9;
}

+ (MTRCertificateDERBytes)convertMatterCertificate:(MTRCertificateTLVBytes)matterCertificate
{
  v12[75] = *MEMORY[0x277D85DE8];
  v3 = matterCertificate;
  sub_238DB6950(v12, [(NSData *)v3 bytes], [(NSData *)v3 length]);

  v9 = v12;
  v10 = 600;
  if (sub_2394A2688(v12[0], v12[1], &v9))
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_2393C9138();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "convertMatterCertificate: %s", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v6 = sub_2393C9138();
      sub_2393D5320(0, 1, "convertMatterCertificate: %s", v6);
    }

    v7 = 0;
  }

  else
  {
    sub_238DB6950(&buf, v9, v10);
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:?];
  }

  return v7;
}

+ (NSData)publicKeyFromCSR:(MTRCSRDERBytes)csr error:(NSError *)error
{
  v17[9] = *MEMORY[0x277D85DE8];
  v5 = csr;
  sub_238DB6950(&v16, [(NSData *)v5 bytes], [(NSData *)v5 length]);

  v6 = v16;
  v16 = &unk_284BB9138;
  v8 = sub_2393F9A14(v6, v17[0], &v16);
  if (v8)
  {
    v9 = v7;
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "publicKeyFromCSR: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v11 = sub_2393C9138();
      sub_2393D5320(0, 1, "publicKeyFromCSR: %s", v11);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, v8, v9);
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:v17 length:65];
  }

  return v12;
}

+ (NSData)generateRootCertificate:(id)keypair issuerId:(NSNumber *)issuerId fabricId:(NSNumber *)fabricId error:(NSError *)error
{
  v6 = [MTRCertificates createRootCertificate:keypair issuerID:issuerId fabricID:fabricId error:error];

  return v6;
}

+ (NSData)generateIntermediateCertificate:(id)rootKeypair rootCertificate:(NSData *)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerId:(NSNumber *)issuerId fabricId:(NSNumber *)fabricId error:(NSError *)error
{
  v8 = [MTRCertificates createIntermediateCertificate:rootKeypair rootCertificate:rootCertificate intermediatePublicKey:intermediatePublicKey issuerID:issuerId fabricID:fabricId error:error];

  return v8;
}

+ (NSData)generateOperationalCertificate:(id)signingKeypair signingCertificate:(NSData *)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricId:(NSNumber *)fabricId nodeId:(NSNumber *)nodeId caseAuthenticatedTags:(NSArray *)caseAuthenticatedTags error:(NSError *)error
{
  v14 = signingKeypair;
  v15 = signingCertificate;
  v16 = fabricId;
  v17 = nodeId;
  v18 = caseAuthenticatedTags;
  if (v18)
  {
    v19 = [MEMORY[0x277CBEB98] setWithArray:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = [MTRCertificates createOperationalCertificate:v14 signingCertificate:v15 operationalPublicKey:operationalPublicKey fabricID:v16 nodeID:v17 caseAuthenticatedTags:v19 error:error];

  return v20;
}

+ (NSData)generateCertificateSigningRequest:(id)keypair error:(NSError *)error
{
  v4 = [MTRCertificates createCertificateSigningRequest:keypair error:error];

  return v4;
}

@end