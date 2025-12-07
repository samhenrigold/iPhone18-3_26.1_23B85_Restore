@interface RWIProtocolDOMRGBAColor
- (RWIProtocolDOMRGBAColor)initWithR:(int)r g:(int)g b:(int)b;
- (double)a;
- (int)b;
- (int)g;
- (int)r;
- (void)setA:(double)a;
- (void)setB:(int)b;
- (void)setG:(int)g;
- (void)setR:(int)r;
@end

@implementation RWIProtocolDOMRGBAColor

- (RWIProtocolDOMRGBAColor)initWithR:(int)r g:(int)g b:(int)b
{
  v5 = *&b;
  v6 = *&g;
  v7 = *&r;
  v12.receiver = self;
  v12.super_class = RWIProtocolDOMRGBAColor;
  v8 = [(RWIProtocolJSONObject *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(RWIProtocolDOMRGBAColor *)v8 setR:v7];
    [(RWIProtocolDOMRGBAColor *)v9 setG:v6];
    [(RWIProtocolDOMRGBAColor *)v9 setB:v5];
    v10 = v9;
  }

  return v9;
}

- (void)setR:(int)r
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&r forKey:@"r"];
}

- (int)r
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"r"];
}

- (void)setG:(int)g
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&g forKey:@"g"];
}

- (int)g
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"g"];
}

- (void)setB:(int)b
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&b forKey:@"b"];
}

- (int)b
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"b"];
}

- (void)setA:(double)a
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"a" forKey:a];
}

- (double)a
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"a"];
  return result;
}

@end