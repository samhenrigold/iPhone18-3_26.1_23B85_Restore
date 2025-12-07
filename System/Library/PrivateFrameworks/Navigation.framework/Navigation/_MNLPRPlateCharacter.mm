@interface _MNLPRPlateCharacter
- (id)_validReplacements:(uint64_t)replacements;
- (id)description;
- (id)valueMappings;
- (uint64_t)isOfType:(void *)type alphabetics:(void *)alphabetics numerics:;
- (void)validReplacementCount:(void *)result;
@end

@implementation _MNLPRPlateCharacter

- (id)description
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_isPickupChar)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  v8 = [v3 stringWithFormat:@"<%@ %p> %@ { pickup: %s", v5, self, self->_glyph, v7];

  if ([(NSMutableDictionary *)self->_fillTypes count])
  {
    v21 = v8;
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableDictionary count](self->_fillTypes, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = self->_fillTypes;
    v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          intValue = [*(*(&v22 + 1) + 8 * i) intValue];
          if ((intValue - 1) >= 3)
          {
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", intValue];
          }

          else
          {
            v16 = off_1E842B088[(intValue - 1)];
          }

          [v9 addObject:v16];
        }

        v12 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v17 = [v9 componentsJoinedByString:{@", "}];
    v8 = v21;
    [v21 appendFormat:@" fills: [%@]", v17];
  }

  if ([(NSMutableOrderedSet *)self->_valueMappings count])
  {
    array = [(NSMutableOrderedSet *)self->_valueMappings array];
    v19 = [array componentsJoinedByString:{@", "}];
    [v8 appendFormat:@" mappings: [%@]", v19];
  }

  [v8 appendString:@"}"];

  return v8;
}

- (id)valueMappings
{
  if (self)
  {
    self = [self[1] array];
    v1 = vars8;
  }

  return self;
}

- (void)validReplacementCount:(void *)result
{
  if (result)
  {
    v2 = [(_MNLPRPlateCharacter *)result _validReplacements:a2];
    v3 = [v2 count];

    return v3;
  }

  return result;
}

- (id)_validReplacements:(uint64_t)replacements
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (!replacements)
  {
    goto LABEL_41;
  }

  v4 = (replacements + 16);
  v3 = *(replacements + 16);
  if (v3)
  {
    v5 = v3;
LABEL_4:
    v6 = v5;
    goto LABEL_42;
  }

  if (*(replacements + 24) == 1)
  {
    if (![*(replacements + 8) count])
    {
      v56[0] = *(replacements + 32);
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
      goto LABEL_4;
    }

    array = [*(replacements + 8) array];
    goto LABEL_17;
  }

  v9 = [*(replacements + 40) count];
  v10 = *(replacements + 40);
  if (v9 != 1)
  {
    if ([v10 count] < 2)
    {
      _mnLPRWrappedError(a2, -104, 0, @"For character %@", v18, v19, v20, v21, *(replacements + 32));
      [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"NoRulesApplyToCharacter"];
      array = 0;
      goto LABEL_17;
    }

    v22 = [*(replacements + 40) objectForKeyedSubscript:&unk_1F4EE2320];

    v23 = [*(replacements + 40) objectForKeyedSubscript:&unk_1F4EE2338];

    v24 = [*(replacements + 40) objectForKeyedSubscript:&unk_1F4EE2350];

    if (v23 && v24)
    {
      _mnLPRWrappedError(a2, -102, 0, @"Invalid fill for character %@", v25, v26, v27, v28, *(replacements + 32));
      v29 = MEMORY[0x1E69A1598];
      v30 = @"InvalidFillRules";
    }

    else
    {
      if (v24)
      {
        v36 = 3;
      }

      else
      {
        v36 = 1;
      }

      if (v23)
      {
        v37 = 2;
      }

      else
      {
        v37 = v36;
      }

      v38 = *(replacements + 40);
      if (v23 || v24 || v22)
      {
        v43 = [MEMORY[0x1E696AD98] numberWithInt:v37];
        firstObject2 = [v38 objectForKeyedSubscript:v43];

        mnlpr_componentsSeparatedByGlyph = [firstObject2 mnlpr_componentsSeparatedByGlyph];
        if (mnlpr_componentsSeparatedByGlyph)
        {
          goto LABEL_10;
        }

        _mnLPRWrappedError(a2, -101, 0, @"Unsplittable fill %@ %@", v44, v45, v46, v47, off_1E842B088[(v37 - 1)]);
LABEL_24:
        [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"UnableSplitString"];

        goto LABEL_41;
      }

      allKeys = [*(replacements + 40) allKeys];
      firstObject = [allKeys firstObject];
      intValue = [firstObject intValue];

      if ((intValue - 1) >= 3)
      {
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", intValue];
      }

      else
      {
        v42 = off_1E842B088[(intValue - 1)];
      }

      v48 = *(replacements + 40);
      v49 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
      v55 = [v48 objectForKeyedSubscript:v49];
      _mnLPRWrappedError(a2, -103, 0, @"Unknown fill %@ %@", v50, v51, v52, v53, v42);

      v29 = MEMORY[0x1E69A1598];
      v30 = @"UnknownFillType";
    }

    [v29 captureUserAction:2191 target:0 value:v30];
    goto LABEL_41;
  }

  allValues = [v10 allValues];
  firstObject2 = [allValues firstObject];

  mnlpr_componentsSeparatedByGlyph = [firstObject2 mnlpr_componentsSeparatedByGlyph];
  if (!mnlpr_componentsSeparatedByGlyph)
  {
    _mnLPRWrappedError(a2, -101, 0, @"Unsplittable fill %@", v14, v15, v16, v17, firstObject2);
    goto LABEL_24;
  }

LABEL_10:
  array = mnlpr_componentsSeparatedByGlyph;

LABEL_17:
  if (![array count])
  {
LABEL_21:
    v6 = *v4;

    goto LABEL_42;
  }

  if (([array containsObject:*(replacements + 32)] & 1) != 0 || objc_msgSend(array, "count") >= 0xA)
  {
    objc_storeStrong(v4, array);
    goto LABEL_21;
  }

  v31 = *(replacements + 32);
  [array count];
  _mnLPRWrappedError(a2, -107, 0, @"Self missing in fill for character %@ with only %d valid replacements", v32, v33, v34, v35, v31);
  [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"MappingDoesNotIncludeSelf"];

LABEL_41:
  v6 = 0;
LABEL_42:

  return v6;
}

- (uint64_t)isOfType:(void *)type alphabetics:(void *)alphabetics numerics:
{
  typeCopy = type;
  alphabeticsCopy = alphabetics;
  if (self)
  {
    if (a2 == 1)
    {
      self = 1;
    }

    else
    {
      if (a2 == 2)
      {
        v9 = *(self + 32);
        v10 = typeCopy;
      }

      else
      {
        if (a2 != 3)
        {
          self = 0;
          goto LABEL_10;
        }

        v9 = *(self + 32);
        v10 = alphabeticsCopy;
      }

      self = [v9 rangeOfCharacterFromSet:v10] == 0;
    }
  }

LABEL_10:

  return self;
}

@end