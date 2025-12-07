@interface EFSQLFunction
+ (id)abs:(id)abs;
+ (id)char:(id)char;
+ (id)coalesce:(id)coalesce;
+ (id)glob:(id)glob expression:(id)expression;
+ (id)hex:(id)hex;
+ (id)ifNull:(id)null second:(id)second;
+ (id)inStr:(id)str second:(id)second;
+ (id)jsonObject:(id)object key:(id)key;
+ (id)length:(id)length;
+ (id)like:(id)like expression:(id)expression;
+ (id)like:(id)like expression:(id)expression escape:(unsigned __int16)escape;
+ (id)likely:(id)likely;
+ (id)lower:(id)lower;
+ (id)ltrim:(id)ltrim pattern:(id)pattern;
+ (id)max:(id)max;
+ (id)min:(id)min;
+ (id)nullIf:(id)if second:(id)second;
+ (id)replace:(id)replace pattern:(id)pattern replacement:(id)replacement;
+ (id)round:(id)round digits:(id)digits;
+ (id)rtrim:(id)rtrim pattern:(id)pattern;
+ (id)substr:(id)substr index:(id)index length:(id)length;
+ (id)trim:(id)trim pattern:(id)pattern;
+ (id)typeOf:(id)of;
+ (id)unlikely:(id)unlikely;
+ (id)upper:(id)upper;
- (EFSQLFunction)initWithName:(id)name arguments:(id)arguments;
- (NSString)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)into;
@end

@implementation EFSQLFunction

+ (id)abs:(id)abs
{
  v8[1] = *MEMORY[0x1E69E9840];
  absCopy = abs;
  v4 = [EFSQLFunction alloc];
  v8[0] = absCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"abs" arguments:v5];

  return v6;
}

+ (id)char:(id)char
{
  charCopy = char;
  v4 = [[EFSQLFunction alloc] initWithName:@"char" arguments:charCopy];

  return v4;
}

+ (id)coalesce:(id)coalesce
{
  coalesceCopy = coalesce;
  if ([coalesceCopy count] <= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLFunction.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"expressions.count >= 2"}];
  }

  v6 = [[EFSQLFunction alloc] initWithName:@"coalesce" arguments:coalesceCopy];

  return v6;
}

+ (id)glob:(id)glob expression:(id)expression
{
  v11[2] = *MEMORY[0x1E69E9840];
  globCopy = glob;
  expressionCopy = expression;
  v7 = [EFSQLFunction alloc];
  v11[0] = globCopy;
  v11[1] = expressionCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"glob" arguments:v8];

  return v9;
}

+ (id)hex:(id)hex
{
  v8[1] = *MEMORY[0x1E69E9840];
  hexCopy = hex;
  v4 = [EFSQLFunction alloc];
  v8[0] = hexCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"hex" arguments:v5];

  return v6;
}

+ (id)ifNull:(id)null second:(id)second
{
  v11[2] = *MEMORY[0x1E69E9840];
  nullCopy = null;
  secondCopy = second;
  v7 = [EFSQLFunction alloc];
  v11[0] = nullCopy;
  v11[1] = secondCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"ifnull" arguments:v8];

  return v9;
}

+ (id)inStr:(id)str second:(id)second
{
  v11[2] = *MEMORY[0x1E69E9840];
  strCopy = str;
  secondCopy = second;
  v7 = [EFSQLFunction alloc];
  v11[0] = strCopy;
  v11[1] = secondCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"instr" arguments:v8];

  return v9;
}

+ (id)length:(id)length
{
  v8[1] = *MEMORY[0x1E69E9840];
  lengthCopy = length;
  v4 = [EFSQLFunction alloc];
  v8[0] = lengthCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"length" arguments:v5];

  return v6;
}

+ (id)like:(id)like expression:(id)expression
{
  v11[2] = *MEMORY[0x1E69E9840];
  likeCopy = like;
  expressionCopy = expression;
  v7 = [EFSQLFunction alloc];
  v11[0] = likeCopy;
  v11[1] = expressionCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"like" arguments:v8];

  return v9;
}

+ (id)like:(id)like expression:(id)expression escape:(unsigned __int16)escape
{
  escapeCopy = escape;
  v14[3] = *MEMORY[0x1E69E9840];
  likeCopy = like;
  expressionCopy = expression;
  v9 = [[_EFSQLCharacterExpression alloc] initWithCharacter:escapeCopy];
  v10 = [EFSQLFunction alloc];
  v14[0] = likeCopy;
  v14[1] = expressionCopy;
  v14[2] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v12 = [(EFSQLFunction *)v10 initWithName:@"like" arguments:v11];

  return v12;
}

+ (id)lower:(id)lower
{
  v8[1] = *MEMORY[0x1E69E9840];
  lowerCopy = lower;
  v4 = [EFSQLFunction alloc];
  v8[0] = lowerCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"lower" arguments:v5];

  return v6;
}

+ (id)ltrim:(id)ltrim pattern:(id)pattern
{
  v11[2] = *MEMORY[0x1E69E9840];
  ltrimCopy = ltrim;
  patternCopy = pattern;
  v7 = [EFSQLFunction alloc];
  v11[0] = ltrimCopy;
  v11[1] = patternCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"ltrim" arguments:v8];

  return v9;
}

+ (id)max:(id)max
{
  maxCopy = max;
  if ([maxCopy count] <= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLFunction.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"expressions.count >= 2"}];
  }

  v6 = [[EFSQLFunction alloc] initWithName:@"max" arguments:maxCopy];

  return v6;
}

+ (id)min:(id)min
{
  minCopy = min;
  if ([minCopy count] <= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLFunction.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"expressions.count >= 2"}];
  }

  v6 = [[EFSQLFunction alloc] initWithName:@"min" arguments:minCopy];

  return v6;
}

+ (id)nullIf:(id)if second:(id)second
{
  v11[2] = *MEMORY[0x1E69E9840];
  ifCopy = if;
  secondCopy = second;
  v7 = [EFSQLFunction alloc];
  v11[0] = ifCopy;
  v11[1] = secondCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"nullif" arguments:v8];

  return v9;
}

+ (id)replace:(id)replace pattern:(id)pattern replacement:(id)replacement
{
  v14[3] = *MEMORY[0x1E69E9840];
  replaceCopy = replace;
  patternCopy = pattern;
  replacementCopy = replacement;
  v10 = [EFSQLFunction alloc];
  v14[0] = replaceCopy;
  v14[1] = patternCopy;
  v14[2] = replacementCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v12 = [(EFSQLFunction *)v10 initWithName:@"replace" arguments:v11];

  return v12;
}

+ (id)round:(id)round digits:(id)digits
{
  v13[2] = *MEMORY[0x1E69E9840];
  roundCopy = round;
  digitsCopy = digits;
  v7 = digitsCopy;
  if (digitsCopy)
  {
    v13[0] = roundCopy;
    v13[1] = digitsCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  }

  else
  {
    v12 = roundCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  }

  v9 = v8;
  v10 = [[EFSQLFunction alloc] initWithName:@"round" arguments:v8];

  return v10;
}

+ (id)rtrim:(id)rtrim pattern:(id)pattern
{
  v11[2] = *MEMORY[0x1E69E9840];
  rtrimCopy = rtrim;
  patternCopy = pattern;
  v7 = [EFSQLFunction alloc];
  v11[0] = rtrimCopy;
  v11[1] = patternCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"rtrim" arguments:v8];

  return v9;
}

+ (id)substr:(id)substr index:(id)index length:(id)length
{
  v16[3] = *MEMORY[0x1E69E9840];
  substrCopy = substr;
  indexCopy = index;
  lengthCopy = length;
  v10 = lengthCopy;
  if (lengthCopy)
  {
    v16[0] = substrCopy;
    v16[1] = indexCopy;
    v16[2] = lengthCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  }

  else
  {
    v15[0] = substrCopy;
    v15[1] = indexCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  }

  v12 = v11;
  v13 = [[EFSQLFunction alloc] initWithName:@"substr" arguments:v11];

  return v13;
}

+ (id)trim:(id)trim pattern:(id)pattern
{
  v11[2] = *MEMORY[0x1E69E9840];
  trimCopy = trim;
  patternCopy = pattern;
  v7 = [EFSQLFunction alloc];
  v11[0] = trimCopy;
  v11[1] = patternCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"trim" arguments:v8];

  return v9;
}

+ (id)typeOf:(id)of
{
  v8[1] = *MEMORY[0x1E69E9840];
  ofCopy = of;
  v4 = [EFSQLFunction alloc];
  v8[0] = ofCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"typeof" arguments:v5];

  return v6;
}

+ (id)upper:(id)upper
{
  v8[1] = *MEMORY[0x1E69E9840];
  upperCopy = upper;
  v4 = [EFSQLFunction alloc];
  v8[0] = upperCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"upper" arguments:v5];

  return v6;
}

+ (id)jsonObject:(id)object key:(id)key
{
  v11[2] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  v7 = [EFSQLFunction alloc];
  v11[0] = keyCopy;
  v11[1] = objectCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"json_object" arguments:v8];

  return v9;
}

+ (id)likely:(id)likely
{
  v8[1] = *MEMORY[0x1E69E9840];
  likelyCopy = likely;
  v4 = [EFSQLFunction alloc];
  v8[0] = likelyCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"likely" arguments:v5];

  return v6;
}

+ (id)unlikely:(id)unlikely
{
  v8[1] = *MEMORY[0x1E69E9840];
  unlikelyCopy = unlikely;
  v4 = [EFSQLFunction alloc];
  v8[0] = unlikelyCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"unlikely" arguments:v5];

  return v6;
}

- (EFSQLFunction)initWithName:(id)name arguments:(id)arguments
{
  nameCopy = name;
  argumentsCopy = arguments;
  v14.receiver = self;
  v14.super_class = EFSQLFunction;
  v8 = [(EFSQLFunction *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [argumentsCopy copy];
    arguments = v8->_arguments;
    v8->_arguments = v11;
  }

  return v8;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(EFSQLFunction *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  name = self->_name;
  arguments = self->_arguments;
  v9 = intoCopy;
  v7 = name;
  v8 = arguments;
  [v9 appendString:v7];
  objc_msgSend(v9, "appendString:", @"(");
  [(NSArray *)v8 ef_renderSQLExpressionInto:v9];
  [v9 appendString:@""]);
}

@end