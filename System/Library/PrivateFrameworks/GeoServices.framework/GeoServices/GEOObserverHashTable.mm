@interface GEOObserverHashTable
- (NSArray)allObservers;
- (unint64_t)count;
@end

@implementation GEOObserverHashTable

- (NSArray)allObservers
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects count];

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

@end