@interface OrgApacheLuceneUtilIntroSorter
- (void)quicksortWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)sortWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilIntroSorter

- (void)sortWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  [OrgApacheLuceneUtilSorter checkRangeWithInt:"checkRangeWithInt:withInt:" withInt:?];
  v7 = 32 - JavaLangInteger_numberOfLeadingZerosWithInt_(~v5 + v4);

  [(OrgApacheLuceneUtilIntroSorter *)self quicksortWithInt:v5 withInt:v4 withInt:v7];
}

- (void)quicksortWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&withInt;
  v6 = *&int;
  if (withInt - int > 19)
  {
    v8 = (a5 - 1);
    if (a5 - 1 < 0)
    {

      [OrgApacheLuceneUtilSorter heapSortWithInt:"heapSortWithInt:withInt:" withInt:?];
    }

    else
    {
      v9 = (withInt + int) >> 1;
      if ([(OrgApacheLuceneUtilIntroSorter *)self compareWithInt:*&int withInt:v9]>= 1)
      {
        [(OrgApacheLuceneUtilIntroSorter *)self swapWithInt:v6 withInt:v9];
      }

      if ([(OrgApacheLuceneUtilIntroSorter *)self compareWithInt:v9 withInt:(v5 - 1)]>= 1)
      {
        [(OrgApacheLuceneUtilIntroSorter *)self swapWithInt:v9 withInt:(v5 - 1)];
        if ([(OrgApacheLuceneUtilIntroSorter *)self compareWithInt:v6 withInt:v9]>= 1)
        {
          [(OrgApacheLuceneUtilIntroSorter *)self swapWithInt:v6 withInt:v9];
        }
      }

      v10 = (v6 + 1);
      v11 = (v5 - 2);
      [(OrgApacheLuceneUtilIntroSorter *)self setPivotWithInt:v9];
      do
      {
LABEL_12:
        v12 = [(OrgApacheLuceneUtilIntroSorter *)self comparePivotWithInt:v11];
        v11 = (v11 - 1);
      }

      while ((v12 & 0x80000000) != 0);
      while (v10 < v11 + 1)
      {
        if (([(OrgApacheLuceneUtilIntroSorter *)self comparePivotWithInt:v10]& 0x80000000) != 0)
        {
          [(OrgApacheLuceneUtilIntroSorter *)self swapWithInt:v10 withInt:(v11 + 1)];
          goto LABEL_12;
        }

        v10 = (v10 + 1);
      }

      [(OrgApacheLuceneUtilIntroSorter *)self quicksortWithInt:v6 withInt:(v10 + 1) withInt:v8];

      [(OrgApacheLuceneUtilIntroSorter *)self quicksortWithInt:(v10 + 1) withInt:v5 withInt:v8];
    }
  }

  else
  {

    [OrgApacheLuceneUtilSorter insertionSortWithInt:"insertionSortWithInt:withInt:" withInt:?];
  }
}

@end