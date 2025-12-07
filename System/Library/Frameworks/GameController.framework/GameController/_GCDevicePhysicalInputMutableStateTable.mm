@interface _GCDevicePhysicalInputMutableStateTable
- (BOOL)testAndSetObjectValue:(id)value atIndex:(unsigned int)index policy:(unint64_t)policy compareObjects:(BOOL)objects previous:(id *)previous;
- (BOOL)testAndSetPrimitiveValue:(unint64_t)value atIndex:(unsigned int)index previous:(unint64_t *)previous;
- (_WORD)initWithMagic:(void *)magic;
- (id)allocatePrimitiveSlot;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectValueAtIndex:(unsigned int)index;
- (uint64_t)allocateObjectSlot;
- (unint64_t)primitiveValueAtIndex:(unsigned int)index;
- (void)dealloc;
- (void)setObjectValue:(id)value atIndex:(unsigned int)index policy:(unint64_t)policy;
- (void)setPrimitiveValue:(unint64_t)value atIndex:(unsigned int)index;
@end

@implementation _GCDevicePhysicalInputMutableStateTable

- (void)dealloc
{
  if ([(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount])
  {
    v3 = 0;
    do
    {
      [(_GCDevicePhysicalInputMutableStateTable *)self setObjectValue:0 atIndex:v3 policy:0];
      v3 = (v3 + 1);
    }

    while (v3 < [(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount]);
  }

  v4.receiver = self;
  v4.super_class = _GCDevicePhysicalInputMutableStateTable;
  [(_GCDevicePhysicalInputMutableStateTable *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_GCDevicePhysicalInputStateTable stateTableWithMagic:[(_GCDevicePhysicalInputMutableStateTable *)self primitiveSlotCount] primitiveSlotCount:[(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount] objectSlotCount:?];
  if ([(_GCDevicePhysicalInputMutableStateTable *)self primitiveSlotCount])
  {
    v5 = 0;
    do
    {
      [v4 setPrimitiveValue:-[_GCDevicePhysicalInputMutableStateTable primitiveValueAtIndex:](self atIndex:{"primitiveValueAtIndex:", v5), v5}];
      v5 = (v5 + 1);
    }

    while (v5 < [(_GCDevicePhysicalInputMutableStateTable *)self primitiveSlotCount]);
  }

  if ([(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount])
  {
    v6 = 0;
    do
    {
      [v4 setObjectValue:-[_GCDevicePhysicalInputMutableStateTable objectValueAtIndex:](self atIndex:"objectValueAtIndex:" policy:{v6), v6, -[NSPointerArray pointerAtIndex:](self->_objectPolicyState, "pointerAtIndex:", v6)}];
      ++v6;
    }

    while (v6 < [(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount]);
  }

  return v4;
}

- (unint64_t)primitiveValueAtIndex:(unsigned int)index
{
  v3 = *&index;
  if ([(_GCDevicePhysicalInputMutableStateTable *)self primitiveSlotCount]<= index)
  {
    [(_GCDevicePhysicalInputMutableStateTable *)self primitiveValueAtIndex:a2, v3];
  }

  primitiveState = self->_primitiveState;

  return [(NSPointerArray *)primitiveState pointerAtIndex:v3];
}

- (void)setPrimitiveValue:(unint64_t)value atIndex:(unsigned int)index
{
  v4 = *&index;
  if ([(_GCDevicePhysicalInputMutableStateTable *)self primitiveSlotCount]<= index)
  {
    [(_GCDevicePhysicalInputMutableStateTable *)self setPrimitiveValue:a2 atIndex:v4];
  }

  primitiveState = self->_primitiveState;

  [(NSPointerArray *)primitiveState replacePointerAtIndex:v4 withPointer:value];
}

- (BOOL)testAndSetPrimitiveValue:(unint64_t)value atIndex:(unsigned int)index previous:(unint64_t *)previous
{
  v6 = *&index;
  if ([(_GCDevicePhysicalInputMutableStateTable *)self primitiveSlotCount]<= index)
  {
    [_GCDevicePhysicalInputMutableStateTable testAndSetPrimitiveValue:a2 atIndex:v6 previous:?];
  }

  v10 = [(NSPointerArray *)self->_primitiveState pointerAtIndex:v6];
  v11 = v10;
  if (v10 != value)
  {
    if (previous)
    {
      *previous = v10;
    }

    [(_GCDevicePhysicalInputMutableStateTable *)self setPrimitiveValue:value atIndex:v6];
  }

  return v11 != value;
}

- (uint64_t)allocateObjectSlot
{
  [*(self + 32) addPointer:0];
  v2 = *(self + 24);

  return [v2 addPointer:0];
}

- (id)objectValueAtIndex:(unsigned int)index
{
  v3 = *&index;
  if ([(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount]<= index)
  {
    [(_GCDevicePhysicalInputMutableStateTable *)self objectValueAtIndex:a2, v3];
  }

  objectState = self->_objectState;

  return [(NSPointerArray *)objectState pointerAtIndex:v3];
}

- (void)setObjectValue:(id)value atIndex:(unsigned int)index policy:(unint64_t)policy
{
  v6 = *&index;
  if ([(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount]<= index)
  {
    [_GCDevicePhysicalInputMutableStateTable setObjectValue:a2 atIndex:v6 policy:?];
  }

  v10 = [(NSPointerArray *)self->_objectPolicyState pointerAtIndex:v6];
  objectState = self->_objectState;
  if (v10)
  {

    objectState = self->_objectState;
  }

  [(NSPointerArray *)objectState replacePointerAtIndex:v6 withPointer:0];
  if (policy <= 2)
  {
    if (!policy)
    {
      v13 = self->_objectState;
      v14 = v6;
      valueCopy2 = value;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (policy == 769)
  {
LABEL_9:
    v15 = self->_objectState;
    valueCopy2 = value;
    v13 = v15;
    goto LABEL_10;
  }

  valueCopy2 = [value copyWithZone:0];
  v13 = self->_objectState;
LABEL_10:
  v14 = v6;
LABEL_11:
  [(NSPointerArray *)v13 replacePointerAtIndex:v14 withPointer:valueCopy2];
  objectPolicyState = self->_objectPolicyState;

  [(NSPointerArray *)objectPolicyState replacePointerAtIndex:v6 withPointer:policy];
}

- (BOOL)testAndSetObjectValue:(id)value atIndex:(unsigned int)index policy:(unint64_t)policy compareObjects:(BOOL)objects previous:(id *)previous
{
  objectsCopy = objects;
  v10 = *&index;
  if ([(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount]<= index)
  {
    [_GCDevicePhysicalInputMutableStateTable testAndSetObjectValue:a2 atIndex:v10 policy:? compareObjects:? previous:?];
  }

  v14 = [(NSPointerArray *)self->_objectState pointerAtIndex:v10];
  v15 = v14;
  if (objectsCopy)
  {
    if (v14 == value || ([value isEqual:v14] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v14 == value)
  {
    return 0;
  }

  if (previous)
  {
    *previous = v15;
  }

  [(_GCDevicePhysicalInputMutableStateTable *)self setObjectValue:value atIndex:v10 policy:policy];
  return 1;
}

- (_WORD)initWithMagic:(void *)magic
{
  if (!magic)
  {
    return 0;
  }

  v5.receiver = magic;
  v5.super_class = _GCDevicePhysicalInputMutableStateTable;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  v3[4] = a2;
  *(v3 + 2) = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
  *(v3 + 3) = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
  *(v3 + 4) = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
  return v3;
}

- (id)allocatePrimitiveSlot
{
  if (result)
  {
    v1 = result;
    primitiveSlotCount = [result primitiveSlotCount];
    [v1[2] addPointer:0];
    return primitiveSlotCount;
  }

  return result;
}

@end