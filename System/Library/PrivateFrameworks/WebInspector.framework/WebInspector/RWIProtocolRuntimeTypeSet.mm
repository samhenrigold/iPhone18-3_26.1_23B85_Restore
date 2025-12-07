@interface RWIProtocolRuntimeTypeSet
- (BOOL)isBigInt;
- (BOOL)isBoolean;
- (BOOL)isFunction;
- (BOOL)isInteger;
- (BOOL)isNull;
- (BOOL)isNumber;
- (BOOL)isObject;
- (BOOL)isString;
- (BOOL)isSymbol;
- (BOOL)isUndefined;
- (RWIProtocolRuntimeTypeSet)initWithIsFunction:(BOOL)function isUndefined:(BOOL)undefined isNull:(BOOL)null isBoolean:(BOOL)boolean isInteger:(BOOL)integer isNumber:(BOOL)number isString:(BOOL)string isObject:(BOOL)self0 isSymbol:(BOOL)self1 isBigInt:(BOOL)self2;
- (void)setIsBigInt:(BOOL)int;
- (void)setIsBoolean:(BOOL)boolean;
- (void)setIsFunction:(BOOL)function;
- (void)setIsInteger:(BOOL)integer;
- (void)setIsNull:(BOOL)null;
- (void)setIsNumber:(BOOL)number;
- (void)setIsObject:(BOOL)object;
- (void)setIsString:(BOOL)string;
- (void)setIsSymbol:(BOOL)symbol;
- (void)setIsUndefined:(BOOL)undefined;
@end

@implementation RWIProtocolRuntimeTypeSet

- (RWIProtocolRuntimeTypeSet)initWithIsFunction:(BOOL)function isUndefined:(BOOL)undefined isNull:(BOOL)null isBoolean:(BOOL)boolean isInteger:(BOOL)integer isNumber:(BOOL)number isString:(BOOL)string isObject:(BOOL)self0 isSymbol:(BOOL)self1 isBigInt:(BOOL)self2
{
  numberCopy = number;
  integerCopy = integer;
  booleanCopy = boolean;
  nullCopy = null;
  undefinedCopy = undefined;
  functionCopy = function;
  v22.receiver = self;
  v22.super_class = RWIProtocolRuntimeTypeSet;
  v18 = [(RWIProtocolJSONObject *)&v22 init];
  v19 = v18;
  if (v18)
  {
    [(RWIProtocolRuntimeTypeSet *)v18 setIsFunction:functionCopy];
    [(RWIProtocolRuntimeTypeSet *)v19 setIsUndefined:undefinedCopy];
    [(RWIProtocolRuntimeTypeSet *)v19 setIsNull:nullCopy];
    [(RWIProtocolRuntimeTypeSet *)v19 setIsBoolean:booleanCopy];
    [(RWIProtocolRuntimeTypeSet *)v19 setIsInteger:integerCopy];
    [(RWIProtocolRuntimeTypeSet *)v19 setIsNumber:numberCopy];
    [(RWIProtocolRuntimeTypeSet *)v19 setIsString:string];
    [(RWIProtocolRuntimeTypeSet *)v19 setIsObject:object];
    [(RWIProtocolRuntimeTypeSet *)v19 setIsSymbol:symbol];
    [(RWIProtocolRuntimeTypeSet *)v19 setIsBigInt:int];
    v20 = v19;
  }

  return v19;
}

- (void)setIsFunction:(BOOL)function
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  [(RWIProtocolJSONObject *)&v3 setBool:function forKey:@"isFunction"];
}

- (BOOL)isFunction
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isFunction"];
}

- (void)setIsUndefined:(BOOL)undefined
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  [(RWIProtocolJSONObject *)&v3 setBool:undefined forKey:@"isUndefined"];
}

- (BOOL)isUndefined
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isUndefined"];
}

- (void)setIsNull:(BOOL)null
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  [(RWIProtocolJSONObject *)&v3 setBool:null forKey:@"isNull"];
}

- (BOOL)isNull
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isNull"];
}

- (void)setIsBoolean:(BOOL)boolean
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  [(RWIProtocolJSONObject *)&v3 setBool:boolean forKey:@"isBoolean"];
}

- (BOOL)isBoolean
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isBoolean"];
}

- (void)setIsInteger:(BOOL)integer
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  [(RWIProtocolJSONObject *)&v3 setBool:integer forKey:@"isInteger"];
}

- (BOOL)isInteger
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isInteger"];
}

- (void)setIsNumber:(BOOL)number
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  [(RWIProtocolJSONObject *)&v3 setBool:number forKey:@"isNumber"];
}

- (BOOL)isNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isNumber"];
}

- (void)setIsString:(BOOL)string
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  [(RWIProtocolJSONObject *)&v3 setBool:string forKey:@"isString"];
}

- (BOOL)isString
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isString"];
}

- (void)setIsObject:(BOOL)object
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  [(RWIProtocolJSONObject *)&v3 setBool:object forKey:@"isObject"];
}

- (BOOL)isObject
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isObject"];
}

- (void)setIsSymbol:(BOOL)symbol
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  [(RWIProtocolJSONObject *)&v3 setBool:symbol forKey:@"isSymbol"];
}

- (BOOL)isSymbol
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isSymbol"];
}

- (void)setIsBigInt:(BOOL)int
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  [(RWIProtocolJSONObject *)&v3 setBool:int forKey:@"isBigInt"];
}

- (BOOL)isBigInt
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isBigInt"];
}

@end