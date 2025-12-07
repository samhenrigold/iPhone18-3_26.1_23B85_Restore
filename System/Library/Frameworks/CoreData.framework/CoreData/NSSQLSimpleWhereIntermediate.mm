@interface NSSQLSimpleWhereIntermediate
- (NSSQLSimpleWhereIntermediate)initWithPredicate:(id)predicate inScope:(id)scope;
- (__CFString)_generateSQLContainmentStringInContext:(uint64_t)context;
- (__CFString)_sqlTokenForPredicateOperator:(unint64_t)operator inContext:(void *)context;
- (id)_generateSQLBeginsWithStringInContext:(uint64_t)context;
- (id)_generateSQLBoundByStringInContext:(uint64_t)context;
- (id)_generateSQLForConst:(void *)const inToMany:(void *)many inContext:;
- (id)_generateSQLType2InContext:(uint64_t)context;
- (id)_generateSQLType3InContext:(uint64_t)context;
- (id)generateSQLStringInContext:(id)context;
- (void)_generateSQLBetweenStringInContext:(uint64_t)context;
- (void)_generateSQLForConst:(__CFString *)const inManyToMany:(uint64_t)many expression:(void *)expression inContext:;
- (void)_generateSQLForConst:(uint64_t)const inAttribute:(uint64_t)attribute expression:(uint64_t)expression inContext:(uint64_t)context;
- (void)_generateSQLForMatchingOperator:(void *)operator inContext:;
- (void)_generateSQLForString:(void *)string expressionPath:(int)path wildStart:(int)start wildEnd:(uint64_t)end allowToMany:(void *)many inContext:;
- (void)_generateSQLSubstringWildStart:(int)start wildEnd:(void *)end inContext:;
- (void)_upperBoundSearchStringForString:(__CFString *)string context:(void *)context;
- (void)dealloc;
@end

@implementation NSSQLSimpleWhereIntermediate

- (void)dealloc
{
  self->_comparisonPredicateScopedItem = 0;

  v3.receiver = self;
  v3.super_class = NSSQLSimpleWhereIntermediate;
  [(NSSQLSimpleWhereIntermediate *)&v3 dealloc];
}

- (NSSQLSimpleWhereIntermediate)initWithPredicate:(id)predicate inScope:(id)scope
{
  v11.receiver = self;
  v11.super_class = NSSQLSimpleWhereIntermediate;
  v5 = [(NSSQLWhereIntermediate *)&v11 initWithPredicate:predicate inScope:scope];
  if (v5)
  {
    v5->_effectiveLeftExpression = [predicate leftExpression];
    v5->_effectiveRightExpression = [predicate rightExpression];
    if ([(NSExpression *)v5->_effectiveLeftExpression expressionType]== NSFunctionExpressionType && [[(NSExpression *)v5->_effectiveLeftExpression operand] expressionType]== NSConstantValueExpressionType && (sel_valueForKey_ == [(NSExpression *)v5->_effectiveLeftExpression selector]|| sel_valueForKeyPath_ == [(NSExpression *)v5->_effectiveLeftExpression selector]))
    {
      v6 = [(NSExpression *)v5->_effectiveLeftExpression expressionValueWithObject:0 context:0];
      v7 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v6];

      v5->_effectiveLeftExpression = v7;
    }

    if ([(NSExpression *)v5->_effectiveRightExpression expressionType]== NSFunctionExpressionType && [[(NSExpression *)v5->_effectiveRightExpression operand] expressionType]== NSConstantValueExpressionType && (sel_valueForKey_ == [(NSExpression *)v5->_effectiveRightExpression selector]|| sel_valueForKeyPath_ == [(NSExpression *)v5->_effectiveRightExpression selector]))
    {
      v8 = [(NSExpression *)v5->_effectiveRightExpression expressionValueWithObject:0 context:0];
      v9 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v8];

      v5->_effectiveRightExpression = v9;
    }
  }

  return v5;
}

- (__CFString)_sqlTokenForPredicateOperator:(unint64_t)operator inContext:(void *)context
{
  if (![context objectForKey:@"NSUnderlyingException"])
  {
    if (operator < 6)
    {
      return off_1E6EC4398[operator];
    }

    [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unknown predicate operator type parameter", 0), @"NSUnderlyingException"}];
  }

  return 0;
}

- (id)_generateSQLType3InContext:(uint64_t)context
{
  v4 = *(context + 32);
  v5 = *(context + 40);
  comparisonPredicateModifier = [*(context + 16) comparisonPredicateModifier];
  options = [*(context + 16) options];
  predicateOperatorType = [*(context + 16) predicateOperatorType];
  if (!*(context + 24))
  {
    *(context + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if ([v4 expressionType] == 3 && (v10 = objc_msgSend(v5, "expressionType"), v9 = v4, !v10) || objc_msgSend(v5, "expressionType", v9) == 3 && (v11 = objc_msgSend(v4, "expressionType"), v9 = v5, !v11))
  {
    [*(context + 24) addObject:v9];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSSQLIntermediate *)context _generateSQLForExpression:v4 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = [(NSSQLIntermediate *)context _generateSQLForExpression:v5 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
  if (!v15)
  {

    return 0;
  }

  v16 = v15;
  if ((options & 4) != 0)
  {
    predicateOperator = [*(context + 16) predicateOperator];
    v20 = v14;
    [v20 appendString:@" "];
    [v20 appendString:{objc_msgSend(predicateOperator, "symbol")}];
    [v20 appendString:@" "];
    [v20 appendString:v16];
  }

  else
  {
    v17 = (options << 63 >> 63) & 0x101;
    if ((options & 2) != 0)
    {
      v17 = (options << 63 >> 63) & 1 | 0x180;
    }

    if ((options & 8) != 0)
    {
      v18 = v17 | 0x120;
    }

    else
    {
      v18 = v17;
    }

    if (predicateOperatorType >= 6)
    {
      NSLog(@"You really shouldn't be here");
      v19 = 7;
    }

    else
    {
      v19 = dword_18592E7C8[predicateOperatorType];
    }

    v20 = objc_msgSend(@"NSCoreDataStringCompare("), "mutableCopy";
    [v20 appendString:v14];
    [v20 appendString:{@", "}];
    [v20 appendString:v16];
    [v20 appendFormat:@", %d, %lu, %d"], v19, v18, (options >> 3) & 1);
  }

  if (v12)
  {
    [*(context + 24) removeLastObject];
  }

  return v20;
}

- (id)_generateSQLType2InContext:(uint64_t)context
{
  if (!context)
  {
    return 0;
  }

  predicateOperatorType = [*(context + 16) predicateOperatorType];
  v5 = *(context + 32);
  if (predicateOperatorType == 5)
  {
    v6 = @"IS NOT NULL";
  }

  else
  {
    v6 = @"IS NULL";
  }

  v7 = *(context + 40);
  comparisonPredicateModifier = [*(context + 16) comparisonPredicateModifier];
  if ([v5 expressionType])
  {
    v9 = 0;
  }

  else
  {
    constantValue = [v5 constantValue];
    if (constantValue)
    {
      v9 = [MEMORY[0x1E695DFB0] null] == constantValue;
    }

    else
    {
      v9 = 1;
    }
  }

  if ([v7 expressionType])
  {
    v11 = 0;
  }

  else
  {
    constantValue2 = [v7 constantValue];
    if (!constantValue2)
    {
      if (v9)
      {
        v14 = v7;
      }

      else
      {
        v14 = v5;
      }

      goto LABEL_33;
    }

    v11 = [MEMORY[0x1E695DFB0] null] == constantValue2;
  }

  v13 = v9 || v11;
  if (v9)
  {
    v14 = v7;
  }

  else
  {
    v14 = v5;
  }

  if (v13)
  {
LABEL_33:
    v23 = [(NSSQLIntermediate *)context _generateSQLForExpression:v14 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
    if (v23)
    {
      v24 = v23;
      [(NSSQLIntermediate *)context promoteJoinsInKeypathsForExpression:v14];
      v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v24];
      [v21 appendString:@" "];
      [v21 appendString:v6];

      return v21;
    }

    return 0;
  }

  if (![*(context + 16) options])
  {
    if (!*(context + 24))
    {
      *(context + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if ([v5 expressionType] == 3 && (v17 = objc_msgSend(v7, "expressionType"), v16 = v5, !v17) || objc_msgSend(v7, "expressionType", v16) == 3 && (v18 = objc_msgSend(v5, "expressionType"), v16 = v7, !v18))
    {
      [*(context + 24) addObject:v16];
      v19 = comparisonPredicateModifier == 2;
      v25 = [(NSSQLIntermediate *)context _generateSQLForExpression:v5 allowToMany:v19 inContext:a2];
      if (v25)
      {
        v21 = v25;
        v22 = 1;
LABEL_37:
        v26 = [(NSSQLIntermediate *)context _generateSQLForExpression:v7 allowToMany:v19 inContext:a2];
        if (v26)
        {
          v27 = v26;
          v28 = -[NSSQLSimpleWhereIntermediate _sqlTokenForPredicateOperator:inContext:]([*(context + 16) predicateOperatorType], a2);
          if (v28)
          {
            v29 = v28;
            [v21 appendString:@" "];
            [v21 appendString:v29];
            [v21 appendString:@" "];
            [v21 appendString:v27];

            if (v22)
            {
              [*(context + 24) removeLastObject];
            }

            return v21;
          }

          [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(context + 16)), 0), @"NSUnderlyingException"}];

          if (v22)
          {
            [*(context + 24) removeLastObject];
          }

          return 0;
        }

        if (v22)
        {
          [*(context + 24) removeLastObject];
        }

        if (![a2 objectForKey:@"LastKeyPathWasTransientProperty"] && !objc_msgSend(a2, "objectForKey:", @"NSUnderlyingException"))
        {
LABEL_51:
          [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(context + 16)), 0), @"NSUnderlyingException"}];
        }

        return 0;
      }

      [*(context + 24) removeLastObject];
    }

    else
    {
      v19 = comparisonPredicateModifier == 2;
      v20 = [(NSSQLIntermediate *)context _generateSQLForExpression:v5 allowToMany:v19 inContext:a2];
      if (v20)
      {
        v21 = v20;
        v22 = 0;
        goto LABEL_37;
      }
    }

    if ([a2 objectForKey:@"LastKeyPathWasTransientProperty"] || objc_msgSend(a2, "objectForKey:", @"NSUnderlyingException"))
    {
      return 0;
    }

    goto LABEL_51;
  }

  return [(NSSQLSimpleWhereIntermediate *)context _generateSQLType3InContext:a2];
}

- (void)_generateSQLForMatchingOperator:(void *)operator inContext:
{
  if (!self)
  {
    return 0;
  }

  v6 = *(self + 32);
  v7 = *(self + 40);
  if (([objc_opt_class() isSimpleKeypath:v6] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v6))
  {
    goto LABEL_12;
  }

  if (![v7 expressionType])
  {
    constantValue = [v7 constantValue];
    if (([constantValue isNSString] & 1) != 0 || !constantValue)
    {
      v16 = [objc_msgSend(*(self + 16) "predicateOperator")];
      v17 = [self _generateSQLForKeyPathExpression:v6 allowToMany:objc_msgSend(*(self + 16) inContext:{"comparisonPredicateModifier") == 2, operator}];
      if (v17)
      {
        v18 = v17;
        v11 = [a2 mutableCopy];
        [v11 appendString:v18];

        v19 = [[NSSQLConstantValueIntermediate alloc] initWithConstantValue:constantValue ofType:5 inScope:self context:operator];
        v20 = [(NSSQLConstantValueIntermediate *)v19 generateSQLStringInContext:operator];
        [v11 appendString:{@", "}];
        [v11 appendString:v20];
        [v11 appendString:{@", "}];
        [v11 appendFormat:@"%lu "], v16 & 3);

        return v11;
      }

      return 0;
    }

    goto LABEL_12;
  }

  if (([objc_opt_class() isSimpleKeypath:v7] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v7))
  {
LABEL_12:
    [operator setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 16)), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v8 = [objc_msgSend(*(self + 16) "predicateOperator")];
  v9 = [self _generateSQLForKeyPathExpression:v6 allowToMany:objc_msgSend(*(self + 16) inContext:{"comparisonPredicateModifier") == 2, operator}];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [a2 mutableCopy];
  [v11 appendString:v10];

  v12 = [self _generateSQLForKeyPathExpression:v7 allowToMany:0 inContext:operator];
  if (!v12)
  {

    return 0;
  }

  v13 = v12;
  [v11 appendString:{@", "}];
  [v11 appendString:v13];
  [v11 appendString:{@", "}];
  [v11 appendFormat:@"%lu "], v8 & 3);

  return v11;
}

- (void)_generateSQLForString:(void *)string expressionPath:(int)path wildStart:(int)start wildEnd:(uint64_t)end allowToMany:(void *)many inContext:
{
  v14 = [objc_msgSend(self[2] "predicateOperator")];
  v15 = v14;
  if ((v14 & 4) != 0)
  {
    v17 = 2;
    if (!start)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = (v14 << 63 >> 63) & 0x101;
    if ((v14 & 2) != 0)
    {
      v16 = (v14 << 63 >> 63) & 1 | 0x180;
    }

    if ((v14 & 8) != 0)
    {
      v17 = v16 | 0x120;
    }

    else
    {
      v17 = v16;
    }

    if (!start)
    {
      goto LABEL_12;
    }
  }

  if ((path & 1) == 0)
  {
    v17 |= 8uLL;
    goto LABEL_15;
  }

LABEL_12:
  if (!path || (start & 1) != 0)
  {
    if ((path & 1) == 0 && (start & 1) == 0)
    {
      [many setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[2]), 0), @"NSUnderlyingException"}];
      return 0;
    }
  }

  else
  {
    v17 |= 0xCuLL;
  }

LABEL_15:
  v18 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @" NSCoreDataStringSearch(");
  if ([string expressionType] == 2)
  {
    v19 = [(NSSQLIntermediate *)self _generateSQLForExpression:string allowToMany:end inContext:many];
    if (!v19)
    {
LABEL_17:

      return 0;
    }
  }

  else
  {
    v19 = [self _generateSQLForKeyPathExpression:string allowToMany:end inContext:many];
    if (!v19)
    {
      goto LABEL_17;
    }
  }

  v20 = v19;
  [v18 appendString:v19];

  [v18 appendString:{@", "}];
  v21 = [[NSSQLConstantValueIntermediate alloc] initWithConstantValue:a2 ofType:5 inScope:self context:many];
  v22 = [(NSSQLConstantValueIntermediate *)v21 generateSQLStringInContext:many];
  [v18 appendString:v22];

  [v18 appendString:{@", "}];
  [v18 appendFormat:@"%lu, %u"], v17, (v15 >> 3) & 1);
  return v18;
}

- (void)_generateSQLSubstringWildStart:(int)start wildEnd:(void *)end inContext:
{
  if (!self)
  {
    return 0;
  }

  v6 = a2;
  v8 = *(self + 32);
  v9 = *(self + 40);
  if (([objc_opt_class() isSimpleKeypath:v8] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v8) || objc_msgSend(v9, "expressionType") || (v10 = objc_msgSend(v9, "constantValue"), !objc_msgSend(v10, "isNSString")))
  {
    [end setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 16)), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v11 = [*(self + 16) comparisonPredicateModifier] == 2;

  return [(NSSQLSimpleWhereIntermediate *)self _generateSQLForString:v10 expressionPath:v8 wildStart:v6 wildEnd:start allowToMany:v11 inContext:end];
}

- (void)_upperBoundSearchStringForString:(__CFString *)string context:(void *)context
{
  v14[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(string);
  result = 0;
  if (string && Length <= 0x3FFFFFFF)
  {
    if (CFStringGetCharactersPtr(string))
    {
      v6 = CFStringEncodingUnicodeToBytes();
      if (v6)
      {
        v7 = @"Unknown error during string conversion";
        if (v6 == 1)
        {
          v7 = @"Invalid input string";
        }

        [context setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7), objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", string, @"Bad string", @"NSUnderlyingException"}];
        return 0;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](0);
      v9 = (v14 - v8);
      if (Length >= 256)
      {
        v9 = malloc_type_malloc(4 * Length, 0x1000040BDFB0063uLL);
      }

      v15.location = 0;
      v15.length = Length;
      CFStringGetCharacters(string, v15, v9);
      v10 = CFStringEncodingUnicodeToBytes();
      if (v10)
      {
        if (v10 == 1)
        {
          v11 = @"Invalid input string";
        }

        else
        {
          v11 = @"Unknown error during string conversion";
        }

        if (Length >= 256)
        {
          free(v9);
        }

        [context setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11), objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", string, @"Bad string", @"NSUnderlyingException"}];
        return 0;
      }

      if (Length >= 256)
      {
        free(v9);
      }
    }

    if (Length < 2)
    {
      v12 = &stru_1EF3F1768;
    }

    else
    {
      v12 = [(__CFString *)string substringToIndex:Length - 1];
    }

    v13 = [(__CFString *)string characterAtIndex:Length - 1];
    result = 0;
    if (v13 != 55295 && v13 != 57343 && v13 != 0xFFFF)
    {
      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%C", v12, (v13 + 1)];
    }
  }

  return result;
}

- (id)_generateSQLBeginsWithStringInContext:(uint64_t)context
{
  if (!context)
  {
    return 0;
  }

  predicateOperator = [*(context + 16) predicateOperator];
  if ([*(context + 40) expressionType] || (objc_msgSend(predicateOperator, "options") & 4) == 0 || (v5 = objc_msgSend(*(context + 40), "constantValue"), !-[__CFString isNSString](v5, "isNSString")) || (v6 = -[NSSQLSimpleWhereIntermediate _upperBoundSearchStringForString:context:](v5, a2)) == 0)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = -[NSSQLSimpleWhereIntermediate initWithPredicate:inScope:]([NSSQLSimpleWhereIntermediate alloc], "initWithPredicate:inScope:", [MEMORY[0x1E696AB18] predicateWithLeftExpression:*(context + 32) rightExpression:*(context + 40) modifier:objc_msgSend(*(context + 16) type:"comparisonPredicateModifier") options:{3, 0}], context);
  v9 = [(NSSQLSimpleWhereIntermediate *)v8 generateSQLStringInContext:a2];

  if (v9)
  {
    v10 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](context, [MEMORY[0x1E696ABC8] expressionForConstantValue:v7], 0, a2);
    if (!v10)
    {
      v13 = v9;
      v9 = 0;
      goto LABEL_20;
    }

    v11 = v10;
    v12 = [v9 substringToIndex:{objc_msgSend(v9, "rangeOfString:", @">"}];
    [v9 appendString:@" AND "];
    [v9 appendString:v12];
    [v9 appendString:@" < "];
    [v9 appendString:v11];
  }

  v13 = 0;
LABEL_20:

LABEL_11:
  if ([a2 objectForKey:@"NSUnderlyingException"])
  {

    return 0;
  }

  if (v9)
  {
    return v9;
  }

  return [(NSSQLSimpleWhereIntermediate *)context _generateSQLSubstringWildStart:1 wildEnd:a2 inContext:?];
}

- (void)_generateSQLForConst:(__CFString *)const inManyToMany:(uint64_t)many expression:(void *)expression inContext:
{
  if ([self isUpdateScoped])
  {
    [expression setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], many), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{-[__CFString name](const, "name"), 0}];
  v11 = +[NSSQLJoinIntermediate createJoinIntermediatesForKeypath:startEntity:startAlias:forScope:inStatementIntermediate:inContext:](NSSQLJoinIntermediate, v10, -[__CFString entity](const, "entity"), [self governingAlias], self, objc_msgSend(self, "fetchIntermediateForKeypathExpression:", many), expression);

  if ([expression objectForKey:@"NSUnderlyingException"])
  {

    return 0;
  }

  v14 = [[NSSQLForeignKeyIntermediate alloc] initWithConstantValue:a2 inScope:self];
  v15 = [(NSSQLForeignKeyIntermediate *)v14 generateSQLStringInContext:expression];
  if (v11)
  {
    v16 = v11[5];
  }

  else
  {
    v16 = 0;
  }

  v12 = [v16 mutableCopy];
  [v12 appendString:@"."];
  [v12 appendString:-[NSSQLManyToMany inverseColumnName](const)];
  [v12 appendString:@" = "];
  [v12 appendString:v15];

  return v12;
}

- (id)_generateSQLForConst:(void *)const inToMany:(void *)many inContext:
{
  if ([self isUpdateScoped])
  {
    [many setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[4]), 0), @"NSUnderlyingException"}];
    return 0;
  }

  else
  {
    v9 = [NSSQLKeypathExpressionIntermediate alloc];
    v10 = MEMORY[0x1E696ABC8];
    entity = [const entity];
    if (entity)
    {
      entity = entity[16];
    }

    v12 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:](v9, "initWithExpression:allowToMany:inScope:", [v10 expressionForKeyPath:{objc_msgSend(entity, "name")}], 0, self);
    v8 = [(NSSQLKeypathExpressionIntermediate *)v12 generateSQLStringInContext:many];

    if (v8)
    {
      objc_msgSend(v8, "appendString:", @" IN (SELECT ");
      if (const)
      {
        v13 = const[7];
      }

      else
      {
        v13 = 0;
      }

      destinationEntity = [const destinationEntity];
      [v8 appendString:{objc_msgSend(objc_msgSend(v13, "foreignKey"), "columnName")}];
      [v8 appendString:@" FROM "];
      [v8 appendString:{objc_msgSend(objc_msgSend(v13, "entity"), "tableName")}];
      [v8 appendString:@" WHERE "];
      if (destinationEntity)
      {
        v15 = *(destinationEntity + 128);
      }

      else
      {
        v15 = 0;
      }

      [v8 appendString:{objc_msgSend(v15, "columnName")}];
      v16 = [[NSSQLForeignKeyIntermediate alloc] initWithConstantValue:a2 inScope:self];
      v17 = [(NSSQLForeignKeyIntermediate *)v16 generateSQLStringInContext:many];
      [v8 appendString:@" = "];
      [v8 appendString:v17];
      [v8 appendString:@" "]);
    }
  }

  return v8;
}

- (void)_generateSQLForConst:(uint64_t)const inAttribute:(uint64_t)attribute expression:(uint64_t)expression inContext:(uint64_t)context
{
  v7 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:expression allowToMany:0 inScope:const];
  v8 = [(NSSQLKeypathExpressionIntermediate *)v7 generateSQLStringInContext:context];

  if (!v8)
  {
    return 0;
  }

  v9 = [objc_msgSend(*(const + 16) "predicateOperator")];
  v10 = v9;
  v11 = (v9 << 63 >> 63) & 0x101;
  if ((v9 & 2) != 0)
  {
    v11 = (v9 << 63 >> 63) & 1 | 0x180;
  }

  if ((v9 & 8) != 0)
  {
    v11 |= 0x120uLL;
  }

  if ((v9 & 4) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @" NSCoreDataStringSearch(");
  [v13 appendString:v8];

  v14 = [[NSSQLForeignKeyIntermediate alloc] initWithConstantValue:attribute inScope:const];
  v15 = [(NSSQLForeignKeyIntermediate *)v14 generateSQLStringInContext:context];
  [v13 appendString:{@", "}];
  [v13 appendString:v15];
  [v13 appendString:{@", "}];
  [v13 appendFormat:@"%lu, %u"], v12, (v10 >> 3) & 1);

  return v13;
}

- (__CFString)_generateSQLContainmentStringInContext:(uint64_t)context
{
  v84 = *MEMORY[0x1E69E9840];
  if (!context)
  {
    return 0;
  }

  predicateOperatorType = [*(context + 16) predicateOperatorType];
  comparisonPredicateModifier = [*(context + 16) comparisonPredicateModifier];
  v6 = *(context + 32);
  v7 = *(context + 40);
  if (!*(context + 24))
  {
    *(context + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v8 = predicateOperatorType == 99;
  if (predicateOperatorType == 99)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  expressionType = [v10 expressionType];
  expressionType2 = [v9 expressionType];
  if (expressionType2 == 2)
  {
    variable = [v9 variable];
    v14 = [objc_msgSend(a2 objectForKey:{@"substitutionVariables", "objectForKey:", variable}];
    if (v14)
    {
      v15 = v14;
      expressionType3 = [v14 expressionType];
      v76 = [a2 objectForKey:@"duringPrefetching"] != 0;
      v9 = v15;
    }

    else
    {
      v76 = 0;
      variable = 0;
      expressionType3 = 2;
    }
  }

  else
  {
    expressionType3 = expressionType2;
    v76 = 0;
    variable = 0;
  }

  if (expressionType >= 5 && ([objc_opt_class() isSimpleKeypath:v10] & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v10) & 1) == 0 && (-[NSSQLIntermediate isSimpleNoIndexFunction:](context, v10) & 1) == 0 || (expressionType3 <= 0x32 ? (v17 = ((1 << expressionType3) & 0x400000000600DLL) == 0) : (v17 = 1), v17 && (objc_msgSend(objc_opt_class(), "isSimpleKeypath:", v10) & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v9) & 1) == 0 && !-[NSSQLIntermediate _functionExpressionIsSubqueryFollowedByKeypath:](context, v9) || (expressionType == 3 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v10)) && (expressionType3 == 3 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v9))))
  {
    [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(context + 16)), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v19 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
  [*(context + 24) addObject:v10];
  if (expressionType3 > 13)
  {
    if (expressionType3 == 50)
    {
      goto LABEL_45;
    }

    if (expressionType3 == 14)
    {
      v20 = [(NSSQLIntermediate *)context _generateSQLForExpression:v10 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
      v18 = v20;
      if (v20)
      {
        [(__CFString *)v20 appendString:@" IN "];
        v21 = -[NSSQLIntermediate _generateSQLForExpressionCollection:allowToMany:inContext:](context, [v9 constantValue], 0, a2);
        if (v21)
        {
LABEL_48:
          v27 = v21;
          [(__CFString *)v18 appendString:v21];

LABEL_96:
          LODWORD(v22) = 1;
          goto LABEL_118;
        }

        goto LABEL_37;
      }

      goto LABEL_117;
    }

LABEL_44:
    if ([(NSSQLIntermediate *)context _functionExpressionIsSubqueryFollowedByKeypath:v9])
    {
LABEL_45:
      v23 = [(NSSQLIntermediate *)context _generateSQLForExpression:v10 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
      v18 = v23;
      if (v23)
      {
        [(__CFString *)v23 appendString:@" IN "];
        contextCopy3 = context;
        v25 = v9;
        v26 = 1;
        goto LABEL_47;
      }

LABEL_117:
      LODWORD(v22) = 0;
      goto LABEL_118;
    }

    if ((([objc_opt_class() isSimpleKeypath:v10] & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v10)) && !objc_msgSend(*(context + 8), "keypathExpressionIsSafeLHSForIn:", v10))
    {
      goto LABEL_38;
    }

    if (expressionType || expressionType3 == 2)
    {
      if (expressionType || expressionType3 != 2)
      {
        v47 = [(NSSQLIntermediate *)context _generateSQLForExpression:v9 allowToMany:1 inContext:a2];
        v18 = v47;
        if (!v47)
        {
          goto LABEL_117;
        }

        [(__CFString *)v47 appendString:@" = "];
        contextCopy3 = context;
        v25 = v10;
        v26 = comparisonPredicateModifier == 2;
      }

      else
      {
        constantValue = [v10 constantValue];
        if ([constantValue isNSString])
        {
          LODWORD(v22) = 1;
          v18 = [(NSSQLSimpleWhereIntermediate *)context _generateSQLForString:constantValue expressionPath:v9 wildStart:1 wildEnd:1 allowToMany:1 inContext:a2];
          goto LABEL_118;
        }

        v55 = [context _generateSQLForVariableExpression:v9 allowToMany:0 inContext:a2];
        v18 = v55;
        if (!v55)
        {
          goto LABEL_117;
        }

        [(__CFString *)v55 appendString:@" = "];
        contextCopy3 = context;
        v25 = v10;
        v26 = 0;
      }

LABEL_47:
      v21 = [(NSSQLIntermediate *)contextCopy3 _generateSQLForExpression:v25 allowToMany:v26 inContext:a2];
      if (v21)
      {
        goto LABEL_48;
      }

LABEL_37:

LABEL_38:
      LODWORD(v22) = 0;
      goto LABEL_39;
    }

    [*(context + 24) addObject:v9];
    if (expressionType3 == 3)
    {
      keyPath = [v9 keyPath];
    }

    else
    {
      keyPath = [objc_msgSend(objc_msgSend(v9 "arguments")];
    }

    v48 = keyPath;
    constantValue2 = [v10 constantValue];
    if ([v48 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v50 = [context governingEntityForKeypathExpression:v9];
      if (v50)
      {
        v18 = [*(v50 + 40) objectForKey:v48];
        v51 = objc_msgSend_valueForKey_(a2);
        if (v18)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v51 = objc_msgSend_valueForKey_(a2);
      }

      v52 = v51;
      if ([v51 count])
      {
        lastObject = [v52 lastObject];
        if (lastObject)
        {
          v18 = [*(lastObject + 40) objectForKey:v48];
          [v52 removeLastObject];
          if (v18)
          {
LABEL_111:
            if (LOBYTE(v18->length) == 9)
            {
              v54 = [(NSSQLSimpleWhereIntermediate *)context _generateSQLForConst:constantValue2 inManyToMany:v18 expression:v9 inContext:a2];
LABEL_154:
              v18 = v54;
              goto LABEL_155;
            }

            if (![(__CFString *)v18 isToMany])
            {
              if (LOBYTE(v18->length) == 1)
              {
                v54 = [NSSQLSimpleWhereIntermediate _generateSQLForConst:context inAttribute:constantValue2 expression:v9 inContext:a2];
                goto LABEL_154;
              }

              goto LABEL_149;
            }

LABEL_153:
            v54 = [(NSSQLSimpleWhereIntermediate *)context _generateSQLForConst:constantValue2 inToMany:v18 inContext:a2];
            goto LABEL_154;
          }
        }

        else
        {
          [v52 removeLastObject];
        }
      }

      v18 = 0;
      if ([0 isToMany])
      {
        goto LABEL_153;
      }
    }

    else
    {
      if ([constantValue2 isNSString])
      {
        LODWORD(v22) = 1;
        v18 = [(NSSQLSimpleWhereIntermediate *)context _generateSQLForString:constantValue2 expressionPath:v9 wildStart:1 wildEnd:1 allowToMany:1 inContext:a2];
LABEL_157:
        [*(context + 24) removeLastObject];
        goto LABEL_118;
      }

      v59 = [context _generateSQLForKeyPathExpression:v9 allowToMany:1 inContext:a2];
      v18 = v59;
      if (v59)
      {
        [(__CFString *)v59 appendString:@" = "];
        v60 = [(NSSQLIntermediate *)context _generateSQLForExpression:v10 allowToMany:0 inContext:a2];
        if (v60)
        {
          v61 = v60;
          [(__CFString *)v18 appendString:v60];

LABEL_155:
          LODWORD(v22) = 1;
          goto LABEL_157;
        }

LABEL_149:
        LODWORD(v22) = 0;
        v18 = 0;
        goto LABEL_157;
      }
    }

    LODWORD(v22) = 0;
    goto LABEL_157;
  }

  if (expressionType3)
  {
    if (expressionType3 == 13)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v28 = [(NSSQLIntermediate *)context _generateSQLForExpression:v10 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
  v18 = v28;
  if (!v28)
  {
    goto LABEL_117;
  }

  [(__CFString *)v28 appendString:@" IN "];
  if ([v10 expressionType] == 1)
  {
    destinationEntity = [objc_msgSend(objc_msgSend(context "fetchIntermediate")];
  }

  else if ([objc_opt_class() isSimpleKeypath:v10] && (v31 = objc_msgSend(v10, "predicateFormat"), destinationEntity = objc_msgSend(objc_msgSend(context, "governingEntityForKeypathExpression:", v10), "entityDescription"), v32 = objc_msgSend(v31, "componentsSeparatedByString:", @"."), (v33 = objc_msgSend(v32, "count")) != 0))
  {
    v34 = 0;
    obj = (v33 - 1);
    while (1)
    {
      v35 = [v32 objectAtIndex:v34];
      v36 = destinationEntity ? [objc_msgSend(destinationEntity "propertiesByName")] : 0;
      _propertyType = [v36 _propertyType];
      destinationEntity = 0;
      if (!v36)
      {
        break;
      }

      if (_propertyType != 4)
      {
        break;
      }

      destinationEntity = [v36 destinationEntity];
      if (obj == v34)
      {
        break;
      }

      ++v34;
    }
  }

  else
  {
    destinationEntity = 0;
  }

  v38 = v76;
  v39 = !v76;
  if (destinationEntity)
  {
    v39 = 1;
  }

  if (v39)
  {
LABEL_80:
    if (destinationEntity)
    {
      constantValue3 = [v9 constantValue];
      v19 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
      if ([objc_msgSend(a2 objectForKey:{@"nestingLevel", "intValue"}] <= 0 && ((objc_msgSend(constantValue3, "isNSArray") & 1) != 0 || (objc_msgSend(constantValue3, "isNSSet") & 1) != 0 || objc_msgSend(constantValue3, "isNSOrderedSet")))
      {
        v44 = [constantValue3 count];
        if (variable || v44 >= 0x64)
        {
          [_PFRoutines anyObjectFromCollection:constantValue3];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            constantValue3 = [_PFRoutines newArrayOfObjectIDsFromCollection:constantValue3];
          }

          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v62 = [constantValue3 countByEnumeratingWithState:&v77 objects:v83 count:16];
          if (v62)
          {
            v63 = v62;
            v64 = *v78;
            obja = constantValue3;
            while (2)
            {
              for (i = 0; i != v63; ++i)
              {
                if (*v78 != v64)
                {
                  objc_enumerationMutation(obja);
                }

                v66 = *(*(&v77 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(v66 "entity")])
                {
                  v22 = 0;
                  goto LABEL_147;
                }
              }

              constantValue3 = obja;
              v63 = [obja countByEnumeratingWithState:&v77 objects:v83 count:16];
              if (v63)
              {
                continue;
              }

              break;
            }
          }

          v67 = [a2 objectForKey:@"bindIntarrays"];
          if (!v67)
          {
            v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [a2 setObject:v67 forKey:@"bindIntarrays"];
          }

          v68 = [v67 count];
          v69 = [[NSSQLBindIntarray alloc] initWithValue:constantValue3];
          v70 = [a2 objectForKey:@"aliasGenerator"];
          [(NSSQLBindIntarray *)v69 setTableName:[(NSSQLAliasGenerator *)v70 generateTempTableName]];
          v72 = [v67 count];
          [v67 addObject:v69];
          [(NSSQLBindIntarray *)v69 setIndex:v72];

          if (variable)
          {
            v73 = [a2 objectForKey:@"bindIntarraysSubstitutionOrder"];
            if (!v73)
            {
              v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [a2 setObject:v73 forKey:@"bindIntarraysSubstitutionOrder"];
            }

            [v73 addObject:variable];
            [v73 addObject:destinationEntity];
            [v73 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v68)}];
          }

          v22 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"(SELECT * FROM %@) ", -[NSSQLBindIntarray tableName](v69, "tableName")];
LABEL_147:
          v19 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
          v38 = v76;
          goto LABEL_89;
        }
      }

      goto LABEL_87;
    }

LABEL_88:
    v22 = 0;
    v19 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
    goto LABEL_89;
  }

  if (![objc_opt_class() isSimpleKeypath:v10])
  {
    goto LABEL_88;
  }

  predicateFormat = [v10 predicateFormat];
  v41 = [context governingEntityForKeypathExpression:v10];
  v42 = [objc_msgSend(predicateFormat componentsSeparatedByString:{@".", "firstObject"}];
  v19 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
  if (v41)
  {
    v41 = [v41[5] objectForKey:v42];
  }

  if ([v41 propertyType] == 7 && !objc_msgSend(v41, "propertyDescription"))
  {
    destinationEntity = [objc_msgSend(v41 "destinationEntity")];
    goto LABEL_80;
  }

LABEL_87:
  v22 = 0;
LABEL_89:
  if (v22)
  {
    v45 = 1;
  }

  else
  {
    v45 = v38;
  }

  if ((v45 & 1) == 0)
  {
    v22 = -[NSSQLIntermediate _generateSQLForConstantCollection:reboundFrom:inContext:](context, [v9 constantValue], variable, a2);
  }

  if (v22)
  {
    [(__CFString *)v18 appendString:v22];

    goto LABEL_96;
  }

LABEL_39:
  v18 = 0;
LABEL_118:
  [*(context + v19[199]) removeLastObject];
  if (!v22 || !v18)
  {
    v56 = objc_msgSend_valueForKey_(a2);
    v81 = @"NSUnderlyingException";
    v82 = v56;
    v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(context + 16)), v57), @"NSUnderlyingException"}];
  }

  return v18;
}

- (void)_generateSQLBetweenStringInContext:(uint64_t)context
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (!context)
  {
    return 0;
  }

  v3 = *(context + 32);
  v4 = *(context + 40);
  expressionType = [v3 expressionType];
  v6 = *(context + 24);
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(context + 24) = v6;
  }

  [v6 addObject:v3];
  if (expressionType)
  {
    if (([objc_opt_class() isSimpleKeypath:v3] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v3))
    {
      if (expressionType != 4 || sel_indexed_by_ != [*(context + 32) selector])
      {
        [*(context + 24) removeLastObject];
        v26 = 0;
        goto LABEL_45;
      }

      v40 = [objc_msgSend(*(context + 32) "arguments")];
      v55[0] = [objc_msgSend(*(context + 32) "arguments")];
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
      v54 = *(context + 40);
      v42 = -[NSSQLRTreeIndexQueryIntermediate initForIndexNamed:onEntity:properties:ranges:inScope:]([NSSQLRTreeIndexQueryIntermediate alloc], "initForIndexNamed:onEntity:properties:ranges:inScope:", v40, [*(context + 8) governingEntity], v41, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v54, 1), *(context + 8));
      v26 = [v42 generateSQLStringInContext:a2];

      v38 = *(context + 24);
      goto LABEL_53;
    }

    v7 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
    v8 = [context _generateSQLForKeyPathExpression:v3 allowToMany:0 inContext:a2];
    if (!v8)
    {
LABEL_32:

      return 0;
    }

    v9 = v8;
    [v7 appendString:v8];
  }

  else
  {
    v10 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
    [*(context + 24) addObject:context];
    v11 = -[NSSQLConstantValueIntermediate initWithConstantValue:inScope:context:]([NSSQLConstantValueIntermediate alloc], "initWithConstantValue:inScope:context:", [v3 constantValue], context, a2);
    v12 = [(NSSQLConstantValueIntermediate *)v11 generateSQLStringInContext:a2];
    [v10 appendString:v12];

    v7 = v10;
    [*(context + 24) removeLastObject];
  }

  [v7 appendString:@" BETWEEN "];
  expressionType2 = [v4 expressionType];
  if (!expressionType2)
  {
    constantValue = [v4 constantValue];
    if ([constantValue count] != 2)
    {
      goto LABEL_44;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = [constantValue countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (!v30)
    {
      goto LABEL_44;
    }

    v31 = v30;
    contextCopy = context;
    v33 = *v45;
    v34 = 1;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(constantValue);
        }

        v36 = -[NSSQLConstantValueIntermediate initWithConstantValue:inScope:context:]([NSSQLConstantValueIntermediate alloc], "initWithConstantValue:inScope:context:", [*(*(&v44 + 1) + 8 * i) constantValue], contextCopy, a2);
        v37 = [(NSSQLConstantValueIntermediate *)v36 generateSQLStringInContext:a2];
        [v7 appendString:v37];

        if (v34)
        {
          [v7 appendString:@" AND "];
        }

        v34 = 0;
      }

      v31 = [constantValue countByEnumeratingWithState:&v44 objects:v52 count:16];
      v34 = 0;
    }

    while (v31);
    v26 = v7;
    [v7 appendString:@""]);
    v38 = *(contextCopy + 24);
LABEL_53:
    [v38 removeLastObject];
    return v26;
  }

  if (expressionType2 != 14 || (v14 = [v4 constantValue], objc_msgSend(v14, "count") != 2) || (v50 = 0u, v51 = 0u, v48 = 0u, v49 = 0u, (v15 = objc_msgSend(v14, "countByEnumeratingWithState:objects:count:", &v48, v53, 16)) == 0))
  {
LABEL_44:
    [v7 appendString:@""]);
    [*(context + 24) removeLastObject];
    v26 = v7;
LABEL_45:
    contextCopy3 = context;
    goto LABEL_46;
  }

  v16 = v15;
  v17 = 0;
  v18 = 0;
  v19 = *v49;
  do
  {
    for (j = 0; j != v16; ++j)
    {
      if (*v49 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v48 + 1) + 8 * j);
      if ([v21 expressionType])
      {
        if (([objc_opt_class() isSimpleKeypath:v21] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v21))
        {
          v17 = -12;
          continue;
        }

        v22 = [context _generateSQLForKeyPathExpression:v21 allowToMany:0 inContext:a2];
        if (!v22)
        {
          goto LABEL_32;
        }

        v23 = v22;
        [v7 appendString:v22];
      }

      else
      {
        v23 = -[NSSQLConstantValueIntermediate initWithConstantValue:inScope:context:]([NSSQLConstantValueIntermediate alloc], "initWithConstantValue:inScope:context:", [v21 constantValue], context, a2);
        v24 = [(NSSQLConstantValueIntermediate *)v23 generateSQLStringInContext:a2];
        [v7 appendString:v24];
      }

      if (v17)
      {
        v18 = 1;
      }

      else
      {
        [v7 appendString:@" AND "];
        v18 = 1;
        v17 = 1;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
  }

  while (v16);
  v25 = v17 > 0;
  v26 = v7;
  contextCopy3 = context;
  v28 = v25 | v18;
  [v26 appendString:@""]);
  [*(contextCopy3 + 24) removeLastObject];
  if (v28)
  {
    return v26;
  }

LABEL_46:
  [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(contextCopy3 + 16)), 0), @"NSUnderlyingException"}];

  return 0;
}

- (id)_generateSQLBoundByStringInContext:(uint64_t)context
{
  if (context)
  {
    if ([*(context + 32) expressionType] == 3)
    {
      v4 = [objc_msgSend(*(context + 32) "keyPath")];
      if (v4 && (v5 = v4, [v4 count]))
      {
        v6 = [context governingEntityForKeypathExpression:*(context + 32)];
        v7 = [v5 count];
        entityDescription = [v6 entityDescription];
        if (v7)
        {
          destinationEntity = entityDescription;
          v33 = a2;
          v10 = 0;
          v11 = 0;
          v34 = v7 - 1;
          do
          {
            v12 = [v5 objectAtIndex:v11];
            if (!destinationEntity || (v13 = [objc_msgSend(destinationEntity "propertiesByName")]) == 0)
            {
LABEL_35:
              v28 = MEMORY[0x1E695DF30];
              v29 = *MEMORY[0x1E695D940];
              v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12);
              v25 = v28;
              v26 = v29;
              goto LABEL_37;
            }

            v14 = v13;
            _propertyType = [v13 _propertyType];
            if ([v14 _isAttribute])
            {
              if (v34 != v11)
              {
                goto LABEL_35;
              }

              if ([v14 attributeType])
              {
                v25 = MEMORY[0x1E695DF30];
                v26 = *MEMORY[0x1E695D940];
                v27 = @"Unsupported predicate, LHS of boundedBy: does not terminate with a location attribute";
                goto LABEL_37;
              }

              v10 = [objc_msgSend(v14 "userInfo")];
              if (([v10 isNSArray] & 1) == 0)
              {
                if (![v10 isNSString])
                {
                  goto LABEL_32;
                }

                v10 = [objc_msgSend(objc_msgSend(v10 "description")];
              }

              if (!v10 || [v10 count] != 2)
              {
LABEL_32:
                v25 = MEMORY[0x1E695DF30];
                v26 = *MEMORY[0x1E695D940];
                v27 = @"Bad LHS attribute, missing derived lat/long names";
LABEL_37:
                v22 = [v25 exceptionWithName:v26 reason:v27 userInfo:0];
                v23 = v33;
                goto LABEL_28;
              }
            }

            else
            {
              if (_propertyType != 4)
              {
                v25 = MEMORY[0x1E695DF30];
                v26 = *MEMORY[0x1E695D940];
                v27 = @"Unsupported predicate, LHS of boundedBy: does not terminate with a location";
                goto LABEL_37;
              }

              destinationEntity = [v14 destinationEntity];
            }

            ++v11;
          }

          while (v7 != v11);
          v16 = -[NSSQLBoundedByIntermediate initWithWorkingEntity:target:bounds:scope:]([NSSQLBoundedByIntermediate alloc], "initWithWorkingEntity:target:bounds:scope:", [objc_msgSend(objc_msgSend(v33 objectForKey:{@"persistentStore", "model"), "entityNamed:", objc_msgSend(destinationEntity, "name")}], v14, *(context + 40), context);
          v17 = [(NSSQLBoundedByIntermediate *)v16 generateSQLStringInContext:v33];

          if (!v17)
          {
            return 0;
          }

          if (v7 == 1)
          {
            v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@.Z_PK IN ", objc_msgSend(context, "governingAliasForKeypathExpression:", *(context + 32))];
            if (!v18)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v30 = [objc_msgSend(objc_msgSend(v5 subarrayWithRange:{0, v34), "componentsJoinedByString:", @".", "stringByAppendingFormat:", @".%@", objc_msgSend(v10, "firstObject")}];
            v31 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLKeypathExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [MEMORY[0x1E696ABC8] expressionForKeyPath:v30], 1, context);
            v32 = v31;
            if (v31)
            {
              *(&v31->super._allowToMany + 1) = 1;
            }

            v18 = [(NSSQLKeypathExpressionIntermediate *)v31 generateSQLStringInContext:v33];

            if (!v18)
            {
              goto LABEL_43;
            }

            [v18 appendString:@" IN "];
          }

          [v18 appendFormat:@"(%@) ", v17];
LABEL_43:

          return v18;
        }

        v19 = MEMORY[0x1E695DF30];
        v20 = *MEMORY[0x1E695D940];
        v21 = @"Unsupported predicate, LHS of boundedBy: can't find location attribute";
      }

      else
      {
        v19 = MEMORY[0x1E695DF30];
        v20 = *MEMORY[0x1E695D940];
        v21 = @"Unsupported predicate, LHS of boundedBy: is a bad keypath a keypath";
      }
    }

    else
    {
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = @"Unsupported predicate, LHS of boundedBy: must be a keypath";
    }

    v22 = [v19 exceptionWithName:v20 reason:v21 userInfo:0];
    v23 = a2;
LABEL_28:
    [v23 setObject:v22 forKey:@"NSUnderlyingException"];
  }

  return 0;
}

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  predicateOperatorType = [(NSPredicate *)self->super._predicate predicateOperatorType];
  if ([(NSPredicate *)self->super._predicate comparisonPredicateModifier]!= 1)
  {
    effectiveLeftExpression = self->_effectiveLeftExpression;
    if ([(NSExpression *)effectiveLeftExpression expressionType]== NSConstantValueExpressionType)
    {
      constantValue = [(NSExpression *)effectiveLeftExpression constantValue];
      if (!constantValue || [MEMORY[0x1E695DFB0] null] == constantValue)
      {
        v6 = MEMORY[0x1E695DF30];
        v7 = *MEMORY[0x1E695D940];
        v8 = @"can't use NULL on left hand side";
        goto LABEL_4;
      }
    }

    if (predicateOperatorType > 6)
    {
      if (predicateOperatorType <= 9)
      {
        if (predicateOperatorType != 7)
        {
          if (predicateOperatorType == 8)
          {
            v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLBeginsWithStringInContext:context];
          }

          else
          {
            v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLSubstringWildStart:0 wildEnd:context inContext:?];
          }

          goto LABEL_42;
        }

        v18 = CFSTR(" NSCoreDataLike(");
LABEL_40:
        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLForMatchingOperator:v18 inContext:context];
        goto LABEL_42;
      }

      if (predicateOperatorType > 99)
      {
        if (predicateOperatorType == 100)
        {
          v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLBetweenStringInContext:context];
          goto LABEL_42;
        }

        if (predicateOperatorType == 2000)
        {
          v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLBoundByStringInContext:context];
          goto LABEL_42;
        }
      }

      else if (predicateOperatorType == 10 || predicateOperatorType == 99)
      {
        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLContainmentStringInContext:context];
        goto LABEL_42;
      }
    }

    else
    {
      if (predicateOperatorType < 4)
      {
        v12 = self->_effectiveLeftExpression;
        effectiveRightExpression = self->_effectiveRightExpression;
        comparisonPredicateModifier = [(NSPredicate *)self->super._predicate comparisonPredicateModifier];
        if (-[NSExpression expressionType](v12, "expressionType") == NSConstantValueExpressionType && ((v17 = -[NSExpression constantValue](v12, "constantValue")) == 0 || [MEMORY[0x1E695DFB0] null] == v17) || -[NSExpression expressionType](effectiveRightExpression, "expressionType") == NSConstantValueExpressionType && ((v19 = -[NSExpression constantValue](effectiveRightExpression, "constantValue")) == 0 || objc_msgSend(MEMORY[0x1E695DFB0], "null") == v19))
        {
          v20 = MEMORY[0x1E695DF30];
          v21 = *MEMORY[0x1E695D940];
          v22 = @"illegal comparison with NULL";
          v23 = 0;
LABEL_45:
          [context setObject:objc_msgSend(v20 forKey:{"exceptionWithName:reason:userInfo:", v21, v22, v23), @"NSUnderlyingException"}];
          goto LABEL_46;
        }

        if (![(NSPredicate *)self->super._predicate options])
        {
          if (!self->_comparisonPredicateScopedItem)
          {
            self->_comparisonPredicateScopedItem = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          if ([(NSExpression *)v12 expressionType]== NSKeyPathExpressionType && (v27 = [(NSExpression *)effectiveRightExpression expressionType], v26 = v12, !v27) || [(NSExpression *)effectiveRightExpression expressionType]== NSKeyPathExpressionType && (v28 = [(NSExpression *)v12 expressionType], v26 = effectiveRightExpression, !v28))
          {
            [(NSMutableArray *)self->_comparisonPredicateScopedItem addObject:v26];
            v29 = 1;
          }

          else
          {
            v29 = 0;
          }

          v30 = [(NSSQLIntermediate *)self _generateSQLForExpression:v12 allowToMany:comparisonPredicateModifier == 2 inContext:context];
          if (v30)
          {
            v9 = v30;
            v31 = [(NSSQLIntermediate *)self _generateSQLForExpression:comparisonPredicateModifier == 2 allowToMany:context inContext:?];
            if (v31)
            {
              v32 = v31;
              v33 = [NSSQLSimpleWhereIntermediate _sqlTokenForPredicateOperator:context inContext:?];
              if (v33)
              {
                v34 = v33;
                [v9 appendString:@" "];
                [v9 appendString:v34];
                [v9 appendString:@" "];
                [v9 appendString:v32];

                if (v29)
                {
                  [(NSMutableArray *)self->_comparisonPredicateScopedItem removeLastObject];
                }

                goto LABEL_51;
              }
            }

            else
            {
            }
          }

          goto LABEL_46;
        }

        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLType3InContext:context];
LABEL_42:
        v9 = v15;
        if (v15)
        {
LABEL_51:

          self->_comparisonPredicateScopedItem = 0;
          [context setValue:0 forKey:@"entitySpecificationKeypath"];
          [context setValue:0 forKey:@"entitySpecificationKeypathContainsToMany"];
          [context setValue:0 forKey:@"generatePairs"];
          return v9;
        }

LABEL_46:
        if ([context objectForKey:@"LastKeyPathWasTransientProperty"])
        {
          [context removeObjectForKey:@"NSUnderlyingException"];
          [context removeObjectForKey:@"LastKeyPathWasTransientProperty"];
        }

        else if (![context objectForKey:@"NSUnderlyingException"])
        {
          [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._predicate), objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", self->super._predicate, @"predicate", @"NSUnderlyingException"}];
        }

        v9 = 0;
        goto LABEL_51;
      }

      if ((predicateOperatorType - 4) < 2)
      {
        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLType2InContext:context];
        goto LABEL_42;
      }

      if (predicateOperatorType == 6)
      {
        v18 = CFSTR(" NSCoreDataMatches(");
        goto LABEL_40;
      }
    }

    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObject:self->super._predicate forKey:@"predicate"];
    v22 = @"Unknown/unsupported comparison predicate operator type";
    v20 = v24;
    v21 = v25;
    goto LABEL_45;
  }

  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = @"ALL modifier is not implemented";
LABEL_4:
  [context setObject:objc_msgSend(v6 forKey:{"exceptionWithName:reason:userInfo:", v7, v8, 0), @"NSUnderlyingException"}];
  return 0;
}

@end