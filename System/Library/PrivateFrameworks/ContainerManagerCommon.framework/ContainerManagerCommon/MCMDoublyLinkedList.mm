@interface MCMDoublyLinkedList
- (id)removeFromHead;
- (void)addToTail:(id)tail;
- (void)removeAllObjects;
- (void)removeNodeAndAddToTail:(id)tail;
- (void)setHead:(id)head;
- (void)setTail:(id)tail;
@end

@implementation MCMDoublyLinkedList

- (id)removeFromHead
{
  head = [(MCMDoublyLinkedList *)self head];
  v4 = head;
  if (head)
  {
    next = [head next];
    [(MCMDoublyLinkedList *)self setHead:next];

    next2 = [v4 next];
    [next2 setPrev:0];

    tail = [(MCMDoublyLinkedList *)self tail];

    if (v4 == tail)
    {
      [(MCMDoublyLinkedList *)self setTail:0];
    }

    [(MCMDoublyLinkedList *)self setCount:[(MCMDoublyLinkedList *)self count]- 1];
  }

  [v4 setNext:0];
  [v4 setPrev:0];

  return v4;
}

- (void)setTail:(id)tail
{
  p_tail = &self->_tail;

  objc_storeStrong(p_tail, tail);
}

- (void)setHead:(id)head
{
  p_head = &self->_head;

  objc_storeStrong(p_head, head);
}

- (void)removeAllObjects
{
  do
  {
    removeFromHead = [(MCMDoublyLinkedList *)self removeFromHead];
  }

  while (removeFromHead);
}

- (void)removeNodeAndAddToTail:(id)tail
{
  tailCopy = tail;
  prev = [tailCopy prev];
  next = [tailCopy next];
  [next setPrev:prev];

  next2 = [tailCopy next];
  [prev setNext:next2];

  head = [(MCMDoublyLinkedList *)self head];

  if (head == tailCopy)
  {
    next3 = [tailCopy next];
    [(MCMDoublyLinkedList *)self setHead:next3];
  }

  tail = [(MCMDoublyLinkedList *)self tail];

  v10 = tailCopy;
  if (tail == tailCopy)
  {
    [(MCMDoublyLinkedList *)self setTail:prev];
    v10 = tailCopy;
  }

  [v10 setPrev:0];
  [tailCopy setNext:0];
  [(MCMDoublyLinkedList *)self setCount:[(MCMDoublyLinkedList *)self count]- 1];
  [(MCMDoublyLinkedList *)self addToTail:tailCopy];
}

- (void)addToTail:(id)tail
{
  tailCopy = tail;
  tail = [(MCMDoublyLinkedList *)self tail];

  if (tail)
  {
    tail2 = [(MCMDoublyLinkedList *)self tail];
    [tail2 setNext:tailCopy];

    tail3 = [(MCMDoublyLinkedList *)self tail];
    [tailCopy setPrev:tail3];

    [tailCopy setNext:0];
  }

  else
  {
    [tailCopy setPrev:0];
    [tailCopy setNext:0];
    [(MCMDoublyLinkedList *)self setHead:tailCopy];
  }

  [(MCMDoublyLinkedList *)self setTail:tailCopy];

  v8 = [(MCMDoublyLinkedList *)self count]+ 1;

  [(MCMDoublyLinkedList *)self setCount:v8];
}

@end