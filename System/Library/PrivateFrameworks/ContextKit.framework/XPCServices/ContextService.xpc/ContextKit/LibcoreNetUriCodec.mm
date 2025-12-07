@interface LibcoreNetUriCodec
+ (int)hexToIntWithChar:(unsigned __int16)char;
- (id)encodeWithNSString:(id)string withJavaNioCharsetCharset:(id)charset;
- (id)validateWithNSString:(id)string withInt:(int)int withInt:(int)withInt withNSString:(id)sString;
- (void)appendEncodedWithJavaLangStringBuilder:(id)builder withNSString:(id)string;
- (void)appendPartiallyEncodedWithJavaLangStringBuilder:(id)builder withNSString:(id)string;
@end

@implementation LibcoreNetUriCodec

- (id)validateWithNSString:(id)string withInt:(int)int withInt:(int)withInt withNSString:(id)sString
{
  v6 = *&withInt;
  v7 = *&int;
  if (int < withInt)
  {
    if (string)
    {
      v10 = *&int;
      while (1)
      {
        v11 = [string charAtWithInt:v10];
        v12 = (v11 - 48) >= 0xA && ((v11 & 0xFFDF) - 65) >= 0x1Au;
        if (v12 && (v13 = v11, ![(LibcoreNetUriCodec *)self isRetainedWithChar:v11]))
        {
          if (v13 != 37)
          {
            v27 = @"Illegal character in ";
LABEL_36:
            v28 = JreStrcat("$$", v14, v15, v16, v17, v18, v19, v20, v27);
            goto LABEL_38;
          }

          if (v10 + 2 >= v6)
          {
            v27 = @"Incomplete % sequence in ";
            goto LABEL_36;
          }

          v22 = [string charAtWithInt:(v10 + 1)];
          v23 = v22 - 48;
          if (v22 - 48 > 9)
          {
            if (v22 - 97 > 5)
            {
              if (v22 - 65 >= 6)
              {
                v23 = -1;
              }

              else
              {
                v23 = v22 - 55;
              }
            }

            else
            {
              v23 = v22 - 87;
            }
          }

          v24 = [string charAtWithInt:(v10 + 2)];
          v25 = v24 - 48;
          if (v24 - 48 > 9)
          {
            if (v24 - 97 > 5)
            {
              if (v24 - 65 >= 6)
              {
                v25 = -1;
              }

              else
              {
                v25 = v24 - 55;
              }
            }

            else
            {
              v25 = v24 - 87;
            }
          }

          if (v23 == -1 || v25 == -1)
          {
            [string substring:v10 endIndex:(v10 + 3)];
            v28 = JreStrcat("$$$$", v29, v30, v31, v32, v33, v34, v35, @"Invalid % sequence: ");
LABEL_38:
            v36 = new_JavaNetURISyntaxException_initWithNSString_withNSString_withInt_(string, v28, v10);
            objc_exception_throw(v36);
          }

          v21 = 3;
        }

        else
        {
          v21 = 1;
        }

        v10 = (v10 + v21);
        if (v10 >= v6)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_33:
    JreThrowNullPointerException();
  }

LABEL_29:
  if (!string)
  {
    goto LABEL_33;
  }

  return [string substring:v7 endIndex:v6];
}

- (id)encodeWithNSString:(id)string withJavaNioCharsetCharset:(id)charset
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  v7 = new_JavaLangStringBuilder_initWithInt_([string length] + 16);
  sub_100177150(self, v7, string, charset, 0);

  return [(JavaLangStringBuilder *)v7 description];
}

- (void)appendEncodedWithJavaLangStringBuilder:(id)builder withNSString:(id)string
{
  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  v7 = JavaNioCharsetStandardCharsets_UTF_8_;

  sub_100177150(self, builder, string, v7, 0);
}

- (void)appendPartiallyEncodedWithJavaLangStringBuilder:(id)builder withNSString:(id)string
{
  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  v7 = JavaNioCharsetStandardCharsets_UTF_8_;

  sub_100177150(self, builder, string, v7, 1);
}

+ (int)hexToIntWithChar:(unsigned __int16)char
{
  if ((char - 65) >= 6)
  {
    v3 = -1;
  }

  else
  {
    v3 = char - 55;
  }

  if ((char - 97) <= 5)
  {
    v4 = char - 87;
  }

  else
  {
    v4 = v3;
  }

  if ((char - 48) <= 9)
  {
    return char - 48;
  }

  else
  {
    return v4;
  }
}

@end