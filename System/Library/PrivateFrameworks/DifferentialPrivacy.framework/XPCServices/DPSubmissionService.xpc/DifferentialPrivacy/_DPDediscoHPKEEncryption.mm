@interface _DPDediscoHPKEEncryption
+ (id)encryptWithPublicKey:(id)key info:(id)info inputShare:(id)share additionalData:(id)data error:(id *)error;
+ (id)generatePublicKey;
- (_DPDediscoHPKEEncryption)init;
@end

@implementation _DPDediscoHPKEEncryption

+ (id)encryptWithPublicKey:(id)key info:(id)info inputShare:(id)share additionalData:(id)data error:(id *)error
{
  keyCopy = key;
  infoCopy = info;
  shareCopy = share;
  dataCopy = data;
  v14 = sub_100050300();
  v16 = v15;

  v17 = sub_100050300();
  v19 = v18;

  v20 = sub_100050300();
  v22 = v21;

  v23 = sub_100050300();
  v25 = v24;

  sub_10003EFA0(v14, v16, v17, v19, v20, v22, v23, v25);
  sub_100013E20(v23, v25);
  sub_100013E20(v20, v22);
  sub_100013E20(v17, v19);
  sub_100013E20(v14, v16);
  v26.super.isa = sub_100050790().super.isa;

  return v26.super.isa;
}

+ (id)generatePublicKey
{
  v2 = sub_1000506A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000506D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000506C0();
  sub_1000506B0();
  (*(v7 + 8))(v9, v6);
  v10 = sub_100050680();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v13.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v10, v12);

  return v13.super.isa;
}

- (_DPDediscoHPKEEncryption)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _DPDediscoHPKEEncryption();
  return [(_DPDediscoHPKEEncryption *)&v3 init];
}

@end