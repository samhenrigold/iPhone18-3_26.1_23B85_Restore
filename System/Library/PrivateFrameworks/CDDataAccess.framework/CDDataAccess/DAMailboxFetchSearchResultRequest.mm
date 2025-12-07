@interface DAMailboxFetchSearchResultRequest
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initRequestForBodyFormat:(int)format withFolderID:(id)d withServerID:(id)iD withLongID:(id)longID withBodySizeLimit:(int)limit;
- (id)initRequestForBodyFormat:(int)format withLongID:(id)d withBodySizeLimit:(int)limit;
- (unint64_t)hash;
@end

@implementation DAMailboxFetchSearchResultRequest

- (id)initRequestForBodyFormat:(int)format withLongID:(id)d withBodySizeLimit:(int)limit
{
  v5 = *&limit;
  v6 = *&format;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = DAMailboxFetchSearchResultRequest;
  v9 = [(DAMailboxFetchSearchResultRequest *)&v12 init];
  if (v9)
  {
    v10 = [dCopy copy];
    [(DAMailboxFetchSearchResultRequest *)v9 setLongID:v10];

    [(DAMailboxFetchSearchResultRequest *)v9 setBodyFormat:v6];
    [(DAMailboxFetchSearchResultRequest *)v9 setMaxSize:v5];
  }

  return v9;
}

- (id)initRequestForBodyFormat:(int)format withFolderID:(id)d withServerID:(id)iD withLongID:(id)longID withBodySizeLimit:(int)limit
{
  v7 = *&limit;
  v10 = *&format;
  dCopy = d;
  iDCopy = iD;
  longIDCopy = longID;
  v20.receiver = self;
  v20.super_class = DAMailboxFetchSearchResultRequest;
  v15 = [(DAMailboxFetchSearchResultRequest *)&v20 init];
  if (v15)
  {
    v16 = [dCopy copy];
    [(DAMailboxFetchSearchResultRequest *)v15 setFolderID:v16];

    v17 = [iDCopy copy];
    [(DAMailboxFetchSearchResultRequest *)v15 setServerID:v17];

    v18 = [longIDCopy copy];
    [(DAMailboxFetchSearchResultRequest *)v15 setLongID:v18];

    [(DAMailboxFetchSearchResultRequest *)v15 setBodyFormat:v10];
    [(DAMailboxFetchSearchResultRequest *)v15 setMaxSize:v7];
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  longID = [(DAMailboxFetchSearchResultRequest *)self longID];
  v5 = [v3 initWithFormat:@"%@\n%d\n%d", longID, -[DAMailboxFetchSearchResultRequest maxSize](self, "maxSize"), -[DAMailboxFetchSearchResultRequest bodyFormat](self, "bodyFormat")];

  v6 = [v5 hash];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    longID = [(DAMailboxFetchSearchResultRequest *)self longID];
    longID2 = [v7 longID];
    if (longID == longID2 || (-[DAMailboxFetchSearchResultRequest longID](self, "longID"), v3 = objc_claimAutoreleasedReturnValue(), [v7 longID], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      maxSize = [v7 maxSize];
      if (maxSize == [(DAMailboxFetchSearchResultRequest *)self maxSize])
      {
        bodyFormat = [v7 bodyFormat];
        v10 = bodyFormat == [(DAMailboxFetchSearchResultRequest *)self bodyFormat];
      }

      else
      {
        v10 = 0;
      }

      if (longID == longID2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DAMailboxFetchSearchResultRequest;
  v4 = [(DAMailboxFetchSearchResultRequest *)&v8 description];
  longID = [(DAMailboxFetchSearchResultRequest *)self longID];
  v6 = [v3 stringWithFormat:@"%@ longID %@, maxSize %d, bodyFormat %d", v4, longID, -[DAMailboxFetchSearchResultRequest maxSize](self, "maxSize"), -[DAMailboxFetchSearchResultRequest bodyFormat](self, "bodyFormat")];

  return v6;
}

@end