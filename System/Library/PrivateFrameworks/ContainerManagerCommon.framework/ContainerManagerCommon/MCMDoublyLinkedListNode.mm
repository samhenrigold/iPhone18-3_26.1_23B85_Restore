@interface MCMDoublyLinkedListNode
- (MCMDoublyLinkedListNode)initWithKey:(id)key data:(id)data;
- (MCMDoublyLinkedListNode)prev;
- (void)setData:(id)data;
- (void)setKey:(id)key;
- (void)setNext:(id)next;
- (void)setPrev:(id)prev;
@end

@implementation MCMDoublyLinkedListNode

- (MCMDoublyLinkedListNode)prev
{
  WeakRetained = objc_loadWeakRetained(&self->_prev);

  return WeakRetained;
}

- (void)setNext:(id)next
{
  p_next = &self->_next;

  objc_storeStrong(p_next, next);
}

- (void)setPrev:(id)prev
{
  p_prev = &self->_prev;

  objc_storeWeak(p_prev, prev);
}

- (void)setKey:(id)key
{
  p_key = &self->_key;

  objc_storeStrong(p_key, key);
}

- (void)setData:(id)data
{
  p_data = &self->_data;

  objc_storeStrong(p_data, data);
}

- (MCMDoublyLinkedListNode)initWithKey:(id)key data:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = MCMDoublyLinkedListNode;
  v8 = [(MCMDoublyLinkedListNode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MCMDoublyLinkedListNode *)v8 setKey:keyCopy];
    [(MCMDoublyLinkedListNode *)v9 setData:dataCopy];
  }

  return v9;
}

@end