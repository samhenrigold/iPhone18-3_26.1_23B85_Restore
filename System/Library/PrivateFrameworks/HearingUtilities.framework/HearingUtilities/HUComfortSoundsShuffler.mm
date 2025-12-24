@interface HUComfortSoundsShuffler
+ (HUComfortSoundsShuffler)shufflerWithArray:(id)array;
- (HUComfortSoundsShuffler)initWithArray:(id)array;
- (id)nextObject;
- (void)shuffle;
@end

@implementation HUComfortSoundsShuffler

+ (HUComfortSoundsShuffler)shufflerWithArray:(id)array
{
  inputArray = array;
  shuffler = [[HUComfortSoundsShuffler alloc] initWithArray:inputArray];

  return shuffler;
}

- (HUComfortSoundsShuffler)initWithArray:(id)array
{
  inputArray = array;
  superCall.receiver = self;
  superCall.super_class = HUComfortSoundsShuffler;
  instance = [(HUComfortSoundsShuffler *)&superCall init];
  if (instance)
  {
    mutableCopy = [MEMORY[0x1E695DF70] arrayWithArray:inputArray];
    oldArray = instance->_array;
    instance->_array = mutableCopy;

    [(HUComfortSoundsShuffler *)instance shuffle];
    instance->_index = 0;
  }

  return instance;
}

- (id)nextObject
{
  this = self;
  objc_sync_enter(this);
  array = this->_array;
  nextIndex = this->_index + 1;
  this->_index = nextIndex;
  if (nextIndex >= [(NSMutableArray *)array count])
  {
    [(HUComfortSoundsShuffler *)this shuffle];
    this->_index = 0;
  }

  if ([(NSMutableArray *)this->_array count]<= this->_index)
  {
    result = 0;
  }

  else
  {
    result = [(NSMutableArray *)this->_array objectAtIndex:this->_index];
  }

  objc_sync_exit(this);

  return result;
}

- (void)shuffle
{
  if ([(NSMutableArray *)self->_array count]>= 2)
  {
    lastObject = [(NSMutableArray *)self->_array lastObject];
    if ([(NSMutableArray *)self->_array count]!= 1)
    {
      remainingDecrement = 0;
      currentIndex = 0;
      do
      {
        [(NSMutableArray *)self->_array exchangeObjectAtIndex:currentIndex withObjectAtIndex:currentIndex + arc4random_uniform(remainingDecrement + [(NSMutableArray *)self->_array count])];
        ++currentIndex;
        --remainingDecrement;
      }

      while (currentIndex < [(NSMutableArray *)self->_array count]- 1);
    }

    firstObject = [(NSMutableArray *)self->_array firstObject];

    lastObjectCopy = lastObject;
    if (firstObject == lastObject)
    {
      [(NSMutableArray *)self->_array exchangeObjectAtIndex:0 withObjectAtIndex:[(NSMutableArray *)self->_array count]- 1];
      lastObjectCopy = lastObject;
    }
  }
}

@end