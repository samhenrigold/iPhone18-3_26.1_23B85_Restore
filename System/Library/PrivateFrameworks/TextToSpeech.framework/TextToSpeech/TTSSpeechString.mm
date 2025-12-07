@interface TTSSpeechString
- (BOOL)_rangeIsValid:(_NSRange)valid;
- (BOOL)encapsulateSubstringAtRange:(_NSRange)range withPrefix:(id)prefix andSuffix:(id)suffix;
- (BOOL)insertAtLocation:(unint64_t)location string:(id)string;
- (BOOL)transformRange:(_NSRange)range to:(id)to;
- (NSString)defrostedTransformedString;
- (NSString)transformedString;
- (TTSSpeechString)initWithOriginalString:(id)string;
- (TTSSpeechString)initWithParentSpeechString:(id)string;
- (TTSSpeechString)initWithSSMLString:(id)string;
- (_NSRange)_translateRangeInTransformedString:(_NSRange)string withParent:(id)parent;
- (_NSRange)translateRangeInTransformedString:(_NSRange)string;
- (id)_transformedStringNonMutating;
- (id)xmlEscaped;
- (id)xmlUnescaped;
- (void)_insertTransformation:(id)transformation forEncapsulatedTerminator:(BOOL)terminator;
- (void)replaceOccurencesOfString:(id)string withString:(id)withString;
@end

@implementation TTSSpeechString

- (TTSSpeechString)initWithParentSpeechString:(id)string
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = TTSSpeechString;
  v6 = [(TTSSpeechString *)&v13 init];
  if (v6)
  {
    transformedString = [stringCopy transformedString];
    v8 = [transformedString copy];
    originalString = v6->_originalString;
    v6->_originalString = v8;

    objc_storeStrong(&v6->_parentString, string);
    array = [MEMORY[0x1E695DF70] array];
    transformations = v6->_transformations;
    v6->_transformations = array;

    v6->_type = [stringCopy type];
  }

  return v6;
}

- (TTSSpeechString)initWithOriginalString:(id)string
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = TTSSpeechString;
  v5 = [(TTSSpeechString *)&v11 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    originalString = v5->_originalString;
    v5->_originalString = v6;

    array = [MEMORY[0x1E695DF70] array];
    transformations = v5->_transformations;
    v5->_transformations = array;

    v5->_type = 0;
  }

  return v5;
}

- (TTSSpeechString)initWithSSMLString:(id)string
{
  result = [(TTSSpeechString *)self initWithOriginalString:string];
  result->_type = 1;
  return result;
}

- (void)replaceOccurencesOfString:(id)string withString:(id)withString
{
  withStringCopy = withString;
  stringCopy = string;
  v8 = +[TTSRegexCache sharedInstance];
  v9 = [v8 regexForString:stringCopy];

  originalString = [(TTSSpeechString *)self originalString];
  originalString2 = [(TTSSpeechString *)self originalString];
  v12 = [originalString2 length];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A9369AA0;
  v14[3] = &unk_1E7880530;
  v14[4] = self;
  v15 = withStringCopy;
  v13 = withStringCopy;
  [v9 enumerateMatchesInString:originalString options:2 range:0 usingBlock:{v12, v14}];
}

- (BOOL)transformRange:(_NSRange)range to:(id)to
{
  length = range.length;
  location = range.location;
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(TTSSpeechString *)self _rangeIsValid:location, length])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    transformations = [(TTSSpeechString *)self transformations];
    v9 = [(TTSStringTransformation *)transformations countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(transformations);
          }

          v23.location = [*(*(&v16 + 1) + 8 * i) range];
          v23.length = v13;
          v22.location = location;
          v22.length = length;
          if (NSIntersectionRange(v22, v23).length)
          {
            v14 = 0;
            goto LABEL_13;
          }
        }

        v10 = [(TTSStringTransformation *)transformations countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    transformations = [[TTSStringTransformation alloc] initWithRange:location andReplacement:length, toCopy];
    [(TTSSpeechString *)self _insertTransformation:transformations forEncapsulatedTerminator:0];
    v14 = 1;
LABEL_13:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)insertAtLocation:(unint64_t)location string:(id)string
{
  stringCopy = string;
  originalString = [(TTSSpeechString *)self originalString];
  v8 = [originalString length];

  if (v8 >= location)
  {
    stringCopy = [[TTSStringTransformation alloc] initWithRange:location andReplacement:0, stringCopy];
    [(TTSSpeechString *)self _insertTransformation:stringCopy forEncapsulatedTerminator:0];
  }

  return v8 >= location;
}

- (BOOL)encapsulateSubstringAtRange:(_NSRange)range withPrefix:(id)prefix andSuffix:(id)suffix
{
  length = range.length;
  location = range.location;
  prefixCopy = prefix;
  suffixCopy = suffix;
  v11 = [(TTSSpeechString *)self _rangeIsValid:location, length];
  if (v11)
  {
    if ([prefixCopy length])
    {
      [(TTSSpeechString *)self insertAtLocation:location string:prefixCopy];
    }

    if ([suffixCopy length])
    {
      suffixCopy = [[TTSStringTransformation alloc] initWithRange:location + length andReplacement:0, suffixCopy];
      [(TTSSpeechString *)self _insertTransformation:suffixCopy forEncapsulatedTerminator:1];
    }
  }

  return v11;
}

- (_NSRange)translateRangeInTransformedString:(_NSRange)string
{
  length = string.length;
  location = string.location;
  parentString = [(TTSSpeechString *)self parentString];
  v7 = [(TTSSpeechString *)self _translateRangeInTransformedString:location withParent:length, parentString];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)_translateRangeInTransformedString:(_NSRange)string withParent:(id)parent
{
  length = string.length;
  location = string.location;
  v56 = *MEMORY[0x1E69E9840];
  parentCopy = parent;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  transformations = [(TTSSpeechString *)self transformations];
  reverseObjectEnumerator = [transformations reverseObjectEnumerator];

  v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v52;
    v50 = parentCopy;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        v61.location = [v15 finalRange];
        v61.length = v16;
        v57.location = location;
        v57.length = length;
        v17 = NSIntersectionRange(v57, v61);
        if (v17.length == length)
        {
          range = [v15 range];
          length = v20;
          parentCopy = v50;
          if (v50)
          {
            v22 = [v50 translateRangeInTransformedString:{range, v20}];
            goto LABEL_25;
          }

LABEL_26:

          goto LABEL_27;
        }

        finalRange = [v15 finalRange];
        if (v17.length)
        {
          v19 = 1;
        }

        else
        {
          v19 = location >= finalRange;
        }

        if (!v19)
        {
          parentCopy = v50;
          goto LABEL_19;
        }

        if (v17.length)
        {
          v62.location = [v15 finalRange];
          v62.length = v25;
          v58.location = location;
          v58.length = length;
          v26 = NSUnionRange(v58, v62);
          finalRange2 = [v15 finalRange];
          [v15 finalRange];
          v29 = v28;
          finalRange3 = [v15 finalRange];
          [v15 finalRange];
          v32 = v31;
          finalRange4 = [v15 finalRange];
          v48 = v34;
          v49 = finalRange4;
          if (v26.location >= [v15 finalRange])
          {
            v36 = v29 + finalRange2;
            v35 = v26.location + v26.length - (finalRange3 + v32);
          }

          else
          {
            v35 = [v15 finalRange] - v26.location;
            v36 = v26.location;
          }

          parentCopy = v50;
          parentString = [(TTSSpeechString *)self parentString];
          v38 = [(TTSSpeechString *)self _translateRangeInTransformedString:v36 withParent:v35, parentString];
          v40 = v39;

          parentString2 = [(TTSSpeechString *)self parentString];
          v42 = [(TTSSpeechString *)self _translateRangeInTransformedString:v49 withParent:v48, parentString2];
          v44 = v43;

          v59.location = v42;
          v59.length = v44;
          v63.location = v38;
          v63.length = v40;
          v45 = NSUnionRange(v59, v63);
          v23 = v45.length;
          v22 = v45.location;
LABEL_25:
          range = v22;
          length = v23;
          goto LABEL_26;
        }

        v12 += [v15 sizeDelta];
      }

      v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v51 objects:v55 count:16];
      parentCopy = v50;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_19:

  range = location - v12;
  if (parentCopy)
  {
    range = [parentCopy translateRangeInTransformedString:{location - v12, length}];
    length = v24;
  }

LABEL_27:

  v46 = range;
  v47 = length;
  result.length = v47;
  result.location = v46;
  return result;
}

- (NSString)defrostedTransformedString
{
  transformedString = self->_transformedString;
  if (transformedString)
  {
    _transformedStringNonMutating = transformedString;
  }

  else
  {
    _transformedStringNonMutating = [(TTSSpeechString *)self _transformedStringNonMutating];
  }

  return _transformedStringNonMutating;
}

- (id)_transformedStringNonMutating
{
  v22 = *MEMORY[0x1E69E9840];
  originalString = [(TTSSpeechString *)self originalString];
  v4 = [originalString copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  transformations = [(TTSSpeechString *)self transformations];
  v6 = [transformations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(transformations);
        }

        v11 = *(*(&v17 + 1) + 8 * v9);
        range = [v11 range];
        v14 = v13;
        replacement = [v11 replacement];
        v4 = [v10 stringByReplacingCharactersInRange:range withString:{v14, replacement}];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [transformations countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (NSString)transformedString
{
  v50 = *MEMORY[0x1E69E9840];
  transformedString = self->_transformedString;
  if (transformedString)
  {
    v3 = transformedString;
  }

  else
  {
    originalString = [(TTSSpeechString *)self originalString];
    v6 = [originalString copy];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    selfCopy = self;
    obj = [(TTSSpeechString *)self transformations];
    v7 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v45;
      do
      {
        v11 = 0;
        v12 = v6;
        do
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v44 + 1) + 8 * v11);
          range = [v13 range];
          v16 = v15;
          replacement = [v13 replacement];
          v6 = [v12 stringByReplacingCharactersInRange:range withString:{v16, replacement}];

          originalString2 = [(TTSSpeechString *)selfCopy originalString];
          v19 = [originalString2 length];
          range2 = [v13 range];
          [v13 range];
          v22 = v21;

          [v13 setOffsetFromEnd:v19 + v9 - (range2 + v22)];
          v9 += [v13 sizeDelta];
          ++v11;
          v12 = v6;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v8);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    transformations = [(TTSSpeechString *)selfCopy transformations];
    v24 = [transformations countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v41;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(transformations);
          }

          v28 = *(*(&v40 + 1) + 8 * i);
          v29 = [v6 length];
          offsetFromEnd = [v28 offsetFromEnd];
          replacement2 = [v28 replacement];
          v32 = [replacement2 length];
          v33 = v29 - offsetFromEnd;
          replacement3 = [v28 replacement];
          [v28 setFinalRange:{v33 - v32, objc_msgSend(replacement3, "length")}];
        }

        v25 = [transformations countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v25);
    }

    v35 = selfCopy->_transformedString;
    selfCopy->_transformedString = v6;
    v36 = v6;

    v3 = selfCopy->_transformedString;
  }

  return v3;
}

- (BOOL)_rangeIsValid:(_NSRange)valid
{
  if (self->_transformedString)
  {
    return 0;
  }

  length = valid.length;
  location = valid.location;
  originalString = [(TTSSpeechString *)self originalString];
  v9.length = [originalString length];
  v8.location = location;
  v8.length = length;
  v9.location = 0;
  v3 = NSIntersectionRange(v8, v9).length == length;

  return v3;
}

- (void)_insertTransformation:(id)transformation forEncapsulatedTerminator:(BOOL)terminator
{
  terminatorCopy = terminator;
  transformationCopy = transformation;
  if (terminatorCopy && (-[TTSSpeechString transformations](self, "transformations"), v8 = objc_claimAutoreleasedReturnValue(), v15[0] = MEMORY[0x1E69E9820], v15[1] = 3221225472, v15[2] = sub_1A936A7D4, v15[3] = &unk_1E7880DB0, v4 = &v16, v9 = transformationCopy, v16 = v9, v10 = [v8 indexOfObjectPassingTest:v15], v8, v10 != 0x7FFFFFFFFFFFFFFFLL))
  {
    transformations = [(TTSSpeechString *)self transformations];
    [transformations insertObject:v9 atIndex:v10];
  }

  else
  {
    transformations = [(TTSSpeechString *)self transformations];
    [transformations addObject:transformationCopy];
  }

  transformations2 = [(TTSSpeechString *)self transformations];
  v13 = [transformations2 sortedArrayUsingComparator:&unk_1F1CEDC28];
  v14 = [v13 mutableCopy];
  [(TTSSpeechString *)self setTransformations:v14];

  if (terminatorCopy)
  {
  }
}

- (id)xmlEscaped
{
  [(TTSSpeechString *)self replaceOccurencesOfString:@"&" withString:@"&amp;"];
  [(TTSSpeechString *)self replaceOccurencesOfString:@">" withString:@"&gt;"];
  [(TTSSpeechString *)self replaceOccurencesOfString:@" withString:@"&quot;""];
  [(TTSSpeechString *)self replaceOccurencesOfString:@"'" withString:@"&apos;"];
  [(TTSSpeechString *)self replaceOccurencesOfString:@"<" withString:@"&lt;"];
  v3 = [[TTSSpeechString alloc] initWithParentSpeechString:self];

  return v3;
}

- (id)xmlUnescaped
{
  [(TTSSpeechString *)self replaceOccurencesOfString:@"&lt;" withString:@"<"];
  [(TTSSpeechString *)self replaceOccurencesOfString:@"&gt;" withString:@">"];
  [(TTSSpeechString *)self replaceOccurencesOfString:@"&quot;" withString:@""];
  [(TTSSpeechString *)self replaceOccurencesOfString:@"&apos;" withString:@"'"];
  [(TTSSpeechString *)self replaceOccurencesOfString:@"&amp;" withString:@"&"];
  v3 = [[TTSSpeechString alloc] initWithParentSpeechString:self];

  return v3;
}

@end