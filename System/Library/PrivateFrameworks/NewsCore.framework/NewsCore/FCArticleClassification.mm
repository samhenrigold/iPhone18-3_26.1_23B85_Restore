@interface FCArticleClassification
- (BOOL)isEqual:(id)equal;
- (FCArticleClassification)initWithArticleID:(id)d;
- (unint64_t)hash;
@end

@implementation FCArticleClassification

- (FCArticleClassification)initWithArticleID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
    *buf = 136315906;
    v13 = "[FCArticleClassification initWithArticleID:]";
    v14 = 2080;
    v15 = "FCArticleClassification.m";
    v16 = 1024;
    v17 = 22;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCArticleClassification;
  v5 = [(FCArticleClassification *)&v11 init];
  v6 = v5;
  if (v5)
  {
    if (dCopy)
    {
      v7 = [dCopy copy];
      articleID = v6->_articleID;
      v6->_articleID = v7;
    }

    else
    {
      articleID = v5;
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    articleID = [(FCArticleClassification *)self articleID];
    articleID2 = [v6 articleID];
    v9 = [articleID isEqual:articleID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  articleID = [(FCArticleClassification *)self articleID];
  v3 = [articleID hash];

  return v3;
}

@end