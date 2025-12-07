@interface NSKVO1AdaptorDeliver
@end

@implementation NSKVO1AdaptorDeliver

void *___NSKVO1AdaptorDeliver_block_invoke(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 7);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v11 = *(result + 6);

      return [v11 removeObjectAtIndex:a2];
    }

    else if (v4 == 4)
    {
      v7 = [objc_msgSend(*(result + 4) valueForKeyPath:{*(result + 5)), "objectAtIndex:", a2}];
      v8 = v3[6];

      return [v8 replaceObjectAtIndex:a2 withObject:v7];
    }
  }

  else if (v4 == 1)
  {
    v9 = [objc_msgSend(*(result + 4) valueForKeyPath:{*(result + 5)), "objectAtIndex:", a2}];
    v10 = v3[6];

    return [v10 updateObject:v9 atIndex:a2];
  }

  else if (v4 == 2)
  {
    v5 = [objc_msgSend(*(result + 4) valueForKeyPath:{*(result + 5)), "objectAtIndex:", a2}];
    v6 = v3[6];

    return [v6 insertObject:v5 atIndex:a2];
  }

  return result;
}

@end