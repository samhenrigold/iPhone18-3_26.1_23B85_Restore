@interface RWIProtocolCSSSourceRange
- (RWIProtocolCSSSourceRange)initWithStartLine:(int)line startColumn:(int)column endLine:(int)endLine endColumn:(int)endColumn;
- (int)endColumn;
- (int)endLine;
- (int)startColumn;
- (int)startLine;
- (void)setEndColumn:(int)column;
- (void)setEndLine:(int)line;
- (void)setStartColumn:(int)column;
- (void)setStartLine:(int)line;
@end

@implementation RWIProtocolCSSSourceRange

- (RWIProtocolCSSSourceRange)initWithStartLine:(int)line startColumn:(int)column endLine:(int)endLine endColumn:(int)endColumn
{
  v6 = *&endColumn;
  v7 = *&endLine;
  v8 = *&column;
  v9 = *&line;
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSSourceRange;
  v10 = [(RWIProtocolJSONObject *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(RWIProtocolCSSSourceRange *)v10 setStartLine:v9];
    [(RWIProtocolCSSSourceRange *)v11 setStartColumn:v8];
    [(RWIProtocolCSSSourceRange *)v11 setEndLine:v7];
    [(RWIProtocolCSSSourceRange *)v11 setEndColumn:v6];
    v12 = v11;
  }

  return v11;
}

- (void)setStartLine:(int)line
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&line forKey:@"startLine"];
}

- (int)startLine
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"startLine"];
}

- (void)setStartColumn:(int)column
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&column forKey:@"startColumn"];
}

- (int)startColumn
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"startColumn"];
}

- (void)setEndLine:(int)line
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&line forKey:@"endLine"];
}

- (int)endLine
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"endLine"];
}

- (void)setEndColumn:(int)column
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&column forKey:@"endColumn"];
}

- (int)endColumn
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"endColumn"];
}

@end