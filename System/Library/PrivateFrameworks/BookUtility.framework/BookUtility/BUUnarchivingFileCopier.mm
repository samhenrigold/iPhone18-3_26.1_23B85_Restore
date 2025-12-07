@interface BUUnarchivingFileCopier
- (BOOL)copyToURL:(id)l error:(id *)error;
- (BOOL)countTotalFileSize:(unint64_t *)size totalFileCount:(unint64_t *)count;
- (BUFileCopierDelegate)delegate;
- (BUUnarchivingFileCopier)initWithURL:(id)l options:(unint64_t)options error:(id *)error;
@end

@implementation BUUnarchivingFileCopier

- (BUUnarchivingFileCopier)initWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v21.receiver = self;
  v21.super_class = BUUnarchivingFileCopier;
  v10 = [(BUUnarchivingFileCopier *)&v21 init];
  if (v10)
  {
    v20 = 0;
    v11 = objc_msgSend_zipArchiveFromURL_options_error_(BUZipFileArchive, v9, lCopy, options, &v20);
    v12 = v20;
    v13 = v12;
    if (v12)
    {
      p_super = BUZipLog(v12);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1314(lCopy, v13, p_super);
      }
    }

    else
    {
      v15 = v11;
      p_super = &v10->_zipArchive->super.super;
      v10->_zipArchive = v15;
    }

    if (error)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
    if (error)
    {
LABEL_9:
      v16 = v13;
      *error = v13;
    }
  }

  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v18 = v17;

  return v18;
}

- (BOOL)countTotalFileSize:(unint64_t *)size totalFileCount:(unint64_t *)count
{
  v6 = objc_msgSend_zipArchive(self, a2, size);
  v9 = v6;
  if (v6)
  {
    if (size)
    {
      *size = objc_msgSend_totalSize(v6, v7, v8);
    }

    if (count)
    {
      *count = objc_msgSend_entriesCount(v9, v7, v8);
    }
  }

  return v9 != 0;
}

- (BOOL)copyToURL:(id)l error:(id *)error
{
  lCopy = l;
  v11 = objc_msgSend_zipArchive(self, v7, v8);
  if (v11)
  {
    v12 = objc_msgSend_delegate(self, v9, v10);
    v15 = objc_msgSend_zipArchive(self, v13, v14);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_241DC8A84;
    v22[3] = &unk_278D1DC68;
    v23 = v12;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_241DC8AE0;
    v20[3] = &unk_278D1DC90;
    v21 = v23;
    v16 = v23;
    Entry = objc_msgSend_extractToURL_error_shouldExtractEntry_didExtractEntry_(v15, v17, lCopy, error, v22, v20);
  }

  else
  {
    Entry = 0;
  }

  return Entry;
}

- (BUFileCopierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end