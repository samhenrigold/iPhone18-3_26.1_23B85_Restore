@interface HKWeakObserversMap
@end

@implementation HKWeakObserversMap

void __52___HKWeakObserversMap_notifyObserversOfKey_handler___block_invoke(void *a1)
{
  os_unfair_lock_lock((a1[4] + 8));
  v3 = [*(a1[4] + 16) objectsForKey:a1[5]];
  v2 = [v3 containsObject:a1[6]];
  os_unfair_lock_unlock((a1[4] + 8));
  if (v2)
  {
    (*(a1[7] + 16))();
  }
}

@end