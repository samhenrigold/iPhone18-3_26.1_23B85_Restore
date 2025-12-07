@interface KNAnimationPluginMenu
+ (id)animationPluginMenu;
+ (id)localizedStringForDirection:(unint64_t)direction shortVersion:(BOOL)version;
- (BOOL)containsDirection:(unint64_t)direction;
- (KNAnimationPluginMenu)init;
- (KNAnimationPluginMenu)initWithCoder:(id)coder;
- (NSArray)directions;
- (NSArray)localizedDirections;
- (id)localizedStringForDirection:(unint64_t)direction;
- (unint64_t)directionForIndex:(unint64_t)index;
- (unint64_t)indexForDirection:(unint64_t)direction;
- (void)addDirection:(unint64_t)direction localizedMenuString:(id)string;
- (void)addDirection:(unint64_t)direction useShortString:(BOOL)string;
- (void)copyToInstance:(id)instance;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KNAnimationPluginMenu

- (KNAnimationPluginMenu)init
{
  v12.receiver = self;
  v12.super_class = KNAnimationPluginMenu;
  v2 = [(KNAnimationPluginMenu *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    localizedStringToDirectionMap = v2->_localizedStringToDirectionMap;
    v2->_localizedStringToDirectionMap = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    directionToLocalizedStringMap = v2->_directionToLocalizedStringMap;
    v2->_directionToLocalizedStringMap = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    localizedDirections = v2->_localizedDirections;
    v2->_localizedDirections = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    directions = v2->_directions;
    v2->_directions = v9;

    v2->_defaultDirection = 0;
  }

  return v2;
}

+ (id)animationPluginMenu
{
  v2 = objc_alloc_init(KNAnimationPluginMenu);

  return v2;
}

+ (id)localizedStringForDirection:(unint64_t)direction shortVersion:(BOOL)version
{
  v5 = 0;
  if (direction <= 90)
  {
    switch(direction)
    {
      case 0xBuLL:
        v6 = sub_275DC204C(self);
        if (version)
        {
          v7 = @"From Left *Direction*";
          v8 = @"From Left";
        }

        else
        {
          v7 = @"Left to Right *Direction*";
          v8 = @"Left to Right";
        }

        goto LABEL_64;
      case 0xCuLL:
        v6 = sub_275DC204C(self);
        if (version)
        {
          v7 = @"From Right *Direction*";
          v8 = @"From Right";
        }

        else
        {
          v7 = @"Right to Left *Direction*";
          v8 = @"Right to Left";
        }

        goto LABEL_64;
      case 0xDuLL:
        v6 = sub_275DC204C(self);
        if (version)
        {
          v7 = @"From Top *Direction*";
          v8 = @"From Top";
        }

        else
        {
          v7 = @"Top to Bottom *Direction*";
          v8 = @"Top to Bottom";
        }

        goto LABEL_64;
      case 0xEuLL:
        v6 = sub_275DC204C(self);
        if (version)
        {
          v7 = @"From Bottom *Direction*";
          v8 = @"From Bottom";
        }

        else
        {
          v7 = @"Bottom to Top *Direction*";
          v8 = @"Bottom to Top";
        }

        goto LABEL_64;
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x19uLL:
      case 0x1AuLL:
      case 0x1BuLL:
      case 0x1CuLL:
      case 0x1DuLL:
      case 0x1EuLL:
      case 0x21uLL:
      case 0x22uLL:
      case 0x23uLL:
      case 0x24uLL:
      case 0x25uLL:
      case 0x26uLL:
      case 0x27uLL:
      case 0x28uLL:
      case 0x2DuLL:
      case 0x2EuLL:
      case 0x2FuLL:
      case 0x30uLL:
      case 0x31uLL:
      case 0x32uLL:
        goto LABEL_66;
      case 0x15uLL:
        v6 = sub_275DC204C(self);
        if (version)
        {
          v7 = @"From Top Left *Direction*";
          v8 = @"From Top Left";
        }

        else
        {
          v7 = @"Top Left to Bottom Right *Direction*";
          v8 = @"Top Left to Bottom Right";
        }

        goto LABEL_64;
      case 0x16uLL:
        v6 = sub_275DC204C(self);
        if (version)
        {
          v7 = @"From Top Right *Direction*";
          v8 = @"From Top Right";
        }

        else
        {
          v7 = @"Top Right to Bottom Left *Direction*";
          v8 = @"Top Right to Bottom Left";
        }

        goto LABEL_64;
      case 0x17uLL:
        v6 = sub_275DC204C(self);
        if (version)
        {
          v7 = @"From Bottom Left *Direction*";
          v8 = @"From Bottom Left";
        }

        else
        {
          v7 = @"Bottom Left to Top Right *Direction*";
          v8 = @"Bottom Left to Top Right";
        }

        goto LABEL_64;
      case 0x18uLL:
        v6 = sub_275DC204C(self);
        if (version)
        {
          v7 = @"From Bottom Right *Direction*";
          v8 = @"From Bottom Right";
        }

        else
        {
          v7 = @"Bottom Right to Top Left *Direction*";
          v8 = @"Bottom Right to Top Left";
        }

        goto LABEL_64;
      case 0x1FuLL:
        v9 = sub_275DC204C(self);
        v6 = v9;
        v7 = @"Clockwise *Direction*";
        v8 = @"Clockwise";
        goto LABEL_65;
      case 0x20uLL:
        v9 = sub_275DC204C(self);
        v6 = v9;
        v7 = @"Counterclockwise *Direction*";
        v8 = @"Counterclockwise";
        goto LABEL_65;
      case 0x29uLL:
        v9 = sub_275DC204C(self);
        v6 = v9;
        v7 = @"In *Direction*";
        v8 = @"In";
        goto LABEL_65;
      case 0x2AuLL:
        v9 = sub_275DC204C(self);
        v6 = v9;
        v7 = @"Out *Direction*";
        v8 = @"Out";
        goto LABEL_65;
      case 0x2BuLL:
        v9 = sub_275DC204C(self);
        v6 = v9;
        v7 = @"Up *Direction*";
        v8 = @"Up";
        goto LABEL_65;
      case 0x2CuLL:
        v9 = sub_275DC204C(self);
        v6 = v9;
        v7 = @"Down *Direction*";
        v8 = @"Down";
        goto LABEL_65;
      case 0x33uLL:
        v9 = sub_275DC204C(self);
        v6 = v9;
        v7 = @"Start to End *Direction*";
        v8 = @"Start to End";
        goto LABEL_65;
      case 0x34uLL:
        v9 = sub_275DC204C(self);
        v6 = v9;
        v7 = @"End to Start *Direction*";
        v8 = @"End to Start";
        goto LABEL_65;
      case 0x35uLL:
        v9 = sub_275DC204C(self);
        v6 = v9;
        v7 = @"Middle to Ends *Direction*";
        v8 = @"Middle to Ends";
        goto LABEL_65;
      case 0x36uLL:
        v9 = sub_275DC204C(self);
        v6 = v9;
        v7 = @"Ends to Middle *Direction*";
        v8 = @"Ends to Middle";
        goto LABEL_65;
      default:
        if (direction)
        {
          goto LABEL_66;
        }

        v9 = sub_275DC204C(self);
        v6 = v9;
        v7 = @"None *Direction*";
        v8 = @"None";
        break;
    }

    goto LABEL_65;
  }

  if (direction <= 112)
  {
    if (direction > 92)
    {
      switch(direction)
      {
        case ']':
          v9 = sub_275DC204C(self);
          v6 = v9;
          v7 = @"Simultaneous *Direction*";
          v8 = @"Simultaneous";
          break;
        case 'o':
          v9 = sub_275DC204C(self);
          v6 = v9;
          v7 = @"Forward *Direction*";
          v8 = @"Forward";
          break;
        case 'p':
          v9 = sub_275DC204C(self);
          v6 = v9;
          v7 = @"Backward *Direction*";
          v8 = @"Backward";
          break;
        default:
          goto LABEL_66;
      }

      goto LABEL_65;
    }

    if (direction != 91)
    {
      v9 = sub_275DC204C(self);
      v6 = v9;
      v7 = @"Alternating *Direction*";
      v8 = @"Alternating";
      goto LABEL_65;
    }

LABEL_21:
    v9 = sub_275DC204C(self);
    v6 = v9;
    v7 = @"Random *Direction*";
    v8 = @"Random";
    goto LABEL_65;
  }

  if (direction <= 114)
  {
    if (direction == 113)
    {
      goto LABEL_21;
    }

    v6 = sub_275DC204C(self);
    if (version)
    {
      v7 = @"Center *Direction*";
      v8 = @"Center";
    }

    else
    {
      v7 = @"From Center *Direction*";
      v8 = @"From Center";
    }

LABEL_64:
    v9 = v6;
    goto LABEL_65;
  }

  switch(direction)
  {
    case 's':
      v6 = sub_275DC204C(self);
      if (version)
      {
        v7 = @"Edges *Direction*";
        v8 = @"Edges";
      }

      else
      {
        v7 = @"From Edges *Direction*";
        v8 = @"From Edges";
      }

      goto LABEL_64;
    case 'y':
      v9 = sub_275DC204C(self);
      v6 = v9;
      v7 = @"Gravity *Direction*";
      v8 = @"Gravity";
      break;
    case 'z':
      v9 = sub_275DC204C(self);
      v6 = v9;
      v7 = @"No Gravity *Direction*";
      v8 = @"No Gravity";
      break;
    default:
      goto LABEL_66;
  }

LABEL_65:
  v5 = [v9 localizedStringForKey:v7 value:v8 table:@"Keynote"];

LABEL_66:

  return v5;
}

- (id)localizedStringForDirection:(unint64_t)direction
{
  if (![(KNAnimationPluginMenu *)self containsDirection:?])
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationPluginMenu localizedStringForDirection:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationPluginMenu.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:214 isFatal:0 description:"Asking for a direction that is not in the plugin"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:direction];
  v9 = [(NSMutableDictionary *)self->_directionToLocalizedStringMap objectForKeyedSubscript:v8];

  return v9;
}

- (NSArray)localizedDirections
{
  v2 = [(NSMutableArray *)self->_localizedDirections copy];

  return v2;
}

- (NSArray)directions
{
  v2 = [(NSMutableArray *)self->_directions copy];

  return v2;
}

- (void)addDirection:(unint64_t)direction localizedMenuString:(id)string
{
  v6 = MEMORY[0x277CCABB0];
  stringCopy = string;
  v8 = [v6 numberWithUnsignedInteger:direction];
  [(NSMutableArray *)self->_localizedDirections addObject:stringCopy];
  [(NSMutableArray *)self->_directions addObject:v8];
  [(NSMutableDictionary *)self->_localizedStringToDirectionMap setObject:v8 forKeyedSubscript:stringCopy];
  [(NSMutableDictionary *)self->_directionToLocalizedStringMap setObject:stringCopy forKeyedSubscript:v8];
}

- (void)addDirection:(unint64_t)direction useShortString:(BOOL)string
{
  v6 = [objc_opt_class() localizedStringForDirection:direction shortVersion:string];
  [(KNAnimationPluginMenu *)self addDirection:direction localizedMenuString:v6];
}

- (BOOL)containsDirection:(unint64_t)direction
{
  directions = [(KNAnimationPluginMenu *)self directions];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:direction];
  v6 = [directions containsObject:v5];

  return v6;
}

- (unint64_t)indexForDirection:(unint64_t)direction
{
  directions = [(KNAnimationPluginMenu *)self directions];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:direction];
  v6 = [directions indexOfObject:v5];

  return v6;
}

- (unint64_t)directionForIndex:(unint64_t)index
{
  directions = [(KNAnimationPluginMenu *)self directions];
  v5 = [directions objectAtIndexedSubscript:index];
  intValue = [v5 intValue];

  return intValue;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localizedDirections = [(KNAnimationPluginMenu *)self localizedDirections];
  [coderCopy encodeObject:localizedDirections forKey:@"localizedDirections"];

  directions = [(KNAnimationPluginMenu *)self directions];
  [coderCopy encodeObject:directions forKey:@"directions"];

  [coderCopy encodeInteger:-[KNAnimationPluginMenu defaultDirection](self forKey:{"defaultDirection"), @"defaultDirection"}];
}

- (KNAnimationPluginMenu)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(KNAnimationPluginMenu *)self init];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"localizedDirections"];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"directions"];

  if ([v13 count])
  {
    v14 = 0;
    do
    {
      v15 = [v13 objectAtIndexedSubscript:v14];
      integerValue = [v15 integerValue];
      v17 = [v9 objectAtIndexedSubscript:v14];
      [(KNAnimationPluginMenu *)v5 addDirection:integerValue localizedMenuString:v17];

      ++v14;
    }

    while (v14 < [v13 count]);
  }

  -[KNAnimationPluginMenu setDefaultDirection:](v5, "setDefaultDirection:", [coderCopy decodeIntegerForKey:@"defaultDirection"]);

  return v5;
}

- (void)copyToInstance:(id)instance
{
  instanceCopy = instance;
  if ([(KNAnimationPluginMenu *)self count])
  {
    v4 = 0;
    do
    {
      directions = [(KNAnimationPluginMenu *)self directions];
      v6 = [directions objectAtIndexedSubscript:v4];
      integerValue = [v6 integerValue];
      localizedDirections = [(KNAnimationPluginMenu *)self localizedDirections];
      v9 = [localizedDirections objectAtIndexedSubscript:v4];
      [instanceCopy addDirection:integerValue localizedMenuString:v9];

      ++v4;
    }

    while (v4 < [(KNAnimationPluginMenu *)self count]);
  }

  [instanceCopy setDefaultDirection:{-[KNAnimationPluginMenu defaultDirection](self, "defaultDirection")}];
}

@end