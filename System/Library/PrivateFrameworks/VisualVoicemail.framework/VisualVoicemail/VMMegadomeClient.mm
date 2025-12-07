@interface VMMegadomeClient
- (VMMegadomeClient)init;
- (id)getMegadomeLanguages;
- (void)dealloc;
@end

@implementation VMMegadomeClient

- (VMMegadomeClient)init
{
  v10.receiver = self;
  v10.super_class = VMMegadomeClient;
  v2 = [(VMMegadomeClient *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC3vmd15MegadomeWrapper);
    megadomeWrapper = v2->_megadomeWrapper;
    v2->_megadomeWrapper = v3;

    v6 = sub_100024CBC(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 136315906;
      v12 = "";
      v13 = 2080;
      v14 = "";
      v15 = 2112;
      v16 = v7;
      v17 = 2048;
      v18 = v2;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p Created", buf, 0x2Au);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100024CBC(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v7 = "";
    v8 = 2080;
    v9 = "";
    v10 = 2112;
    v11 = objc_opt_class();
    v12 = 2048;
    selfCopy = self;
    v4 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p Deleted", buf, 0x2Au);
  }

  v5.receiver = self;
  v5.super_class = VMMegadomeClient;
  [(VMMegadomeClient *)&v5 dealloc];
}

- (id)getMegadomeLanguages
{
  readMegadomeLanguages = [(MegadomeWrapper *)self->_megadomeWrapper readMegadomeLanguages];
  v3 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [readMegadomeLanguages allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [readMegadomeLanguages objectForKeyedSubscript:v8];
        v10 = v9;
        if (v9)
        {
          [v9 floatValue];
          if (v11 > 0.5)
          {
            lowercaseString = [v8 lowercaseString];
            [v3 addObject:lowercaseString];
          }
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v5);
  }

  v14 = sub_100024CBC(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "";
    v22 = 2080;
    v23 = "";
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sgetMegadomeLanguages: %@", buf, 0x20u);
  }

  return v3;
}

@end