@interface NDOAMSProperties
- (NDOAMSProperties)init;
- (NDOAMSProperties)initWithUrl:(id)url signatureHeaders:(id)headers bodyData:(id)data;
- (NDOAMSProperties)initWithUrl:(id)url signatureHeaders:(id)headers bodyData:(id)data presentModally:(BOOL)modally;
- (NSData)bodyData;
- (NSDictionary)signatureHeaders;
- (NSURL)url;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDOAMSProperties

- (NSURL)url
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14[-v4];
  sub_25BD6E1E0(self + OBJC_IVAR___NDOAMSProperties__url, v14, &qword_27FBDBEF8, &qword_25BD7C070);
  if (v15)
  {
    v6 = sub_25BD79678();
    v7 = swift_dynamicCast();
    v8 = *(v6 - 8);
    (*(v8 + 56))(v5, v7 ^ 1u, 1, v6);
    v9 = (*(v8 + 48))(v5, 1, v6);
    v10 = 0;
    if (v9 != 1)
    {
      v11 = sub_25BD79638();
      (*(v8 + 8))(v5, v6);
      v10 = v11;
    }
  }

  else
  {
    sub_25BD6E248(v14, &qword_27FBDBEF8, &qword_25BD7C070);
    v12 = sub_25BD79678();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v10 = 0;
  }

  return v10;
}

- (NSData)bodyData
{
  v2 = *(self + OBJC_IVAR___NDOAMSProperties_bodyData);
  v3 = *(self + OBJC_IVAR___NDOAMSProperties_bodyData + 8);
  sub_25BD53D04(v2, v3);
  v4 = sub_25BD79688();
  sub_25BD54D74(v2, v3);

  return v4;
}

- (NSDictionary)signatureHeaders
{

  v2 = sub_25BD79768();

  return v2;
}

- (NDOAMSProperties)initWithUrl:(id)url signatureHeaders:(id)headers bodyData:(id)data
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  if (url)
  {
    sub_25BD79658();
    v10 = sub_25BD79678();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_25BD79678();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = sub_25BD79778();
  dataCopy = data;
  v14 = sub_25BD796A8();
  v16 = v15;

  return NDOAMSProperties.init(url:signatureHeaders:bodyData:)(v9, v12, v14, v16);
}

- (NDOAMSProperties)initWithUrl:(id)url signatureHeaders:(id)headers bodyData:(id)data presentModally:(BOOL)modally
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  if (url)
  {
    sub_25BD79658();
    v12 = sub_25BD79678();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_25BD79678();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = sub_25BD79778();
  dataCopy = data;
  v16 = sub_25BD796A8();
  v18 = v17;

  return NDOAMSProperties.init(url:signatureHeaders:bodyData:presentModally:)(v11, v14, v16, v18, modally);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NDOAMSProperties.encode(with:)(coderCopy);
}

- (NDOAMSProperties)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end