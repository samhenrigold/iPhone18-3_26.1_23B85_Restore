@interface TSKPicaFormatter
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (BOOL)isEqual:(id)equal;
- (TSKPicaFormatter)initWithPicaSeparator:(id)separator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringForObjectValue:(id)value;
- (void)dealloc;
@end

@implementation TSKPicaFormatter

- (TSKPicaFormatter)initWithPicaSeparator:(id)separator
{
  v7.receiver = self;
  v7.super_class = TSKPicaFormatter;
  v4 = [(TSKPicaFormatter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TSKPicaFormatter *)v4 setPicaSeparator:separator];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKPicaFormatter;
  [(TSKPicaFormatter *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithPicaSeparator:", -[TSKPicaFormatter picaSeparator](self, "picaSeparator")}];
  [v4 setMinimum:{-[TSKPicaFormatter minimum](self, "minimum")}];
  [v4 setMaximum:{-[TSKPicaFormatter maximum](self, "maximum")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqualToString:](-[TSKPicaFormatter picaSeparator](self, "picaSeparator"), "isEqualToString:", [equal picaSeparator]);
      if (v5)
      {
        v5 = -[NSNumber isEqualToNumber:](-[TSKPicaFormatter minimum](self, "minimum"), "isEqualToNumber:", [equal minimum]);
        if (v5)
        {
          maximum = [(TSKPicaFormatter *)self maximum];
          maximum2 = [equal maximum];

          LOBYTE(v5) = [(NSNumber *)maximum isEqualToNumber:maximum2];
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)stringForObjectValue:(id)value
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [value floatValue];
  v7 = floor(v6);
  v8 = ceil(v6);
  if (v6 < 0.0)
  {
    v7 = v8;
  }

  v9 = v7;
  LODWORD(v3) = llround(12.0 * vabdd_f64(v6, v9));
  if (v3 >= 12.0)
  {
    v3 = (v3 - 12.0);
    v9 = ((v9 >> 31) | 1) + v9;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6 <= 0.0;
  }

  if (v10)
  {
    v11 = @"-%d%@%d";
  }

  else
  {
    v11 = @"%d%@%d";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:v11, v9, -[TSKPicaFormatter picaSeparator](self, "picaSeparator"), v3];
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  if (string && [string length])
  {
    v9 = [MEMORY[0x277CCAC80] scannerWithString:string];
    v10 = [v9 scanString:@"-" intoString:0];
    v24 = 0;
    if (([v9 scanFloat:&v24 + 4] & 1) == 0)
    {
      HIDWORD(v24) = 0;
    }

    [v9 scanString:-[TSKPicaFormatter picaSeparator](self intoString:{"picaSeparator"), 0}];
    if (([v9 scanFloat:&v24] & 1) == 0)
    {
      LODWORD(v24) = 0;
    }

    isAtEnd = [v9 isAtEnd];
    v13 = isAtEnd;
    if (description && (isAtEnd & 1) == 0)
    {
      *description = [TSKBundle(isAtEnd v12)];
    }

    v14 = !v13;
    if (!value)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      minimum = [(TSKPicaFormatter *)self minimum];
      maximum = [(TSKPicaFormatter *)self maximum];
      LODWORD(v24) = fabsf(*&v24);
      v17 = *&v24 / 12.0 + *(&v24 + 1);
      if ((v10 & (v17 > 0.0)) != 0)
      {
        v17 = -v17;
      }

      *&v17 = v17;
      v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
      *value = v18;
      if (minimum)
      {
        v19 = [v18 compare:minimum];
        v13 = v19 != -1;
        if (description && v19 == -1)
        {
          v13 = 0;
          *description = [TSKBundle(-1 v20)];
        }
      }

      else
      {
        v13 = 1;
      }

      if (maximum)
      {
        v22 = [*value compare:maximum];
        if (v22 == 1)
        {
          v13 = 0;
        }

        if (description && v22 == 1)
        {
          v13 = 0;
          *description = [TSKBundle(1 v23)];
        }
      }
    }
  }

  else
  {
    if (value)
    {
      *value = 0;
    }

    return 1;
  }

  return v13;
}

@end