@interface AXSSKeyChord
+ (id)keyChordWithKeys:(id)keys;
+ (id)keyChordWithString:(id)string;
+ (id)keyFromKeyCode:(unint64_t)code unicodeCharacter:(id)character;
+ (id)nullKeyChord;
- (AXSSKeyChord)initWithCoder:(id)coder;
- (BOOL)containsModifier;
- (BOOL)isArrowKeyChord;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToKeyChord:(id)chord;
- (BOOL)isFunctionKeyChord;
- (BOOL)isNull;
- (BOOL)isTextInputChord;
- (BOOL)isTextInputTabChord;
- (NSArray)orderedKeys;
- (id)_displayValueWithSortedModifiers:(id)modifiers isUSKeyboard:(BOOL)keyboard;
- (id)_initWithKeys:(id)keys;
- (id)_normalizeKeys:(id)keys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)displayValueWithStyle:(int64_t)style isUSKeyboard:(BOOL)keyboard;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXSSKeyChord

+ (id)keyChordWithKeys:(id)keys
{
  keysCopy = keys;
  v5 = [[self alloc] _initWithKeys:keysCopy];

  return v5;
}

+ (id)keyChordWithString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy isEqualToString:@"_"];
  v6 = [self alloc];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 _initWithKeys:&unk_1F40664F8];
  }

  else
  {
    v9 = [stringCopy componentsSeparatedByString:@"_"];
    v8 = [v7 _initWithKeys:v9];
  }

  return v8;
}

+ (id)nullKeyChord
{
  v2 = [self alloc];
  v3 = [v2 _initWithKeys:MEMORY[0x1E695E0F0]];

  return v3;
}

+ (id)keyFromKeyCode:(unint64_t)code unicodeCharacter:(id)character
{
  characterCopy = character;
  if (code - 40 > 0x30)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E8134B58[code - 40];
  }

  if ([(__CFString *)v6 length]|| (v6 = characterCopy, [(__CFString *)v6 length]== 1))
  {
    v7 = v6;
    v6 = v7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_initWithKeys:(id)keys
{
  keysCopy = keys;
  v9.receiver = self;
  v9.super_class = AXSSKeyChord;
  v5 = [(AXSSKeyChord *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(AXSSKeyChord *)v5 _normalizeKeys:keysCopy];
    [(AXSSKeyChord *)v6 setKeys:v7];
  }

  return v6;
}

- (id)_normalizeKeys:(id)keys
{
  v24 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  uppercaseLetterCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if (-[__CFString length](v11, "length", v19) == 1 && [uppercaseLetterCharacterSet characterIsMember:{-[__CFString characterAtIndex:](v11, "characterAtIndex:", 0)}])
        {
          lowercaseString = [(__CFString *)v11 lowercaseString];
          [array addObject:lowercaseString];

          if ([array containsObject:@"⇧"])
          {
            continue;
          }

          v13 = array;
          v14 = @"⇧";
        }

        else
        {
          v13 = array;
          v14 = v11;
        }

        [v13 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = [array sortedArrayUsingSelector:sel_compare_];
  reverseObjectEnumerator = [v15 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

- (AXSSKeyChord)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"keys"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          selfCopy = 0;
          goto LABEL_11;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  self = [(AXSSKeyChord *)self _initWithKeys:v9];
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  keys = [(AXSSKeyChord *)self keys];
  [coderCopy encodeObject:keys forKey:@"keys"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  keys = [(AXSSKeyChord *)self keys];
  v7 = [keys componentsJoinedByString:{@", "}];
  v8 = [v3 stringWithFormat:@"%@<%p>: keys:[%@]", v5, self, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSSKeyChord *)self isEqualToKeyChord:equalCopy];

  return v5;
}

- (BOOL)isEqualToKeyChord:(id)chord
{
  chordCopy = chord;
  keys = [(AXSSKeyChord *)self keys];
  keys2 = [chordCopy keys];

  LOBYTE(chordCopy) = [keys isEqualToArray:keys2];
  return chordCopy;
}

- (unint64_t)hash
{
  keys = [(AXSSKeyChord *)self keys];
  v3 = [keys hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  keys = [(AXSSKeyChord *)self keys];
  v4 = [AXSSKeyChord keyChordWithKeys:keys];

  return v4;
}

- (NSArray)orderedKeys
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  keys = [(AXSSKeyChord *)self keys];
  v5 = [keys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v15 = 0;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(keys);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 isEqualToString:@"⇥"];
        v12 = [&unk_1F4066510 containsObject:v10];
        if (v11)
        {
          v7 = 1;
        }

        else if (v12)
        {
          [v3 insertObject:v10 atIndex:0];
        }

        else
        {
          [v3 addObject:v10];
          v15 = 1;
        }
      }

      v6 = [keys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);

    if (v7 & v15)
    {
      [v3 insertObject:@"⇥" atIndex:0];
    }

    if (((v7 ^ 1 | v15) & 1) == 0)
    {
      [v3 addObject:@"⇥"];
    }
  }

  else
  {
  }

  v13 = [v3 copy];

  return v13;
}

- (BOOL)isFunctionKeyChord
{
  v18 = *MEMORY[0x1E69E9840];
  cachedIsFunctionKey = self->_cachedIsFunctionKey;
  if (cachedIsFunctionKey)
  {

    return [(NSNumber *)cachedIsFunctionKey BOOLValue];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    keys = [(AXSSKeyChord *)self keys];
    v6 = [keys countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(keys);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 isEqualToString:@"Fn"] & 1) != 0 || (objc_msgSend(&unk_1F4066528, "containsObject:", v10))
          {
            v12 = self->_cachedIsFunctionKey;
            self->_cachedIsFunctionKey = MEMORY[0x1E695E118];

            return 1;
          }
        }

        v7 = [keys countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = self->_cachedIsFunctionKey;
    self->_cachedIsFunctionKey = MEMORY[0x1E695E110];

    return 0;
  }
}

- (BOOL)containsModifier
{
  v17 = *MEMORY[0x1E69E9840];
  cachedContainsModifier = self->_cachedContainsModifier;
  if (cachedContainsModifier)
  {

    return [(NSNumber *)cachedContainsModifier BOOLValue];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    keys = [(AXSSKeyChord *)self keys];
    v6 = [keys countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(keys);
          }

          if ([&unk_1F4066540 containsObject:*(*(&v12 + 1) + 8 * v9)])
          {
            v11 = self->_cachedContainsModifier;
            self->_cachedContainsModifier = MEMORY[0x1E695E118];

            return 1;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [keys countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = self->_cachedContainsModifier;
    self->_cachedContainsModifier = MEMORY[0x1E695E110];

    return 0;
  }
}

- (BOOL)isTextInputChord
{
  if (isTextInputChord_onceToken != -1)
  {
    [AXSSKeyChord isTextInputChord];
  }

  if ([(AXSSKeyChord *)self isTextInputTabChord]|| [(AXSSKeyChord *)self isArrowKeyChord]|| [(AXSSKeyChord *)self isEqualToKeyChord:isTextInputChord_spaceChord])
  {
    return 1;
  }

  v4 = isTextInputChord_returnChord;

  return [(AXSSKeyChord *)self isEqualToKeyChord:v4];
}

uint64_t __32__AXSSKeyChord_isTextInputChord__block_invoke()
{
  v0 = [AXSSKeyChord keyChordWithKeys:&unk_1F4066558];
  v1 = isTextInputChord_spaceChord;
  isTextInputChord_spaceChord = v0;

  isTextInputChord_returnChord = [AXSSKeyChord keyChordWithKeys:&unk_1F4066570];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isArrowKeyChord
{
  keys = [(AXSSKeyChord *)self keys];
  v3 = [keys ax_filteredArrayUsingBlock:&__block_literal_global_178];
  v4 = [v3 count] != 0;

  return v4;
}

uint64_t __31__AXSSKeyChord_isArrowKeyChord__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"↑"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"↓") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"←"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"→"];
  }

  return v3;
}

- (BOOL)isTextInputTabChord
{
  if (isTextInputTabChord_onceToken != -1)
  {
    [AXSSKeyChord isTextInputTabChord];
  }

  if ([(AXSSKeyChord *)self isEqualToKeyChord:isTextInputTabChord_tabChord])
  {
    return 1;
  }

  v4 = isTextInputTabChord_shiftTabChord;

  return [(AXSSKeyChord *)self isEqualToKeyChord:v4];
}

uint64_t __35__AXSSKeyChord_isTextInputTabChord__block_invoke()
{
  v0 = [AXSSKeyChord keyChordWithKeys:&unk_1F4066588];
  v1 = isTextInputTabChord_tabChord;
  isTextInputTabChord_tabChord = v0;

  isTextInputTabChord_shiftTabChord = [AXSSKeyChord keyChordWithKeys:&unk_1F40665A0];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isNull
{
  keys = [(AXSSKeyChord *)self keys];
  v3 = [keys count] == 0;

  return v3;
}

- (id)displayValueWithStyle:(int64_t)style isUSKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  if (style == 1)
  {
    keys = [(AXSSKeyChord *)self keys];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__AXSSKeyChord_displayValueWithStyle_isUSKeyboard___block_invoke;
    v11[3] = &unk_1E8134AE8;
    v12 = &unk_1F40665B8;
    v7 = [keys indexOfObjectPassingTest:v11];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = &unk_1F40665D0;
    }

    else
    {
      v8 = &unk_1F40665B8;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [(AXSSKeyChord *)self _displayValueWithSortedModifiers:v8 isUSKeyboard:keyboardCopy];

  return v9;
}

- (id)_displayValueWithSortedModifiers:(id)modifiers isUSKeyboard:(BOOL)keyboard
{
  modifiersCopy = modifiers;
  keys = [(AXSSKeyChord *)self keys];
  if (modifiersCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke;
    v17[3] = &unk_1E8134B10;
    v18 = modifiersCopy;
    v8 = [keys sortedArrayWithOptions:16 usingComparator:v17];

    keys = v8;
  }

  letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke_2;
  v14[3] = &unk_1E8134B38;
  keyboardCopy = keyboard;
  v15 = letterCharacterSet;
  v10 = letterCharacterSet;
  v11 = [keys ax_mappedArrayUsingBlock:v14];
  v12 = [v11 componentsJoinedByString:@" "];

  return v12;
}

uint64_t __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 indexOfObject:a2];
  v8 = [*(a1 + 32) indexOfObject:v6];

  if (v7 == v8)
  {
    return 0;
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if (v7 < v8)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  else
  {
    return v10;
  }
}

id __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 axss_keyChordKeyDisplayValueForUSKeyboard:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;
    if ([v4 length] == 1 && objc_msgSend(*(a1 + 32), "characterIsMember:", objc_msgSend(v5, "characterAtIndex:", 0)))
    {
      v6 = [v5 uppercaseStringWithLocale:0];

      v5 = v6;
    }
  }

  else
  {
    v7 = FKALogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke_2_cold_1(v3, v7);
    }

    v5 = v3;
  }

  return v5;
}

void __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "Error getting value from key %@", &v2, 0xCu);
}

@end