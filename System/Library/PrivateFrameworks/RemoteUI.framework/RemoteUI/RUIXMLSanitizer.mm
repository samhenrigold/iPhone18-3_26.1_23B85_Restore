@interface RUIXMLSanitizer
- (RUIXMLSanitizer)init;
- (id)logStringWithXMLString:(id)string error:(id *)error;
- (id)sanitizedDataWithElement:(id)element error:(id *)error;
- (id)sanitizedXML:(id)l error:(id *)error;
- (id)sanitizedXMLElementWithData:(id)data error:(id *)error;
@end

@implementation RUIXMLSanitizer

- (RUIXMLSanitizer)init
{
  ObjectType = swift_getObjectType();
  v3 = _sSo11RUIPlatformC8RemoteUIE17isSolariumEnabledSbvgZ_0(ObjectType);
  v4 = 20;
  if ((v3 & 1) == 0)
  {
    v4 = 0;
  }

  v7 = v4;
  v5 = (*(ObjectType + 112))(&v7);
  swift_deallocPartialClassInstance();
  return v5;
}

- (id)sanitizedXML:(id)l error:(id *)error
{
  lCopy = l;
  selfCopy = self;
  v7 = sub_21BA864DC();
  v9 = v8;

  v10 = sub_21BA5D6B8(v7, v9);
  v12 = v11;

  sub_21B9B37F0(v7, v9);
  v13 = sub_21BA864CC();
  sub_21B9B37F0(v10, v12);

  return v13;
}

- (id)sanitizedDataWithElement:(id)element error:(id *)error
{
  elementCopy = element;
  selfCopy = self;
  v7 = sub_21BA5DAE8();
  v9 = v8;

  v10 = sub_21BA864CC();
  sub_21B9B37F0(v7, v9);

  return v10;
}

- (id)sanitizedXMLElementWithData:(id)data error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v7 = sub_21BA864DC();
  v9 = v8;

  v10 = Data.xmlElement()(v7, v9);
  v11 = (*((*MEMORY[0x277D85000] & selfCopy->super.isa) + 0x90))();

  sub_21B9B37F0(v7, v9);

  return v11;
}

- (id)logStringWithXMLString:(id)string error:(id *)error
{
  v5 = sub_21BA87CBC();
  v7 = v6;
  selfCopy = self;
  sub_21BA68A68(v5, v7);

  v9 = sub_21BA87C8C();

  return v9;
}

@end