@interface QLTextItemTransformer
+ (id)allowedOutputClasses;
+ (id)attributedStringFromData:(id)data encoding:(unint64_t)encoding typeIdentifier:(id)identifier error:(id *)error;
+ (id)wrapperFromData:(id)data encoding:(unint64_t)encoding typeIdentifier:(id)identifier error:(id *)error;
- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error;
- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error;
@end

@implementation QLTextItemTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error
{
  contextCopy = context;
  lCopy = l;
  v9 = QLGuessEncodingForTextFileAtURL();
  v10 = CFStringConvertEncodingToNSStringEncoding(v9);
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];

  v12 = objc_opt_class();
  contentType = [contextCopy contentType];

  v14 = [v12 wrapperFromData:v11 encoding:v10 typeIdentifier:contentType error:error];

  return v14;
}

- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  if ([contextCopy stringEncoding])
  {
    stringEncoding = [contextCopy stringEncoding];
  }

  else
  {
    v10 = QLGuessEncodingForTextFileFromData();
    stringEncoding = CFStringConvertEncodingToNSStringEncoding(v10);
  }

  v11 = stringEncoding;
  v12 = objc_opt_class();
  contentType = [contextCopy contentType];
  v14 = [v12 wrapperFromData:dataCopy encoding:v11 typeIdentifier:contentType error:error];

  return v14;
}

+ (id)attributedStringFromData:(id)data encoding:(unint64_t)encoding typeIdentifier:(id)identifier error:(id *)error
{
  v6 = [self wrapperFromData:data encoding:encoding typeIdentifier:identifier error:error];
  string = [v6 string];

  return string;
}

+ (id)wrapperFromData:(id)data encoding:(unint64_t)encoding typeIdentifier:(id)identifier error:(id *)error
{
  v94 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  v66 = identifierCopy;
  if (identifierCopy)
  {
    v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:identifierCopy];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277CE1E58];
  v65 = v10;
  if ([v10 conformsToType:*MEMORY[0x277CE1E58]])
  {
    v67 = *MEMORY[0x277D74128];
    v68 = *MEMORY[0x277D74090];
    v12 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D74128], 0}];
    if (encoding)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:encoding];
      [v12 setObject:v13 forKey:*MEMORY[0x277D74080]];
    }

    v83 = 0;
    v84 = 0;
    v60 = v12;
    v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithData:dataCopy options:v12 documentAttributes:&v84 error:&v83];
    v69 = v84;
    v74 = v83;
    if (dataCopy && !v14)
    {
      v15 = dataCopy;
      v82 = 0;
      v16 = [objc_alloc(MEMORY[0x277D43EE8]) initWithData:v15 error:&v82];
      v59 = v82;
      if (!v59)
      {
        v58 = v15;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        fileWrapper = [v16 fileWrapper];
        fileWrappers = [fileWrapper fileWrappers];

        obj = fileWrappers;
        v19 = [fileWrappers countByEnumeratingWithState:&v78 objects:v93 count:16];
        if (v19)
        {
          v20 = v19;
          v57 = dataCopy;
          v21 = *v79;
          v22 = *MEMORY[0x277CE1E18];
          v23 = 0x277CE1000uLL;
          v62 = *MEMORY[0x277CE1E18];
          v63 = *v79;
          while (2)
          {
            v24 = 0;
            v64 = v20;
            do
            {
              if (*v79 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v78 + 1) + 8 * v24);
              pathExtension = [v25 pathExtension];
              if (pathExtension)
              {
                v27 = [*(v23 + 3256) typeWithFilenameExtension:pathExtension conformingToType:v22];
                if ([v27 conformsToType:v11])
                {
                  v28 = v11;
                  v71 = objc_alloc(MEMORY[0x277CCA898]);
                  v29 = v16;
                  fileWrapper2 = [v16 fileWrapper];
                  fileWrappers2 = [fileWrapper2 fileWrappers];
                  v31 = [fileWrappers2 objectForKeyedSubscript:v25];
                  serializedRepresentation = [v31 serializedRepresentation];
                  v91 = v68;
                  v92 = v67;
                  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
                  v77 = v74;
                  v72 = [v71 initWithData:serializedRepresentation options:v33 documentAttributes:0 error:&v77];
                  v34 = v77;

                  v14 = v72;
                  if (v72)
                  {

                    v74 = v34;
                    dataCopy = v57;
                    v16 = v29;
                    goto LABEL_51;
                  }

                  v74 = v34;
                  v11 = v28;
                  v16 = v29;
                  v21 = v63;
                  v20 = v64;
                  v22 = v62;
                  v23 = 0x277CE1000;
                }

                else
                {
                }
              }

              ++v24;
            }

            while (v20 != v24);
            v20 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

          v14 = 0;
          dataCopy = v57;
        }

        else
        {
          v14 = 0;
        }

LABEL_51:

        v15 = v58;
      }

      v74 = v59;
    }

LABEL_53:

    if (v74)
    {
      v49 = MEMORY[0x277D43EF8];
      v50 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v50 = *v49;
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v86 = v74;
        _os_log_impl(&dword_261653000, v50, OS_LOG_TYPE_ERROR, "Error while trying to read string %@ #AnyItemViewController", buf, 0xCu);
      }

      errorCopy2 = error;
      if (error)
      {
        v52 = v74;
LABEL_69:
        v53 = 0;
        *errorCopy2 = v52;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    goto LABEL_60;
  }

  if ([v10 conformsToType:*MEMORY[0x277CE1E50]])
  {
    v35 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D74090], *MEMORY[0x277D74130], 0}];
    if (encoding)
    {
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:encoding];
      [v35 setObject:v36 forKey:*MEMORY[0x277D74080]];
    }

    v75 = 0;
    v76 = 0;
    v60 = v35;
    v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithData:dataCopy options:v35 documentAttributes:&v76 error:&v75];
    v69 = v76;
    v74 = v75;
    goto LABEL_53;
  }

  if (([v10 conformsToType:*MEMORY[0x277CE1E20]] & 1) != 0 || (objc_msgSend(v10, "conformsToType:", *MEMORY[0x277CE1E88]) & 1) != 0 || (objc_msgSend(v10, "conformsToType:", *MEMORY[0x277CE1E38]) & 1) != 0 || objc_msgSend(v10, "conformsToType:", *MEMORY[0x277CE1EF0]))
  {
    if (encoding)
    {
      encodingCopy = encoding;
    }

    else
    {
      encodingCopy = 4;
    }

    v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:encodingCopy];
    if ([dataCopy length] && !v38)
    {
      encodingCopy = 1;
      v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:1];
    }

    if (v38 || [v10 conformsToType:*MEMORY[0x277CE1E38]] && (v38 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithData:encoding:", dataCopy, 1)) != 0)
    {
      if ([v10 conformsToType:*MEMORY[0x277CE1E70]])
      {
        v89[0] = *MEMORY[0x277D740A8];
        v39 = MEMORY[0x277D74300];
        [MEMORY[0x277D74300] systemFontSize];
        v40 = [v39 monospacedSystemFontOfSize:? weight:?];
        v89[1] = *MEMORY[0x277D74098];
        v41 = *MEMORY[0x277D74120];
        v90[0] = v40;
        v90[1] = v41;
        v42 = MEMORY[0x277CBEAC0];
        v43 = v90;
        v44 = v89;
      }

      else
      {
        v87[0] = *MEMORY[0x277D740A8];
        v47 = MEMORY[0x277D74300];
        [MEMORY[0x277D74300] systemFontSize];
        v40 = [v47 systemFontOfSize:?];
        v87[1] = *MEMORY[0x277D74098];
        v88[0] = v40;
        v88[1] = *MEMORY[0x277D74120];
        v42 = MEMORY[0x277CBEAC0];
        v43 = v88;
        v44 = v87;
      }

      v48 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:2];

      v69 = v48;
      v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v38 attributes:v48];
    }

    else
    {
      v45 = MEMORY[0x277D43EF8];
      v46 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v46 = *v45;
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v86 = encodingCopy;
        _os_log_impl(&dword_261653000, v46, OS_LOG_TYPE_ERROR, "Could not create plain content from data with encoding: %lu #AnyItemViewController", buf, 0xCu);
      }

      v14 = 0;
      v69 = 0;
    }

LABEL_60:
    if (v14)
    {
      v53 = objc_opt_new();
      [v53 setString:v14];
      [v53 setAttributes:v69];
      v74 = 0;
      goto LABEL_72;
    }

    goto LABEL_63;
  }

  v69 = 0;
LABEL_63:
  v54 = MEMORY[0x277D43EF8];
  v55 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v55 = *v54;
  }

  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_261653000, v55, OS_LOG_TYPE_ERROR, "Could not create string content for text preview item. #AnyItemViewController", buf, 2u);
  }

  errorCopy2 = error;
  if (error)
  {
    v52 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.textItemTransformer" code:1 userInfo:0];
    v74 = 0;
    v14 = 0;
    goto LABEL_69;
  }

  v74 = 0;
  v14 = 0;
LABEL_71:
  v53 = 0;
LABEL_72:

  return v53;
}

@end