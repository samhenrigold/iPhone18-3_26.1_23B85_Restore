@interface SKGGraphSpecification
- (Class)edgeClassWithLabel:(id)label domain:(unsigned __int16)domain;
- (Class)nodeClassWithLabel:(id)label domain:(unsigned __int16)domain;
- (SKGGraphSpecification)init;
@end

@implementation SKGGraphSpecification

- (SKGGraphSpecification)init
{
  v4.receiver = self;
  v4.super_class = SKGGraphSpecification;
  v2 = [(MAGraphSpecification *)&v4 init];
  if (v2)
  {
    [(MAGraphSpecification *)v2 setDefaultNodeClass:objc_opt_class()];
    [(MAGraphSpecification *)v2 setDefaultEdgeClass:objc_opt_class()];
  }

  return v2;
}

- (Class)nodeClassWithLabel:(id)label domain:(unsigned __int16)domain
{
  labelCopy = label;
  v5 = +[SKGUserNode label];
  v6 = [labelCopy isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[SKGPersonNode label];
    v8 = [labelCopy isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = +[SKGContactNode label];
      v10 = [labelCopy isEqual:v9];

      if ((v10 & 1) == 0)
      {
        v11 = +[SKGPhotoNode label];
        v12 = [labelCopy isEqual:v11];

        if ((v12 & 1) == 0)
        {
          v13 = +[SKGEntityNode label];
          v14 = [labelCopy isEqual:v13];

          if ((v14 & 1) == 0)
          {
            v15 = +[SKGDisplayNameNode label];
            v16 = [labelCopy isEqual:v15];

            if ((v16 & 1) == 0)
            {
              v17 = +[SKGNameNode label];
              v18 = [labelCopy isEqual:v17];

              if ((v18 & 1) == 0)
              {
                v19 = +[SKGNameKeyNode label];
                v20 = [labelCopy isEqual:v19];

                if ((v20 & 1) == 0)
                {
                  v21 = +[SKGEmailNode label];
                  v22 = [labelCopy isEqual:v21];

                  if ((v22 & 1) == 0)
                  {
                    v23 = +[SKGPhoneNode label];
                    v24 = [labelCopy isEqual:v23];

                    if ((v24 & 1) == 0)
                    {
                      v25 = +[SKGReferenceNode label];
                      v26 = [labelCopy isEqual:v25];

                      if ((v26 & 1) == 0)
                      {
                        v27 = +[SKGPersonaNode label];
                        v28 = [labelCopy isEqual:v27];

                        if ((v28 & 1) == 0)
                        {
                          v29 = +[SKGDomainNode label];
                          [labelCopy isEqual:v29];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v30 = objc_opt_class();

  return v30;
}

- (Class)edgeClassWithLabel:(id)label domain:(unsigned __int16)domain
{
  labelCopy = label;
  v5 = +[SKGUserEdge name];
  v6 = [labelCopy isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[SKGPersonEdge name];
    v8 = [labelCopy isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = +[SKGContactEdge name];
      v10 = [labelCopy isEqual:v9];

      if ((v10 & 1) == 0)
      {
        v11 = +[SKGPhotoEdge name];
        v12 = [labelCopy isEqual:v11];

        if ((v12 & 1) == 0)
        {
          v13 = +[SKGEntityEdge name];
          v14 = [labelCopy isEqual:v13];

          if ((v14 & 1) == 0)
          {
            v15 = +[SKGDisplayNameEdge name];
            v16 = [labelCopy isEqual:v15];

            if ((v16 & 1) == 0)
            {
              v17 = +[SKGNameEdge name];
              v18 = [labelCopy isEqual:v17];

              if ((v18 & 1) == 0)
              {
                v19 = +[SKGNameKeyEdge name];
                v20 = [labelCopy isEqual:v19];

                if ((v20 & 1) == 0)
                {
                  v21 = +[SKGEmailEdge name];
                  v22 = [labelCopy isEqual:v21];

                  if ((v22 & 1) == 0)
                  {
                    v23 = +[SKGPhoneEdge name];
                    v24 = [labelCopy isEqual:v23];

                    if ((v24 & 1) == 0)
                    {
                      v25 = +[SKGReferenceEdge name];
                      v26 = [labelCopy isEqual:v25];

                      if ((v26 & 1) == 0)
                      {
                        v27 = +[SKGPersonaEdge name];
                        v28 = [labelCopy isEqual:v27];

                        if ((v28 & 1) == 0)
                        {
                          v29 = +[SKGDomainEdge name];
                          [labelCopy isEqual:v29];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v30 = objc_opt_class();

  return v30;
}

@end