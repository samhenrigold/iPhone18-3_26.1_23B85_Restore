@interface JavaUtilLinkedHashSet
- (JavaUtilLinkedHashSet)init;
- (JavaUtilLinkedHashSet)initWithInt:(int)int;
- (JavaUtilLinkedHashSet)initWithInt:(int)int withFloat:(float)float;
- (id)createBackingMapWithInt:(int)int withFloat:(float)float;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation JavaUtilLinkedHashSet

- (JavaUtilLinkedHashSet)init
{
  v3 = new_JavaUtilLinkedHashMap_init();
  JavaUtilHashSet_initWithJavaUtilHashMap_(self, v3);
  return self;
}

- (JavaUtilLinkedHashSet)initWithInt:(int)int
{
  v4 = new_JavaUtilLinkedHashMap_initWithInt_(*&int);
  JavaUtilHashSet_initWithJavaUtilHashMap_(self, v4);
  return self;
}

- (JavaUtilLinkedHashSet)initWithInt:(int)int withFloat:(float)float
{
  v5 = new_JavaUtilLinkedHashMap_initWithInt_withFloat_(*&int, float);
  JavaUtilHashSet_initWithJavaUtilHashMap_(self, v5);
  return self;
}

- (id)createBackingMapWithInt:(int)int withFloat:(float)float
{
  v4 = new_JavaUtilLinkedHashMap_initWithInt_withFloat_(*&int, float);

  return v4;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v6.receiver = self;
  v6.super_class = JavaUtilLinkedHashSet;
  return [(JavaUtilHashSet *)&v6 countByEnumeratingWithState:state objects:objects count:count];
}

@end