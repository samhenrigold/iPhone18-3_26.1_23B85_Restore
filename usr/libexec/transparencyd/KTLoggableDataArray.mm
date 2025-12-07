@interface KTLoggableDataArray
- (BOOL)isEqual:(id)equal;
- (BOOL)isInputsEqual:(id)equal;
- (KTLoggableDataArray)initWithCoder:(id)coder;
- (KTLoggableDataArray)initWithLoggableDatas:(id)datas;
- (id)description;
- (id)updatableLoggableData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTLoggableDataArray

- (KTLoggableDataArray)initWithLoggableDatas:(id)datas
{
  datasCopy = datas;
  v8.receiver = self;
  v8.super_class = KTLoggableDataArray;
  v5 = [(KTLoggableDataArray *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(KTLoggableDataArray *)v5 setLoggableDatas:datasCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  loggableDatas = [(KTLoggableDataArray *)self loggableDatas];
  [coderCopy encodeObject:loggableDatas forKey:@"loggableDatas"];
}

- (KTLoggableDataArray)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v21 count:2];
  v6 = [NSSet setWithArray:v5];

  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"loggableDatas"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_12;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = [KTLoggableDataArray alloc];
    v14 = [(KTLoggableDataArray *)v13 initWithLoggableDatas:v8, v16];
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      loggableDatas = [(KTLoggableDataArray *)equalCopy loggableDatas];
      loggableDatas2 = [(KTLoggableDataArray *)self loggableDatas];
      v7 = [loggableDatas isEqualToArray:loggableDatas2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isInputsEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[KTLoggableDataArray loggableDatas](self, "loggableDatas"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], -[KTLoggableDataArray loggableDatas](equalCopy, "loggableDatas"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v5, v6 != v8))
  {
    v16 = 0;
    goto LABEL_11;
  }

  loggableDatas = [(KTLoggableDataArray *)self loggableDatas];
  v10 = [loggableDatas count];

  if (!v10)
  {
LABEL_10:
    v16 = 1;
    goto LABEL_11;
  }

  v11 = 0;
  do
  {
    loggableDatas2 = [(KTLoggableDataArray *)self loggableDatas];
    v13 = [loggableDatas2 objectAtIndexedSubscript:v11];

    loggableDatas3 = [(KTLoggableDataArray *)equalCopy loggableDatas];
    v15 = [loggableDatas3 objectAtIndexedSubscript:v11];

    v16 = [v13 isInputsEqual:v15];
    if ((v16 & 1) == 0)
    {
      break;
    }

    ++v11;
    loggableDatas4 = [(KTLoggableDataArray *)self loggableDatas];
    v18 = [loggableDatas4 count];
  }

  while (v11 < v18);
LABEL_11:

  return v16;
}

- (id)description
{
  loggableDatas = [(KTLoggableDataArray *)self loggableDatas];
  v3 = [loggableDatas description];

  return v3;
}

- (id)updatableLoggableData
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  loggableDatas = [(KTLoggableDataArray *)self loggableDatas];
  v5 = [loggableDatas countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(loggableDatas);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) copy];
        [v3 addObject:v9];
      }

      v6 = [loggableDatas countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end