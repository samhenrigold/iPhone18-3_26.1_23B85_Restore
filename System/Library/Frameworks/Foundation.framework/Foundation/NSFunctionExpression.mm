@interface NSFunctionExpression
- (BOOL)_allowsEvaluation;
- (BOOL)_shouldUseParensWithDescription;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSelectorAllowed:(SEL)allowed;
- (NSFunctionExpression)initWithCoder:(id)coder;
- (NSFunctionExpression)initWithExpressionType:(unint64_t)type operand:(id)operand selector:(SEL)selector argumentArray:(id)array;
- (NSFunctionExpression)initWithSelector:(SEL)selector argumentArray:(id)array;
- (NSFunctionExpression)initWithTarget:(id)target selectorName:(id)name arguments:(id)arguments;
- (SEL)selector;
- (id)_expressionWithSubstitutionVariables:(id)variables;
- (id)binaryOperatorForSelector;
- (id)copyWithZone:(_NSZone *)zone;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (id)function;
- (id)predicateFormat;
- (uint64_t)_validateExpression;
- (unint64_t)hash;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFunctionExpression

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFunctionExpression;
  [(NSFunctionExpression *)&v3 dealloc];
}

- (uint64_t)_validateExpression
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v8 = 0;
    if (*(result + 32))
    {
      v2 = *(result + 32);
    }

    else
    {
      v2 = 0;
    }

    result = [_NSPredicateUtilities _predicateEnforceRestrictionsOnSelector:v2 withOperand:*(result + 24) isKVC:&v8 forComponentName:@"NSFunctionExpression"];
    if ((result & 1) == 0)
    {
      *(v1 + 8) |= 4u;
    }

    if (v8)
    {
      *(v1 + 8) |= 2u;
      result = [*(v1 + 40) firstObject];
      if (result)
      {
        v3 = result;
        if ([result expressionType])
        {
          result = [v3 expressionType];
          if (result != 3)
          {
            return result;
          }

          result = [v3 keyPath];
          constantValue = result;
        }

        else
        {
          constantValue = [v3 constantValue];
          result = [constantValue isNSString];
          if ((result & 1) == 0)
          {
            return result;
          }
        }

        if (constantValue)
        {
          result = [_NSPredicateUtilities _predicateEnforceRestrictionsOnKeyPath:constantValue withOperand:*(v1 + 24) forComponentName:@"NSFunctionExpression"];
          v5 = *(v1 + 8);
          v6 = v5 | 8;
          v7 = v5 & 0xFFFFFFF3;
          if (!result)
          {
            v7 = v6;
          }

          *(v1 + 8) = v7;
        }
      }
    }
  }

  return result;
}

- (void)allowEvaluation
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSExpression *)self->_operand allowEvaluation];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  arguments = self->_arguments;
  v4 = [(NSArray *)arguments countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(arguments);
        }

        [*(*(&v10 + 1) + 8 * i) allowEvaluation];
      }

      v5 = [(NSArray *)arguments countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = NSFunctionExpression;
  [(NSExpression *)&v8 allowEvaluation];
}

- (BOOL)_allowsEvaluation
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSFunctionExpression;
  return [(NSExpression *)&v3 _allowsEvaluation];
}

- (id)predicateFormat
{
  v67 = *MEMORY[0x1E69E9840];
  binaryOperatorForSelector = [(NSFunctionExpression *)self binaryOperatorForSelector];
  selector = [(NSFunctionExpression *)self selector];
  if (binaryOperatorForSelector)
  {
    v5 = [-[NSFunctionExpression arguments](self "arguments")];
    v6 = [-[NSFunctionExpression arguments](self "arguments")];
    _shouldUseParensWithDescription = [v5 _shouldUseParensWithDescription];
    _shouldUseParensWithDescription2 = [v6 _shouldUseParensWithDescription];
    v9 = _shouldUseParensWithDescription == 0;
    if (_shouldUseParensWithDescription)
    {
      v10 = CFSTR("(");
    }

    else
    {
      v10 = &stru_1EEEFDF90;
    }

    if (v9)
    {
      v11 = &stru_1EEEFDF90;
    }

    else
    {
      v11 = @"");
    }

    if (_shouldUseParensWithDescription2)
    {
      v12 = CFSTR("(");
    }

    else
    {
      v12 = &stru_1EEEFDF90;
    }

    if (_shouldUseParensWithDescription2)
    {
      v13 = @"");
    }

    else
    {
      v13 = &stru_1EEEFDF90;
    }

    v14 = [binaryOperatorForSelector characterAtIndex:0];
    if (v14 == 91)
    {
      return [NSString stringWithFormat:@"%@%@%@[%@]", v10, v5, v11, v6, v49, v50, v51];
    }

    else if (v14 == 101)
    {
      return [NSString stringWithFormat:@"%@%@%@ ** %@%@%@", v10, v5, v11, v12, v6, v13, v51];
    }

    else
    {
      return [NSString stringWithFormat:@"%@%@%@ %@ %@%@%@", v10, v5, v11, binaryOperatorForSelector, v12, v6, v13];
    }
  }

  else
  {
    v16 = selector;
    if (selector == sel_onesComplement_)
    {
      v27 = [-[NSFunctionExpression arguments](self "arguments")];
      _shouldUseParensWithDescription3 = [v27 _shouldUseParensWithDescription];
      v29 = &stru_1EEEFDF90;
      v30 = CFSTR("(");
      if (_shouldUseParensWithDescription3)
      {
        v29 = @"");
      }

      else
      {
        v30 = &stru_1EEEFDF90;
      }

      return [NSString stringWithFormat:@"%@~%@%@", v30, v27, v29, v48, v49, v50, v51];
    }

    else
    {
      operand = [(NSFunctionExpression *)self operand];
      if (!operand || (v18 = operand, (objc_opt_isKindOfClass() & 1) != 0) && _NSPredicateUtilities == [v18 constantValue])
      {
        if (v16 == sel_castObject_toType_)
        {
          v26 = +[NSString stringWithString:](NSMutableString, "stringWithString:", @"CAST(");
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          arguments = [(NSFunctionExpression *)self arguments];
          v41 = [arguments countByEnumeratingWithState:&v58 objects:v57 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = 0;
            v44 = *v59;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v59 != v44)
                {
                  objc_enumerationMutation(arguments);
                }

                v46 = *(*(&v58 + 1) + 8 * i);
                if (-v43 != i)
                {
                  [(NSMutableString *)v26 appendString:@", "];
                }

                -[NSMutableString appendString:](v26, "appendString:", [v46 predicateFormat]);
              }

              v43 += v42;
              v42 = [arguments countByEnumeratingWithState:&v58 objects:v57 count:16];
            }

            while (v42);
          }
        }

        else
        {
          v31 = NSStringFromSelector(v16);
          if ([_NSPredicateUtilities _isReservedWordInParser:v31])
          {
            v32 = @"#";
          }

          else
          {
            v32 = &stru_1EEEFDF90;
          }

          v26 = [(NSString *)NSMutableString stringWithString:v32];
          [(NSMutableString *)v26 appendString:v31];
          -[NSMutableString appendString:](v26, "appendString:", @"(");
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          arguments2 = [(NSFunctionExpression *)self arguments];
          v34 = [arguments2 countByEnumeratingWithState:&v63 objects:v62 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = 0;
            v37 = *v64;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v64 != v37)
                {
                  objc_enumerationMutation(arguments2);
                }

                v39 = *(*(&v63 + 1) + 8 * j);
                if (-v36 != j)
                {
                  [(NSMutableString *)v26 appendString:@", "];
                }

                -[NSMutableString appendString:](v26, "appendString:", [v39 predicateFormat]);
              }

              v36 += v35;
              v35 = [arguments2 countByEnumeratingWithState:&v63 objects:v62 count:16];
            }

            while (v35);
          }
        }

        [(NSMutableString *)v26 appendString:@""]);
      }

      else
      {
        if (![-[NSFunctionExpression arguments](self "arguments")])
        {
          return [NSString stringWithFormat:@"FUNCTION(%@, %@)", v18, NSStringFromSelector(v16), v47, v48, v49, v50, v51];
        }

        v19 = +[(NSString *)NSMutableString];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        arguments3 = [(NSFunctionExpression *)self arguments];
        v21 = [arguments3 countByEnumeratingWithState:&v53 objects:v52 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v54;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v54 != v23)
              {
                objc_enumerationMutation(arguments3);
              }

              v25 = *(*(&v53 + 1) + 8 * k);
              [(NSString *)v19 appendString:@", "];
              -[NSString appendString:](v19, "appendString:", [v25 predicateFormat]);
            }

            v22 = [arguments3 countByEnumeratingWithState:&v53 objects:v52 count:16];
          }

          while (v22);
        }

        return [NSString stringWithFormat:@"FUNCTION(%@, %@ %@)", v18, NSStringFromSelector(v16), v19];
      }

      return v26;
    }
  }
}

- (id)binaryOperatorForSelector
{
  selector = [(NSFunctionExpression *)self selector];
  if (selector == sel_add_to_)
  {
    return @"+";
  }

  if (selector == sel_from_subtract_)
  {
    return @"-";
  }

  if (selector == sel_multiply_by_)
  {
    return @"*";
  }

  if (selector == sel_divide_by_)
  {
    return @"/";
  }

  if (selector == sel_raise_toPower_)
  {
    return @"e";
  }

  if (selector == sel_objectFrom_withIndex_)
  {
    return @"[";
  }

  if (selector == sel_bitwiseAnd_with_)
  {
    return @"&";
  }

  if (selector == sel_bitwiseOr_with_)
  {
    return @"|";
  }

  if (selector == sel_bitwiseXor_with_)
  {
    return @"^";
  }

  if (selector == sel_leftshift_by_)
  {
    return @"<<";
  }

  if (selector == sel_rightshift_by_)
  {
    return @">>";
  }

  return 0;
}

- (BOOL)_shouldUseParensWithDescription
{
  v2 = [-[NSFunctionExpression binaryOperatorForSelector](self "binaryOperatorForSelector")] << 24;
  if (v2)
  {
    v3 = v2 == 1526726656;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (id)function
{
  selector = [(NSFunctionExpression *)self selector];

  return NSStringFromSelector(selector);
}

- (unint64_t)hash
{
  v3 = [NSStringFromSelector([(NSFunctionExpression *)self selector]) hash];
  v4 = [-[NSFunctionExpression operand](self "operand")];
  return v4 ^ [-[NSFunctionExpression arguments](self "arguments")] ^ v3;
}

- (NSFunctionExpression)initWithSelector:(SEL)selector argumentArray:(id)array
{
  v7 = [[NSConstantValueExpression alloc] initWithObject:_NSPredicateUtilities];
  v8 = [(NSFunctionExpression *)self initWithExpressionType:4 operand:v7 selector:selector argumentArray:array];

  return v8;
}

- (NSFunctionExpression)initWithExpressionType:(unint64_t)type operand:(id)operand selector:(SEL)selector argumentArray:(id)array
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSFunctionExpression;
  v9 = [(NSExpression *)&v12 initWithExpressionType:type];
  v9->_operand = operand;
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  v9->_selector = selectorCopy;
  v9->_arguments = array;
  [(NSFunctionExpression *)v9 _validateExpression];
  return v9;
}

- (NSFunctionExpression)initWithTarget:(id)target selectorName:(id)name arguments:(id)arguments
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = NSSelectorFromString(name);
  if (!v9)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Invalid selector name (%@)", name), 0}]);
  }

  v10 = v9;
  v13.receiver = self;
  v13.super_class = NSFunctionExpression;
  v11 = [(NSExpression *)&v13 initWithExpressionType:4];
  v11->_operand = target;
  v11->_selector = v10;
  v11->_arguments = arguments;
  [(NSFunctionExpression *)v11 _validateExpression];
  return v11;
}

- (BOOL)isSelectorAllowed:(SEL)allowed
{
  v3 = NSStringFromSelector(allowed);
  objc_opt_self();
  if ([*(_CFPredicatePolicyData() + 32) objectForKey:v3])
  {
    return 1;
  }

  objc_opt_self();
  return [*_CFPredicatePolicyData() objectForKey:v3] != 0;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSFunctionExpression;
  [(NSExpression *)&v5 encodeWithCoder:coder];
  [coder encodeObject:NSStringFromSelector(-[NSFunctionExpression selector](self forKey:{"selector")), @"NSSelectorName"}];
  [coder encodeObject:-[NSFunctionExpression operand](self forKey:{"operand"), @"NSOperand"}];
  [coder encodeObject:-[NSFunctionExpression arguments](self forKey:{"arguments"), @"NSArguments"}];
}

- (NSFunctionExpression)initWithCoder:(id)coder
{
  v32 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    v22 = MEMORY[0x1E695DF30];
    v23 = *MEMORY[0x1E695D940];
    v24 = @"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers";
    goto LABEL_44;
  }

  v26.receiver = self;
  v26.super_class = NSFunctionExpression;
  v5 = [(NSExpression *)&v26 initWithCoder:coder];
  if (!v5)
  {
    return v5;
  }

  allowedClasses = [coder allowedClasses];
  v25 = [allowedClasses count];
  if (v25)
  {
    v7 = [allowedClasses mutableCopy];
    [v7 unionSet:{+[_NSPredicateUtilities _expressionClassesForSecureCoding](_NSPredicateUtilities, "_expressionClassesForSecureCoding")}];
    v8 = [allowedClasses mutableCopy];
    [v8 unionSet:{+[_NSPredicateUtilities _extendedExpressionClassesForSecureCoding](_NSPredicateUtilities, "_extendedExpressionClassesForSecureCoding")}];
  }

  else
  {
    v7 = +[_NSPredicateUtilities _expressionClassesForSecureCoding];
    v8 = +[_NSPredicateUtilities _extendedExpressionClassesForSecureCoding];
  }

  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSSelectorName"];
  p_selector = &v5->_selector;
  v11 = NSSelectorFromString(v9);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *p_selector = v12;
  v5->_operand = [coder decodeObjectOfClasses:v7 forKey:@"NSOperand"];
  v5->_arguments = [coder decodeObjectOfClasses:v8 forKey:@"NSArguments"];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = @"Malformed function expression (bad operator)";
    goto LABEL_18;
  }

  if (v5->_arguments && (_NSIsNSSet() & 1) == 0 && (_NSIsNSArray() & 1) == 0 && !_NSIsNSOrderedSet())
  {
    v13 = @"Malformed function expression (bad arguments)";
LABEL_18:
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v13 userInfo:0];
    if (v14)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  if (!*p_selector)
  {
    v13 = @"Malformed function expression (bad selector)";
    goto LABEL_18;
  }

LABEL_19:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  arguments = v5->_arguments;
  v16 = [(NSArray *)arguments countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(arguments);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Malformed function expression (bad argument)" userInfo:0];
          goto LABEL_30;
        }
      }

      v17 = [(NSArray *)arguments countByEnumeratingWithState:&v28 objects:v27 count:16];
      v14 = 0;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_30:
  [(NSFunctionExpression *)v5 _validateExpression];
  if (objc_opt_isKindOfClass())
  {
    v20 = *p_selector;
    if (*p_selector)
    {
      if (sel_valueForKeyPath_ == v20)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    if (sel_valueForKeyPath_)
    {
      v20 = 0;
LABEL_36:
      if (v20 == sel_valueForKey_)
      {
        goto LABEL_38;
      }

      objc_opt_self();
      if ((_CFPredicatePolicyData_getFlags() & 8) == 0)
      {
        goto LABEL_38;
      }

      v22 = MEMORY[0x1E695DF30];
      v23 = *MEMORY[0x1E695D940];
      v24 = @"NSKeyPathExpression is malformed";
LABEL_44:
      objc_exception_throw([v22 exceptionWithName:v23 reason:v24 userInfo:0]);
    }
  }

LABEL_38:
  if (v25)
  {
  }

  if (v14)
  {

    objc_exception_throw(v14);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [(NSExpression *)self->_operand copy];
  arguments = [(NSFunctionExpression *)self arguments];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_arguments, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [arguments countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(arguments);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) copy];
        [v6 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [arguments countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }

  v12 = [objc_alloc(objc_opt_class()) initWithExpressionType:-[NSFunctionExpression expressionType](self operand:"expressionType") selector:v4 argumentArray:{-[NSFunctionExpression selector](self, "selector"), v6}];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  selector = [(NSFunctionExpression *)self selector];
  if (selector != [equal selector] || !objc_msgSend(-[NSFunctionExpression operand](self, "operand"), "isEqual:", objc_msgSend(equal, "operand")))
  {
    return 0;
  }

  arguments = [(NSFunctionExpression *)self arguments];
  arguments2 = [equal arguments];

  return [arguments isEqual:arguments2];
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  v147 = *MEMORY[0x1E69E9840];
  if (![(NSFunctionExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  *&v137[1] = 0;
  v7 = objc_autoreleasePoolPush();
  arguments = [(NSFunctionExpression *)self arguments];
  v135 = [arguments count];
  selector = [(NSFunctionExpression *)self selector];
  expressionFlags = self->super._expressionFlags;
  *v137 = (*&expressionFlags & 2) != 0;
  v134 = selector;
  if (selector)
  {
    Name = sel_getName(selector);
    objc_opt_self();
    if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
    {
      [(NSFunctionExpression *)self isSelectorAllowed:v134];
    }

    if ((*&self->super._expressionFlags & 4) == 0 && [_NSPredicateUtilities _predicateEnforceRestrictionsOnSelector:v134 withOperand:[(NSFunctionExpression *)self operand] isKVC:v137 forComponentName:@"NSFunctionExpression"])
    {
      +[_NSPredicateUtilities _predicateSecurityAction];
    }
  }

  else
  {
    Name = 0;
  }

  v131 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  v12 = [-[NSFunctionExpression operand](self "operand")];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    v133 = v13;
    LODWORD(v132) = object_isClass(v13);
    if (v132)
    {
      v15 = class_getName(v133);
      if (strncmp("_NSPredicateUtilities", v15, 0x15uLL))
      {
        objc_opt_self();
        v16 = _NSOSLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          *&buf[4] = v133;
          _os_log_fault_impl(&dword_18075C000, v16, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSFunctionExpression on a Class '%{public}@' is deprecated and will be removed in a future release.  NSFunctionExpression should operate on instances.", buf, 0xCu);
        }

        objc_opt_self();
        if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
        {
          [(NSFunctionExpression *)self operand];
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            +[_NSPredicateUtilities _predicateSecurityAction];
          }
        }
      }
    }

    if ([_NSPredicateUtilities _predicateEnforceRestrictionsOnTarget:v133 forComponentName:@"NSFunctionExpression"])
    {
      +[_NSPredicateUtilities _predicateSecurityAction];
    }

    if (v135 >> 60)
    {
      v118 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v135);
      v119 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v118 userInfo:0];
      CFRelease(v118);
      objc_exception_throw(v119);
    }

    if (v135 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v135;
    }

    MEMORY[0x1EEE9AC00](v17);
    v19 = &v123 - v18;
    v20 = 0;
    v136 = 0;
    if (v21 >= 0x101)
    {
      v20 = _CFCreateArrayStorage();
    }

    v127 = &v123;
    v128 = v7;
    v124 = expressionFlags;
    v125 = Name;
    *&v126 = v19;
    v129 = v20;
    if (v135 < 0x101)
    {
      v20 = v19;
    }

    v130 = v20;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v22 = [arguments countByEnumeratingWithState:&v140 objects:v139 count:16];
    if (v22)
    {
      v23 = *v141;
      v24 = v130;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v141 != v23)
          {
            objc_enumerationMutation(arguments);
          }

          v26 = [*(*(&v140 + 1) + 8 * i) expressionValueWithObject:object context:context];
          v27 = v26;
          *v24 = v26;
          v24 += 8;
        }

        v22 = [arguments countByEnumeratingWithState:&v140 objects:v139 count:16];
      }

      while (v22);
    }

    if (v137[0] == 1 && v135 && (*&self->super._expressionFlags & 8) == 0)
    {
      v28 = v130;
      v29 = *v130;
      p_superclass = NSSimpleRegularExpressionCheckingResult.superclass;
      operand = [(NSFunctionExpression *)self operand];
      v32 = v133;
      if ([_NSPredicateUtilities _predicateEnforceRestrictionsOnKeyPath:v29 withOperand:operand forComponentName:@"NSFunctionExpression"])
      {
        +[_NSPredicateUtilities _predicateSecurityAction];
      }

      v33 = [v29 componentsSeparatedByString:@"."];
      if (![v33 count])
      {
        v39 = 0;
        goto LABEL_56;
      }

      v34 = NSSelectorFromString([v33 objectAtIndexedSubscript:0]);
      v35 = sel_getName(v34);
      if (v132)
      {
        ClassMethod = class_getClassMethod(v32, v34);
        Property = class_getProperty(v32, v35);
        InstanceVariable = class_getInstanceVariable(v32, v35);
      }

      else
      {
        Class = object_getClass(v32);
        ClassMethod = class_getInstanceMethod(Class, v34);
        Property = class_getProperty(Class, v35);
        InstanceVariable = class_getInstanceVariable(Class, v35);
      }

      v40 = ClassMethod != 0;
      v39 = InstanceVariable != 0;
      if (!Property)
      {
LABEL_53:
        if (!v40)
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v29 = 0;
      v39 = 0;
      p_superclass = (NSSimpleRegularExpressionCheckingResult + 8);
      v28 = v130;
      v32 = v133;
      if (!v134)
      {
        v40 = 0;
        goto LABEL_57;
      }

      v40 = 0;
      if (v137[0])
      {
        goto LABEL_57;
      }

      v41 = v125;
      if (v132)
      {
        v40 = class_getClassMethod(v133, v134) != 0;
        v42 = class_getProperty(v32, v41);
        v29 = 0;
        v39 = class_getInstanceVariable(v32, v41) != 0;
        if (!v42)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v44 = object_getClass(v133);
        v40 = class_getInstanceMethod(v44, v134) != 0;
        v45 = class_getProperty(v44, v41);
        v29 = 0;
        v39 = class_getInstanceVariable(v44, v41) != 0;
        if (!v45)
        {
          goto LABEL_53;
        }
      }
    }

    v39 |= 2u;
    if (v40)
    {
LABEL_54:
      v40 = 4;
      goto LABEL_57;
    }

LABEL_56:
    v40 = 0;
LABEL_57:
    v46 = object_getClass(v32);
    v130 = class_getName(v46);
    if (v132)
    {
      InstanceMethod = class_getClassMethod(v46, v134);
    }

    else
    {
      InstanceMethod = class_getInstanceMethod(v46, v134);
    }

    v48 = InstanceMethod;
    v132 = v29;
    if (InstanceMethod)
    {
      NumberOfArguments = method_getNumberOfArguments(InstanceMethod);
      if ((&v135->isa + 2) != NumberOfArguments)
      {
        objc_opt_self();
        if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
        {
          objc_opt_self();
          v51 = _NSOSLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_18075C000, v51, OS_LOG_TYPE_FAULT, "NSPredicate: NSFunctionExpression incorrect number of arguments passed to method", buf, 2u);
          }

          +[(_NSPredicateUtilities *)(p_superclass];
        }
      }

      if (v135)
      {
        v52 = 0;
        *&v50 = 138412546;
        v123 = v50;
        v53 = 1;
        while (1)
        {
          BYTE4(v138) = 0;
          LODWORD(v138) = 0;
          method_getArgumentType(v48, v53 + 1, &v138, 4uLL);
          v54 = v138;
          if (v138 - 78 <= 0x24 && ((1 << (v138 - 78)) & 0x1300000113) != 0)
          {
            v54 = BYTE1(v138);
          }

          if (v54 == 35)
          {
            break;
          }

          if (v54 != 64)
          {
            objc_opt_self();
            v56 = _NSOSLog();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
            {
              v60 = @"<unknown>";
              if (v134)
              {
                v60 = NSStringFromSelector(v134);
              }

              *buf = v123;
              *&buf[4] = v60;
              *&buf[12] = 2080;
              *&buf[14] = &v138;
              _os_log_fault_impl(&dword_18075C000, v56, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSFunctionExpression with selector '%@' and parameter encoding '%s' is forbidden", buf, 0x16u);
            }

LABEL_80:
            +[(_NSPredicateUtilities *)(p_superclass];
          }

LABEL_81:
          v52 = v53;
          if (v135 <= v53++)
          {
            goto LABEL_89;
          }
        }

        v57 = v28[v52];
        if (([v57 isNSData] & 1) == 0 && !objc_msgSend(v57, "isNSString"))
        {
          goto LABEL_81;
        }

        objc_opt_self();
        v58 = _NSOSLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          v61 = @"<unknown>";
          if (v134)
          {
            v61 = NSStringFromSelector(v134);
          }

          *buf = v123;
          *&buf[4] = v61;
          *&buf[12] = 2080;
          *&buf[14] = &v138;
          _os_log_fault_impl(&dword_18075C000, v58, OS_LOG_TYPE_FAULT, "NSPredicate: Invalid argument passed to NSFunctionExpression with selector '%@' and parameter encoding '%s' expecting pointer", buf, 0x16u);
        }

        goto LABEL_80;
      }

LABEL_89:
      BYTE4(v138) = 0;
      LODWORD(v138) = 0;
      method_getReturnType(v48, &v138, 4uLL);
      v32 = v133;
      v62 = v138;
      v63 = v138 - 78;
      if (v63 <= 0x24 && ((1 << v63) & 0x1300000113) != 0)
      {
        v62 = BYTE1(v138);
      }

      if (v62 != 35 && v62 != 64)
      {
        objc_opt_self();
        v64 = _NSOSLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          if (v134)
          {
            v116 = NSStringFromSelector(v134);
          }

          else
          {
            v116 = @"<unknown>";
          }

          *buf = 138412546;
          *&buf[4] = v116;
          *&buf[12] = 2080;
          *&buf[14] = &v138;
          _os_log_fault_impl(&dword_18075C000, v64, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSFunctionExpression with selector '%@' and return type '%s' is forbidden", buf, 0x16u);
        }

LABEL_102:
        +[(_NSPredicateUtilities *)(p_superclass];
      }
    }

    else
    {
      objc_opt_self();
      if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
      {
        if (v46)
        {
          v65 = class_getName(v46);
          if (strcmp(v65, "OCPartialMockObject"))
          {
            if (strcmp(v65, "OCMockObject"))
            {
              objc_opt_self();
              v66 = _NSOSLog();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_18075C000, v66, OS_LOG_TYPE_FAULT, "NSPredicate: NSFunctionExpression unable to find method", buf, 2u);
              }

              goto LABEL_102;
            }
          }
        }
      }
    }

    if (v135 > 4)
    {
      if (v135 <= 6)
      {
        if (v135 == 5)
        {
          v134 = [v32 v134];
        }

        else
        {
          v134 = [v32 v134];
        }

LABEL_124:
        *&v137[1] = v134;
        if (!v134)
        {
          goto LABEL_165;
        }

        goto LABEL_125;
      }

      if (v135 == 7)
      {
        v134 = [v32 v134];
        goto LABEL_124;
      }

      if (v135 == 8)
      {
        v134 = [v32 v134];
        goto LABEL_124;
      }

      if (v135 == 9)
      {
        v134 = [v32 v134];
        goto LABEL_124;
      }
    }

    else
    {
      if (v135 > 1)
      {
        if (v135 == 2)
        {
          v134 = [v32 v134];
        }

        else if (v135 == 3)
        {
          v134 = [v32 v134];
        }

        else
        {
          v134 = [v32 v134];
        }

        goto LABEL_124;
      }

      if (!v135)
      {
        v134 = [v32 v134];
        goto LABEL_124;
      }

      if (v135 == 1)
      {
        v134 = [v32 v134];
        goto LABEL_124;
      }
    }

    objc_opt_self();
    if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
    {
      objc_opt_self();
      v70 = _NSOSLog();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18075C000, v70, OS_LOG_TYPE_FAULT, "NSPredicate: NSFunctionExpression no longer allows arbitrarily long parameter lists", buf, 2u);
      }

      +[(_NSPredicateUtilities *)(p_superclass];
    }

    v71 = [(objc_class *)v32 methodSignatureForSelector:v134, v123, *(&v123 + 1)];
    if (!v71)
    {
      v120 = MEMORY[0x1E695DF30];
      if (v134)
      {
        v121 = NSStringFromSelector(v134);
      }

      else
      {
        v121 = @"<unknown>";
      }

      v133 = [NSString stringWithFormat:@"NSPredicateFunctionMissingSignature: can't find selector (%@) on %@", v121, v133];
      objc_exception_throw([v120 exceptionWithName:*MEMORY[0x1E695D930] reason:v133 userInfo:0]);
    }

    v72 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v71];
    v73 = v72;
    if (!v72)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSPredicateFunctionBadInvocation: can't make invocation" userInfo:0]);
    }

    [v72 setSelector:v134];
    [v73 setTarget:v32];
    numberOfArguments = [v71 numberOfArguments];
    if (numberOfArguments != v135)
    {
      objc_opt_self();
      if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
      {
        objc_opt_self();
        v76 = _NSOSLog();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
        {
          if (v134)
          {
            v117 = NSStringFromSelector(v134);
          }

          else
          {
            v117 = @"<unknown>";
          }

          *buf = 138412290;
          *&buf[4] = v117;
          _os_log_fault_impl(&dword_18075C000, v76, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSFunctionExpression with selector '%@' passed the incorrect number of arguments", buf, 0xCu);
        }

        +[(_NSPredicateUtilities *)(p_superclass];
      }
    }

    LODWORD(v133) = v40;
    v77 = 2;
    *&v75 = 138412546;
    v126 = v75;
    v79 = v134;
    v78 = v135;
    do
    {
      v80 = v28;
      v138 = *v28;
      v81 = [v71 getArgumentTypeAtIndex:v77];
      v82 = v81;
      if (v81)
      {
        if (strlen(v81) >= 2)
        {
          v83 = *v82;
          if (v83 == 94 || v83 == 64 && v82[1] == 63)
          {
            objc_opt_self();
            if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
            {
              objc_opt_self();
              v84 = _NSOSLog();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
              {
                v87 = @"<unknown>";
                if (v79)
                {
                  v87 = NSStringFromSelector(v79);
                }

                *buf = v126;
                *&buf[4] = v87;
                *&buf[12] = 2080;
                *&buf[14] = v82;
                _os_log_fault_impl(&dword_18075C000, v84, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSFunctionExpression with selector '%@' and parameter encoding '%s' is forbidden", buf, 0x16u);
              }

              +[_NSPredicateUtilities _predicateSecurityAction];
            }

            if (([v138 isNSData] & 1) != 0 || objc_msgSend(v138, "isNSString"))
            {
              objc_opt_self();
              v85 = _NSOSLog();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
              {
                v86 = @"<unknown>";
                if (v79)
                {
                  v86 = NSStringFromSelector(v79);
                }

                *buf = v126;
                *&buf[4] = v86;
                *&buf[12] = 2080;
                *&buf[14] = v82;
                _os_log_fault_impl(&dword_18075C000, v85, OS_LOG_TYPE_FAULT, "NSPredicate: Invalid argument passed to NSFunctionExpression with selector '%@' and parameter encoding '%s' expecting pointer", buf, 0x16u);
              }

              +[_NSPredicateUtilities _predicateSecurityAction];
            }
          }
        }
      }

      [v73 setArgument:&v138 atIndex:v77++];
      v28 = v80 + 1;
      v78 = (v78 - 1);
    }

    while (v78);
    [v73 invoke];
    p_superclass = NSSimpleRegularExpressionCheckingResult.superclass;
    v40 = v133;
    if ([v71 methodReturnLength])
    {
      [v73 getReturnValue:&v137[1]];
    }

    if (!*&v137[1])
    {
LABEL_165:
      v88 = *&v137[1];
      if (*&v137[1])
      {
        v89 = object_getClass(*&v137[1]);
        v90 = class_getName(v89);
      }

      else
      {
        v90 = 0;
      }

      objc_opt_self();
      if ((_CFPredicatePolicyData_getFlags() & 8) == 0)
      {
        goto LABEL_233;
      }

      v91 = v40 | v39;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getNSFESignpostLog_block_invoke;
      v145 = &__block_descriptor_48_e5_v8__0l;
      *&v146 = "com.apple.Foundation.NSPredAllowListing";
      *(&v146 + 1) = "NSFEEvent";
      if (qword_1EA821EC0 != -1)
      {
        dispatch_once(&qword_1EA821EC0, buf);
      }

      v135 = qword_1EA821EB8;
      v123 = [NSNumber numberWithChar:v40 | v39, v123];
      if (!os_variant_has_internal_diagnostics())
      {
        goto LABEL_233;
      }

      if (v90)
      {
        v93 = wrapInCheapMutableString(v90);
        if (v93)
        {
          objc_opt_self();
          v94 = 0;
          v95 = [*(_CFPredicatePolicyData() + 48) objectForKey:v93] == 0;
LABEL_177:
          v96 = 0;
          if (v130 && !v95)
          {
            v96 = wrapInCheapMutableString(v130);
          }

          v97 = !v95;
          if (v125)
          {
            v98 = !v95;
          }

          else
          {
            v98 = 0;
          }

          if (v98)
          {
            v101 = wrapInCheapMutableString(v125);
            v102 = v101;
            v99 = v96 != 0;
            if (v96)
            {
              v103 = v97;
            }

            else
            {
              v103 = 0;
            }

            v104 = v101 != 0;
            if (v103 == 1 && v101)
            {
              if (!isSelectorAllowed(v96, v101, &off_1EEF56C60))
              {
                v100 = [v102 hash];
                if (!v132)
                {
LABEL_211:
                  v100 ^= [v96 hash];
LABEL_212:
                  if ((v94 & 1) == 0)
                  {
                    v100 ^= [v93 hash];
                  }

                  v107 = [NSNumber numberWithUnsignedLong:v100];
                  os_unfair_lock_lock(&_MergedGlobals_29);
                  v108 = qword_1EA821EC8;
                  if (!qword_1EA821EC8)
                  {
                    v108 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:33];
                    qword_1EA821EC8 = v108;
                  }

                  v109 = [v108 containsObject:v107];
                  if ((v109 & 1) == 0)
                  {
                    [qword_1EA821EC8 addObject:v107];
                    if ([qword_1EA821EC8 count] >= 0x21)
                    {
                      [qword_1EA821EC8 removeObjectAtIndex:0];
                    }
                  }

                  v106 = v109 ^ 1;
                  os_unfair_lock_unlock(&_MergedGlobals_29);
                  goto LABEL_220;
                }

LABEL_206:
                v100 ^= [v132 hash];
                goto LABEL_211;
              }

              v99 = 1;
              v104 = 1;
            }
          }

          else
          {
            v99 = v96 != 0;
            if (v95)
            {
              if (v132)
              {
                v100 = [v132 hash];
              }

              else
              {
                v100 = 0;
              }

              v102 = 0;
              if (!v96)
              {
                goto LABEL_212;
              }

              goto LABEL_211;
            }

            v102 = 0;
            v104 = 0;
          }

          v106 = 0;
          if (!v132 || !v99 || (*&v124 & 2) == 0)
          {
LABEL_220:

            if (v106)
            {
              if ((*&v124 & 2) != 0)
              {
                v110 = [v132 lengthOfBytesUsingEncoding:4];
                v111 = malloc_type_malloc(v110 + 1, 0x514827A7uLL);
                if (v111)
                {
                  if ([v132 getCString:v111 maxLength:v110 + 1 encoding:4] && os_signpost_enabled(v135))
                  {
                    v112 = "";
                    *buf = 136316162;
                    if (v90)
                    {
                      v112 = v90;
                    }

                    *&buf[4] = v125;
                    *&buf[12] = 2080;
                    *&buf[14] = v111;
                    *&buf[22] = 2080;
                    v145 = v130;
                    LOWORD(v146) = 2080;
                    *(&v146 + 2) = v112;
                    WORD5(v146) = 1024;
                    HIDWORD(v146) = v91;
                    _os_signpost_emit_with_name_impl(&dword_18075C000, v135, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "KVCFun", "%s|%s|%s|%s|%hhu", buf, 0x30u);
                  }

                  free(v111);
                }
              }

              else if (os_signpost_enabled(v135))
              {
                v113 = "";
                *buf = 136315906;
                if (v90)
                {
                  v113 = v90;
                }

                *&buf[4] = v125;
                *&buf[12] = 2080;
                *&buf[14] = v130;
                *&buf[22] = 2080;
                v145 = v113;
                LOWORD(v146) = 1024;
                *(&v146 + 2) = v91;
                _os_signpost_emit_with_name_impl(&dword_18075C000, v135, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BannedSel", "%s|%s|%s|%hhu", buf, 0x26u);
              }
            }

LABEL_233:
            free(v129);
            v114 = v128;
            v115 = v131;
            if (v131)
            {
              [(_NSPerformanceMeter *)v131 invalidate];
            }

            objc_autoreleasePoolPop(v114);
            return *&v137[1];
          }

          if (isSelectorAllowed(v96, v132, v123))
          {
            v106 = 0;
            goto LABEL_220;
          }

          if (!v104)
          {
            v100 = [v132 hash];
            goto LABEL_211;
          }

          v100 = [v102 hash];
          goto LABEL_206;
        }
      }

      else
      {
        v93 = 0;
      }

      v95 = 0;
      v94 = 1;
      goto LABEL_177;
    }

LABEL_125:
    objc_opt_self();
    if ((_CFPredicatePolicyData_getFlags() & 8) != 0 && !object_isClass(*&v137[1]))
    {
      v68 = object_getClass(*&v137[1]);
      if (!object_isClass(v68))
      {
        objc_opt_self();
        v69 = _NSOSLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18075C000, v69, OS_LOG_TYPE_FAULT, "NSPredicate: NSFunctionExpression must return an object", buf, 2u);
        }

        +[(_NSPredicateUtilities *)(p_superclass];
      }
    }

    goto LABEL_165;
  }

  if (v131)
  {
    [(_NSPerformanceMeter *)v131 invalidate];
  }

  objc_autoreleasePoolPop(v7);
  return 0;
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  v17 = *MEMORY[0x1E69E9840];
  if (flags)
  {
    if ((flags & 4) != 0)
    {
      [visitor visitPredicateExpression:self];
    }

    [-[NSFunctionExpression operand](self "operand")];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    arguments = [(NSFunctionExpression *)self arguments];
    v8 = [arguments countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(arguments);
          }

          [*(*(&v13 + 1) + 8 * i) acceptVisitor:visitor flags:flags];
        }

        v9 = [arguments countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v9);
    }

    if ((flags & 4) == 0)
    {
      [visitor visitPredicateExpression:self];
    }
  }
}

- (id)_expressionWithSubstitutionVariables:(id)variables
{
  v19 = *MEMORY[0x1E69E9840];
  if (!variables)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v5 = [-[NSFunctionExpression operand](self "operand")];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  arguments = [(NSFunctionExpression *)self arguments];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [arguments countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(arguments);
        }

        [v6 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * v11++), "_expressionWithSubstitutionVariables:", variables)}];
      }

      while (v9 != v11);
      v9 = [arguments countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v9);
  }

  v12 = [objc_alloc(objc_opt_class()) initWithExpressionType:-[NSFunctionExpression expressionType](self operand:"expressionType") selector:v5 argumentArray:{-[NSFunctionExpression selector](self, "selector"), v6}];

  return v12;
}

@end