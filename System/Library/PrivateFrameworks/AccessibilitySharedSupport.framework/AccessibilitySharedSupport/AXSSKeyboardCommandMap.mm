@interface AXSSKeyboardCommandMap
- (AXSSKeyboardCommandMap)commandMapWithKeyChord:(id)chord forCommand:(id)command;
- (AXSSKeyboardCommandMap)initWithCoder:(id)coder;
- (BOOL)_isAvailableCommand:(id)command;
- (BOOL)_validateCommandsToKeyChords:(id)chords;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCommandMap:(id)map;
- (id)_initWithCommandsToKeyChordsDictionary:(id)dictionary;
- (id)addCommandsForTransientKeyChords:(id)chords;
- (id)commandForKeyChord:(id)chord;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyChordForCommand:(id)command;
- (unint64_t)hash;
- (void)_initializeDictionariesIfNeeded;
- (void)encodeWithCoder:(id)coder;
- (void)removeTransientKeyChordsForIdentifier:(id)identifier;
@end

@implementation AXSSKeyboardCommandMap

- (id)_initWithCommandsToKeyChordsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = AXSSKeyboardCommandMap;
  v6 = [(AXSSKeyboardCommandMap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefinedCommandsToKeyChords, dictionary);
  }

  return v7;
}

- (AXSSKeyboardCommandMap)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"commandsToKeyChords"];

  if (v9 && ![(AXSSKeyboardCommandMap *)self _validateCommandsToKeyChords:v9])
  {
    v10 = FKALogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AXSSKeyboardCommandMap *)v9 initWithCoder:v10];
    }

    v9 = 0;
  }

  v11 = [(AXSSKeyboardCommandMap *)self _initWithCommandsToKeyChordsDictionary:v9];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userDefinedCommandsToKeyChords = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
  [coderCopy encodeObject:userDefinedCommandsToKeyChords forKey:@"commandsToKeyChords"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  userDefinedCommandsToKeyChords = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
  v6 = v4[4];
  v4[4] = userDefinedCommandsToKeyChords;

  availableCommands = [(AXSSKeyboardCommandMap *)self availableCommands];
  v8 = v4[1];
  v4[1] = availableCommands;

  transientCommands = [(AXSSKeyboardCommandMap *)self transientCommands];
  v10 = [transientCommands copy];
  v11 = v4[5];
  v4[5] = v10;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSSKeyboardCommandMap *)self isEqualToCommandMap:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  userDefinedCommandsToKeyChords = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
  v3 = [userDefinedCommandsToKeyChords hash];

  return v3;
}

- (BOOL)isEqualToCommandMap:(id)map
{
  mapCopy = map;
  userDefinedCommandsToKeyChords = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
  userDefinedCommandsToKeyChords2 = [mapCopy userDefinedCommandsToKeyChords];
  if (userDefinedCommandsToKeyChords == userDefinedCommandsToKeyChords2)
  {
    v9 = 1;
  }

  else
  {
    userDefinedCommandsToKeyChords3 = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
    userDefinedCommandsToKeyChords4 = [mapCopy userDefinedCommandsToKeyChords];
    v9 = [userDefinedCommandsToKeyChords3 isEqualToDictionary:userDefinedCommandsToKeyChords4];
  }

  return v9;
}

- (BOOL)_validateCommandsToKeyChords:(id)chords
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  chordsCopy = chords;
  v4 = [chordsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(chordsCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [chordsCopy objectForKeyedSubscript:{v8, v13}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            continue;
          }
        }

        v11 = 0;
        goto LABEL_13;
      }

      v5 = [chordsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_13:

  return v11;
}

- (BOOL)_isAvailableCommand:(id)command
{
  commandCopy = command;
  availableCommands = [(AXSSKeyboardCommandMap *)self availableCommands];
  if (availableCommands)
  {
    availableCommands2 = [(AXSSKeyboardCommandMap *)self availableCommands];
    v7 = [availableCommands2 containsObject:commandCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_initializeDictionariesIfNeeded
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "Error loading default keyboard commands: %@", &v2, 0xCu);
}

- (id)commandForKeyChord:(id)chord
{
  v23 = *MEMORY[0x1E69E9840];
  chordCopy = chord;
  if ([chordCopy isNull])
  {
    goto LABEL_2;
  }

  [(AXSSKeyboardCommandMap *)self _initializeDictionariesIfNeeded];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  transientCommands = [(AXSSKeyboardCommandMap *)self transientCommands];
  v7 = [transientCommands countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(transientCommands);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        transientCommands2 = [(AXSSKeyboardCommandMap *)self transientCommands];
        v13 = [transientCommands2 objectForKeyedSubscript:v11];
        v5 = [v13 objectForKeyedSubscript:chordCopy];

        if (v5)
        {

          goto LABEL_15;
        }
      }

      v8 = [transientCommands countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  keyChordsToCommands = [(AXSSKeyboardCommandMap *)self keyChordsToCommands];
  v5 = [keyChordsToCommands objectForKeyedSubscript:chordCopy];

  if (!v5)
  {
    keys = [chordCopy keys];
    v16 = [keys containsObject:@"⎋"];

    if (!v16)
    {
LABEL_2:
      v5 = 0;
      goto LABEL_15;
    }

    v5 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:@"Escape"];
  }

LABEL_15:

  return v5;
}

- (id)keyChordForCommand:(id)command
{
  commandCopy = command;
  [(AXSSKeyboardCommandMap *)self _initializeDictionariesIfNeeded];
  commandsToArraysOfKeyChords = [(AXSSKeyboardCommandMap *)self commandsToArraysOfKeyChords];
  v6 = [commandsToArraysOfKeyChords objectForKeyedSubscript:commandCopy];

  if ([v6 count] == 1 && (objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isNull"), v7, (v8 & 1) != 0))
  {
    firstObject = 0;
  }

  else
  {
    firstObject = [v6 firstObject];
  }

  return firstObject;
}

- (AXSSKeyboardCommandMap)commandMapWithKeyChord:(id)chord forCommand:(id)command
{
  chordCopy = chord;
  commandCopy = command;
  userDefinedCommandsToKeyChords = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
  dictionary = [userDefinedCommandsToKeyChords mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  if (commandCopy)
  {
    [dictionary setObject:chordCopy forKeyedSubscript:commandCopy];
  }

  v10 = [objc_alloc(objc_opt_class()) _initWithCommandsToKeyChordsDictionary:dictionary];
  availableCommands = [(AXSSKeyboardCommandMap *)self availableCommands];
  [v10 setAvailableCommands:availableCommands];

  return v10;
}

- (id)addCommandsForTransientKeyChords:(id)chords
{
  chordsCopy = chords;
  if (!self->_transientCommands)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    transientCommands = self->_transientCommands;
    self->_transientCommands = dictionary;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  transientCommands = [(AXSSKeyboardCommandMap *)self transientCommands];
  [transientCommands setObject:chordsCopy forKeyedSubscript:uUIDString];

  return uUIDString;
}

- (void)removeTransientKeyChordsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  transientCommands = [(AXSSKeyboardCommandMap *)self transientCommands];
  [transientCommands setObject:0 forKeyedSubscript:identifierCopy];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "Ignoring commands to key chords dictionary because of unexpected format: %@", &v2, 0xCu);
}

@end