@interface GCMouse
+ (GCMouse)current;
+ (NSArray)mice;
- (GCMouse)initWithName:(id)name additionalButtons:(unsigned int)buttons;
- (GCMouseLiveInput)liveInput;
- (NSString)debugDescription;
- (NSString)description;
- (int64_t)compareTo:(id)to;
@end

@implementation GCMouse

+ (GCMouse)current
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  currentMouse = [v2 currentMouse];

  return currentMouse;
}

+ (NSArray)mice
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  mice = [v2 mice];
  orderedCollection = [(GCDeviceCollection *)mice orderedCollection];
  v5 = orderedCollection;
  if (orderedCollection)
  {
    v6 = orderedCollection;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (GCMouse)initWithName:(id)name additionalButtons:(unsigned int)buttons
{
  v4 = *&buttons;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = GCMouse;
  v7 = [(GCMouse *)&v16 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_handlerQueue, MEMORY[0x1E69E96A0]);
    v9 = [nameCopy copy];
    vendorName = v8->_vendorName;
    v8->_vendorName = v9;

    v11 = [GCMouseInput alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v13 = [(GCMouseInput *)v11 initWithIdentifier:uUID additionalButtons:v4];
    mouseInput = v8->_mouseInput;
    v8->_mouseInput = v13;

    [(GCPhysicalInputProfile *)v8->_mouseInput setDevice:v8];
    v8->_creationSequence = atomic_fetch_add(initWithName_additionalButtons__CreationSequence, 1u);
  }

  return v8;
}

- (GCMouseLiveInput)liveInput
{
  mouseInput = [(GCMouse *)self mouseInput];
  liveInputFacade = [(GCMouseInput *)mouseInput liveInputFacade];

  return liveInputFacade;
}

- (int64_t)compareTo:(id)to
{
  toCopy = to;
  creationSequence = [(GCMouse *)self creationSequence];
  if (creationSequence >= [toCopy creationSequence])
  {
    creationSequence2 = [(GCMouse *)self creationSequence];
    v6 = creationSequence2 > [toCopy creationSequence];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  vendorName = [(GCMouse *)self vendorName];
  v5 = [v3 stringWithFormat:@"<GCMouse %p '%@'>", self, vendorName];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  return v6;
}

@end