@interface EQKitEquation
+ (id)equationSourceFromDataProvider:(CGDataProvider *)provider;
+ (id)equationSourceFromPDFData:(id)data;
+ (id)equationSourceFromXMLMetadata:(id)metadata;
+ (id)equationWithData:(id)data format:(int)format environment:(id)environment error:(id *)error;
+ (id)equationWithString:(id)string format:(int)format environment:(id)environment error:(id *)error;
+ (id)equationWithString:(id)string format:(int)format error:(id *)error;
+ (id)equationWithXMLDoc:(_xmlDoc *)doc node:(_xmlNode *)node environment:(id)environment error:(id *)error;
+ (id)xmlMetadataFromEquationSource:(id)source;
+ (int)formatFromData:(id)data;
+ (int)formatFromString:(id)string;
- (BOOL)exportToXMLWriter:(_xmlTextWriter *)writer ns:(const char *)ns prefix:(const char *)prefix characterCount:(int *)count;
- (EQKitEquation)initWithRoot:(id)root source:(id)source;
- (id)description;
- (id)pdfDataWithLayout:(id)layout layoutContext:(id)context sourceString:(id)string tightFit:(BOOL)fit;
- (id)pdfDataWithLayoutContext:(id)context baselineOffset:(double *)offset sourceString:(id)string;
- (void)dealloc;
@end

@implementation EQKitEquation

- (EQKitEquation)initWithRoot:(id)root source:(id)source
{
  if (!root)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[EQKitEquation initWithRoot:source:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/EquationKit/EQKitEquation.mm") description:{355, 0, "invalid root"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v12.receiver = self;
  v12.super_class = EQKitEquation;
  v9 = [(EQKitEquation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    if (root)
    {
      v9->mRoot = root;
      v10->mSource = source;
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

+ (int)formatFromData:(id)data
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:data encoding:4];
  LODWORD(self) = [self formatFromString:v4];

  return self;
}

+ (int)formatFromString:(id)string
{
  v28 = *MEMORY[0x277D85DE8];
  if ([string hasPrefix:@"$$"])
  {
LABEL_2:
    LODWORD(v4) = 2;
    return v4;
  }

  if (!qword_280A389A8)
  {
    v5 = objc_alloc(MEMORY[0x277CBEA60]);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"<math", @"</math>", 0}];
    qword_280A389A8 = [v5 initWithObjects:{v6, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", @"<", @":math", @"</", @":math>", 0), 0}];
  }

  v7 = sub_275CB89E8();
  v8 = [string stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = qword_280A389A8;
  v10 = [qword_280A389A8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (sub_275CBA420(*(*(&v22 + 1) + 8 * v13), v8, 0) != 0x7FFFFFFFFFFFFFFFLL)
        {
          LODWORD(v4) = 1;
          return v4;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v14 = v4;
    v15 = *v19;
LABEL_15:
    v16 = 0;
    while (1)
    {
      if (*v19 != v15)
      {
        objc_enumerationMutation(v7);
      }

      if (sub_275CBA420(*(*(&v18 + 1) + 8 * v16), v8, 1) != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_2;
      }

      if (v14 == ++v16)
      {
        v14 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
        LODWORD(v4) = 0;
        if (v14)
        {
          goto LABEL_15;
        }

        return v4;
      }
    }
  }

  return v4;
}

+ (id)equationWithData:(id)data format:(int)format environment:(id)environment error:(id *)error
{
  if (format == 2)
  {
    if (data)
    {
      sub_275CB8E9C(environment, [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(data length:"bytes") encoding:{objc_msgSend(data, "length"), 4}]);
    }

    return 0;
  }

  if (format != 1)
  {
    if (!format && error && !*error)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = MEMORY[0x277CBEAC0];
      v10 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      parse = 0;
      *error = [v8 errorWithDomain:@"EQKitErrorDomain" code:0 userInfo:{objc_msgSend(v9, "dictionaryWithObjectsAndKeys:", v10, *MEMORY[0x277CCA450], 0)}];
      return parse;
    }

    return 0;
  }

  dataCopy = data;
  if (!dataCopy)
  {
    return 0;
  }

  if (xmlSAXVersion(&hdlr, 2))
  {
    parse = 0;
  }

  else
  {
    hdlr.getEntity = sub_275CD67B0;
    v13 = xmlSubstituteEntitiesDefault(1);
    ExternalEntityLoader = xmlGetExternalEntityLoader();
    xmlSetExternalEntityLoader(sub_275CB9430);
    v15 = xmlSAXParseMemory(&hdlr, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0);
    xmlSetExternalEntityLoader(ExternalEntityLoader);
    xmlSubstituteEntitiesDefault(v13);
    parse = 0;
    if (environment && v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        environmentCopy = environment;
      }

      else
      {
        environmentCopy = 0;
      }

      v17 = [[EQKitMathMLParser alloc] initWithDocument:v15 node:0 source:dataCopy environment:environmentCopy];
      parse = [(EQKitMathMLParser *)v17 parse];
      if (error && !*error)
      {
        *error = [(EQKitMathMLParser *)v17 error];
      }

      xmlFreeDoc(v15);
    }
  }

  if (error && !parse)
  {
    if (!*error)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = MEMORY[0x277CBEAC0];
      v20 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      *error = [v18 errorWithDomain:@"EQKitErrorDomain" code:0 userInfo:{objc_msgSend(v19, "dictionaryWithObjectsAndKeys:", v20, *MEMORY[0x277CCA450], 0)}];
    }

    return 0;
  }

  if (parse)
  {
    parse[3] = environment;
  }

  return parse;
}

+ (id)equationWithString:(id)string format:(int)format environment:(id)environment error:(id *)error
{
  uTF8String = [string UTF8String];
  if (uTF8String)
  {
    [MEMORY[0x277CBEA90] dataWithBytes:uTF8String length:strlen(uTF8String)];

    return MEMORY[0x2821F9670](self, sel_equationWithData_format_environment_error_);
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:2048 userInfo:0];
    }

    return 0;
  }
}

+ (id)equationWithString:(id)string format:(int)format error:(id *)error
{
  uTF8String = [string UTF8String];
  if (uTF8String)
  {
    [MEMORY[0x277CBEA90] dataWithBytes:uTF8String length:strlen(uTF8String)];
    +[EQKitEnvironment defaultEnvironment];

    return MEMORY[0x2821F9670](self, sel_equationWithData_format_environment_error_);
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:2048 userInfo:0];
    }

    return 0;
  }
}

+ (id)equationWithXMLDoc:(_xmlDoc *)doc node:(_xmlNode *)node environment:(id)environment error:(id *)error
{
  parse = 0;
  if (doc && node)
  {
    v11 = [EQKitMathMLParser alloc];
    v12 = objc_opt_class();
    v13 = [(EQKitMathMLParser *)v11 initWithDocument:doc node:node source:0 environment:sub_275C950F4(v12, environment)];
    parse = [(EQKitMathMLParser *)v13 parse];
    if (error)
    {
      *error = [(EQKitMathMLParser *)v13 error];
    }
  }

  return parse;
}

- (BOOL)exportToXMLWriter:(_xmlTextWriter *)writer ns:(const char *)ns prefix:(const char *)prefix characterCount:(int *)count
{
  if (!self->mSource)
  {
    return 0;
  }

  if (!xmlStrEqual(ns, "http://www.w3.org/1998/Math/MathML"))
  {
    return 0;
  }

  if (xmlSAXVersion(&v16, 2))
  {
    return 0;
  }

  v16.getEntity = sub_275CD67B0;
  v12 = xmlSubstituteEntitiesDefault(1);
  ExternalEntityLoader = xmlGetExternalEntityLoader();
  xmlSetExternalEntityLoader(sub_275CB9430);
  v14 = xmlSAXParseMemory(&v16, [(NSData *)self->mSource bytes], [(NSData *)self->mSource length], 0);
  xmlSetExternalEntityLoader(ExternalEntityLoader);
  xmlSubstituteEntitiesDefault(v12);
  if (!v14)
  {
    return 0;
  }

  RootElement = xmlDocGetRootElement(v14);
  if (RootElement)
  {
    v10 = sub_275CB97F0(writer, prefix, RootElement, count);
  }

  else
  {
    v10 = 0;
  }

  xmlFreeDoc(v14);
  return v10;
}

- (id)pdfDataWithLayoutContext:(id)context baselineOffset:(double *)offset sourceString:(id)string
{
  newLayout = [(EQKitExpression *)[(EQKitEquation *)self root] newLayout];
  if (!newLayout)
  {
    return 0;
  }

  v10 = newLayout;
  [newLayout layoutWithContext:context];
  v11 = [(EQKitEquation *)self pdfDataWithLayout:v10 layoutContext:context sourceString:string tightFit:0];
  if (offset)
  {
    [v10 depth];
    *offset = -v12;
  }

  return v11;
}

+ (id)xmlMetadataFromEquationSource:(id)source
{
  data = [MEMORY[0x277CBEB28] data];
  v5 = xmlNewDoc("1.0");
  v6 = xmlNewNode(0, "root");
  xmlDocSetRootElement(v5, v6);
  v7 = xmlNewChild(v6, 0, "com.apple.iwork", 0);
  xmlNewProp(v7, "version", "1.0");
  v8 = xmlNewChild(v7, 0, "equation", 0);
  v9 = [source dataUsingEncoding:4];
  v10 = xmlNewCDataBlock(v5, [v9 bytes], objc_msgSend(v9, "length"));
  xmlAddChild(v8, v10);
  if (v5)
  {
    v11 = xmlKeepBlanksDefault(0);
    IO = xmlOutputBufferCreateIO(sub_275CB9BD4, 0, data, 0);
    if (IO)
    {
      xmlSaveFormatFileTo(IO, v5, 0, 1);
    }

    xmlKeepBlanksDefault(v11);
  }

  xmlFreeDoc(v5);
  return data;
}

+ (id)equationSourceFromXMLMetadata:(id)metadata
{
  if (xmlSAXVersion(&v15, 2))
  {
    return 0;
  }

  v5 = xmlSubstituteEntitiesDefault(1);
  ExternalEntityLoader = xmlGetExternalEntityLoader();
  xmlSetExternalEntityLoader(sub_275CB9430);
  v7 = xmlSAXParseMemory(&v15, [metadata bytes], objc_msgSend(metadata, "length"), 0);
  xmlSetExternalEntityLoader(ExternalEntityLoader);
  xmlSubstituteEntitiesDefault(v5);
  if (!v7)
  {
    return 0;
  }

  children = xmlDocGetRootElement(v7)->children;
  if (!children)
  {
    goto LABEL_9;
  }

  while (1)
  {
    if (children->type == XML_ELEMENT_NODE)
    {
      name = children->name;
      if (name)
      {
        if (!strcmp(name, "com.apple.iwork"))
        {
          break;
        }
      }
    }

    children = children->next;
    if (!children)
    {
      goto LABEL_9;
    }
  }

  v11 = children->children;
  if (!v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    if (v11->type == XML_ELEMENT_NODE)
    {
      v12 = v11->name;
      if (v12)
      {
        if (!strcmp(v12, "equation"))
        {
          break;
        }
      }
    }

    v11 = v11->next;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v13 = v11->children;
  if (v13)
  {
    v4 = 0;
    do
    {
      if (v13->type - 3 <= 1 && v13->content && !xmlIsBlankNode(v13))
      {
        if (v4)
        {
          v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v13->content];
          v4 = [v4 stringByAppendingString:v14];
        }

        else
        {
          v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13->content];
        }
      }

      v13 = v13->next;
    }

    while (v13);
  }

  else
  {
LABEL_9:
    v4 = 0;
  }

  xmlFreeDoc(v7);
  return v4;
}

- (id)pdfDataWithLayout:(id)layout layoutContext:(id)context sourceString:(id)string tightFit:(BOOL)fit
{
  if (!layout)
  {
    v46 = MEMORY[0x277D81150];
    v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[EQKitEquation pdfDataWithLayout:layoutContext:sourceString:tightFit:]", context, string, fit}];
    [v46 handleFailureInFunction:v47 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/EquationKit/EQKitEquation.mm") description:{864, 0, "invalid layout"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
    return 0;
  }

  fitCopy = fit;
  [layout erasableBounds];
  if (CGRectIsEmpty(v50))
  {
    return 0;
  }

  [layout erasableBounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [layout height];
  v19 = v18;
  [layout width];
  v20 = v15;
  if (v21 > v15)
  {
    [layout width];
    v20 = v22;
  }

  v23 = v19 + v13;
  [layout height];
  v25 = v24;
  [layout height];
  v27 = v26;
  [layout depth];
  v29 = v17;
  if (v27 + v28 > v17)
  {
    [layout height];
    v31 = v30;
    [layout depth];
    v29 = v31 + v32;
  }

  v33 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v34 = objc_autoreleasePoolPush();
  v35 = 0.0;
  if (fitCopy)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = 1.0;
  }

  v37 = fmax(v25, 0.0);
  v38 = fmax(v20, 0.0) + v36 * 2.0;
  v39 = fmax(v29, 0.0) + v36 * 2.0;
  if (fitCopy)
  {
    v38 = v15;
    v35 = v23;
  }

  else
  {
    v17 = v39;
  }

  v49.origin.x = v11;
  v49.origin.y = 0.0;
  v40 = v37 - v35;
  v49.size.width = v38;
  v49.size.height = v17;
  v41 = CGDataConsumerCreateWithCFData(v33);
  v42 = CGPDFContextCreate(v41, &v49, 0);
  CGDataConsumerRelease(v41);
  v43 = [objc_opt_class() xmlMetadataFromEquationSource:{string, *&v49.origin.x, *&v49.origin.y, *&v49.size.width, *&v49.size.height}];
  CGPDFContextAddDocumentMetadata(v42, v43);
  CGContextSaveGState(v42);
  UIGraphicsPushContext(v42);
  CGPDFContextBeginPage(v42, 0);
  CGContextTranslateCTM(v42, 0.0, v17);
  CGContextScaleCTM(v42, 1.0, -1.0);
  if (objc_opt_respondsToSelector())
  {
    baseFontColor = [context baseFontColor];
    if (baseFontColor)
    {
      v45 = baseFontColor;
      CGContextSetFillColorWithColor(v42, baseFontColor);
      CGContextSetStrokeColorWithColor(v42, v45);
    }
  }

  [layout renderIntoContext:v42 offset:{v36, v36 + v40}];
  CGPDFContextEndPage(v42);
  UIGraphicsPopContext();
  CGContextRestoreGState(v42);
  CGPDFContextClose(v42);
  CGContextRelease(v42);
  objc_autoreleasePoolPop(v34);
  return v33;
}

+ (id)equationSourceFromPDFData:(id)data
{
  result = CGDataProviderCreateWithData(0, [data bytes], objc_msgSend(data, "length"), 0);
  if (result)
  {
    v5 = result;
    v6 = [self equationSourceFromDataProvider:result];
    CGDataProviderRelease(v5);
    return v6;
  }

  return result;
}

+ (id)equationSourceFromDataProvider:(CGDataProvider *)provider
{
  if (provider)
  {
    v4 = CGPDFDocumentCreateWithProvider(provider);
    if (v4)
    {
      v5 = v4;
      Catalog = CGPDFDocumentGetCatalog(v4);
      if (Catalog)
      {
        value = 0;
        v7 = 0;
        if (!CGPDFDictionaryGetStream(Catalog, "Metadata", &value))
        {
LABEL_12:
          CGPDFDocumentRelease(v5);
          return v7;
        }

        format = CGPDFDataFormatRaw;
        v8 = CGPDFStreamCopyData(value, &format);
        if (v8)
        {
          v9 = v8;
          if (format)
          {
            v7 = 0;
          }

          else
          {
            v7 = [self equationSourceFromXMLMetadata:v8];
          }

          CFRelease(v9);
          goto LABEL_12;
        }
      }

      v7 = 0;
      goto LABEL_12;
    }
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitEquation;
  [(EQKitEquation *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p root=%@>", NSStringFromClass(v4), self, self->mRoot];
}

@end