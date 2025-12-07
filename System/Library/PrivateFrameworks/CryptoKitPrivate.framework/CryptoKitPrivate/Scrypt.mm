@interface Scrypt
+ (id)deriveKeyWithPassword:(id)password salt:(id)salt outputSize:(int64_t)size cost:(unint64_t)cost blockSize:(unsigned int)blockSize parallelization:(unsigned int)parallelization;
- (_TtC16CryptoKitPrivate6Scrypt)init;
@end

@implementation Scrypt

+ (id)deriveKeyWithPassword:(id)password salt:(id)salt outputSize:(int64_t)size cost:(unint64_t)cost blockSize:(unsigned int)blockSize parallelization:(unsigned int)parallelization
{
  v8 = *&parallelization;
  v9 = *&blockSize;
  passwordCopy = password;
  saltCopy = salt;
  v15 = _s16CryptoKitPrivate6ScryptC9deriveKey8password4salt10outputSize4cost05blockJ015parallelizationSo6NSDataCSgAL_AMSis6UInt64Vs6UInt32VAQtFZ_0(passwordCopy, salt, size, cost, v9, v8);

  return v15;
}

- (_TtC16CryptoKitPrivate6Scrypt)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Scrypt();
  return [(Scrypt *)&v3 init];
}

@end