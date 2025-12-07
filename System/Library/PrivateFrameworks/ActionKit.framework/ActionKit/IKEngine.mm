@interface IKEngine
+ (void)setOAuthConsumerKey:(id)key andConsumerSecret:(id)secret;
- (IKEngine)initWithDelegate:(id)delegate;
- (id)_signatureWithKey:(id)key baseString:(id)string;
- (id)_startConnectionWithAPIPath:(id)path bodyArguments:(id)arguments type:(int)type userInfo:(id)info context:(id)context;
- (id)addBookmarkWithURL:(id)l title:(id)title description:(id)description folder:(id)folder resolveFinalURL:(BOOL)rL userInfo:(id)info;
- (id)addFolderWithTitle:(id)title userInfo:(id)info;
- (id)archiveBookmark:(id)bookmark userInfo:(id)info;
- (id)authTokenForUsername:(id)username password:(id)password userInfo:(id)info;
- (id)bookmarksInFolder:(id)folder limit:(unint64_t)limit existingBookmarks:(id)bookmarks userInfo:(id)info;
- (id)bookmarksWithUserInfo:(id)info;
- (id)deleteBookmark:(id)bookmark userInfo:(id)info;
- (id)deleteFolder:(id)folder userInfo:(id)info;
- (id)identifierForConnection:(id)connection;
- (id)moveBookmark:(id)bookmark toFolder:(id)folder userInfo:(id)info;
- (id)orderFolders:(id)folders userInfo:(id)info;
- (id)starBookmark:(id)bookmark userInfo:(id)info;
- (id)textOfBookmark:(id)bookmark userInfo:(id)info;
- (id)unarchiveBookmark:(id)bookmark userInfo:(id)info;
- (id)unstarBookmark:(id)bookmark userInfo:(id)info;
- (id)updateReadProgressOfBookmark:(id)bookmark toProgress:(double)progress userInfo:(id)info;
- (void)cancelAllConnections;
- (void)cancelConnection:(id)connection;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connectionDidFinishLoading:(id)loading;
- (void)dealloc;
@end

@implementation IKEngine

- (id)_signatureWithKey:(id)key baseString:(id)string
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [key cStringUsingEncoding:1];
  v6 = [string cStringUsingEncoding:1];
  v7 = strlen(v5);
  v8 = strlen(v6);
  CCHmac(0, v5, v7, v6, v8, macOut);
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:macOut length:20];
  v10 = [v9 base64EncodedStringWithOptions:0];

  return v10;
}

- (id)_startConnectionWithAPIPath:(id)path bodyArguments:(id)arguments type:(int)type userInfo:(id)info context:(id)context
{
  v77 = *MEMORY[0x277D85DE8];
  if (!_startConnectionWithAPIPath_bodyArguments_type_userInfo_context__baseURL)
  {
    _startConnectionWithAPIPath_bodyArguments_type_userInfo_context__baseURL = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://www.instapaper.com"];
  }

  v13 = [MEMORY[0x277CBEBC0] URLWithString:path relativeToURL:?];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  typeCopy = type;
  infoCopy = info;
  contextCopy = context;
  selfCopy = self;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v16 = [arguments countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v70;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v70 != v18)
        {
          objc_enumerationMutation(arguments);
        }

        v20 = *(*(&v69 + 1) + 8 * i);
        ik_URLEncodedString = [v20 ik_URLEncodedString];
        stringValue = [arguments objectForKey:v20];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          stringValue = [stringValue stringValue];
        }

        [dictionary setObject:objc_msgSend(stringValue forKey:{"ik_URLEncodedString"), ik_URLEncodedString}];
      }

      v17 = [arguments countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v17);
  }

  string = [MEMORY[0x277CCAB68] string];
  if ([dictionary count])
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v23 = [dictionary countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v66;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v66 != v25)
          {
            objc_enumerationMutation(dictionary);
          }

          [string appendFormat:@"%@=%@&", *(*(&v65 + 1) + 8 * j), objc_msgSend(dictionary, "objectForKey:", *(*(&v65 + 1) + 8 * j))];
        }

        v24 = [dictionary countByEnumeratingWithState:&v65 objects:v75 count:16];
      }

      while (v24);
    }

    [string replaceCharactersInRange:objc_msgSend(string withString:{"length") - 1, 1, &stru_2850323E8}];
  }

  v51 = v14;
  v27 = [objc_msgSend(v14 "absoluteString")];
  v28 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
  v29 = MEMORY[0x277CCACA8];
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  v31 = [v29 stringWithFormat:@"%d", v30];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary2 setObject:v28 forKey:@"oauth_nonce"];
  [dictionary2 setObject:@"HMAC-SHA1" forKey:@"oauth_signature_method"];
  [dictionary2 setObject:v31 forKey:@"oauth_timestamp"];
  [dictionary2 setObject:_OAuthConsumerKey forKey:@"oauth_consumer_key"];
  [dictionary2 setObject:@"1.0" forKey:@"oauth_version"];
  if ([(IKEngine *)selfCopy OAuthToken])
  {
    [dictionary2 setObject:-[IKEngine OAuthToken](selfCopy forKey:{"OAuthToken"), @"oauth_token"}];
  }

  v33 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dictionary];
  [v33 addEntriesFromDictionary:dictionary2];
  v34 = [objc_msgSend(v33 "allKeys")];
  v35 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@&%@&", @"POST", v27];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v36 = [v34 countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v62;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v62 != v38)
        {
          objc_enumerationMutation(v34);
        }

        [v35 appendFormat:@"%@%%3D%@%%26", objc_msgSend(*(*(&v61 + 1) + 8 * k), "ik_URLEncodedString"), objc_msgSend(objc_msgSend(v33, "objectForKey:", *(*(&v61 + 1) + 8 * k)), "ik_URLEncodedString")];
      }

      v37 = [v34 countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v37);
  }

  [v35 replaceCharactersInRange:objc_msgSend(v35 withString:{"length") - 3, 3, &stru_2850323E8}];
  OAuthTokenSecret = selfCopy->_OAuthTokenSecret;
  if (!OAuthTokenSecret)
  {
    OAuthTokenSecret = &stru_2850323E8;
  }

  [dictionary2 setObject:-[IKEngine _signatureWithKey:baseString:](selfCopy forKey:{"_signatureWithKey:baseString:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@&%@", _OAuthConsumerSecret, OAuthTokenSecret), v35), @"oauth_signature"}];
  v41 = [MEMORY[0x277CBAB50] requestWithURL:v51];
  [v41 _setNonAppInitiated:1];
  [v41 setHTTPMethod:@"POST"];
  [v41 setHTTPBody:{objc_msgSend(string, "dataUsingEncoding:", 4)}];
  v42 = [MEMORY[0x277CCAB68] stringWithString:@"OAuth "];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v43 = [dictionary2 countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v58;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v58 != v45)
        {
          objc_enumerationMutation(dictionary2);
        }

        [v42 appendFormat:@"%@=%@, ", *(*(&v57 + 1) + 8 * m), objc_msgSend(dictionary2, "objectForKey:", *(*(&v57 + 1) + 8 * m))];
      }

      v44 = [dictionary2 countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v44);
  }

  [v42 replaceCharactersInRange:objc_msgSend(v42 withString:{"length") - 2, 2, &stru_2850323E8}];
  [v41 setValue:v42 forHTTPHeaderField:@"Authorization"];
  v47 = [[IKURLConnection alloc] initWithRequest:v41 delegate:selfCopy startImmediately:0];
  [(IKURLConnection *)v47 _setType:typeCopy];
  [(IKURLConnection *)v47 _setUserInfo:infoCopy];
  [(IKURLConnection *)v47 _setContext:contextCopy];
  v48 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
  [(NSMutableDictionary *)selfCopy->_connections setObject:v47 forKey:v48];

  [(IKEngine *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [(IKEngineDelegate *)[(IKEngine *)selfCopy delegate] engine:selfCopy willStartConnection:v47];
  }

  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [(NSURLConnection *)v47 scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];
  [(NSURLConnection *)v47 start];
  return v48;
}

- (void)dealloc
{
  self->_delegate = 0;
  [(IKEngine *)self cancelAllConnections];

  v3.receiver = self;
  v3.super_class = IKEngine;
  [(IKEngine *)&v3 dealloc];
}

- (void)connectionDidFinishLoading:(id)loading
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:objc_msgSend(loading encoding:{"data"), 4}];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1011 userInfo:0];
  type = [loading type];
  if (type == 11)
  {
    if ([objc_msgSend(loading "response")] == 200)
    {
      [(IKEngine *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        -[IKEngineDelegate engine:connection:didReceiveText:ofBookmarkWithBookmarkID:](-[IKEngine delegate](self, "delegate"), "engine:connection:didReceiveText:ofBookmarkWithBookmarkID:", self, loading, v5, [objc_msgSend(loading "_context")]);
      }

      goto LABEL_11;
    }

    v20 = [IKDeserializer objectFromJSONString:v5];
    if (v20)
    {
      v12 = v20;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_24:
        selfCopy3 = self;
        loadingCopy3 = loading;
        v17 = v12;
        goto LABEL_97;
      }
    }

LABEL_96:
    selfCopy3 = self;
    loadingCopy3 = loading;
    v17 = v6;
    goto LABEL_97;
  }

  v8 = type;
  if (type)
  {
    v11 = [IKDeserializer objectFromJSONString:v5];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        switch(v8)
        {
          case 1:
            lastObject = [v12 lastObject];
            if (!lastObject)
            {
              goto LABEL_96;
            }

            v14 = lastObject;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_96;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didVerifyCredentialsForUser:v14];
            }

            break;
          case 2:
            array = [MEMORY[0x277CBEB18] array];
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v44 = [v12 countByEnumeratingWithState:&v68 objects:v76 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = 0;
              v47 = *v69;
              do
              {
                for (i = 0; i != v45; ++i)
                {
                  if (*v69 != v47)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v49 = *(*(&v68 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v46 = v49;
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [array addObject:v49];
                    }
                  }
                }

                v45 = [v12 countByEnumeratingWithState:&v68 objects:v76 count:16];
              }

              while (v45);
            }

            else
            {
              v46 = 0;
            }

            _context = [loading _context];
            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didReceiveBookmarks:array ofUser:v46 forFolder:_context];
            }

            break;
          case 3:
            lastObject2 = [v12 lastObject];
            if (!lastObject2)
            {
              goto LABEL_96;
            }

            v42 = lastObject2;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_96;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didUpdateReadProgressOfBookmark:v42];
            }

            break;
          case 4:
            lastObject3 = [v12 lastObject];
            if (!lastObject3)
            {
              goto LABEL_96;
            }

            v40 = lastObject3;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_96;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didAddBookmark:v40];
            }

            break;
          case 5:
            v33 = [objc_msgSend(loading "_context")];
            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didDeleteBookmarkWithBookmarkID:v33];
            }

            break;
          case 6:
            lastObject4 = [v12 lastObject];
            if (!lastObject4)
            {
              goto LABEL_96;
            }

            v36 = lastObject4;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_96;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didStarBookmark:v36];
            }

            break;
          case 7:
            lastObject5 = [v12 lastObject];
            if (!lastObject5)
            {
              goto LABEL_96;
            }

            v51 = lastObject5;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_96;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didUnstarBookmark:v51];
            }

            break;
          case 8:
            lastObject6 = [v12 lastObject];
            if (!lastObject6)
            {
              goto LABEL_96;
            }

            v53 = lastObject6;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_96;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didArchiveBookmark:v53];
            }

            break;
          case 9:
            lastObject7 = [v12 lastObject];
            if (!lastObject7)
            {
              goto LABEL_96;
            }

            v58 = lastObject7;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_96;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didUnarchiveBookmark:v58];
            }

            break;
          case 10:
            lastObject8 = [v12 lastObject];
            v55 = [objc_msgSend(loading "_context")];
            if (!lastObject8)
            {
              goto LABEL_96;
            }

            v56 = v55;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_96;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didMoveBookmark:lastObject8 toFolderWithFolderID:v56];
            }

            break;
          case 12:
            array2 = [MEMORY[0x277CBEB18] array];
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v28 = [v12 countByEnumeratingWithState:&v64 objects:v75 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v65;
              do
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v65 != v30)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v32 = *(*(&v64 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [array2 addObject:v32];
                  }
                }

                v29 = [v12 countByEnumeratingWithState:&v64 objects:v75 count:16];
              }

              while (v29);
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didReceiveFolders:array2];
            }

            break;
          case 13:
            lastObject9 = [v12 lastObject];
            if (!lastObject9)
            {
              goto LABEL_96;
            }

            v38 = lastObject9;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_96;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didAddFolder:v38];
            }

            break;
          case 14:
            v34 = [objc_msgSend(loading "_context")];
            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didDeleteFolderWithFolderID:v34];
            }

            break;
          case 15:
            array3 = [MEMORY[0x277CBEB18] array];
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v22 = [v12 countByEnumeratingWithState:&v60 objects:v74 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v61;
              do
              {
                for (k = 0; k != v23; ++k)
                {
                  if (*v61 != v24)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v26 = *(*(&v60 + 1) + 8 * k);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [array3 addObject:v26];
                  }
                }

                v23 = [v12 countByEnumeratingWithState:&v60 objects:v74 count:16];
              }

              while (v23);
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:loading didOrderFolders:array3];
            }

            break;
          default:
            break;
        }

LABEL_11:
        [(IKEngine *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self didFinishConnection:loading];
        }

        [(NSMutableDictionary *)self->_connections removeObjectForKey:[(IKEngine *)self identifierForConnection:loading]];
        return;
      }

      goto LABEL_24;
    }

    goto LABEL_96;
  }

  v9 = [objc_msgSend(loading "response")];
  if (v9 == 200)
  {
    v72 = 0;
    v73 = 0;
    if (![IKDeserializer token:&v73 andTokenSecret:&v72 fromQlineString:v5])
    {
      [(IKEngine *)self connection:loading didFailWithError:v6];
      return;
    }

    [(IKEngine *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(IKEngine *)self delegate];
      [(IKEngineDelegate *)delegate engine:self connection:loading didReceiveAuthToken:v73 andTokenSecret:v72];
    }

    [(IKEngine *)self setOAuthToken:v73];
    [(IKEngine *)self setOAuthTokenSecret:v72];
    goto LABEL_11;
  }

  v15 = v9;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v5 forKey:@"message"];
  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.matthiasplappert.InstapaperKit" code:v15 userInfo:v16];
  selfCopy3 = self;
  loadingCopy3 = loading;
LABEL_97:

  [(IKEngine *)selfCopy3 connection:loadingCopy3 didFailWithError:v17];
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  [(IKEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self didFailConnection:connection error:error];
  }

  v7 = [(IKEngine *)self identifierForConnection:connection];
  connections = self->_connections;

  [(NSMutableDictionary *)connections removeObjectForKey:v7];
}

- (void)cancelAllConnections
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_connections];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        -[IKEngine cancelConnection:](self, "cancelConnection:", [v3 objectForKey:*(*(&v8 + 1) + 8 * v7++)]);
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)cancelConnection:(id)connection
{
  v5 = [(IKEngine *)self identifierForConnection:?];
  if (v5)
  {
    v6 = v5;
    [connection cancel];
    [(IKEngine *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self didCancelConnection:connection];
    }

    connections = self->_connections;

    [(NSMutableDictionary *)connections removeObjectForKey:v6];
  }
}

- (id)orderFolders:(id)folders userInfo:(id)info
{
  result = [folders count];
  if (result)
  {
    string = [MEMORY[0x277CCAB68] string];
    if ([folders count])
    {
      v9 = 0;
      do
      {
        [string appendFormat:@"%ld:%lu, ", objc_msgSend(objc_msgSend(folders, "objectAtIndex:", v9), "folderID"), v9];
        ++v9;
      }

      while (v9 < [folders count]);
    }

    [string replaceCharactersInRange:objc_msgSend(string withString:{"length") - 1, 1, &stru_2850323E8}];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:string forKey:@"order"];

    return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/folders/set_order" bodyArguments:v10 type:15 userInfo:info context:0];
  }

  return result;
}

- (id)deleteFolder:(id)folder userInfo:(id)info
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(folder, "folderID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"folder_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/folders/delete" bodyArguments:v7 type:14 userInfo:info context:v6];
}

- (id)addFolderWithTitle:(id)title userInfo:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:title forKey:@"title"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/folders/add" bodyArguments:v6 type:13 userInfo:info context:0];
}

- (id)textOfBookmark:(id)bookmark userInfo:(id)info
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(bookmark, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/get_text" bodyArguments:v7 type:11 userInfo:info context:v6];
}

- (id)moveBookmark:(id)bookmark toFolder:(id)folder userInfo:(id)info
{
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(bookmark, "bookmarkID")}];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(folder, "folderID")}];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, @"bookmark_id", v9, @"folder_id", 0}];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/move" bodyArguments:v10 type:10 userInfo:info context:v9];
}

- (id)unarchiveBookmark:(id)bookmark userInfo:(id)info
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(bookmark, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/unarchive" bodyArguments:v7 type:9 userInfo:info context:0];
}

- (id)archiveBookmark:(id)bookmark userInfo:(id)info
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(bookmark, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/archive" bodyArguments:v7 type:8 userInfo:info context:0];
}

- (id)unstarBookmark:(id)bookmark userInfo:(id)info
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(bookmark, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/unstar" bodyArguments:v7 type:7 userInfo:info context:0];
}

- (id)starBookmark:(id)bookmark userInfo:(id)info
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(bookmark, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/star" bodyArguments:v7 type:6 userInfo:info context:0];
}

- (id)deleteBookmark:(id)bookmark userInfo:(id)info
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(bookmark, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/delete" bodyArguments:v7 type:5 userInfo:info context:v6];
}

- (id)addBookmarkWithURL:(id)l title:(id)title description:(id)description folder:(id)folder resolveFinalURL:(BOOL)rL userInfo:(id)info
{
  rLCopy = rL;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:objc_msgSend(l forKey:{"absoluteString"), @"url"}];
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  if (description)
  {
    [dictionary setObject:description forKey:@"description"];
  }

  if (folder)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", objc_msgSend(folder, "folderID")), @"folder_id"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", rLCopy), @"resolve_final_url"}];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/add" bodyArguments:dictionary type:4 userInfo:info context:0];
}

- (id)updateReadProgressOfBookmark:(id)bookmark toProgress:(double)progress userInfo:(id)info
{
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(bookmark, "bookmarkID")}];
  *&v9 = progress;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v11 = MEMORY[0x277CCABB0];
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  v13 = [v11 numberWithInteger:v12];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, @"bookmark_id", v10, @"progress", v13, @"progress_timestamp", 0}];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/update_read_progress" bodyArguments:v14 type:3 userInfo:info context:0];
}

- (id)bookmarksInFolder:(id)folder limit:(unint64_t)limit existingBookmarks:(id)bookmarks userInfo:(id)info
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
  folderID = [folder folderID];
  if (folderID <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(folder, "folderID")];
  }

  else
  {
    v12 = off_278C1A2B8[folderID + 3];
  }

  string = [MEMORY[0x277CCAB68] string];
  if ([bookmarks count])
  {
    v24 = v12;
    v25 = v10;
    selfCopy = self;
    infoCopy = info;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = [bookmarks countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(bookmarks);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          [string appendFormat:@"%ld", objc_msgSend(v18, "bookmarkID")];
          if ([v18 hashString])
          {
            [string appendFormat:@":%@", objc_msgSend(v18, "hashString")];
          }

          if ([v18 progressDate])
          {
            [v18 progress];
            if (v19 != -1.0)
            {
              [objc_msgSend(v18 "progressDate")];
              v21 = v20;
              [v18 progress];
              [string appendFormat:@":%f:%d", v22, v21];
            }
          }

          [string appendFormat:@", "];
        }

        v15 = [bookmarks countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    [string replaceCharactersInRange:objc_msgSend(string withString:{"length") - 1, 1, &stru_2850323E8}];
    info = infoCopy;
    v10 = v25;
    self = selfCopy;
    v12 = v24;
  }

  return -[IKEngine _startConnectionWithAPIPath:bodyArguments:type:userInfo:context:](self, "_startConnectionWithAPIPath:bodyArguments:type:userInfo:context:", @"/api/1/bookmarks/list", [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v10, @"limit", v12, @"folder_id", string, @"have", 0}], 2, info, folder);
}

- (id)bookmarksWithUserInfo:(id)info
{
  v5 = +[IKFolder unreadFolder];

  return [(IKEngine *)self bookmarksInFolder:v5 limit:25 existingBookmarks:0 userInfo:info];
}

- (id)authTokenForUsername:(id)username password:(id)password userInfo:(id)info
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{username, @"x_auth_username", password, @"x_auth_password", @"client_auth", @"x_auth_mode", 0}];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/oauth/access_token" bodyArguments:v7 type:0 userInfo:info context:0];
}

- (id)identifierForConnection:(id)connection
{
  v3 = [(NSMutableDictionary *)self->_connections allKeysForObject:connection];

  return [v3 lastObject];
}

- (IKEngine)initWithDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = IKEngine;
  v4 = [(IKEngine *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_OAuthToken = 0;
    v4->_OAuthTokenSecret = 0;
    v4->_delegate = delegate;
    v4->_connections = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v5;
}

+ (void)setOAuthConsumerKey:(id)key andConsumerSecret:(id)secret
{
  _OAuthConsumerKey = [key copy];

  _OAuthConsumerSecret = [secret copy];
}

@end