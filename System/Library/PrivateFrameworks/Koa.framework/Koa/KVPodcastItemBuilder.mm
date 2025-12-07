@interface KVPodcastItemBuilder
+ (void)initialize;
- (KVPodcastItemBuilder)init;
- (id)_buildItemWithError:(id *)error;
- (id)playlistItemWithName:(id)name itemId:(id)id error:(id *)error;
- (id)podcastItemWithTitle:(id)title itemId:(id)id artistName:(id)name error:(id *)error;
@end

@implementation KVPodcastItemBuilder

- (id)_buildItemWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  builder = self->_builder;
  v14 = 0;
  v8 = objc_msgSend_buildItemWithError_(builder, a2, &v14, v3, v4, v5);
  v9 = v14;
  if (v8)
  {
    v10 = v8;
    goto LABEL_7;
  }

  v11 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "[KVPodcastItemBuilder _buildItemWithError:]";
    v17 = 2112;
    v18 = v9;
    _os_log_error_impl(&dword_2559A5000, v11, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else if (!error)
  {
    goto LABEL_7;
  }

  if (v9)
  {
    v12 = v9;
    *error = v9;
  }

LABEL_7:

  return v8;
}

- (id)playlistItemWithName:(id)name itemId:(id)id error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  builder = self->_builder;
  v28 = 0;
  v12 = objc_msgSend_setItemType_itemId_error_(builder, v10, 16, id, &v28, v11);
  v15 = v28;
  if (v12)
  {
    v16 = self->_builder;
    v27 = v15;
    v17 = objc_msgSend_addFieldWithType_value_error_(v16, v13, 702, nameCopy, &v27, v14);
    v18 = v27;

    if (v17)
    {
      v23 = objc_msgSend__buildItemWithError_(self, v19, error, v20, v21, v22);
      goto LABEL_11;
    }

    v15 = v18;
  }

  v24 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v30 = "[KVPodcastItemBuilder playlistItemWithName:itemId:error:]";
    v31 = 2112;
    v32 = v15;
    _os_log_error_impl(&dword_2559A5000, v24, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v23 = 0;
  if (error && v15)
  {
    v25 = v15;
    v23 = 0;
    *error = v15;
  }

  v18 = v15;
LABEL_11:

  return v23;
}

- (id)podcastItemWithTitle:(id)title itemId:(id)id artistName:(id)name error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  nameCopy = name;
  builder = self->_builder;
  v36 = 0;
  v15 = objc_msgSend_setItemType_itemId_error_(builder, v13, 16, id, &v36, v14);
  v18 = v36;
  if (v15)
  {
    v19 = self->_builder;
    v35 = v18;
    v20 = objc_msgSend_addFieldWithType_value_error_(v19, v16, 700, titleCopy, &v35, v17);
    v21 = v35;

    if (!v20)
    {

      goto LABEL_7;
    }

    v24 = self->_builder;
    v34 = v21;
    v25 = objc_msgSend_addFieldWithType_value_error_(v24, v22, 701, nameCopy, &v34, v23);
    v18 = v34;

    if (v25)
    {
      v30 = objc_msgSend__buildItemWithError_(self, v26, error, v27, v28, v29);
      goto LABEL_13;
    }
  }

  v21 = v18;
LABEL_7:
  v31 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v38 = "[KVPodcastItemBuilder podcastItemWithTitle:itemId:artistName:error:]";
    v39 = 2112;
    v40 = v21;
    _os_log_error_impl(&dword_2559A5000, v31, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v30 = 0;
  if (error && v21)
  {
    v32 = v21;
    v30 = 0;
    *error = v21;
  }

  v18 = v21;
LABEL_13:

  return v30;
}

- (KVPodcastItemBuilder)init
{
  v6.receiver = self;
  v6.super_class = KVPodcastItemBuilder;
  v2 = [(KVPodcastItemBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(KVItemBuilder);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

+ (void)initialize
{
  if (qword_28106B3B8 != -1)
  {
    dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
  }
}

@end