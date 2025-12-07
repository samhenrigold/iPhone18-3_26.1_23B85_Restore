@interface MTFWrappedSpeechElement
+ (id)fromCPPElement:(void *)element;
- (MTFWrappedSpeechElement)FirstChild;
- (MTFWrappedSpeechElement)LastChild;
- (MTFWrappedSpeechElement)NextSibling;
- (MTFWrappedSpeechElement)Parent;
- (MTFWrappedSpeechElement)PrevSibling;
- (MTFWrappedSpeechElement)initWithCppElement:(void *)element;
- (void)dealloc;
@end

@implementation MTFWrappedSpeechElement

- (MTFWrappedSpeechElement)initWithCppElement:(void *)element
{
  v7.receiver = self;
  v7.super_class = MTFWrappedSpeechElement;
  v4 = [(MTFWrappedSpeechElement *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(MTFWrappedSpeechElement *)v4 setWrapped:element];
  }

  return v5;
}

- (MTFWrappedSpeechElement)FirstChild
{
  v2 = [MTFWrappedSpeechElement fromCPPElement:[(MTFWrappedSpeechElement *)self elem][16]];
  [v2 setUnOwned:1];

  return v2;
}

- (MTFWrappedSpeechElement)LastChild
{
  v2 = [MTFWrappedSpeechElement fromCPPElement:[(MTFWrappedSpeechElement *)self elem][24]];
  [v2 setUnOwned:1];

  return v2;
}

- (MTFWrappedSpeechElement)Parent
{
  v2 = [MTFWrappedSpeechElement fromCPPElement:[(MTFWrappedSpeechElement *)self elem][32]];
  [v2 setUnOwned:1];

  return v2;
}

- (MTFWrappedSpeechElement)NextSibling
{
  v2 = [MTFWrappedSpeechElement fromCPPElement:[(MTFWrappedSpeechElement *)self elem][40]];
  [v2 setUnOwned:1];

  return v2;
}

- (MTFWrappedSpeechElement)PrevSibling
{
  v2 = [MTFWrappedSpeechElement fromCPPElement:[(MTFWrappedSpeechElement *)self elem][48]];
  [v2 setUnOwned:1];

  return v2;
}

+ (id)fromCPPElement:(void *)element
{
  if (element)
  {
    if (v5)
    {
      elementCopy = v5;
      v7 = off_279851430;
    }

    else
    {
      if (v10)
      {
        elementCopy = v10;
        v7 = off_279851420;
      }

      else
      {
        if (v11)
        {
          elementCopy = v11;
          v7 = off_279851418;
        }

        else
        {
          if (v12)
          {
            elementCopy = v12;
            v7 = off_279851448;
          }

          else
          {
            if (v13)
            {
              elementCopy = v13;
              v7 = off_279851410;
            }

            else
            {
              if (v14)
              {
                elementCopy = v14;
                v7 = off_279851440;
              }

              else
              {
                if (v15)
                {
                  elementCopy = v15;
                  v7 = off_279851428;
                }

                else
                {
                  v7 = off_279851408;
                  if (v16)
                  {
                    elementCopy = v16;
                  }

                  else
                  {
                    v7 = off_279851438;
                    elementCopy = element;
                  }
                }
              }
            }
          }
        }
      }
    }

    v8 = [objc_alloc(*v7) initWithCppElement:elementCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dealloc
{
  if (![(MTFWrappedSpeechElement *)self unOwned])
  {
    elem = [(MTFWrappedSpeechElement *)self elem];
    if (elem)
    {
      (*(elem->var0 + 2))(elem);
    }
  }

  v4.receiver = self;
  v4.super_class = MTFWrappedSpeechElement;
  [(MTFWrappedSpeechElement *)&v4 dealloc];
}

@end