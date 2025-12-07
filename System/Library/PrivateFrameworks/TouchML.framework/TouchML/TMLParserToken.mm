@interface TMLParserToken
- (TMLParserToken)initWithToken:(unint64_t)token text:(id)text;
@end

@implementation TMLParserToken

- (TMLParserToken)initWithToken:(unint64_t)token text:(id)text
{
  textCopy = text;
  v12.receiver = self;
  v12.super_class = TMLParserToken;
  v7 = [(TMLParserToken *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_token = token;
    if (textCopy)
    {
      v9 = [textCopy copy];
    }

    else
    {
      v9 = &stru_287F301C0;
    }

    text = v8->_text;
    v8->_text = &v9->isa;
  }

  return v8;
}

@end