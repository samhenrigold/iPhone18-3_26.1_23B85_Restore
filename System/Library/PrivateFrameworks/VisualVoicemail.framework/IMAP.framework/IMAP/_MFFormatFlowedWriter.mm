@interface _MFFormatFlowedWriter
+ (id)newWithPlainTextDocument:(id)document encoding:(unsigned int)encoding;
- (id)outputString;
- (id)quotedString;
- (unint64_t)_findLineBreakInRange:(_NSRange)range maxCharWidthCount:(unint64_t)count endIsURL:(BOOL)l;
- (void)_outputQuotedParagraph:(id)paragraph range:(_NSRange)range withQuoteLevel:(unsigned int)level;
- (void)dealloc;
@end

@implementation _MFFormatFlowedWriter

+ (id)newWithPlainTextDocument:(id)document encoding:(unsigned int)encoding
{
  documentCopy = document;
  v7 = [objc_allocWithZone(self) init];
  v8 = *(v7 + 8);
  *(v7 + 8) = documentCopy;

  *(v7 + 16) = encoding;
  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MFFormatFlowedWriter;
  [(_MFFormatFlowedWriter *)&v2 dealloc];
}

- (unint64_t)_findLineBreakInRange:(_NSRange)range maxCharWidthCount:(unint64_t)count endIsURL:(BOOL)l
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (range.location != 0x7FFFFFFFFFFFFFFFLL && range.length != 0)
  {
    lCopy = l;
    length = range.length;
    location = range.location;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *buffer = 0u;
    v36 = 0u;
    lineString = self->_lineString;
    theString = lineString;
    rangeCopy = range;
    CharactersPtr = CFStringGetCharactersPtr(lineString);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(lineString, 0x600u);
    }

    selfCopy = self;
    v47 = 0;
    v48 = 0;
    v45 = CStringPtr;
    if (count)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        if ((v14 & 0x8000000000000000) != 0 || (v16 = rangeCopy.length, rangeCopy.length <= v14))
        {
          v18 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v17 = CharactersPtr[rangeCopy.location + v14];
          }

          else if (v45)
          {
            v17 = v45[rangeCopy.location + v14];
          }

          else
          {
            if (v48 <= v14 || (v20 = v47, v47 > v14))
            {
              v21 = v14 - 4;
              if (v14 < 4)
              {
                v21 = 0;
              }

              if (v21 + 64 < rangeCopy.length)
              {
                v16 = v21 + 64;
              }

              v47 = v21;
              v48 = v16;
              v49.length = v16 - v21;
              v49.location = rangeCopy.location + v21;
              CFStringGetCharacters(theString, v49, buffer);
              v20 = v47;
            }

            v17 = buffer[v14 - v20];
          }

          v18 = v17;
          if ((v17 & 0xFC00) == 0xD800 && v14 < length - 1)
          {
            v23 = v14 + 1;
            v24 = rangeCopy.length;
            if (rangeCopy.length <= (v14 + 1))
            {
              v25 = 0;
            }

            else if (CharactersPtr)
            {
              v25 = CharactersPtr[rangeCopy.location + v23];
            }

            else if (v45)
            {
              v25 = v45[rangeCopy.location + v23];
            }

            else
            {
              if (v48 <= v23 || (v28 = v47, v47 > v23))
              {
                v29 = v14 - 3;
                if (v14 < 3)
                {
                  v29 = 0;
                }

                if (v29 + 64 < rangeCopy.length)
                {
                  v24 = v29 + 64;
                }

                v47 = v29;
                v48 = v24;
                v50.length = v24 - v29;
                v50.location = rangeCopy.location + v29;
                CFStringGetCharacters(theString, v50, buffer);
                v28 = v47;
              }

              v25 = buffer[v23 - v28];
            }

            v26 = v25 & 0xFC00;
            v27 = (v18 << 10) + v25 - 56613888;
            if (v26 == 56320)
            {
              v18 = v27;
              ++v14;
            }
          }
        }

        if (((u_getIntPropertyValue(v18, UCHAR_EAST_ASIAN_WIDTH) - 3) & 0xFFFFFFFD) != 0)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        v15 += v19;
        ++v14;
      }

      while (v14 < length && v15 < count);
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    if (lCopy && v15 <= count)
    {
      return location + length;
    }

    else
    {
      v30 = selfCopy;
      v31 = [(NSMutableString *)selfCopy->_lineString length]- location;
      v32 = [(NSMutableString *)v30->_lineString length];
      if (location + v14 + 1 < v32)
      {
        v33 = location + v14 + 1;
      }

      else
      {
        v33 = v32;
      }

      return [(NSMutableString *)v30->_lineString mf_lineBreakBeforeIndex:v33 withinRange:location, v31];
    }
  }

  return result;
}

- (void)_outputQuotedParagraph:(id)paragraph range:(_NSRange)range withQuoteLevel:(unsigned int)level
{
  v5 = *&level;
  length = range.length;
  location = range.location;
  v79 = *MEMORY[0x277D85DE8];
  str = paragraph;
  if (length)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5 == 0;
  }

  v10 = v9;
  v57 = v10;
  if (*(self + 40))
  {
    v11 = @" \n";
  }

  else
  {
    v11 = @"\n";
  }

  v60 = v11;
  lineString = self->_lineString;
  if (lineString)
  {
    [(NSMutableString *)lineString setString:&stru_288159858];
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCAB68]) initWithCapacity:72];
    v14 = self->_lineString;
    self->_lineString = v13;
  }

  if (v5)
  {
    v15 = v5;
    do
    {
      [(NSMutableString *)self->_lineString appendString:@">"];
      --v15;
    }

    while (v15);
    v16 = 72 - v5;
  }

  else
  {
    v16 = 72;
  }

  if (length <= v16)
  {
    v64 = 0;
  }

  else
  {
    v17 = [(__CFString *)str substringWithRange:location, length];
    if (v17)
    {
      if (_weakDDURLifierClass_onceToken != -1)
      {
        [_MFFormatFlowedWriter _outputQuotedParagraph:range:withQuoteLevel:];
      }

      v64 = [_weakDDURLifierClass_sDDURLifierClass urlMatchesForString:v17];
    }

    else
    {
      v64 = 0;
    }
  }

  outputString = self->_outputString;
  if (outputString)
  {
    v19 = length + location;
    if (location < length + location)
    {
      v58 = ~location;
      v59 = location;
      v20 = location;
      v21 = location;
      v61 = v5;
      while (1)
      {
        if (v5 || [(__CFString *)str rangeOfString:@" " options:8 range:v20, length]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)str rangeOfString:@"From " options:8 range:v20, length]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)str rangeOfString:@">" options:8 range:v20, length]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableString *)self->_lineString appendString:@" "];
        }

        v69 = length;
        v70 = v20;
        v22 = [(NSMutableString *)self->_lineString length];
        v65 = v21 - v22;
        v23 = v21 - v22 + 72;
        v24 = v64;
        *buf = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v25 = [v24 countByEnumeratingWithState:buf objects:v78 count:16];
        v72 = v19;
        v73 = v22;
        if (v25)
        {
          v67 = v21;
          v26 = v5;
          v27 = v23 + v58;
          v28 = *v75;
          while (2)
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v75 != v28)
              {
                objc_enumerationMutation(v24);
              }

              v30 = *(*&buf[8] + 8 * i);
              range = [v30 range];
              if (range <= v27 && range + v32 > v27)
              {
                v25 = v30;
                goto LABEL_47;
              }
            }

            v25 = [v24 countByEnumeratingWithState:buf objects:v78 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }

LABEL_47:
          v5 = v26;
          location = v59;
          v19 = v72;
          v22 = v73;
          v21 = v67;
        }

        v68 = v25;
        if (v25)
        {
          range2 = [v25 range];
          v36 = location;
          v37 = v35 + location + range2;
          if (v22 - v21 + v37 <= 0x3E6)
          {
            v38 = v35 + location + range2;
          }

          else
          {
            v38 = v65 + 998;
          }

          v62 = v37 > v23;
          if (v37 > v23)
          {
            v23 = v38;
          }
        }

        else
        {
          v36 = location;
          v62 = 0;
        }

        if (v23 >= v19)
        {
          v39 = v19;
        }

        else
        {
          v39 = v23;
        }

        v80.length = v39 - v21;
        v40 = v21;
        v80.location = v21;
        v41 = CFStringCreateWithSubstring(0, str, v80);
        [(NSMutableString *)self->_lineString appendString:v41];
        CFRelease(v41);
        if ([(NSMutableString *)self->_lineString length]>= 0x49)
        {
          v42 = NSZoneMalloc(0, [(NSMutableString *)self->_lineString length]);
          [(NSMutableString *)self->_lineString length];
          v43 = 998;
        }

        else
        {
          v42 = v78;
          v43 = 72;
        }

        [(NSMutableString *)self->_lineString length];
        Bytes = MFStringGetBytes();
        if (Bytes < [(NSMutableString *)self->_lineString length])
        {
          Bytes = [(NSMutableString *)self->_lineString rangeOfComposedCharacterSequenceAtIndex:Bytes];
        }

        v45 = v72;
        if (v42 != v78)
        {
          NSZoneFree(0, v42);
        }

        if (Bytes <= v73)
        {
          v47 = self->_outputString;
          self->_outputString = 0;

          v39 = 0x7FFFFFFFFFFFFFFFLL;
          v21 = v72;
          length = v69;
          v20 = v70;
          v46 = v61;
          goto LABEL_70;
        }

        if (Bytes == [(NSMutableString *)self->_lineString length]&& v72 <= v23)
        {
          length = v69;
          v20 = v70;
          v46 = v61;
          v21 = v40;
LABEL_70:
          location = v36;
          goto LABEL_71;
        }

        v49 = [(_MFFormatFlowedWriter *)self _findLineBreakInRange:v73 maxCharWidthCount:Bytes - v73 endIsURL:v43 - v73, v62];
        if (v49 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        length = v69;
        v20 = v70;
        v46 = v61;
        if (v49 != v73)
        {
          if (v49 >= v73)
          {
            goto LABEL_85;
          }

          v50 = vm_imap_log(v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2720B1000, v50, OS_LOG_TYPE_DEFAULT, "Bad line break index", buf, 2u);
          }

          v49 = Bytes;
          goto LABEL_84;
        }

        if (v62)
        {
          v49 = Bytes;
          goto LABEL_85;
        }

        v63 = [(__CFString *)str substringWithRange:v70, v69];
        v51 = [v63 mf_nextWordFromIndex:0 forward:1];
        if (v51 == 0x7FFFFFFFFFFFFFFFLL || v51 > 998 - v73)
        {

          v39 = v65 + Bytes;
          goto LABEL_86;
        }

        v66 = [(__CFString *)str substringWithRange:v70, v51];
        [(NSMutableString *)self->_lineString deleteCharactersInRange:v73, [(NSMutableString *)self->_lineString length]- v73];
        [(NSMutableString *)self->_lineString appendString:v66];
        v52 = NSZoneMalloc(0, 0x3E6uLL);
        [(NSMutableString *)self->_lineString length];
        v53 = MFStringGetBytes();
        v54 = [(NSMutableString *)self->_lineString length];
        if (v53 == v54)
        {
          v55 = v53;
        }

        else
        {
          v55 = Bytes;
        }

        v56 = v52;
        v45 = v72;
        NSZoneFree(0, v56);

        v21 = v40;
        v39 = v55 - v73 + v40;
        v9 = v53 == v54;
        length = v69;
        v20 = v70;
        v46 = v61;
        if (v9)
        {
          goto LABEL_70;
        }

LABEL_87:
        location = v36;
        if ((*(self + 40) & 1) == 0)
        {

          [(NSMutableString *)self->_outputString replaceOccurrencesOfString:@" \n" withString:@"  \n" options:0 range:0, [(NSMutableString *)self->_outputString length]];
          *(self + 40) |= 1u;
          v60 = @" \n";
          v45 = v72;
        }

LABEL_71:
        if (self->_outputString)
        {
          v48 = v39 - v21 + v73;
          if (v48 < [(NSMutableString *)self->_lineString length])
          {
            [(NSMutableString *)self->_lineString deleteCharactersInRange:v48, [(NSMutableString *)self->_lineString length]- v48];
          }

          [(NSMutableString *)self->_outputString appendString:self->_lineString];
          length = v45 - v39;
          if (v45 != v39)
          {
            [(NSMutableString *)self->_outputString appendString:v60];
          }

          if ([(NSMutableString *)self->_lineString length]> v46)
          {
            [(NSMutableString *)self->_lineString deleteCharactersInRange:v46, [(NSMutableString *)self->_lineString length]- v46];
          }

          v21 = v39;
          v20 = v39;
        }

        outputString = self->_outputString;
        if (!outputString)
        {
          goto LABEL_106;
        }

        v19 = length + v20;
        if (v21 >= length + v20)
        {
          goto LABEL_104;
        }
      }

      v49 = Bytes;
      length = v69;
      v46 = v61;
LABEL_84:
      v20 = v70;
LABEL_85:
      v39 = v65 + v49;
LABEL_86:
      v21 = v40;
      goto LABEL_87;
    }

LABEL_104:
    if ((v57 & 1) == 0)
    {
      [(NSMutableString *)outputString appendString:self->_lineString];
    }
  }

LABEL_106:
}

- (id)outputString
{
  outputString = self->_outputString;
  if (!outputString)
  {
    fragmentCount = [(MFPlainTextDocument *)self->_inputDocument fragmentCount];
    v23 = 0;
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v6 = self->_outputString;
    self->_outputString = v5;

    if (fragmentCount)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v8;
        if (!self->_outputString)
        {
          break;
        }

        inputDocument = self->_inputDocument;
        v22 = v8;
        [(MFPlainTextDocument *)inputDocument getString:&v22 quoteLevel:&v23 ofFragmentAtIndex:v7];
        v8 = v22;

        v11 = [v8 length];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          while (1)
          {
            if (!self->_outputString)
            {
              goto LABEL_21;
            }

            v20 = 0;
            v21 = 0;
            v19 = 0;
            [v8 getLineStart:&v21 end:&v20 contentsEnd:&v19 forRange:{v13, 0}];
            v14 = [v8 rangeOfString:@"-- " options:8 range:{v21, v19 - v21}];
            v15 = v19;
            if (v14 != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            do
            {
              v16 = v15;
              if (v15 <= v21)
              {
                break;
              }

              --v15;
            }

            while ([v8 characterAtIndex:v16 - 1] == 32);
            if (v19 == v16)
            {
              goto LABEL_16;
            }

            if (v19 != v20)
            {
              v19 = v16;
LABEL_16:
              [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v8 range:v21 withQuoteLevel:v16 - v21, v23];
              if (v19 != v20)
              {
                [(NSMutableString *)self->_outputString appendString:@"\n"];
              }

              goto LABEL_18;
            }

            [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v8 range:v21 withQuoteLevel:v16 + 1 - v21, v23];
            if (v19 - v16 >= 2)
            {
              [(NSMutableString *)self->_outputString appendString:@"\n"];
              [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v8 range:v16 + 1 withQuoteLevel:~v16 + v19, v23];
            }

LABEL_18:
            v13 = v20;
            if (v20 >= v12)
            {
              goto LABEL_21;
            }
          }

          v16 = v19;
          goto LABEL_16;
        }

LABEL_21:
        ++v7;
      }

      while (v7 != fragmentCount);
    }

    outputString = self->_outputString;
  }

  v17 = [(NSMutableString *)outputString copyWithZone:0];

  return v17;
}

- (id)quotedString
{
  quotedString = self->_quotedString;
  if (!quotedString)
  {
    fragmentCount = [(MFPlainTextDocument *)self->_inputDocument fragmentCount];
    v23 = 0;
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v6 = self->_quotedString;
    self->_quotedString = v5;

    if (fragmentCount)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v8;
        if (!self->_quotedString)
        {
          break;
        }

        inputDocument = self->_inputDocument;
        v22 = v8;
        [(MFPlainTextDocument *)inputDocument getString:&v22 quoteLevel:&v23 ofFragmentAtIndex:v7];
        v8 = v22;

        v11 = [v8 length];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          do
          {
            if (!self->_quotedString)
            {
              break;
            }

            v20 = 0;
            v21 = 0;
            v19 = 0;
            [v8 getLineStart:&v21 end:&v20 contentsEnd:&v19 forRange:{v13, 0}];
            if (v23)
            {
              v14 = v23 + 1;
              do
              {
                [(NSMutableString *)self->_quotedString appendString:@">"];
                --v14;
              }

              while (v14 > 1);
              [(NSMutableString *)self->_quotedString appendString:@" "];
            }

            v15 = self->_quotedString;
            v16 = [v8 substringWithRange:{v21, v20 - v21}];
            [(NSMutableString *)v15 appendString:v16];

            v13 = v20;
          }

          while (v20 < v12);
        }

        ++v7;
      }

      while (v7 != fragmentCount);
    }

    quotedString = self->_quotedString;
  }

  v17 = [(NSMutableString *)quotedString copyWithZone:0];

  return v17;
}

@end