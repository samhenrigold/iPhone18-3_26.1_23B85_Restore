@interface POCryptoKitHPKE_P256_SHA256_AES_GCM_128
- (BOOL)decodeAndDecryptJWT:(id)t privateKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPublicKey:(__SecKey *)publicKey error:(id *)error;
- (_TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_128)init;
- (id)algValue;
- (id)encodeAndEncryptJWT:(id)t publicKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPrivateKey:(__SecKey *)privateKey auth_kid:(id)auth_kid error:(id *)self0;
- (void)addValuesTo:(id)to;
@end

@implementation POCryptoKitHPKE_P256_SHA256_AES_GCM_128

- (_TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_128)init
{
  v19 = sub_25E941698();
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25E941678();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E941688();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E941668();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.super.isa + OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_128_encryptionAlgorithm) = &unk_2870A91F8;
  (*(v10 + 104))(v12, *MEMORY[0x277CC5450], v9);
  (*(v6 + 104))(v8, *MEMORY[0x277CC5438], v18);
  (*(v3 + 104))(v5, *MEMORY[0x277CC5460], v19);
  v16 = &unk_2870A91F8;
  sub_25E941658();
  return POCryptoKitHPKE.init(cipherSuite:)(v15);
}

- (void)addValuesTo:(id)to
{
  toCopy = to;
  v3 = sub_25E941838();
  [toCopy setEnc_];

  v4 = sub_25E941838();
  [toCopy setAlg_];
}

- (id)algValue
{
  v2 = sub_25E941838();

  return v2;
}

- (BOOL)decodeAndDecryptJWT:(id)t privateKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPublicKey:(__SecKey *)publicKey error:(id *)error
{
  if (info)
  {
    v32 = sub_25E941848();
    v16 = v15;
  }

  else
  {
    v32 = 0;
    v16 = 0;
  }

  tCopy = t;
  keyCopy = key;
  if (!psk)
  {
    psk_idCopy = psk_id;
    publicKeyCopy = publicKey;
    selfCopy = self;
    v24 = 0xF000000000000000;
    if (psk_id)
    {
      goto LABEL_6;
    }

LABEL_8:
    v25 = 0;
    v27 = 0xF000000000000000;
    goto LABEL_9;
  }

  pskCopy = psk;
  psk_idCopy2 = psk_id;
  publicKeyCopy2 = publicKey;
  selfCopy2 = self;
  psk = sub_25E941478();
  v24 = v23;

  if (!psk_id)
  {
    goto LABEL_8;
  }

LABEL_6:
  v25 = sub_25E941478();
  v27 = v26;

LABEL_9:
  POCryptoKitHPKE_P256_SHA256_AES_GCM_128.decodeAndDecryptJWT(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(tCopy, keyCopy, v32, v16, psk, v24, v25, v27, publicKey);

  sub_25E8B2B18(v25, v27);
  sub_25E8B2B18(psk, v24);

  return 1;
}

- (id)encodeAndEncryptJWT:(id)t publicKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPrivateKey:(__SecKey *)privateKey auth_kid:(id)auth_kid error:(id *)self0
{
  if (info)
  {
    v38 = sub_25E941848();
    v40 = v15;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  tCopy = t;
  keyCopy = key;
  if (psk)
  {
    pskCopy = psk;
    psk_idCopy = psk_id;
    privateKeyCopy = privateKey;
    auth_kidCopy = auth_kid;
    selfCopy = self;
    psk = sub_25E941478();
    v23 = v22;

    if (psk_id)
    {
      goto LABEL_6;
    }

LABEL_9:
    v24 = 0;
    v26 = 0xF000000000000000;
    pskCopy3 = psk;
    if (auth_kid)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  psk_idCopy2 = psk_id;
  privateKeyCopy2 = privateKey;
  auth_kidCopy2 = auth_kid;
  selfCopy2 = self;
  v23 = 0xF000000000000000;
  if (!psk_id)
  {
    goto LABEL_9;
  }

LABEL_6:
  v24 = sub_25E941478();
  v26 = v25;

  pskCopy3 = psk;
  if (auth_kid)
  {
LABEL_7:
    v28 = sub_25E941478();
    v30 = v29;

    goto LABEL_11;
  }

LABEL_10:
  v28 = 0;
  v30 = 0xF000000000000000;
LABEL_11:
  POCryptoKitHPKE_P256_SHA256_AES_GCM_128.encodeAndEncryptJWT(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(tCopy, keyCopy, v38, v40, pskCopy3, v23, v24, v26, privateKey, v28, v30);

  sub_25E8B2B18(v28, v30);
  sub_25E8B2B18(v24, v26);
  sub_25E8B2B18(pskCopy3, v23);

  v35 = sub_25E941838();

  return v35;
}

@end