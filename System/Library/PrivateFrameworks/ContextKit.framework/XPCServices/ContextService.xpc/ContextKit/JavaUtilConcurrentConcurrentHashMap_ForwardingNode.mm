@interface JavaUtilConcurrentConcurrentHashMap_ForwardingNode
- (id)findWithInt:(int)int withId:(id)id;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_ForwardingNode

- (id)findWithInt:(int)int withId:(id)id
{
  i = 0;
  if (id)
  {
    nextTable = self->nextTable_;
    if (nextTable)
    {
      size = nextTable->super.size_;
      v7 = __OFSUB__(size, 1);
      v8 = size - 1;
      if (v8 < 0 != v7)
      {
        return 0;
      }

      else
      {
        v10 = *&int;
        for (i = JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(nextTable, v8 & int); i; i = i[4])
        {
          v11 = *(i + 2);
          if (v11 == v10)
          {
            v12 = i[2];
            if (v12 == id || v12 && ([id isEqual:?] & 1) != 0)
            {
              break;
            }
          }

          if (v11 < 0)
          {

            return [i findWithInt:v10 withId:id];
          }
        }
      }
    }
  }

  return i;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_ForwardingNode;
  [(JavaUtilConcurrentConcurrentHashMap_Node *)&v3 dealloc];
}

@end