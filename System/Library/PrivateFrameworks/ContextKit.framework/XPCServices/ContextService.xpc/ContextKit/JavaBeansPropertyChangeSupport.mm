@interface JavaBeansPropertyChangeSupport
+ (void)initialize;
- (BOOL)hasListenersWithNSString:(id)string;
- (id)getPropertyChangeListeners;
- (id)getPropertyChangeListenersWithNSString:(id)string;
- (void)addPropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener;
- (void)addPropertyChangeListenerWithNSString:(id)string withJavaBeansPropertyChangeListener:(id)listener;
- (void)dealloc;
- (void)fireIndexedPropertyChangeWithNSString:(id)string withInt:(int)int withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
- (void)fireIndexedPropertyChangeWithNSString:(id)string withInt:(int)int withId:(id)id withId:(id)withId;
- (void)fireIndexedPropertyChangeWithNSString:(id)string withInt:(int)int withInt:(int)withInt withInt:(int)a6;
- (void)firePropertyChangeWithJavaBeansPropertyChangeEvent:(id)event;
- (void)firePropertyChangeWithNSString:(id)string withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
- (void)firePropertyChangeWithNSString:(id)string withId:(id)id withId:(id)withId;
- (void)firePropertyChangeWithNSString:(id)string withInt:(int)int withInt:(int)withInt;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)removePropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener;
- (void)removePropertyChangeListenerWithNSString:(id)string withJavaBeansPropertyChangeListener:(id)listener;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaBeansPropertyChangeSupport

- (void)firePropertyChangeWithNSString:(id)string withId:(id)id withId:(id)withId
{
  v6 = new_JavaBeansPropertyChangeEvent_initWithId_withNSString_withId_withId_(self->sourceBean_, string, id, withId);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithJavaBeansPropertyChangeEvent:v6];
}

- (void)fireIndexedPropertyChangeWithNSString:(id)string withInt:(int)int withId:(id)id withId:(id)withId
{
  v7 = new_JavaBeansIndexedPropertyChangeEvent_initWithId_withNSString_withId_withId_withInt_(self->sourceBean_, string, id, withId, int);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithJavaBeansPropertyChangeEvent:v7];
}

- (void)removePropertyChangeListenerWithNSString:(id)string withJavaBeansPropertyChangeListener:(id)listener
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaUtilList *)self->listeners_ countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(listeners);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (sub_1001CE0AC(string, listener, v12))
        {
          [(JavaUtilList *)self->listeners_ removeWithId:v12, v13];
          return;
        }
      }

      v9 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }
}

- (void)addPropertyChangeListenerWithNSString:(id)string withJavaBeansPropertyChangeListener:(id)listener
{
  if (string && listener)
  {
    listeners = self->listeners_;
    if (!listeners)
    {
      JreThrowNullPointerException();
    }

    v5 = new_JavaBeansPropertyChangeListenerProxy_initWithNSString_withJavaBeansPropertyChangeListener_(string, listener);

    [(JavaUtilList *)listeners addWithId:v5];
  }
}

- (id)getPropertyChangeListenersWithNSString:(id)string
{
  v5 = new_JavaUtilArrayList_init();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v7 = v5;
  v8 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(listeners);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (!v12)
          {
            goto LABEL_16;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          if (LibcoreUtilObjects_equalWithId_withId_(string, [v12 getPropertyName]))
          {
            [(JavaUtilArrayList *)v7 addWithId:v12];
          }
        }
      }

      v9 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [(JavaUtilArrayList *)v7 size];
  return [(JavaUtilArrayList *)v7 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:v13 type:JavaBeansPropertyChangeListener_class_(v13, v14)]];
}

- (void)firePropertyChangeWithNSString:(id)string withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean
{
  v8 = JavaLangBoolean_valueOfWithBoolean_(boolean);
  v9 = JavaLangBoolean_valueOfWithBoolean_(withBoolean);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithNSString:string withId:v8 withId:v9];
}

- (void)fireIndexedPropertyChangeWithNSString:(id)string withInt:(int)int withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean
{
  if (boolean != withBoolean)
  {
    withBooleanCopy = withBoolean;
    v8 = *&int;
    v11 = JavaLangBoolean_valueOfWithBoolean_(boolean);
    v12 = JavaLangBoolean_valueOfWithBoolean_(withBooleanCopy);

    [(JavaBeansPropertyChangeSupport *)self fireIndexedPropertyChangeWithNSString:string withInt:v8 withId:v11 withId:v12];
  }
}

- (void)firePropertyChangeWithNSString:(id)string withInt:(int)int withInt:(int)withInt
{
  v8 = JavaLangInteger_valueOfWithInt_(int);
  v9 = JavaLangInteger_valueOfWithInt_(withInt);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithNSString:string withId:v8 withId:v9];
}

- (void)fireIndexedPropertyChangeWithNSString:(id)string withInt:(int)int withInt:(int)withInt withInt:(int)a6
{
  if (withInt != a6)
  {
    v8 = *&int;
    v11 = JavaLangInteger_valueOfWithInt_(withInt);
    v12 = JavaLangInteger_valueOfWithInt_(a6);

    [(JavaBeansPropertyChangeSupport *)self fireIndexedPropertyChangeWithNSString:string withInt:v8 withId:v11 withId:v12];
  }
}

- (BOOL)hasListenersWithNSString:(id)string
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilList *)self->listeners_ countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(listeners);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_14;
        }

        objc_opt_class();
        if (!v9)
        {
          goto LABEL_17;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        if (LibcoreUtilObjects_equalWithId_withId_(string, [v9 getPropertyName]))
        {
LABEL_14:
          LOBYTE(v5) = 1;
          return v5;
        }
      }

      v6 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v11 objects:v15 count:16];
      LOBYTE(v5) = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (void)removePropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilList *)self->listeners_ countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(listeners);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (sub_1001CE0AC(0, listener, v10))
        {
          [(JavaUtilList *)self->listeners_ removeWithId:v10, v11];
          return;
        }
      }

      v7 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)addPropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener
{
  if (listener)
  {
    listeners = self->listeners_;
    if (!listeners)
    {
      JreThrowNullPointerException();
    }

    [(JavaUtilList *)listeners addWithId:?];
  }
}

- (id)getPropertyChangeListeners
{
  listeners = self->listeners_;
  if (!listeners)
  {
    JreThrowNullPointerException();
  }

  v3 = [IOSObjectArray arrayWithLength:0 type:JavaBeansPropertyChangeListener_class_(self, a2)];

  return [(JavaUtilList *)listeners toArrayWithNSObjectArray:v3];
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  v5 = new_JavaUtilHashtable_init();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
    goto LABEL_33;
  }

  v7 = v5;
  streamCopy = stream;
  v8 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(listeners);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) != 0 && ([JavaIoSerializable_class_(isKindOfClass v14)] & 1) == 0)
        {
          objc_opt_class();
          if (!v12)
          {
            goto LABEL_33;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = [v12 getListener], v17 = JavaBeansPropertyChangeListener_class_(v15, v16), v15) && (v17 = objc_msgSend(v17, "isInstance:", v15), (v17 & 1) == 0))
          {
            JreThrowClassCastException();
          }

          if ([JavaIoSerializable_class_(v17 v18)])
          {
            v19 = -[JavaUtilHashtable getWithId:](v7, "getWithId:", [v12 getPropertyName]);
            if (v19)
            {
              v20 = v19;
            }

            else
            {
              sourceBean = self->sourceBean_;
              v22 = v7;
              v23 = [JavaBeansPropertyChangeSupport alloc];
              JavaBeansPropertyChangeSupport_initWithId_(v23, sourceBean);
              v24 = v23;
              v7 = v22;
              v20 = v24;
              -[JavaUtilHashtable putWithId:withId:](v22, "putWithId:withId:", [v12 getPropertyName], v20);
              if (!v20)
              {
                goto LABEL_33;
              }
            }

            [v20[2] addWithId:v15];
          }
        }
      }

      v9 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v9);
  }

  if (!streamCopy || (v25 = [streamCopy putFields]) == 0)
  {
LABEL_33:
    JreThrowNullPointerException();
  }

  v26 = v25;
  [v25 putWithNSString:@"source" withId:self->sourceBean_];
  [v26 putWithNSString:@"children" withId:v7];
  [streamCopy writeFields];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = self->listeners_;
  v28 = [(JavaUtilList *)v27 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v28)
  {
    v30 = v28;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v35 + 1) + 8 * v32);
        v28 = [JavaIoSerializable_class_(v28 v29)];
        if (v28)
        {
          v28 = [streamCopy writeObjectWithId:v33];
        }

        v32 = v32 + 1;
      }

      while (v30 != v32);
      v28 = [(JavaUtilList *)v27 countByEnumeratingWithState:&v35 objects:v43 count:16];
      v30 = v28;
    }

    while (v28);
  }

  [streamCopy writeObjectWithId:0];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    goto LABEL_26;
  }

  readFields = [stream readFields];
  if (!readFields)
  {
    goto LABEL_26;
  }

  v6 = readFields;
  streamCopy = stream;
  JreStrongAssign(&self->sourceBean_, [readFields getWithNSString:@"source" withId:0]);
  v7 = new_JavaUtilConcurrentCopyOnWriteArrayList_init();
  JreStrongAssignAndConsume(&self->listeners_, v7);
  v8 = [v6 getWithNSString:@"children" withId:0];
  v10 = JavaUtilMap_class_(v8, v9);
  if (!v8)
  {
    goto LABEL_22;
  }

  if (([v10 isInstance:v8] & 1) == 0)
  {
LABEL_27:
    JreThrowClassCastException();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  entrySet = [v8 entrySet];
  if (!entrySet)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  v12 = entrySet;
  v13 = [entrySet countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  obj = v12;
  v28 = *v34;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v34 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v33 + 1) + 8 * i);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      if (!v16)
      {
        goto LABEL_26;
      }

      getValue = [v16 getValue];
      if (!getValue)
      {
        goto LABEL_26;
      }

      v18 = getValue[2];
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            -[JavaUtilList addWithId:](self->listeners_, "addWithId:", new_JavaBeansPropertyChangeListenerProxy_initWithNSString_withJavaBeansPropertyChangeListener_([v16 getKey], *(*(&v29 + 1) + 8 * j)));
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v20);
      }
    }

    v14 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  }

  while (v14);
LABEL_22:
  while (1)
  {
    readObject = [streamCopy readObject];
    v25 = JavaBeansPropertyChangeListener_class_(readObject, v24);
    if (!readObject)
    {
      break;
    }

    if (([v25 isInstance:readObject] & 1) == 0)
    {
      goto LABEL_27;
    }

    [(JavaUtilList *)self->listeners_ addWithId:readObject];
  }
}

- (void)firePropertyChangeWithJavaBeansPropertyChangeEvent:(id)event
{
  if (!event)
  {
    goto LABEL_25;
  }

  getPropertyName = [event getPropertyName];
  getOldValue = [event getOldValue];
  getNewValue = [event getNewValue];
  if (getNewValue && getOldValue && ([getNewValue isEqual:getOldValue] & 1) != 0)
  {
    return;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
LABEL_25:
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(listeners);
        }

        getListener = *(*(&v16 + 1) + 8 * i);
        while (1)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          objc_opt_class();
          if (!getListener)
          {
            goto LABEL_25;
          }

          if (objc_opt_isKindOfClass())
          {
            if (!LibcoreUtilObjects_equalWithId_withId_([getListener getPropertyName], getPropertyName))
            {
              goto LABEL_21;
            }

            getListener = [getListener getListener];
            v15 = JavaBeansPropertyChangeListener_class_(getListener, v14);
            if (!getListener || ([v15 isInstance:getListener] & 1) != 0)
            {
              continue;
            }
          }

          JreThrowClassCastException();
        }

        if (!getListener)
        {
          goto LABEL_25;
        }

        [getListener propertyChangeWithJavaBeansPropertyChangeEvent:{event, v16}];
LABEL_21:
        ;
      }

      v10 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaBeansPropertyChangeSupport;
  [(JavaBeansPropertyChangeSupport *)&v3 dealloc];
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    v5 = NSObject_class_(v3, v4);
    v11 = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"source", v5);
    v7 = NSObject_class_(v11, v6);
    v8 = [IOSClass intClass:v11];
    v12 = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"propertyChangeSupportSerializedDataVersion", v8);
    v10 = [IOSObjectArray newArrayWithObjects:&v11 count:3 type:JavaIoObjectStreamField_class_(v12, v9)];
    JreStrongAssignAndConsume(&qword_100554E20, v10);
    atomic_store(1u, &JavaBeansPropertyChangeSupport__initialized);
  }
}

@end