@interface SULoadNetworkSectionsOperation
- (BOOL)_loadArtworkForResponse:(id)response;
- (ISStoreURLOperation)baseOperation;
- (NSString)expectedVersionString;
- (SULoadNetworkSectionsOperation)initWithURL:(id)l clientInterface:(id)interface;
- (SUSectionsResponse)sectionsResponse;
- (id)_bestItemImageForImages:(id)images withImageKind:(id)kind;
- (id)_copyImageWithURL:(id)l scale:(float)scale error:(id *)error;
- (id)_copyLoadedItemImage:(id)image error:(id *)error;
- (void)_setSectionsResponse:(id)response;
- (void)dealloc;
- (void)run;
- (void)setBaseOperation:(id)operation;
- (void)setExpectedVersionString:(id)string;
@end

@implementation SULoadNetworkSectionsOperation

- (SULoadNetworkSectionsOperation)initWithURL:(id)l clientInterface:(id)interface
{
  v6 = [(SULoadNetworkSectionsOperation *)self init];
  if (v6)
  {
    v6->_clientInterface = interface;
    if (l)
    {
      v7 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:l];
      v8 = objc_alloc_init(MEMORY[0x1E69E47E0]);
      v6->_baseOperation = v8;
      [(ISStoreURLOperation *)v8 setTracksPerformanceMetrics:SSDebugShouldTrackPerformance()];
      [(ISStoreURLOperation *)v6->_baseOperation setRequestProperties:v7];
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SULoadNetworkSectionsOperation;
  [(SULoadNetworkSectionsOperation *)&v3 dealloc];
}

- (ISStoreURLOperation)baseOperation
{
  [(SULoadNetworkSectionsOperation *)self lock];
  v3 = self->_baseOperation;
  [(SULoadNetworkSectionsOperation *)self unlock];
  return v3;
}

- (NSString)expectedVersionString
{
  [(SULoadNetworkSectionsOperation *)self lock];
  v3 = self->_expectedVersionString;
  [(SULoadNetworkSectionsOperation *)self unlock];
  return v3;
}

- (SUSectionsResponse)sectionsResponse
{
  [(SULoadNetworkSectionsOperation *)self lock];
  v3 = self->_sectionsResponse;
  [(SULoadNetworkSectionsOperation *)self unlock];
  return v3;
}

- (void)setBaseOperation:(id)operation
{
  [(SULoadNetworkSectionsOperation *)self lock];
  baseOperation = self->_baseOperation;
  if (baseOperation != operation)
  {

    self->_baseOperation = operation;
  }

  [(SULoadNetworkSectionsOperation *)self unlock];
}

- (void)setExpectedVersionString:(id)string
{
  [(SULoadNetworkSectionsOperation *)self lock];
  expectedVersionString = self->_expectedVersionString;
  if (expectedVersionString != string)
  {

    self->_expectedVersionString = string;
  }

  [(SULoadNetworkSectionsOperation *)self unlock];
}

- (void)run
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = self->_baseOperation;
  v4 = objc_alloc_init(MEMORY[0x1E69E47B8]);
  [(ISStoreURLOperation *)v3 setDataProvider:v4];
  v5 = [-[ISStoreURLOperation requestProperties](v3 "requestProperties")];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{-[SULoadNetworkSectionsOperation expectedVersionString](self, "expectedVersionString"), @"version", 0}];
  [v5 setCachePolicy:1];
  [v5 setRequestParameters:v6];
  [(ISStoreURLOperation *)v3 setRequestProperties:v5];

  v19 = 0;
  if (([(SULoadNetworkSectionsOperation *)self runSubOperation:v3 returningError:&v19]& 1) != 0)
  {
    v7 = -[SUSectionsResponse initWithClientInterface:sectionsDictionary:responseType:]([SUSectionsResponse alloc], "initWithClientInterface:sectionsDictionary:responseType:", self->_clientInterface, [v4 output], 1);
    v8 = [(SULoadNetworkSectionsOperation *)self _loadArtworkForResponse:v7];
    if (v8)
    {
      [(SUSectionsResponse *)v7 dropEmbeddedImages];
    }

    else
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        LODWORD(v11) = shouldLog | 2;
      }

      else
      {
        LODWORD(v11) = shouldLog;
      }

      oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v11;
      }

      else
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v13 = objc_opt_class();
        v20 = 138412290;
        v21 = v13;
        LODWORD(v18) = 12;
        v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Artwork load failed, will not cache configuration", &v20, v18);
        if (v14)
        {
          v15 = v14;
          v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
          free(v15);
          v17 = v16;
          SSFileLog();
        }
      }
    }

    [(SUSectionsResponse *)v7 setCacheable:v8, v17];
    -[SUSectionsResponse setStoreFrontIdentifier:](v7, "setStoreFrontIdentifier:", [objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")]);
    [(SULoadNetworkSectionsOperation *)self _setSectionsResponse:v7];
    [(SULoadNetworkSectionsOperation *)self setSuccess:1];
  }

  else
  {
    [(SULoadNetworkSectionsOperation *)self setError:v19];
  }
}

- (id)_bestItemImageForImages:(id)images withImageKind:(id)kind
{
  v27 = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v7 = v6;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [images countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v23;
  v12 = 1.79769313e308;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(images);
      }

      v14 = *(*(&v22 + 1) + 8 * i);
      [v14 imageScale];
      v16 = v15;
      v17 = [objc_msgSend(v14 "imageKind")];
      v18 = vabdd_f64(v16, v7);
      v19 = vabdd_f64(v12, v7);
      if (v17)
      {
        v20 = v18 < v19;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v12 = v16;
        v10 = v14;
      }
    }

    v9 = [images countByEnumeratingWithState:&v22 objects:v26 count:{16, v18}];
  }

  while (v9);
  return v10;
}

- (id)_copyImageWithURL:(id)l scale:(float)scale error:(id *)error
{
  v15 = 0;
  if ([objc_msgSend(l "scheme")])
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:0 error:&v15];
    if (v9)
    {
      output = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v9 scale:scale];
      if (!error)
      {
        return output;
      }
    }

    else
    {
      output = 0;
      if (!error)
      {
        return output;
      }
    }

    goto LABEL_9;
  }

  v11 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  v12 = objc_alloc_init(SUImageDataProvider);
  [(SUImageDataProvider *)v12 setInputImageScale:scale];
  [v11 setDataProvider:v12];
  v13 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:l];
  [v13 setCachePolicy:1];
  [v11 setRequestProperties:v13];

  if (([(SULoadNetworkSectionsOperation *)self runSubOperation:v11 returningError:&v15]& 1) != 0)
  {
    output = [(ISDataProvider *)v12 output];
  }

  else
  {
    [(SULoadNetworkSectionsOperation *)self setError:v15];
    output = 0;
  }

  if (error)
  {
LABEL_9:
    *error = v15;
  }

  return output;
}

- (id)_copyLoadedItemImage:(id)image error:(id *)error
{
  v7 = [image URL];
  [image imageScale];
  *&v8 = v8;

  return [(SULoadNetworkSectionsOperation *)self _copyImageWithURL:v7 scale:error error:v8];
}

- (BOOL)_loadArtworkForResponse:(id)response
{
  v88 = *MEMORY[0x1E69E9840];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = [response allSections];
  v68 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
  if (v68)
  {
    v66 = *MEMORY[0x1E69D4CA8];
    v67 = *v78;
    v64 = *MEMORY[0x1E69D4CB0];
    v65 = *MEMORY[0x1E69D4CC0];
    v63 = *MEMORY[0x1E69D4CB8];
    v61 = 1;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v78 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v77 + 1) + 8 * i);
        v6 = -[SULoadNetworkSectionsOperation _bestItemImageForImages:withImageKind:](self, "_bestItemImageForImages:withImageKind:", [v5 itemImages], v66);
        if (v6)
        {
          v7 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v6 error:0];
          v8 = v7 != 0;
          [v5 setImage:v7];
        }

        else
        {
          v8 = 1;
        }

        v9 = -[SULoadNetworkSectionsOperation _bestItemImageForImages:withImageKind:](self, "_bestItemImageForImages:withImageKind:", [v5 itemImages], v65);
        if (v9)
        {
          v10 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v9 error:0];
          if (!v10)
          {
            v8 = 0;
          }

          [v5 setSelectedImage:v10];
        }

        v11 = -[SULoadNetworkSectionsOperation _bestItemImageForImages:withImageKind:](self, "_bestItemImageForImages:withImageKind:", [v5 itemImages], v64);
        if (v11)
        {
          v12 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v11 error:0];
          if (!v12)
          {
            v8 = 0;
          }

          [v5 setMoreListImage:v12];
        }

        v13 = -[SULoadNetworkSectionsOperation _bestItemImageForImages:withImageKind:](self, "_bestItemImageForImages:withImageKind:", [v5 itemImages], v63);
        if (v13)
        {
          v14 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v13 error:0];
          if (!v14)
          {
            v8 = 0;
          }

          [v5 setSelectedMoreListImage:v14];
        }

        leftSectionButtons = [v5 leftSectionButtons];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v16 = [leftSectionButtons countByEnumeratingWithState:&v73 objects:v86 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v74;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v74 != v18)
              {
                objc_enumerationMutation(leftSectionButtons);
              }

              v20 = *(*(&v73 + 1) + 8 * j);
              imageURL = [v20 imageURL];
              if (imageURL)
              {
                v22 = imageURL;
                [v20 imageURLScale];
                v23 = [(SULoadNetworkSectionsOperation *)self _copyImageWithURL:v22 scale:0 error:?];
                v8 &= v23 != 0;
                [v5 setSectionButtonImage:v23 forTag:{objc_msgSend(v20, "tag")}];
              }
            }

            v17 = [leftSectionButtons countByEnumeratingWithState:&v73 objects:v86 count:16];
          }

          while (v17);
        }

        rightSectionButtons = [v5 rightSectionButtons];
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v25 = [rightSectionButtons countByEnumeratingWithState:&v69 objects:v85 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v70;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v70 != v27)
              {
                objc_enumerationMutation(rightSectionButtons);
              }

              v29 = *(*(&v69 + 1) + 8 * k);
              imageURL2 = [v29 imageURL];
              if (imageURL2)
              {
                v31 = imageURL2;
                [v29 imageURLScale];
                v32 = [(SULoadNetworkSectionsOperation *)self _copyImageWithURL:v31 scale:0 error:?];
                v8 &= v32 != 0;
                [v5 setSectionButtonImage:v32 forTag:{objc_msgSend(v29, "tag")}];
              }
            }

            v26 = [rightSectionButtons countByEnumeratingWithState:&v69 objects:v85 count:16];
          }

          while (v26);
        }

        if ((v8 & 1) == 0)
        {
          mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
          LODWORD(v34) = [mEMORY[0x1E69D4938] shouldLog];
          if ([mEMORY[0x1E69D4938] shouldLogToDisk])
          {
            LODWORD(v34) = v34 | 2;
          }

          oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v34;
          }

          else
          {
            v34 &= 2u;
          }

          if (v34)
          {
            v36 = objc_opt_class();
            v81 = 138412546;
            v82 = v36;
            v83 = 2112;
            v84 = v5;
            LODWORD(v59) = 22;
            v37 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Failed to load artwork for section: %@", &v81, v59);
            if (v37)
            {
              v38 = v37;
              v39 = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:4];
              free(v38);
              v58 = v39;
              SSFileLog();
            }
          }

          v61 = 0;
        }
      }

      v68 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
    }

    while (v68);
  }

  else
  {
    v61 = 1;
  }

  moreListImageCollection = [objc_msgSend(response moreListImageCollection];
  if (![moreListImageCollection count])
  {
    return v61;
  }

  v41 = [(SULoadNetworkSectionsOperation *)self _bestItemImageForImages:moreListImageCollection withImageKind:*MEMORY[0x1E69D4CA8]];
  if (!v41)
  {
    v46 = [(SULoadNetworkSectionsOperation *)self _bestItemImageForImages:moreListImageCollection withImageKind:*MEMORY[0x1E69D4CC0]];
    if (v46)
    {
      v45 = v46;
      v43 = 1;
      goto LABEL_59;
    }

    return v61;
  }

  v42 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v41 error:0];
  v43 = v42 != 0;
  [response setMoreListImage:v42];

  v44 = [(SULoadNetworkSectionsOperation *)self _bestItemImageForImages:moreListImageCollection withImageKind:*MEMORY[0x1E69D4CC0]];
  if (!v44)
  {
    v49 = v61;
    if (v42)
    {
      return v49;
    }

    goto LABEL_66;
  }

  v45 = v44;
LABEL_59:
  v47 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v45 error:0];
  [response setMoreListSelectedImage:v47];

  v48 = !v43 || v47 == 0;
  v49 = v61;
  if (v48)
  {
LABEL_66:
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      LODWORD(v52) = shouldLog | 2;
    }

    else
    {
      LODWORD(v52) = shouldLog;
    }

    oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v52 = v52;
    }

    else
    {
      v52 &= 2u;
    }

    if (v52)
    {
      v54 = objc_opt_class();
      v81 = 138412290;
      v82 = v54;
      LODWORD(v59) = 12;
      v55 = _os_log_send_and_compose_impl(v52, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 0, "%@: Failed to load artwork for more list", &v81, v59);
      if (v55)
      {
        v56 = v55;
        [MEMORY[0x1E696AEC0] stringWithCString:v55 encoding:4];
        free(v56);
        SSFileLog();
      }
    }

    return 0;
  }

  return v49;
}

- (void)_setSectionsResponse:(id)response
{
  [(SULoadNetworkSectionsOperation *)self lock];
  sectionsResponse = self->_sectionsResponse;
  if (sectionsResponse != response)
  {

    self->_sectionsResponse = response;
  }

  [(SULoadNetworkSectionsOperation *)self unlock];
}

@end