@interface MKBookmark
- (MKBookmark)initWithData:(id)data;
@end

@implementation MKBookmark

- (MKBookmark)initWithData:(id)data
{
  v26[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = MKBookmark;
  v5 = [(MKBookmark *)&v22 init];
  if (v5)
  {
    v21 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v21];
    v7 = v21;
    if (v7)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MKBookmark *)v7 initWithData:v8];
      }

LABEL_14:

      v19 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MKBookmark initWithData:v8];
      }

      goto LABEL_14;
    }

    v9 = v6;
    v10 = [v9 objectForKey:@"id"];
    [(MKBookmark *)v5 setID:v10];

    v11 = [v9 objectForKey:@"title"];
    [(MKBookmark *)v5 setTitle:v11];

    v12 = [v9 objectForKey:@"url"];
    [(MKBookmark *)v5 setUrl:v12];

    if (!v5->_title)
    {
      [(MKBookmark *)v5 setTitle:v5->_url];
    }

    if (v5->_url)
    {
      v26[0] = @"WebBookmarkTypeLeaf";
      v25[0] = @"WebBookmarkType";
      v25[1] = @"WebBookmarkUUID";
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v26[1] = uUIDString;
      v25[2] = @"URIDictionary";
      title = v5->_title;
      v23 = @"title";
      v24 = title;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v25[3] = @"URLString";
      url = v5->_url;
      v26[2] = v16;
      v26[3] = url;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
      [(MKBookmark *)v5 setData:v18];
    }
  }

  v19 = v5;
LABEL_15:

  return v19;
}

@end