@interface GCLegacyPublishedControllerManager
@end

@implementation GCLegacyPublishedControllerManager

id *__86___GCLegacyPublishedControllerManager_observeValueForKeyPath_ofObject_change_context___block_invoke(id *result)
{
  v1 = result;
  v2 = result[7];
  if (v2 == 3)
  {
    [result[4] willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:result[6]];
    v10 = v1[4];
    v11 = v1[8];
    v12 = [v10[2] gc_setByRemovingObjectsFromSet:v1[6]];
    objc_setProperty(v10, v11, 16, v12, 1, 0);

    v7 = v1[4];
    v8 = v1[6];
    v9 = 2;
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 1)
      {
        [result[4] willChangeValueForKey:@"devices"];
        objc_setProperty(v1[4], v1[8], 16, v1[5], 1, 0);
        v3 = v1[4];

        return [v3 didChangeValueForKey:@"devices"];
      }

      return result;
    }

    [result[4] willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:result[5]];
    v4 = v1[8];
    v5 = v1[4];
    v6 = [v5[2] setByAddingObjectsFromSet:v1[5]];
    objc_setProperty(v5, v4, 16, v6, 1, 0);

    v7 = v1[4];
    v8 = v1[5];
    v9 = 1;
  }

  return [v7 didChangeValueForKey:@"devices" withSetMutation:v9 usingObjects:v8];
}

@end