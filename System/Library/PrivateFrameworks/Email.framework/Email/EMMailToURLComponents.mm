@interface EMMailToURLComponents
+ (id)componentsWithURL:(id)l;
- (EMMailToURLComponents)initWithURL:(id)l;
- (void)_decomposeURL:(id)l;
@end

@implementation EMMailToURLComponents

+ (id)componentsWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy];

  return v5;
}

- (EMMailToURLComponents)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = EMMailToURLComponents;
  v5 = [(EMMailToURLComponents *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EMMailToURLComponents *)v5 _decomposeURL:lCopy];
  }

  return v6;
}

- (void)_decomposeURL:(id)l
{
  v67 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    goto LABEL_48;
  }

  v50 = lCopy;
  absoluteString = [lCopy absoluteString];
  v5 = [absoluteString rangeOfString:@"mailto:" options:9];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  v6 = v4;
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v51 = [absoluteString substringFromIndex:v5 + v6];
  v7 = [v51 rangeOfString:@"?"];
  v9 = v7;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v45 = 0;
    v10 = v51;
  }

  else
  {
    v11 = [v51 substringFromIndex:v7 + v8];
    v12 = [v51 substringToIndex:v9];

    v45 = [v11 componentsSeparatedByString:@"&"];

    v10 = v12;
  }

  v13 = MEMORY[0x1E699AFC8];
  v52 = v10;
  stringByRemovingPercentEncoding = [v10 stringByRemovingPercentEncoding];
  v15 = [v13 addressListFromHeaderValue:stringByRemovingPercentEncoding];

  v49 = v15;
  if ([v15 count])
  {
    [array addObjectsFromArray:v15];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v45;
  v16 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (!v16)
  {
    v59 = 0;
    v60 = 0;
    v58 = 0;
    goto LABEL_40;
  }

  v59 = 0;
  v60 = 0;
  v58 = 0;
  v17 = *v63;
  v48 = *MEMORY[0x1E699B180];
  v46 = *MEMORY[0x1E699B088];
  v47 = *MEMORY[0x1E699B098];
  do
  {
    v18 = 0;
    do
    {
      if (*v63 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v62 + 1) + 8 * v18);
      v21 = [v19 rangeOfString:@"="];
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = v20;
        v23 = [v19 substringToIndex:v21];
        lowercaseString = [v23 lowercaseString];

        v25 = [v19 substringFromIndex:v21 + v22];
        if ([lowercaseString length] && objc_msgSend(v25, "length"))
        {
          v26 = [v25 ef_stringByReplacingPercentEscapesUsingEncoding:4];

          if ([lowercaseString isEqualToString:@"body"])
          {
            [v26 ef_stringByEscapingForMessageBody];
            v60 = v27 = v60;
            goto LABEL_23;
          }

          if ([lowercaseString isEqualToString:@"subject"])
          {
            v27 = v59;
            v59 = v26;
            goto LABEL_23;
          }

          em_mailToFromQueryItemKey = [MEMORY[0x1E695DFF8] em_mailToFromQueryItemKey];
          v29 = [lowercaseString ef_caseInsensitiveIsEqualToString:em_mailToFromQueryItemKey];

          if (v29)
          {
            v27 = v58;
            v58 = v26;
            goto LABEL_23;
          }

          if (([lowercaseString isEqualToString:@"attachment"] & 1) == 0 && (objc_msgSend(lowercaseString, "isEqualToString:", @"attachdircontent") & 1) == 0)
          {
            v30 = [MEMORY[0x1E699AFC8] addressListFromHeaderValue:v26];
            v27 = v30;
            if (v30 && [(NSString *)v30 count])
            {
              if ([lowercaseString isEqualToString:v48])
              {
                [array addObjectsFromArray:v27];
              }

              if ([lowercaseString isEqualToString:v47])
              {
                [array2 addObjectsFromArray:v27];
              }

              if ([lowercaseString isEqualToString:v46])
              {
                [array3 addObjectsFromArray:v27];
              }
            }

LABEL_23:
          }
        }

        else
        {
          v26 = v25;
        }
      }

      ++v18;
    }

    while (v16 != v18);
    v31 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    v16 = v31;
  }

  while (v31);
LABEL_40:

  if ([array count])
  {
    v32 = [array copy];
    toRecipients = self->_toRecipients;
    self->_toRecipients = v32;
  }

  if ([array2 count])
  {
    v34 = [array2 copy];
    ccRecipients = self->_ccRecipients;
    self->_ccRecipients = v34;
  }

  if ([array3 count])
  {
    v36 = [array3 copy];
    bccRecipients = self->_bccRecipients;
    self->_bccRecipients = v36;
  }

  subject = self->_subject;
  self->_subject = v59;
  v39 = v59;

  body = self->_body;
  self->_body = v60;
  v41 = v60;

  from = self->_from;
  self->_from = v58;
  v43 = v58;

  objc_autoreleasePoolPop(context);
LABEL_47:

  lCopy = v50;
LABEL_48:
}

@end