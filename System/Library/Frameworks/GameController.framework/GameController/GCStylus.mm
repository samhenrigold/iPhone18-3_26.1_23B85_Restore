@interface GCStylus
+ (BOOL)isKindOfClass:(Class)class;
+ (BOOL)isSubclassOfClass:(Class)class;
+ (NSArray)styli;
- (BOOL)conformsToDeviceType:(id)type;
- (BOOL)isKindOfClass:(Class)class;
- (id)debugDescription;
- (id)description;
@end

@implementation GCStylus

- (BOOL)conformsToDeviceType:(id)type
{
  typeCopy = type;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(GCControllerProductInfo *)self->super.super._info uniformTypeIdentifier], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [GCDeviceType deviceTypeWithIdentifier:v5];
    v8 = [v7 conformsToDeviceType:typeCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isSubclassOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___GCStylus;
  return objc_msgSendSuper2(&v6, sel_isSubclassOfClass_, class);
}

+ (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___GCStylus;
  return objc_msgSendSuper2(&v6, sel_isKindOfClass_, class);
}

- (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = GCStylus;
  return [(GCSpatialAccessory *)&v6 isKindOfClass:class];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  vendorName = [(GCController *)self vendorName];
  v5 = [v3 stringWithFormat:@"<GCStylus %p '%@'>", self, vendorName];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  vendorName = [(GCController *)self vendorName];
  components = [(GCController *)self components];
  v6 = [v3 stringWithFormat:@"<GCStylus %p '%@'> %@", self, vendorName, components];

  return v6;
}

+ (NSArray)styli
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  styluses = [v2 styluses];
  orderedCollection = [(GCDeviceCollection *)styluses orderedCollection];
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

@end