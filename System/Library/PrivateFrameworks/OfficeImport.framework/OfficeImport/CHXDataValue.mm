@interface CHXDataValue
+ (id)chdDataValueFromXmlDataValueElement:(_xmlNode *)element state:(id)state;
+ (id)chdNumberValueFromXmlDataValueElement:(_xmlNode *)element state:(id)state;
+ (id)chdStringValueFromXmlDataValueElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXDataValue

+ (id)chdStringValueFromXmlDataValueElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v9 = [EXString readStringWithAsciiCodeFromXmlStringElement:OCXFindRequiredChild(element, oAXChartNamespace, "v")];

  EDValue::makeWithNSString(&v12.type, v9);
  v10 = [self chdDataValueFromXmlDataValueElement:element state:stateCopy];
  [v10 setValue:&v12];
  EDValue::~EDValue(&v12);

  return v10;
}

+ (id)chdNumberValueFromXmlDataValueElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v9 = [EXString readStringWithAsciiCodeFromXmlStringElement:OCXFindRequiredChild(element, oAXChartNamespace, "v")];

  [v9 doubleValue];
  EDValue::makeWithNumber(&v13.type, v10);
  v11 = [self chdDataValueFromXmlDataValueElement:element state:stateCopy];
  [v11 setValue:&v13];
  EDValue::~EDValue(&v13);

  return v11;
}

+ (id)chdDataValueFromXmlDataValueElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = +[CHDDataValue dataValue];
  [v6 setIndex:{CXRequiredUnsignedLongAttribute(element, CXNoNamespace, "idx")}];
  v13 = 0;
  v7 = CXOptionalStringAttribute(element, CXNoNamespace, "formatCode", &v13);
  v8 = v13;
  if (v7)
  {
    v9 = [EDString edStringWithString:v8];
    v10 = [EDContentFormat contentFormatWithFormatString:v9];

    resources = [stateCopy resources];
    [v6 setContentFormatWithResources:v10 resources:resources];
  }

  return v6;
}

@end