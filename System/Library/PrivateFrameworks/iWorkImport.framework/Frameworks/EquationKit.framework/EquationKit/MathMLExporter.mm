@interface MathMLExporter
- (MathMLExporter)init;
- (id)exportDataForEquation:(id)equation;
@end

@implementation MathMLExporter

- (MathMLExporter)init
{
  v3.receiver = self;
  v3.super_class = MathMLExporter;
  return [(MathMLExporter *)&v3 init];
}

- (id)exportDataForEquation:(id)equation
{
  v4 = xmlBufferCreate();
  v5 = xmlNewTextWriterMemory(v4, 0);
  v6 = [equation exportToXMLWriter:v5 ns:"http://www.w3.org/1998/Math/MathML" prefix:"m" characterCount:0];
  v7 = 0;
  if (v6)
  {
    xmlTextWriterFlush(v5);
    v8 = objc_alloc(MEMORY[0x277CBEA90]);
    v9 = xmlBufferContent(v4);
    v7 = [v8 initWithBytes:v9 length:xmlBufferLength(v4)];
  }

  xmlFreeTextWriter(v5);
  xmlBufferFree(v4);
  return v7;
}

@end