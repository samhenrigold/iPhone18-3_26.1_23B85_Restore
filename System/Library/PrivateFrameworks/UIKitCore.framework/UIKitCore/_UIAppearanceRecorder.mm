@interface _UIAppearanceRecorder
+ (id)_sharedAppearanceRecorder;
+ (id)_sharedAppearanceRecorderForClass:(Class)class whenContainedIn:(id)in;
+ (id)_sharedAppearanceRecorderForClassNamed:(id)named superclass:(Class)superclass whenContainedIn:(id)in;
- (NSData)_serializedRepresentation;
- (_UIAppearanceRecorder)initWithSerializedRepresentation:(id)representation;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_applyCustomizations;
- (void)_importCustomizations:(id)customizations withArchiveVersion:(int64_t)version;
- (void)_recordInvocation:(id)invocation withClassName:(id)name containerClassNames:(id)names traitCollection:(id)collection selectorString:(id)string forRemoteProcess:(BOOL)process;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _UIAppearanceRecorder

- (void)_importCustomizations:(id)customizations withArchiveVersion:(int64_t)version
{
  if (version == 1)
  {
    self->_unarchivedCustomizations = customizations;
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] currentHandler];
  }
}

- (_UIAppearanceRecorder)initWithSerializedRepresentation:(id)representation
{
  v10.receiver = self;
  v10.super_class = _UIAppearanceRecorder;
  v5 = [(_UIAppearanceRecorder *)&v10 init];
  if (v5)
  {
    if (representation)
    {
      v9 = 0;
      v6 = [MEMORY[0x1E696AE40] propertyListWithData:representation options:0 format:0 error:&v9];
      if (!v6)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v5 file:@"UIAppearance.m" lineNumber:2165 description:{@"Encountered error attempting to deserialize customizations: %@", objc_msgSend(v9, "localizedDescription")}];
      }

      if ([objc_msgSend(v6 objectForKey:{@"_UIARAVersionKey", "integerValue"}] == 1)
      {
        -[_UIAppearanceRecorder _importCustomizations:withArchiveVersion:](v5, "_importCustomizations:withArchiveVersion:", [v6 objectForKey:@"_UIARACustomizationsKey"], 1);
      }
    }

    else
    {
      v5->_customizations = objc_alloc_init(MEMORY[0x1E695DF70]);
    }
  }

  return v5;
}

+ (id)_sharedAppearanceRecorder
{
  v3 = _sharedAppearanceRecorder_sharedAppearance;
  if (!_sharedAppearanceRecorder_sharedAppearance)
  {
    v3 = objc_alloc_init(self);
    _sharedAppearanceRecorder_sharedAppearance = v3;
  }

  [v3 _setClassNameToRecord:0];
  [_sharedAppearanceRecorder_sharedAppearance _setSuperclassToRecord:0];
  [_sharedAppearanceRecorder_sharedAppearance _setContainerClassNames:0];
  return _sharedAppearanceRecorder_sharedAppearance;
}

+ (id)_sharedAppearanceRecorderForClassNamed:(id)named superclass:(Class)superclass whenContainedIn:(id)in
{
  _sharedAppearanceRecorder = [self _sharedAppearanceRecorder];
  [_sharedAppearanceRecorder _setClassNameToRecord:named];
  [_sharedAppearanceRecorder _setSuperclassToRecord:superclass];
  [_sharedAppearanceRecorder _setContainerClassNames:in];
  return _sharedAppearanceRecorder;
}

+ (id)_sharedAppearanceRecorderForClass:(Class)class whenContainedIn:(id)in
{
  v6 = NSStringFromClass(class);

  return [self _sharedAppearanceRecorderForClassNamed:v6 superclass:0 whenContainedIn:in];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIAppearanceRecorder;
  [(_UIAppearanceRecorder *)&v3 dealloc];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  superclassToRecord = self->_superclassToRecord;
  if (!superclassToRecord)
  {
    superclassToRecord = NSClassFromString(self->_classNameToRecord);
  }

  return [(objc_class *)superclassToRecord instanceMethodSignatureForSelector:selector];
}

- (void)_recordInvocation:(id)invocation withClassName:(id)name containerClassNames:(id)names traitCollection:(id)collection selectorString:(id)string forRemoteProcess:(BOOL)process
{
  processCopy = process;
  selfCopy = self;
  v58 = *MEMORY[0x1E69E9840];
  if (!name)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  stringCopy = string;
  if ([(NSArray *)selfCopy->_unarchivedCustomizations count])
  {
    selfCopy->_customizations = [(NSArray *)selfCopy->_unarchivedCustomizations mutableCopy];

    selfCopy->_unarchivedCustomizations = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  if ([objc_msgSend(invocation "methodSignature")] < 3)
  {
LABEL_96:
    v38 = stringCopy;
    if (!stringCopy)
    {
      v38 = NSStringFromSelector([invocation selector]);
    }

    v39 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{name, @"_UIARACustomizationsClassNameKey", v38, @"_UIARACustomizationsSelectorNameKey", array, @"_UIARACustomizationsArgsKey", 0}];
    v40 = v39;
    if (names)
    {
      [v39 setObject:names forKey:@"_UIARACustomizationsContainerClassNamesKey"];
    }

    if (collection)
    {
      [v40 setObject:objc_msgSend(MEMORY[0x1E696ACC8] forKey:{"archivedDataWithRootObject:requiringSecureCoding:error:", collection, 1, 0), @"_UIARACustomizationsTraitCollectionArchiveKey"}];
    }

    [(NSMutableArray *)selfCopy->_customizations addObject:v40];

    return;
  }

  v13 = 2;
  v46 = array;
  while (1)
  {
    v14 = [objc_msgSend(invocation "methodSignature")];
    v15 = v14;
    v16 = *v14;
    if (v16 == 64 && !v14[1])
    {
      break;
    }

    if (!strcmp(v14, "{CGPoint=dd}"))
    {
      memset(&buf, 0, 16);
      [invocation getArgument:&buf atIndex:v13];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"CGPoint", @"_UIARACustomizationArgsObjCTypeKey", NSStringFromCGPoint(*&buf.top), @"_UIARACustomizationArgsRepresentationKey", 0, v42, v43}];
    }

    else if (!strcmp(v15, "{CGSize=dd}"))
    {
      memset(&buf, 0, 16);
      [invocation getArgument:&buf atIndex:v13];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"CGSize", @"_UIARACustomizationArgsObjCTypeKey", NSStringFromCGSize(*&buf.top), @"_UIARACustomizationArgsRepresentationKey", 0, v42, v43}];
    }

    else if (!strcmp(v15, "{UIOffset=dd}"))
    {
      memset(&buf, 0, 16);
      [invocation getArgument:&buf atIndex:v13];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"UIOffset", @"_UIARACustomizationArgsObjCTypeKey", NSStringFromUIOffset(*&buf.top), @"_UIARACustomizationArgsRepresentationKey", 0, v42, v43}];
    }

    else if (!strcmp(v15, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
    {
      memset(&buf, 0, sizeof(buf));
      [invocation getArgument:&buf atIndex:v13];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"CGRect", @"_UIARACustomizationArgsObjCTypeKey", NSStringFromCGRect(buf), @"_UIARACustomizationArgsRepresentationKey", 0, v42, v43}];
    }

    else if (!strcmp(v15, "{UIEdgeInsets=dddd}"))
    {
      memset(&buf, 0, sizeof(buf));
      [invocation getArgument:&buf atIndex:v13];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"UIEdgeInsets", @"_UIARACustomizationArgsObjCTypeKey", NSStringFromUIEdgeInsets(buf), @"_UIARACustomizationArgsRepresentationKey", 0, v42, v43}];
    }

    else
    {
      if (v16 <= 98)
      {
        if (v16 <= 72)
        {
          if (v16 == 35)
          {
            if (v15[1])
            {
              goto LABEL_104;
            }

            buf.top = 0.0;
            [invocation getArgument:&buf atIndex:v13];
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Class", @"_UIARACustomizationArgsObjCTypeKey", NSStringFromClass(*&buf.top), @"_UIARACustomizationArgsRepresentationKey", 0, v42, v43}];
          }

          else
          {
            if (v16 != 66 || v15[1])
            {
              goto LABEL_104;
            }

            LOBYTE(buf.top) = 0;
            [invocation getArgument:&buf atIndex:v13];
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"BOOL", @"_UIARACustomizationArgsObjCTypeKey", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", LOBYTE(buf.top)), @"_UIARACustomizationArgsRepresentationKey", 0, v42, v43}];
          }

          goto LABEL_47;
        }

        if (v16 == 73)
        {
LABEL_66:
          if (v15[1])
          {
            goto LABEL_104;
          }

          LODWORD(buf.top) = 0;
          [invocation getArgument:&buf atIndex:v13];
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"unsigned int", @"_UIARACustomizationArgsObjCTypeKey", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", LODWORD(buf.top)), @"_UIARACustomizationArgsRepresentationKey", 0, v42, v43}];
          goto LABEL_47;
        }

        if (v16 != 81)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v16 <= 101)
        {
          if (v16 == 99)
          {
            if (v15[1])
            {
              goto LABEL_104;
            }

            LOBYTE(buf.top) = 0;
            [invocation getArgument:&buf atIndex:v13];
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"char", @"_UIARACustomizationArgsObjCTypeKey", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", SLOBYTE(buf.top)), @"_UIARACustomizationArgsRepresentationKey", 0, v42, v43}];
            goto LABEL_47;
          }

          if (v16 != 100)
          {
            goto LABEL_104;
          }

LABEL_64:
          if (v15[1])
          {
            goto LABEL_104;
          }

          buf.top = 0.0;
          [invocation getArgument:&buf atIndex:v13];
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"double", @"_UIARACustomizationArgsObjCTypeKey", objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", buf.top), @"_UIARACustomizationArgsRepresentationKey", 0, v42, v43}];
          goto LABEL_47;
        }

        if (v16 == 102)
        {
          goto LABEL_64;
        }

        if (v16 == 105)
        {
          goto LABEL_66;
        }

        if (v16 != 113)
        {
          goto LABEL_104;
        }
      }

      if (v15[1])
      {
        goto LABEL_104;
      }

      buf.top = 0.0;
      [invocation getArgument:&buf atIndex:v13];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"NSUInteger", @"_UIARACustomizationArgsObjCTypeKey", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", *&buf.top), @"_UIARACustomizationArgsRepresentationKey", 0, v42, v43}];
    }

LABEL_47:
    v17 = v18;
    if (!v18)
    {
      goto LABEL_104;
    }

    [array addObject:v18];
    if (++v13 >= [objc_msgSend(invocation "methodSignature")])
    {
      goto LABEL_96;
    }
  }

  v55 = 0;
  [invocation getArgument:&v55 atIndex:v13];
  if (!v55)
  {
    dictionary = 0;
    v27 = @"_UIARACustomizationArgsHintIsPlistType";
LABEL_46:
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"id", @"_UIARACustomizationArgsObjCTypeKey", v27, @"_UIARACustomizationArgsHintKey", dictionary, @"_UIARACustomizationArgsRepresentationKey", 0}];
    goto LABEL_47;
  }

  v19 = qword_1ED49E628;
  if (!qword_1ED49E628)
  {
    v20 = objc_alloc(MEMORY[0x1E695DEC8]);
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v19 = [v20 initWithObjects:{v21, v22, v23, objc_opt_class(), 0}];
    qword_1ED49E628 = v19;
  }

  if ([v19 count])
  {
    v24 = 1;
    do
    {
      [v19 objectAtIndex:v24 - 1];
      isKindOfClass = objc_opt_isKindOfClass();
      if (v24 >= [v19 count])
      {
        break;
      }

      ++v24;
    }

    while ((isKindOfClass & 1) == 0);
    if (isKindOfClass)
    {
      dictionary = v55;
      v27 = @"_UIARACustomizationArgsHintIsPlistType";
      goto LABEL_31;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = @"_UIARACustomizationArgsHintIsUIImage";
    }

    else
    {
      v27 = @"_UIARACustomizationArgsHintIsUIColor";
    }

    array = v46;
    if (processCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      _serializedData = [v55 _serializedData];
    }

    else
    {
      _serializedData = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v55 requiringSecureCoding:1 error:0];
    }

    dictionary = _serializedData;
    goto LABEL_46;
  }

  objc_opt_class();
  array = v46;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [-[NSArray objectAtIndex:](-[NSString componentsSeparatedByString:](NSStringFromSelector(objc_msgSend(invocation "selector"))] != 0x7FFFFFFFFFFFFFFFLL)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    allKeys = [v55 allKeys];
    v30 = [allKeys countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (!v30)
    {
      v27 = @"_UIARACustomizationArgsHintIsUITextAttribute";
LABEL_31:
      array = v46;
      goto LABEL_46;
    }

    v31 = v30;
    collectionCopy = collection;
    v45 = selfCopy;
    v32 = *v52;
LABEL_74:
    v33 = 0;
    while (1)
    {
      if (*v52 != v32)
      {
        objc_enumerationMutation(allKeys);
      }

      v34 = *(*(&v51 + 1) + 8 * v33);
      if ((objc_msgSend_isEqual_(v34) & 1) != 0 || (objc_msgSend_isEqual_(v34) & 1) != 0 || (objc_msgSend_isEqual_(v34) & 1) != 0 || (objc_msgSend_isEqual_(v34) & 1) != 0 || (objc_msgSend_isEqual_(v34) & 1) != 0 || (objc_msgSend_isEqual_(v34) & 1) != 0 || (objc_msgSend_isEqual_(v34) & 1) != 0 || objc_msgSend_isEqual_(v34))
      {
        v35 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objc_msgSend(v55 requiringSecureCoding:"objectForKey:" error:{v34), 1, 0}];
      }

      else
      {
        if (!objc_msgSend_isEqual_(v34))
        {
          v36 = *(__UILogGetCategoryCachedImpl("Appearance", &qword_1ED49E620) + 8);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.top) = 138412290;
            *(&buf.top + 4) = v34;
            _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "Unknown key, %@ in title text attributes dictionary. Ignoring.", &buf, 0xCu);
          }

          goto LABEL_87;
        }

        [objc_msgSend(v55 objectForKey:{v34), "UIOffsetValue"}];
        v35 = NSStringFromUIOffset(v59);
      }

      [dictionary setObject:v35 forKey:v34];
LABEL_87:
      if (v31 == ++v33)
      {
        v37 = [allKeys countByEnumeratingWithState:&v51 objects:v57 count:16];
        v31 = v37;
        if (!v37)
        {
          v27 = @"_UIARACustomizationArgsHintIsUITextAttribute";
          collection = collectionCopy;
          selfCopy = v45;
          goto LABEL_31;
        }

        goto LABEL_74;
      }
    }
  }

  v17 = 0;
LABEL_104:
  if (!processCopy && !array)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"-[_UIAppearanceRecorder _recordInvocation:withClassName:containerClassNames:traitCollection:selectorString:forRemoteProcess:]") description:{@"UIAppearance.m", 2384, @"Failed to record argument %lu of invocation %@", v13, invocation}];
  }
}

- (void)forwardInvocation:(id)invocation
{
  _classNameToRecord = [(_UIAppearanceRecorder *)self _classNameToRecord];
  containerClassNames = self->_containerClassNames;

  [(_UIAppearanceRecorder *)self _recordInvocation:invocation withClassName:_classNameToRecord containerClassNames:containerClassNames traitCollection:0 selectorString:0 forRemoteProcess:0];
}

- (void)_applyCustomizations
{
  v92 = *MEMORY[0x1E69E9840];
  unarchivedCustomizations = self->_unarchivedCustomizations;
  if (!unarchivedCustomizations)
  {
    unarchivedCustomizations = self->_customizations;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v71 = [(NSMutableArray *)unarchivedCustomizations countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v71)
  {
    v3 = 0x1E695D000uLL;
    v70 = *v80;
    v4 = *MEMORY[0x1E695D940];
    obj = unarchivedCustomizations;
    do
    {
      v5 = 0;
      do
      {
        if (*v80 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v79 + 1) + 8 * v5);
        v7 = [v6 objectForKey:@"_UIARACustomizationsClassNameKey"];
        v8 = NSClassFromString(v7);
        v9 = v8;
        if (v8 && ([(objc_class *)v8 conformsToProtocol:&unk_1EFE41DA8]& 1) == 0)
        {
          [*(v3 + 3888) raise:v4 format:{@"*** Invalid class for appearance customization: %@", v9}];
        }

        v10 = [v6 objectForKey:@"_UIARACustomizationsSelectorNameKey"];
        v73 = v6;
        v11 = NSSelectorFromString([v6 objectForKey:@"_UIARACustomizationsSelectorNameKey"]);
        if (v9)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = v11;
          if ([(objc_class *)v9 instancesRespondToSelector:v11])
          {
            if (os_variant_has_internal_diagnostics())
            {
              v60 = *(__UILogGetCategoryCachedImpl("AppearanceRecorderSecurity", &qword_1ED49E630) + 8);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf.origin.x) = 138543618;
                *(&buf.origin.x + 4) = v7;
                WORD2(buf.origin.y) = 2114;
                *(&buf.origin.y + 6) = v10;
                _os_log_impl(&dword_188A29000, v60, OS_LOG_TYPE_DEFAULT, "Appearance Recorder is checking untrusted customization, [%{public}@ %{public}@]", &buf, 0x16u);
              }
            }

            v68 = v9;
            v14 = [(objc_class *)v9 instanceMethodSignatureForSelector:v13];
            v72 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v14];
            [v72 setSelector:v13];
            numberOfArguments = [v14 numberOfArguments];
            if (numberOfArguments <= 2)
            {
              [*(v3 + 3888) raise:v4 format:{@"*** Invalid selector for appearance customization: %@", NSStringFromSelector(v13)}];
            }

            v15 = [v73 objectForKey:@"_UIARACustomizationsArgsKey"];
            if ([v15 count] != numberOfArguments - 2)
            {
              [*(v3 + 3888) raise:v4 format:@"*** Number of arguments in appearance customization data does not match method signature"];
            }

            v16 = [v14 getArgumentTypeAtIndex:2];
            v17 = [v15 objectAtIndexedSubscript:0];
            v18 = [v17 objectForKey:@"_UIARACustomizationArgsObjCTypeKey"];
            if (os_variant_has_internal_diagnostics())
            {
              v61 = *(__UILogGetCategoryCachedImpl("AppearanceRecorderSecurity", &qword_1ED49E638) + 8);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf.origin.x) = 138543618;
                *(&buf.origin.x + 4) = v18;
                WORD2(buf.origin.y) = 2082;
                *(&buf.origin.y + 6) = v16;
                _os_log_impl(&dword_188A29000, v61, OS_LOG_TYPE_DEFAULT, "Appearance Recorder is checking the third argument type, %{public}@, for expected property type, %{public}s", &buf, 0x16u);
              }
            }

            v19 = *v16;
            if (v19 > 0x63)
            {
              if (*v16 <= 0x68u)
              {
                if ((v19 == 100 || v19 == 102) && !v16[1])
                {
                  v20 = @"double";
                  if (objc_msgSend_isEqualToString_(v18))
                  {
                    [objc_msgSend(v17 objectForKey:{@"_UIARACustomizationArgsRepresentationKey", "doubleValue"}];
                    buf.origin.x = v21;
                    goto LABEL_62;
                  }

LABEL_76:
                  [MEMORY[0x1E695DF30] raise:v4 format:{@"*** Property type for appearance customization data (%@) does not match method signature. Expected %@", v18, v20}];
                  goto LABEL_77;
                }

                goto LABEL_44;
              }

              if (v19 != 105)
              {
                if (v19 != 113)
                {
                  goto LABEL_44;
                }

LABEL_35:
                if (!v16[1])
                {
                  v20 = @"NSUInteger";
                  if (!objc_msgSend_isEqualToString_(v18))
                  {
                    goto LABEL_76;
                  }

                  v22 = [objc_msgSend(v17 objectForKey:{@"_UIARACustomizationArgsRepresentationKey", "unsignedIntegerValue"}];
                  goto LABEL_38;
                }

LABEL_44:
                if (!strcmp(v16, "{CGPoint=dd}"))
                {
                  v20 = @"CGPoint";
                  if (!objc_msgSend_isEqualToString_(v18))
                  {
                    goto LABEL_76;
                  }

                  v26 = CGPointFromString([v17 objectForKey:@"_UIARACustomizationArgsRepresentationKey"]);
                  y = v26.y;
                  x = v26.x;
                }

                else if (!strcmp(v16, "{CGSize=dd}"))
                {
                  v20 = @"CGSize";
                  if (!objc_msgSend_isEqualToString_(v18))
                  {
                    goto LABEL_76;
                  }

                  v27 = CGSizeFromString([v17 objectForKey:@"_UIARACustomizationArgsRepresentationKey"]);
                  y = v27.height;
                  x = v27.width;
                }

                else
                {
                  if (strcmp(v16, "{UIOffset=dd}"))
                  {
                    if (!strcmp(v16, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
                    {
                      v20 = @"CGRect";
                      if (!objc_msgSend_isEqualToString_(v18))
                      {
                        goto LABEL_76;
                      }

                      v93 = CGRectFromString([v17 objectForKey:@"_UIARACustomizationArgsRepresentationKey"]);
                    }

                    else
                    {
                      if (strcmp(v16, "{UIEdgeInsets=dddd}"))
                      {
                        if (v19 != 35)
                        {
                          if (v19 != 99)
                          {
                            if (v19 == 66 && !v16[1])
                            {
                              v20 = @"BOOL";
                              if (objc_msgSend_isEqualToString_(v18))
                              {
                                LOBYTE(buf.origin.x) = [objc_msgSend(v17 objectForKey:{@"_UIARACustomizationArgsRepresentationKey", "BOOLValue"}];
                                goto LABEL_62;
                              }

                              goto LABEL_76;
                            }

LABEL_75:
                            [MEMORY[0x1E695DF30] raise:v4 format:{@"*** Invalid property type, %s, for appearance customization: %@", v16, NSStringFromSelector(v13)}];
                            v20 = 0;
                            goto LABEL_76;
                          }

                          if (v16[1])
                          {
                            goto LABEL_75;
                          }

                          v20 = @"char";
                          isEqualToString = objc_msgSend_isEqualToString_(v18);
LABEL_41:
                          if (isEqualToString)
                          {
                            LODWORD(buf.origin.x) = [objc_msgSend(v17 objectForKey:{@"_UIARACustomizationArgsRepresentationKey", "unsignedIntValue"}];
                            goto LABEL_62;
                          }

                          goto LABEL_76;
                        }

                        if (v16[1])
                        {
                          goto LABEL_75;
                        }

                        v20 = @"Class";
                        if (!objc_msgSend_isEqualToString_(v18))
                        {
                          goto LABEL_76;
                        }

                        v22 = NSClassFromString([v17 objectForKey:@"_UIARACustomizationArgsRepresentationKey"]);
LABEL_38:
                        *&buf.origin.x = v22;
                        goto LABEL_62;
                      }

                      v20 = @"UIEdgeInsets";
                      if (!objc_msgSend_isEqualToString_(v18))
                      {
                        goto LABEL_76;
                      }

                      v93 = UIEdgeInsetsFromString([v17 objectForKey:@"_UIARACustomizationArgsRepresentationKey"]);
                    }

                    buf = v93;
                    goto LABEL_62;
                  }

                  v20 = @"UIOffset";
                  if (!objc_msgSend_isEqualToString_(v18))
                  {
                    goto LABEL_76;
                  }

                  v28 = UIOffsetFromString([v17 objectForKey:@"_UIARACustomizationArgsRepresentationKey"]);
                  y = v28.vertical;
                  x = v28.horizontal;
                }

                buf.origin.x = x;
                buf.origin.y = y;
                goto LABEL_62;
              }

              goto LABEL_39;
            }

            if (v19 != 64)
            {
              if (v19 != 73)
              {
                if (v19 != 81)
                {
                  goto LABEL_44;
                }

                goto LABEL_35;
              }

LABEL_39:
              if (!v16[1])
              {
                v20 = @"unsigned int";
                isEqualToString = objc_msgSend_isEqualToString_(v18);
                goto LABEL_41;
              }

              goto LABEL_44;
            }

            if (v16[1])
            {
              goto LABEL_44;
            }

            v20 = @"id";
            if (!objc_msgSend_isEqualToString_(v18))
            {
              goto LABEL_76;
            }

            v29 = [v17 objectForKey:@"_UIARACustomizationArgsHintKey"];
            if (os_variant_has_internal_diagnostics())
            {
              v62 = *(__UILogGetCategoryCachedImpl("AppearanceRecorderSecurity", &qword_1ED49E640) + 8);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf.origin.x) = 138543362;
                *(&buf.origin.x + 4) = v29;
                _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_DEFAULT, "Appearance Recorder is checking the hint for a third-argument type of id, %{public}@]", &buf, 0xCu);
              }
            }

            if (objc_msgSend_isEqual_(v29))
            {
              v30 = [v17 objectForKey:@"_UIARACustomizationArgsRepresentationKey"];
              goto LABEL_125;
            }

            if ((objc_msgSend_isEqual_(v29) & 1) != 0 || objc_msgSend_isEqual_(v29))
            {
              objc_msgSend_isEqual_(v29);
              v30 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:objc_msgSend(v17 error:{"objectForKey:", @"_UIARACustomizationArgsRepresentationKey", 0}];
              goto LABEL_125;
            }

            if (objc_msgSend_isEqual_(v29))
            {
              v51 = [v17 objectForKey:@"_UIARACustomizationArgsRepresentationKey"];
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              v66 = v51;
              v84 = 0u;
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              allKeys = [v51 allKeys];
              v52 = [allKeys countByEnumeratingWithState:&v84 objects:v91 count:16];
              if (!v52)
              {
                goto LABEL_152;
              }

              v53 = v52;
              v67 = *v85;
              while (1)
              {
                v54 = 0;
                do
                {
                  if (*v85 != v67)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v55 = *(*(&v84 + 1) + 8 * v54);
                  if ((objc_msgSend_isEqual_(v55) & 1) != 0 || (objc_msgSend_isEqual_(v55) & 1) != 0 || (objc_msgSend_isEqual_(v55) & 1) != 0 || (objc_msgSend_isEqual_(v55) & 1) != 0 || (objc_msgSend_isEqual_(v55) & 1) != 0 || (objc_msgSend_isEqual_(v55) & 1) != 0 || (objc_msgSend_isEqual_(v55) & 1) != 0 || objc_msgSend_isEqual_(v55))
                  {
                    v56 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:objc_msgSend(v66 error:{"objectForKey:", v55), 0}];
                    if (!v56)
                    {
                      goto LABEL_140;
                    }

                    goto LABEL_139;
                  }

                  if (objc_msgSend_isEqual_(v55))
                  {
                    v57 = MEMORY[0x1E696B098];
                    v83 = UIOffsetFromString([v66 objectForKey:v55]);
                    v56 = [v57 valueWithBytes:&v83 objCType:"{UIOffset=dd}"];
LABEL_139:
                    [dictionary setObject:v56 forKey:v55];
                    goto LABEL_140;
                  }

                  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                  [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSInvocation *_invocationFromCustomizationRaiseForUnexpectedData(NSDictionary * description:{Class *)"), @"UIAppearance.m", 2521, @"Unknown key, %@ in title text attributes dictionary", v55}];
LABEL_140:
                  ++v54;
                }

                while (v53 != v54);
                v59 = [allKeys countByEnumeratingWithState:&v84 objects:v91 count:16];
                v53 = v59;
                if (!v59)
                {
LABEL_152:
                  v30 = dictionary;
LABEL_125:
                  *&buf.origin.x = v30;
                  if (!v30)
                  {
                    break;
                  }

LABEL_62:
                  [v72 setArgument:&buf atIndex:2];
                  break;
                }
              }
            }

LABEL_77:
            if (numberOfArguments >= 4)
            {
              for (i = 3; numberOfArguments != i; ++i)
              {
                v32 = [v14 getArgumentTypeAtIndex:i];
                v33 = [v15 objectAtIndexedSubscript:i - 2];
                v34 = [v33 objectForKey:@"_UIARACustomizationArgsObjCTypeKey"];
                if (os_variant_has_internal_diagnostics())
                {
                  v37 = *(__UILogGetCategoryCachedImpl("AppearanceRecorderSecurity", &qword_1ED49E648) + 8);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf.origin.x) = 134218498;
                    *(&buf.origin.x + 4) = i + 1;
                    WORD2(buf.origin.y) = 2114;
                    *(&buf.origin.y + 6) = v34;
                    HIWORD(buf.size.width) = 2082;
                    *&buf.size.height = v32;
                    _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_DEFAULT, "Appearance Recorder is checking the %luth argument type, %{public}@, for expected property type, %{public}s", &buf, 0x20u);
                  }
                }

                v35 = (((*v32 - 73) >> 3) | (32 * (*v32 - 73)));
                if (v35 > 3)
                {
                  if (v35 != 4)
                  {
                    if (v35 != 5)
                    {
                      goto LABEL_90;
                    }

                    goto LABEL_86;
                  }
                }

                else if (((*v32 - 73) >> 3) | (32 * (*v32 - 73)))
                {
                  if (v35 != 1)
                  {
                    goto LABEL_90;
                  }

LABEL_86:
                  if (v32[1])
                  {
                    goto LABEL_90;
                  }

                  v36 = 0x1E695D000;
                  if (objc_msgSend_isEqualToString_(v34))
                  {
                    *&buf.origin.x = [objc_msgSend(v33 objectForKey:{@"_UIARACustomizationArgsRepresentationKey", "unsignedIntegerValue"}];
LABEL_96:
                    [v72 setArgument:&buf atIndex:i];
                    continue;
                  }

                  goto LABEL_91;
                }

                if (v32[1])
                {
LABEL_90:
                  v36 = 0x1E695D000uLL;
                  [MEMORY[0x1E695DF30] raise:v4 format:{@"*** Invalid axis type, %s, for appearance customization, %@", v32, NSStringFromSelector(v13)}];
                  goto LABEL_91;
                }

                v36 = 0x1E695D000;
                if (objc_msgSend_isEqualToString_(v34))
                {
                  LODWORD(buf.origin.x) = [objc_msgSend(v33 objectForKey:{@"_UIARACustomizationArgsRepresentationKey", "unsignedIntValue"}];
                  goto LABEL_96;
                }

LABEL_91:
                [*(v36 + 3888) raise:v4 format:{@"*** Axis type, %s, for appearance customization data is not integer", v32}];
              }
            }

            v3 = 0x1E695D000;
            if (v72)
            {
              v38 = [v73 objectForKey:@"_UIARACustomizationsContainerClassNamesKey"];
              v39 = [v73 objectForKey:@"_UIARACustomizationsTraitCollectionArchiveKey"];
              if (v39)
              {
                v40 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v39 error:0];
                v41 = [v38 count];
                v42 = v68;
                if (!v41)
                {
                  if (v40)
                  {
                    appearance = [(objc_class *)v68 appearanceForTraitCollection:v40];
                  }

                  else
                  {
LABEL_116:
                    appearance = [(objc_class *)v42 appearance];
                  }

LABEL_118:
                  if (appearance)
                  {
                    [v72 invokeWithTarget:appearance];
                  }

                  goto LABEL_120;
                }
              }

              else
              {
                v44 = [v38 count];
                v42 = v68;
                if (!v44)
                {
                  goto LABEL_116;
                }

                v40 = 0;
              }

              array = [MEMORY[0x1E695DF70] array];
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              v46 = [v38 countByEnumeratingWithState:&v75 objects:v88 count:16];
              if (!v46)
              {
LABEL_114:
                if (v40)
                {
                  appearance = [_UITraitBasedAppearance _appearanceForTraitCollection:v40 forClass:v68 withContainerList:array];
                }

                else
                {
                  appearance = [(objc_class *)v68 _appearanceWhenContainedIn:array];
                }

                goto LABEL_118;
              }

              v47 = v46;
              v48 = *v76;
LABEL_108:
              v49 = 0;
              while (1)
              {
                if (*v76 != v48)
                {
                  objc_enumerationMutation(v38);
                }

                v50 = NSClassFromString(*(*(&v75 + 1) + 8 * v49));
                if (!v50)
                {
                  break;
                }

                [array addObject:v50];
                if (v47 == ++v49)
                {
                  v47 = [v38 countByEnumeratingWithState:&v75 objects:v88 count:16];
                  if (v47)
                  {
                    goto LABEL_108;
                  }

                  goto LABEL_114;
                }
              }
            }
          }
        }

LABEL_120:
        ++v5;
      }

      while (v5 != v71);
      v63 = [(NSMutableArray *)obj countByEnumeratingWithState:&v79 objects:v89 count:16];
      v71 = v63;
    }

    while (v63);
  }
}

- (NSData)_serializedRepresentation
{
  v8 = 0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 1), @"_UIARAVersionKey", self->_customizations, @"_UIARACustomizationsKey", 0}];
  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v8];
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIAppearance.m" lineNumber:2725 description:{@"Encountered error attempting to serialize customizations: %@", objc_msgSend(v8, "localizedDescription")}];
  }

  return v5;
}

@end