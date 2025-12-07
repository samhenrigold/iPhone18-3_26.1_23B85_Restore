@interface OrgApacheLuceneUtilInPlaceMergeSorter
- (void)mergeSortWithInt:(int)int withInt:(int)withInt;
- (void)sortWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilInPlaceMergeSorter

- (void)sortWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  [OrgApacheLuceneUtilSorter checkRangeWithInt:"checkRangeWithInt:withInt:" withInt:?];

  [(OrgApacheLuceneUtilInPlaceMergeSorter *)self mergeSortWithInt:v5 withInt:v4];
}

- (void)mergeSortWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  if (withInt - int > 19)
  {
    v7 = (withInt + int) >> 1;
    [(OrgApacheLuceneUtilInPlaceMergeSorter *)self mergeSortWithInt:*&int withInt:v7];
    [(OrgApacheLuceneUtilInPlaceMergeSorter *)self mergeSortWithInt:v7 withInt:v4];

    [(OrgApacheLuceneUtilSorter *)self mergeInPlaceWithInt:v5 withInt:v7 withInt:v4];
  }

  else
  {

    [OrgApacheLuceneUtilSorter insertionSortWithInt:"insertionSortWithInt:withInt:" withInt:?];
  }
}

@end