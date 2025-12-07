@interface GQHTextSpan
+ (int)handleAttachment:(id)attachment state:(id)state;
+ (int)handleAutoNumber:(id)number state:(id)state;
+ (int)handleContainerHint:(id)hint state:(id)state;
+ (int)handleSpan:(id)span checkForTrailingBlanks:(BOOL)blanks state:(id)state;
+ (int)handleTextBackgroundForStyle:(id)style destStyle:(id)destStyle state:(id)state;
+ (int)handleTextList:(id)list checkForTrailingBlanks:(BOOL)blanks state:(id)state;
+ (int)handleTextListChild:(id)child outputBlanks:(BOOL)blanks state:(id)state;
+ (int)handleTextMarker:(id)marker outputBlanks:(BOOL)blanks state:(id)state;
+ (int)nonWhitespaceCount:(__CFArray *)count;
@end

@implementation GQHTextSpan

+ (int)handleSpan:(id)span checkForTrailingBlanks:(BOOL)blanks state:(id)state
{
  blanksCopy = blanks;
  htmlDoc = [state htmlDoc];
  [htmlDoc startElement:"span"];
  characterStyle = [span characterStyle];
  v11 = [state cachedClassStringForTextStyle:characterStyle implicitStyle:objc_msgSend(state isColoredBackground:"implicitStyle") outlineLevel:objc_msgSend(state outlineType:"coloredBackground") isSpan:{0, 0, 1}];
  if (!v11)
  {
    v12 = objc_alloc_init(GQHStyle);
    [GQHTextStyle mapStyle:characterStyle style:v12 state:state isSpan:1];
    cf = 0;
    [GQHStyle createBaseStyleClassString:characterStyle classString:&cf classType:objc_opt_class() state:state];
    implicitStyle = [state implicitStyle];
    coloredBackground = [state coloredBackground];
    v15 = cf;
    if (!cf)
    {
      v15 = &stru_85620;
    }

    v11 = [state addCachedClassStringForTextStyle:characterStyle implicitStyle:implicitStyle isColoredBackground:coloredBackground outlineLevel:0 outlineType:0 isSpan:1 baseClassString:v15 cssCachedStyle:v12];
    if (cf)
    {
      CFRelease(cf);
    }
  }

  [objc_msgSend(state "htmlDoc")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [state setCurrentSpanStyle:0 baseStyle:0 cachedClass:v11];
  }

  v16 = [self handleTextList:span checkForTrailingBlanks:blanksCopy state:state];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [state setCurrentSpanStyle:0 baseStyle:0 cachedClass:0];
  }

  [htmlDoc endElementWithExpectedName:"span"];
  return v16;
}

+ (int)handleTextList:(id)list checkForTrailingBlanks:(BOOL)blanks state:(id)state
{
  blanksCopy = blanks;
  children = [list children];
  Count = CFArrayGetCount(children);
  v10 = Count;
  if (blanksCopy)
  {
    Count = [GQHTextSpan nonWhitespaceCount:children];
  }

  if (!v10)
  {
    return 1;
  }

  v11 = 0;
  v12 = Count;
  do
  {
    result = [self handleTextListChild:CFArrayGetValueAtIndex(children outputBlanks:v11) state:{v11 < v12, state}];
    ++v11;
  }

  while (v11 < v10 && result == 1);
  return result;
}

+ (int)handleTextListChild:(id)child outputBlanks:(BOOL)blanks state:(id)state
{
  blanksCopy = blanks;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [state inContent];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    content = [child content];
    uTF8String = content;
    if (content && xmlStrstr(content, "  "))
    {
      v11 = [[NSMutableString alloc] initWithCString:uTF8String encoding:4];
      v12 = [[NSString alloc] initWithFormat:@" %C", 160];
      [v11 replaceOccurrencesOfString:@"  " withString:v12 options:2 range:{0, objc_msgSend(v11, "length")}];

      uTF8String = [v11 UTF8String];
    }

    else
    {
      v11 = 0;
    }

    [objc_msgSend(state "htmlDoc")];

    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [self handleTextMarker:child outputBlanks:blanksCopy state:?];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [self handleAutoNumber:child state:state];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [objc_msgSend(state "htmlDoc")];
        return 1;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        return [self handlePageStart:child state:state];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return [self handleAttachment:child state:state];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            return [self handleContainerHint:child state:state];
          }

          else
          {
            return 3;
          }
        }
      }
    }
  }
}

+ (int)handleTextBackgroundForStyle:(id)style destStyle:(id)destStyle state:(id)state
{
  v11 = 0;
  if ([style overridesObjectProperty:22 value:&v11])
  {
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [state getColorString:v11];
        [destStyle addAttribute:off_9CE08 value:v7];
        v10 = 0.0;
        if ([objc_msgSend(state "implicitStyle")])
        {
          *&v8 = v10;
          if (v10 > 0.0)
          {
            [destStyle addAttribute:off_9CF10 intValue:llroundf(v10)];
          }
        }

        if ([objc_msgSend(state implicitStyle] && v10 > 0.0)
        {
          [destStyle addAttribute:off_9CEF8 intValue:llroundf(v10)];
        }
      }
    }
  }

  return 1;
}

+ (int)nonWhitespaceCount:(__CFArray *)count
{
  result = CFArrayGetCount(count);
  if (result >= 1)
  {
    for (i = result & 0x7FFFFFFF; ; --i)
    {
      v6 = i - 1;
      ValueAtIndex = CFArrayGetValueAtIndex(count, i - 1);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([ValueAtIndex isBlank] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }
      }

      if ((v6 + 1) <= 1)
      {
        return 0;
      }
    }

    return i;
  }

  return result;
}

+ (int)handleTextMarker:(id)marker outputBlanks:(BOOL)blanks state:(id)state
{
  blanksCopy = blanks;
  htmlDoc = [state htmlDoc];
  type = [marker type];
  if (type - 2 < 4)
  {
    [htmlDoc startElement:"br"];
LABEL_3:
    [htmlDoc endElement];
    return 1;
  }

  if (type == 1 && blanksCopy)
  {
    [htmlDoc startElement:"span"];
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%C %C %C %C ", 160, 160, 160, 160);
    [htmlDoc addContent:v10];
    CFRelease(v10);
    goto LABEL_3;
  }

  return 1;
}

+ (int)handleAutoNumber:(id)number state:(id)state
{
  htmlDoc = [state htmlDoc];
  if ([number type] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(state, "isMappingHeadersFooters"))
  {
    v7 = CFStringCreateWithFormat(0, 0, @"%d", [state pageNumberForHeaderOrFooter]);
    [htmlDoc addContent:v7];
    CFRelease(v7);
  }

  else
  {
    [htmlDoc addContent:{objc_msgSend(number, "value")}];
  }

  return 1;
}

+ (int)handleAttachment:(id)attachment state:(id)state
{
  drawable = [attachment drawable];
  useOutline = [state useOutline];
  if (useOutline)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      externalTextWrap = [objc_msgSend(drawable "graphicStyle")];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        LOBYTE(useOutline) = 0;
        if (!drawable)
        {
          return 1;
        }

        goto LABEL_8;
      }

      externalTextWrap = [drawable externalTextWrap];
    }

    LOBYTE(useOutline) = [externalTextWrap inlineWrapEnabled];
  }

  if (!drawable)
  {
    return 1;
  }

LABEL_8:
  if (useOutline)
  {
    return 1;
  }

  return [GQHDrawable handleInlineDrawable:drawable htmlState:state];
}

+ (int)handleContainerHint:(id)hint state:(id)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [state handleContainerHint:hint];
  }

  return 1;
}

@end