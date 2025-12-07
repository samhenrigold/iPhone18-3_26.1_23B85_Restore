@interface SAPAStyleSymbolOwner
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleSymbolOwner

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbolOwner" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbolOwner" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbolOwner" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if ((*buffer - 4293844428) >= 2 && *buffer != 287454020)
  {
    v8 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbolOwner magic" userInfo:0];
    objc_exception_throw(v8);
  }

  result = objc_alloc_init(SAPAStyleSymbolOwner);
  *(result + 2) = *(buffer + 4);
  if (*buffer < 0xFFEEDDCDuLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(buffer + 80);
  }

  *(result + 8) = v7;
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v104 = *MEMORY[0x1E69E9840];
  if ((*buffer - 4293844428) >= 2 && *buffer != 287454020)
  {
LABEL_70:
    v78 = @"Bad PASymbolOwner magic";
    goto LABEL_72;
  }

  v11 = *(buffer + 3);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12, 0);
  if (v13)
  {
    v14 = *(buffer + 1);
    v86 = v13;
    v15 = objc_opt_class();
    v81 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v14, dictionary, bufferDictionary, v15, 0);
    v16 = *(buffer + 2);
    v17 = objc_opt_class();
    v18 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v16, dictionary, bufferDictionary, v17, 0);
    v19 = *(buffer + 5);
    v20 = objc_opt_class();
    v84 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v19, dictionary, bufferDictionary, v20, 0);
    v21 = *(buffer + 6);
    v22 = objc_opt_class();
    v83 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v21, dictionary, bufferDictionary, v22, 0);
    v23 = *(buffer + 7);
    v24 = objc_opt_class();
    v82 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v23, dictionary, bufferDictionary, v24, 0);
    v25 = *(buffer + 8);
    v26 = objc_opt_class();
    v27 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v25, dictionary, bufferDictionary, v26, 0);
    newValue = v18;
    if ([v18 isAbsolutePath])
    {
      v28 = v18;
    }

    else
    {
      v28 = 0;
    }

    v29 = [SABinary binaryWithUUID:v86 absolutePath:v28];
    v30 = v29;
    selfa = v29;
    if (self->_hasTextExecSegment && ([(SABinary *)v29 segmentWithCleanName:self->_textSegmentLength length:0x7FFFFFFFFFFFFFFFLL offsetIntoBinary:?], v30 = selfa, (v87 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v91 = 0;
    }

    else
    {
      [(SABinary *)v30 applyLength:?];
      v30 = selfa;
      v87 = 0;
      v91 = 1;
    }

    name = [v30 name];

    if (!name)
    {
      [(SABinary *)v30 setName:v81];
    }

    path = [v30 path];

    v34 = v30;
    if (!path && v30)
    {
      objc_setProperty_atomic_copy(v30, v33, newValue, 80);
      v34 = selfa;
    }

    bundleIdentifier = [v34 bundleIdentifier];

    v37 = selfa;
    if (!bundleIdentifier && selfa)
    {
      objc_setProperty_atomic_copy(selfa, v36, v84, 88);
      v37 = selfa;
    }

    bundleVersion = [v37 bundleVersion];

    v40 = selfa;
    if (!bundleVersion && selfa)
    {
      objc_setProperty_atomic_copy(selfa, v39, v83, 96);
      v40 = selfa;
    }

    bundleShortVersion = [v40 bundleShortVersion];

    v43 = selfa;
    if (!bundleShortVersion && selfa)
    {
      objc_setProperty_atomic_copy(selfa, v42, v82, 104);
      v43 = selfa;
    }

    v44 = v43;
    binaryVersion = [v43 binaryVersion];

    if (!binaryVersion && v44)
    {
      objc_setProperty_atomic_copy(v44, v46, v27, 112);
    }

    v47 = *buffer;
    if (*buffer < 0xFFEEDDCCuLL)
    {
      goto LABEL_70;
    }

    v80 = v27;
    if (v47 == 4293844428)
    {
      v48 = 80;
    }

    else
    {
      if (v47 != 4293844429)
      {
        v78 = @"Bad PASerializedSymbolOwner magic";
LABEL_72:
        v79 = [SAException exceptionWithName:@"Decoding failure" reason:v78 userInfo:0, bufferDictionary, v80];
        objc_exception_throw(v79);
      }

      v48 = 81;
    }

    v49 = *(buffer + 9);
    if (v49)
    {
      v50 = objc_opt_class();
      SASerializableNewMutableArrayFromIndexList(buffer + v48, v49, dictionary, bufferDictionary, v50);
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      obj = v101 = 0u;
      v92 = [obj countByEnumeratingWithState:&v98 objects:v103 count:{16, v80}];
      if (v92)
      {
        v90 = *v99;
        do
        {
          v52 = 0;
          do
          {
            if (*v99 != v90)
            {
              objc_enumerationMutation(obj);
            }

            v53 = *(*(&v98 + 1) + 8 * v52);
            v93 = v52;
            if (v91)
            {
              if (v53)
              {
                v55 = v53[2];
                v54 = v53[3];
                Property = objc_getProperty(v53, v51, 8, 1);
              }

              else
              {
                v54 = 0;
                v55 = 0;
                Property = 0;
              }

              v57 = [(SABinary *)selfa addSymbolWithOffsetIntoBinary:v55 length:v54 name:Property];
            }

            else
            {
              if (v53)
              {
                v60 = v53[2];
                v59 = v53[3];
                v61 = objc_getProperty(v53, v51, 8, 1);
              }

              else
              {
                v59 = 0;
                v60 = 0;
                v61 = 0;
              }

              v57 = [(SASegment *)v87 addNonInlineSymbolWithOffsetIntoSegment:v60 length:v59 name:v61];
            }

            v62 = v57;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            if (v53)
            {
              v63 = objc_getProperty(v53, v58, 32, 1);
            }

            else
            {
              v63 = 0;
            }

            v64 = v63;
            v65 = [v64 countByEnumeratingWithState:&v94 objects:v102 count:16];
            if (v65)
            {
              v67 = v65;
              v68 = *v95;
              do
              {
                for (i = 0; i != v67; ++i)
                {
                  if (*v95 != v68)
                  {
                    objc_enumerationMutation(v64);
                  }

                  v70 = *(*(&v94 + 1) + 8 * i);
                  if (v70 && objc_getProperty(*(*(&v94 + 1) + 8 * i), v66, 32, 1))
                  {
                    v72 = *(v70 + 16);
                    v71 = *(v70 + 24);
                    v74 = *(v70 + 8);
                    v73 = *(v70 + 12);
                    v75 = objc_getProperty(v70, v66, 32, 1);
                    v76 = [(SASymbol *)v62 addNonInlineSourceInfoWithOffsetIntoSegment:v72 length:v71 lineNum:v74 columnNum:v73 filePath:v75];
                  }
                }

                v67 = [v64 countByEnumeratingWithState:&v94 objects:v102 count:16];
              }

              while (v67);
            }

            v52 = v93 + 1;
          }

          while (v93 + 1 != v92);
          v77 = [obj countByEnumeratingWithState:&v98 objects:v103 count:16];
          v92 = v77;
        }

        while (v77);
      }
    }

    v13 = v86;
  }
}

@end