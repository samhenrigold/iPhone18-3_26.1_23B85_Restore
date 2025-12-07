@interface CNDataEncoder
+ (id)decodeAddressingGrammarData:(id)data;
+ (id)encodeAddressingGrammar:(id)grammar;
- (_TtC18ContactsFoundation13CNDataEncoder)init;
@end

@implementation CNDataEncoder

+ (id)encodeAddressingGrammar:(id)grammar
{
  v4 = sub_185A7E5F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  grammarCopy = grammar;
  sub_185A7E5E4();

  v9 = _s18ContactsFoundation13CNDataEncoderC6encodey0B04DataVSgAE13TermOfAddressVFZ_0(v7);
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = 0;
  if (v11 >> 60 != 15)
  {
    v13 = sub_185A7E694();
    sub_185A7089C(v9, v11);
    v12 = v13;
  }

  return v12;
}

+ (id)decodeAddressingGrammarData:(id)data
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAE98, &qword_185A924B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  dataCopy = data;
  v8 = sub_185A7E6A4();
  v10 = v9;

  static CNDataEncoder.decode(_:)(v6);
  sub_185A6E638(v8, v10);
  v11 = sub_185A7E5F4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_185A7E5D4();
    (*(v12 + 8))(v6, v11);
    v14 = v15;
  }

  return v14;
}

- (_TtC18ContactsFoundation13CNDataEncoder)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNDataEncoder();
  return [(CNDataEncoder *)&v3 init];
}

@end