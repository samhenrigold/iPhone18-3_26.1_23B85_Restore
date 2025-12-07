@interface SDTrace
+ (void)initialize;
- (SDTrace)initWithTitle:(id)title;
- (id)description;
- (id)items;
- (int64_t)addLabel:(id)label identifier:(int64_t)identifier duration:(double)duration string:(id)string data:(id)data;
@end

@implementation SDTrace

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("trace queue", v4);
    v3 = _trace_queue;
    _trace_queue = v2;
  }
}

- (SDTrace)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = SDTrace;
  v6 = [(SDTrace *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, title);
    v7->_current = -1;
    *v7->_items = 0u;
    *&v7->_items[2] = 0u;
    *&v7->_items[4] = 0u;
    *&v7->_items[6] = 0u;
    *&v7->_items[8] = 0u;
    *&v7->_items[10] = 0u;
    *&v7->_items[12] = 0u;
    *&v7->_items[14] = 0u;
    *&v7->_items[16] = 0u;
    *&v7->_items[18] = 0u;
    *&v7->_items[20] = 0u;
    *&v7->_items[22] = 0u;
    *&v7->_items[24] = 0u;
    *&v7->_items[26] = 0u;
    *&v7->_items[28] = 0u;
    *&v7->_items[30] = 0u;
  }

  return v7;
}

- (int64_t)addLabel:(id)label identifier:(int64_t)identifier duration:(double)duration string:(id)string data:(id)data
{
  labelCopy = label;
  stringCopy = string;
  dataCopy = data;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v15 = _trace_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SDTrace_addLabel_identifier_duration_string_data___block_invoke;
  block[3] = &unk_278934388;
  v25 = &v28;
  identifierCopy = identifier;
  block[4] = self;
  v22 = labelCopy;
  durationCopy = duration;
  v23 = stringCopy;
  v24 = dataCopy;
  v16 = dataCopy;
  v17 = stringCopy;
  v18 = labelCopy;
  dispatch_sync(v15, block);
  v19 = v29[3];

  _Block_object_dispose(&v28, 8);
  return v19;
}

void __52__SDTrace_addLabel_identifier_duration_string_data___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 264) + 1;
  *(v3 + 264) = v4;
  v5 = v4 & 0x1F;
  v6 = *(*(a1 + 32) + 8 * v5 + 8);
  if (!v6)
  {
    v7 = objc_opt_new();
    v8 = *(a1 + 32) + 8 * v5;
    v9 = *(v8 + 8);
    *(v8 + 8) = v7;

    v6 = *(*(a1 + 32) + 8 * v5 + 8);
  }

  v11 = v6;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v11 setStartTime:?];
  v10 = *(a1 + 72);
  if (v10 == -1)
  {
    v10 = *(*(a1 + 32) + 264) + 1;
  }

  [v11 setIdentifier:v10];
  *(*(*(a1 + 64) + 8) + 24) = [v11 identifier];
  [v11 setLabel:*(a1 + 40)];
  [v11 setDuration:*(a1 + 80)];
  [v11 setString:*(a1 + 48)];
  [v11 setData:*(a1 + 56)];
}

- (id)items
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:32];
  v4 = _trace_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __16__SDTrace_items__block_invoke;
  v9[3] = &unk_2789342C0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(v4, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __16__SDTrace_items__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8 * ((*(v2 + 264) + 1) & 0x1F) + 8))
  {
    v3 = (*(v2 + 264) + 1) & 0x1F;
  }

  else
  {
    v3 = 0;
  }

  v4 = 32;
  do
  {
    v5 = *(*(a1 + 32) + 8 * (v3 & 0x1F) + 8);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = *(a1 + 40);
    v8 = [v5 copy];
    [v7 addObject:v8];

    ++v3;
    --v4;
  }

  while (v4);
}

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  title = [(SDTrace *)self title];
  v5 = [v3 stringWithFormat:@"Trace %@ (%d)\n", title, -[SDTrace current](self, "current") + 1];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  items = [(SDTrace *)self items];
  v7 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(items);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) description];
        [v5 appendFormat:@"%@\n", v11];
      }

      v8 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

@end