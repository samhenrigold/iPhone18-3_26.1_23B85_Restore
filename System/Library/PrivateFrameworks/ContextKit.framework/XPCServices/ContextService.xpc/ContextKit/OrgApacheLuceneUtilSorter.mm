@interface OrgApacheLuceneUtilSorter
- (int)lower2WithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (int)lowerWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (int)upper2WithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (int)upperWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)binarySortWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)checkRangeWithInt:(int)int withInt:(int)withInt;
- (void)doRotateWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)heapSortWithInt:(int)int withInt:(int)withInt;
- (void)heapifyWithInt:(int)int withInt:(int)withInt;
- (void)insertionSortWithInt:(int)int withInt:(int)withInt;
- (void)mergeInPlaceWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)reverseWithInt:(int)int withInt:(int)withInt;
- (void)rotateWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)siftDownWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
@end

@implementation OrgApacheLuceneUtilSorter

- (void)checkRangeWithInt:(int)int withInt:(int)withInt
{
  if (withInt < int)
  {
    v8 = JreStrcat("$I$I", a2, *&int, *&withInt, v4, v5, v6, v7, @"'to' must be >= 'from', got from=");
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }
}

- (void)mergeInPlaceWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  if (int != withInt)
  {
    v6 = *&withInt;
    if (withInt != a5 && [(OrgApacheLuceneUtilSorter *)self compareWithInt:(withInt - 1) withInt:*&withInt]>= 1)
    {
      if (a5 - int == 2)
      {

        [(OrgApacheLuceneUtilSorter *)self swapWithInt:(v6 - 1) withInt:v6];
      }

      else
      {
        LODWORD(v9) = int - 1;
        v10 = v6 - int + 1;
        do
        {
          v9 = (v9 + 1);
          --v10;
        }

        while ([(OrgApacheLuceneUtilSorter *)self compareWithInt:v9 withInt:v6]< 1);
        LODWORD(v11) = a5 + 1;
        do
        {
          v12 = [(OrgApacheLuceneUtilSorter *)self compareWithInt:(v6 - 1) withInt:(v11 - 2)];
          v11 = (v11 - 1);
        }

        while (v12 < 1);
        v13 = v11 - v6;
        if (v6 - v9 <= v11 - v6)
        {
          v16 = v13 >> 1;
          v15 = v6 + (v13 >> 1);
          v14 = [(OrgApacheLuceneUtilSorter *)self upperWithInt:v9 withInt:v6 withInt:v15];
        }

        else
        {
          v14 = v9 + (v10 >> 1);
          v15 = [(OrgApacheLuceneUtilSorter *)self lowerWithInt:v6 withInt:v11 withInt:v14];
          v16 = v15 - v6;
        }

        if (v14 != v6 && v15 != v6)
        {
          [(OrgApacheLuceneUtilSorter *)self doRotateWithInt:v14 withInt:v6 withInt:v15];
        }

        [(OrgApacheLuceneUtilSorter *)self mergeInPlaceWithInt:v9 withInt:v14 withInt:v16 + v14];

        [(OrgApacheLuceneUtilSorter *)self mergeInPlaceWithInt:v16 + v14 withInt:v15 withInt:v11];
      }
    }
  }
}

- (int)lowerWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  intCopy = int;
  v6 = withInt - int;
  if (withInt - int >= 1)
  {
    v7 = *&a5;
    do
    {
      v9 = intCopy + (v6 >> 1);
      v10 = [(OrgApacheLuceneUtilSorter *)self compareWithInt:v9 withInt:v7];
      if (v10 >= 0)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (v10 < 0)
      {
        intCopy = v9 + 1;
      }
    }

    while (v6 > 0);
  }

  return intCopy;
}

- (int)upperWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  intCopy = int;
  v6 = withInt - int;
  if (withInt - int >= 1)
  {
    v7 = *&a5;
    do
    {
      v9 = intCopy + (v6 >> 1);
      v10 = [(OrgApacheLuceneUtilSorter *)self compareWithInt:v7 withInt:v9];
      if (v10 >= 0)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v10 >= 0)
      {
        intCopy = v9 + 1;
      }
    }

    while (v6 > 0);
  }

  return intCopy;
}

- (int)lower2WithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&a5;
  v6 = *&withInt;
  v7 = *&int;
  v9 = (withInt - 1);
  if (v9 <= int)
  {
    v10 = *&withInt;
LABEL_6:
    selfCopy2 = self;
    v12 = v7;
    v13 = v10;
  }

  else
  {
    while (1)
    {
      v10 = v9;
      if (([(OrgApacheLuceneUtilSorter *)self compareWithInt:v9 withInt:v5]& 0x80000000) != 0)
      {
        break;
      }

      v9 = (v10 + 2 * (v10 - v6));
      v6 = v10;
      if (v9 <= v7)
      {
        goto LABEL_6;
      }
    }

    selfCopy2 = self;
    v12 = v10;
    v13 = v6;
  }

  return [(OrgApacheLuceneUtilSorter *)selfCopy2 lowerWithInt:v12 withInt:v13 withInt:v5];
}

- (int)upper2WithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&a5;
  v6 = *&withInt;
  v7 = *&int;
  v9 = (int + 1);
  if (v9 >= withInt)
  {
    v10 = *&int;
LABEL_6:
    selfCopy2 = self;
    v12 = v10;
    v13 = v6;
  }

  else
  {
    while (1)
    {
      v10 = v9;
      if ([(OrgApacheLuceneUtilSorter *)self compareWithInt:v9 withInt:v5]>= 1)
      {
        break;
      }

      v9 = (v10 + 2 * (v10 - v7));
      v7 = v10;
      if (v9 >= v6)
      {
        goto LABEL_6;
      }
    }

    selfCopy2 = self;
    v12 = v7;
    v13 = v10;
  }

  return [(OrgApacheLuceneUtilSorter *)selfCopy2 upperWithInt:v12 withInt:v13 withInt:v5];
}

- (void)reverseWithInt:(int)int withInt:(int)withInt
{
  v4 = (withInt - 1);
  if (v4 > int)
  {
    v5 = *&int;
    do
    {
      [(OrgApacheLuceneUtilSorter *)self swapWithInt:v5 withInt:v4];
      v5 = (v5 + 1);
      v4 = (v4 - 1);
    }

    while (v5 < v4);
  }
}

- (void)rotateWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  if (int != withInt && withInt != a5)
  {
    [OrgApacheLuceneUtilSorter doRotateWithInt:"doRotateWithInt:withInt:withInt:" withInt:? withInt:?];
  }
}

- (void)doRotateWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v6 = *&withInt;
  v7 = *&int;
  if (withInt - int == a5 - withInt)
  {
    if (a5 > withInt)
    {
      do
      {
        v9 = v6 + 1;
        [(OrgApacheLuceneUtilSorter *)self swapWithInt:v7 withInt:v6];
        v7 = (v7 + 1);
        v6 = (v6 + 1);
      }

      while (a5 != v9);
    }
  }

  else
  {
    v10 = (withInt - 1);
    if (v10 > int)
    {
      v11 = *&int;
      do
      {
        [(OrgApacheLuceneUtilSorter *)self swapWithInt:v11 withInt:v10];
        v11 = (v11 + 1);
        v10 = (v10 - 1);
      }

      while (v11 < v10);
    }

    v12 = (a5 - 1);
    if (v12 > v6)
    {
      v13 = v12;
      do
      {
        [(OrgApacheLuceneUtilSorter *)self swapWithInt:v6 withInt:v13];
        v6 = (v6 + 1);
        v13 = (v13 - 1);
      }

      while (v6 < v13);
    }

    for (; v7 < v12; v12 = (v12 - 1))
    {
      [(OrgApacheLuceneUtilSorter *)self swapWithInt:v7 withInt:v12];
      v7 = (v7 + 1);
    }
  }
}

- (void)insertionSortWithInt:(int)int withInt:(int)withInt
{
  v4 = int + 1;
  if (int + 1 < withInt)
  {
    v8 = *&int;
    do
    {
      v9 = v8;
      if (v4 > int)
      {
        do
        {
          if ([(OrgApacheLuceneUtilSorter *)self compareWithInt:v9 withInt:(v9 + 1)]< 1)
          {
            break;
          }

          [(OrgApacheLuceneUtilSorter *)self swapWithInt:v9 withInt:(v9 + 1)];
          v10 = v9 <= int;
          v9 = (v9 - 1);
        }

        while (!v10);
      }

      ++v4;
      v8 = (v8 + 1);
    }

    while (v4 != withInt);
  }
}

- (void)binarySortWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  if (a5 < withInt)
  {
    v26 = v12;
    v27 = v11;
    v28 = v10;
    v29 = v9;
    v30 = v8;
    v31 = v7;
    v32 = v6;
    v33 = v5;
    v34 = v13;
    v35 = v14;
    v15 = *&a5;
    v17 = *&int;
    do
    {
      v19 = v15 - 1;
      v20 = v17;
      if (v15 - 1 >= v17)
      {
        LODWORD(v20) = v17;
        do
        {
          v21 = (v20 + v19) >> 1;
          if ([(OrgApacheLuceneUtilSorter *)self compareWithInt:v15 withInt:v21, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35]>= 0)
          {
            v20 = v21 + 1;
          }

          else
          {
            v19 = v21 - 1;
            v20 = v20;
          }
        }

        while (v20 <= v19);
      }

      v22 = v15 - v20;
      if (v15 == v20)
      {
        goto LABEL_15;
      }

      if (v22 == 1)
      {
        v23 = (v20 + 1);
      }

      else
      {
        if (v22 != 2)
        {
          v24 = v15;
          if (v15 > v20)
          {
            do
            {
              v25 = v24 - 1;
              [(OrgApacheLuceneUtilSorter *)self swapWithInt:(v24 - 1) withInt:v26, v27, v28, v29, v30, v31, v32, v33];
              v24 = v25;
            }

            while (v25 > v20);
          }

          goto LABEL_15;
        }

        v23 = (v20 + 1);
        [(OrgApacheLuceneUtilSorter *)self swapWithInt:v23 withInt:(v20 + 2)];
      }

      [(OrgApacheLuceneUtilSorter *)self swapWithInt:v20 withInt:v23, v26, v27, v28, v29, v30, v31, v32, v33];
LABEL_15:
      v15 = (v15 + 1);
    }

    while (v15 != withInt);
  }
}

- (void)heapSortWithInt:(int)int withInt:(int)withInt
{
  if (withInt - int >= 2)
  {
    LODWORD(v4) = withInt;
    v5 = *&int;
    [OrgApacheLuceneUtilSorter heapifyWithInt:"heapifyWithInt:withInt:" withInt:?];
    while (1)
    {
      v4 = (v4 - 1);
      if (v4 <= v5)
      {
        break;
      }

      [(OrgApacheLuceneUtilSorter *)self swapWithInt:v5 withInt:v4];
      [(OrgApacheLuceneUtilSorter *)self siftDownWithInt:v5 withInt:v5 withInt:v4];
    }
  }
}

- (void)heapifyWithInt:(int)int withInt:(int)withInt
{
  v4 = int + ((withInt - int - 2) >> 1);
  if (!__OFSUB__(v4, int))
  {
    v5 = *&withInt;
    v6 = *&int;
    do
    {
      [(OrgApacheLuceneUtilSorter *)self siftDownWithInt:v4 withInt:v6 withInt:v5];
      v4 = (v4 - 1);
    }

    while (v4 >= v6);
  }
}

- (void)siftDownWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = withInt + 1;
  v6 = (withInt + 1 + 2 * (int - withInt));
  if (v6 < a5)
  {
    v9 = *&int;
    do
    {
      v11 = (v6 + 1);
      if (([(OrgApacheLuceneUtilSorter *)self compareWithInt:v9 withInt:v6]& 0x80000000) != 0)
      {
        if (v11 < a5)
        {
          if ([(OrgApacheLuceneUtilSorter *)self compareWithInt:v6 withInt:(v6 + 1)]>= 0)
          {
            v11 = v6;
          }

          else
          {
            v11 = (v6 + 1);
          }
        }

        else
        {
          v11 = v6;
        }
      }

      else if (v11 >= a5 || ([(OrgApacheLuceneUtilSorter *)self compareWithInt:v9 withInt:(v6 + 1)]& 0x80000000) == 0)
      {
        return;
      }

      [(OrgApacheLuceneUtilSorter *)self swapWithInt:v9 withInt:v11];
      v6 = (v5 + 2 * (v11 - withInt));
      v9 = v11;
    }

    while (v6 < a5);
  }
}

@end