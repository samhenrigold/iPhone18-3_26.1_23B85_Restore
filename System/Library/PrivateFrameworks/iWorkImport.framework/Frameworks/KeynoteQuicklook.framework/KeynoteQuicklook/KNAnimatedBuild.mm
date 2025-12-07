@interface KNAnimatedBuild
- (BOOL)hasFinalActionRotate;
- (BOOL)hasFinalActionScale;
- (BOOL)hasPreviousActionAttributes;
- (BOOL)hasPreviousActionRotate;
- (BOOL)hasPreviousActionScale;
- (BOOL)isBuildByObject;
- (BOOL)isDriftBuild;
- (BOOL)isEmphasisBuild;
- (BOOL)isImplicitlyVisibleAtBeginning;
- (BOOL)isMagicChartBuild;
- (BOOL)isRelatedTo:(id)to;
- (BOOL)isSiblingTo:(id)to;
- (BOOL)p_isActionEffect:(id)effect;
- (KNAnimatedBuild)initWithBuildType:(int64_t)type effectIdentifier:(id)identifier attributes:(id)attributes pluginClass:(Class)class deliveryStyle:(unint64_t)style deliveryOption:(unint64_t)option eventIndex:(int64_t)index stageIndex:(int64_t)self0 startTime:(double)self1 eventStartTime:(double)self2 duration:(double)self3 direction:(unint64_t)self4 automatic:(BOOL)self5 animateAtEndOfPreviousBuild:(BOOL)self6 parentBuild:(id)self7;
- (KNAnimatedBuild)initWithCoder:(id)coder;
- (KNAnimatedBuild)parentBuild;
- (NSArray)requiredScales;
- (double)durationWithChildren;
- (double)finalRotation;
- (double)finalScale;
- (double)initialRotation;
- (double)initialScale;
- (double)maxScale;
- (id)description;
- (void)addChildBuild:(id)build;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KNAnimatedBuild

- (KNAnimatedBuild)initWithBuildType:(int64_t)type effectIdentifier:(id)identifier attributes:(id)attributes pluginClass:(Class)class deliveryStyle:(unint64_t)style deliveryOption:(unint64_t)option eventIndex:(int64_t)index stageIndex:(int64_t)self0 startTime:(double)self1 eventStartTime:(double)self2 duration:(double)self3 direction:(unint64_t)self4 automatic:(BOOL)self5 animateAtEndOfPreviousBuild:(BOOL)self6 parentBuild:(id)self7
{
  identifierCopy = identifier;
  attributesCopy = attributes;
  parentBuildCopy = parentBuild;
  v36.receiver = self;
  v36.super_class = KNAnimatedBuild;
  v29 = [(KNAnimatedBuild *)&v36 init];
  v30 = v29;
  if (v29)
  {
    v29->_buildType = type;
    v31 = [identifierCopy copy];
    effectIdentifier = v30->_effectIdentifier;
    v30->_effectIdentifier = v31;

    v30->_eventIndex = index;
    v30->_startTime = time;
    v30->_eventStartTime = startTime;
    v30->_duration = duration;
    v30->_endTime = time + duration;
    v30->_eventEndTime = startTime + duration;
    v30->_automatic = automatic;
    v30->_animateAtEndOfPreviousBuild = build;
    v30->_stageIndex = stageIndex;
    v30->_direction = direction;
    v30->_parentBuild = parentBuildCopy;
    [(KNAnimatedBuild *)parentBuildCopy addChildBuild:v30];
    v33 = [attributesCopy copy];
    attributes = v30->_attributes;
    v30->_attributes = v33;

    objc_storeStrong(&v30->_pluginClass, class);
    v30->_deliveryOption = option;
    v30->_deliveryStyle = style;
  }

  return v30;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = string;
  childBuilds = self->_childBuilds;
  if (childBuilds)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_275DA15FC;
    v28[3] = &unk_27A697E68;
    v29 = string;
    [(NSArray *)childBuilds enumerateObjectsUsingBlock:v28];
  }

  v25 = MEMORY[0x277CCACA8];
  v26 = v4;
  v27.receiver = self;
  v27.super_class = KNAnimatedBuild;
  v24 = [(KNAnimatedBuild *)&v27 description];
  v6 = KNAnimationTypeAsString();
  v7 = NSStringFromClass(self->_pluginClass);
  effectIdentifier = self->_effectIdentifier;
  eventIndex = self->_eventIndex;
  stageIndex = self->_stageIndex;
  startTime = self->_startTime;
  eventStartTime = self->_eventStartTime;
  duration = self->_duration;
  endTime = self->_endTime;
  eventEndTime = self->_eventEndTime;
  automatic = self->_automatic;
  animateAtEndOfPreviousBuild = self->_animateAtEndOfPreviousBuild;
  isVisibleAtBeginning = self->_isVisibleAtBeginning;
  isVisibleAtEnd = self->_isVisibleAtEnd;
  v20 = self->_childBuilds;
  if (v20)
  {
    v21 = self->_effectIdentifier;
    v20 = [(NSArray *)v20 count];
    effectIdentifier = v21;
  }

  v22 = [v25 stringWithFormat:@"<%@: %@ %@(%@) event(%zd), stage(%zd) start(%.1f) eventStart(%.1f) duration(%.1f) end(%.1f) eventEnd(%.1f) automatic(%d) animateAtEndOfPrevious(%d) isVisibleAtBeginning(%d) isVisibleAtEnd(%d) childBuilds(%lu)>%@", v24, v6, v7, effectIdentifier, eventIndex, stageIndex, *&startTime, *&eventStartTime, *&duration, *&endTime, *&eventEndTime, automatic, animateAtEndOfPreviousBuild, isVisibleAtBeginning, isVisibleAtEnd, v20, v26];

  return v22;
}

- (BOOL)isEmphasisBuild
{
  pluginClass = self->_pluginClass;
  if (![(objc_class *)pluginClass conformsToProtocol:&unk_288546370]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(objc_class *)pluginClass isEmphasisBuildAnimation];
}

- (BOOL)isDriftBuild
{
  pluginClass = self->_pluginClass;
  v3 = [(objc_class *)pluginClass conformsToProtocol:&unk_2885461F0];
  if (v3)
  {

    LOBYTE(v3) = MEMORY[0x2821F9670](pluginClass, sel_isDriftAnimation);
  }

  return v3;
}

- (BOOL)isMagicChartBuild
{
  pluginClass = self->_pluginClass;
  v3 = [(objc_class *)pluginClass conformsToProtocol:&unk_288546430];
  if (v3)
  {

    LOBYTE(v3) = MEMORY[0x2821F9670](pluginClass, sel_isMagicChart);
  }

  return v3;
}

- (BOOL)isImplicitlyVisibleAtBeginning
{
  pluginClass = self->_pluginClass;
  if ([(objc_class *)pluginClass conformsToProtocol:&unk_288512898]&& ([(objc_class *)pluginClass startsAmbientAnimation]& 1) != 0)
  {
    return 1;
  }

  return [(KNAnimatedBuild *)self isInitialAmbientBuild];
}

- (BOOL)isBuildByObject
{
  attributes = self->_attributes;
  if (!attributes)
  {
    return 1;
  }

  v3 = [(KNBuildAttributes *)attributes attributeValueForProperty:@"KNBuildCustomAttributesTextDelivery"];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [v3 unsignedIntegerValue] == 1;

  return v5;
}

- (KNAnimatedBuild)parentBuild
{
  if (self->_parentBuild)
  {
    self = self->_parentBuild;
  }

  return self;
}

- (double)durationWithChildren
{
  v22 = *MEMORY[0x277D85DE8];
  duration = self->_duration;
  if ([(KNAnimatedBuild *)self isParentBuild])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_childBuilds;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          [v9 startTime];
          v11 = v10;
          [(KNAnimatedBuild *)self startTime];
          v13 = v11 - v12;
          objc_msgSend_duration(v9);
          v15 = v13 + v14;
          if (duration < v15)
          {
            duration = v15;
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }
  }

  return duration;
}

- (BOOL)isSiblingTo:(id)to
{
  toCopy = to;
  if (-[KNAnimatedBuild isChildBuild](self, "isChildBuild") && [toCopy isChildBuild])
  {
    parentBuild = [(KNAnimatedBuild *)self parentBuild];
    parentBuild2 = [toCopy parentBuild];
    v7 = parentBuild == parentBuild2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isRelatedTo:(id)to
{
  toCopy = to;
  parentBuild = [toCopy parentBuild];
  if (parentBuild == self)
  {
    v7 = 1;
  }

  else
  {
    parentBuild2 = [(KNAnimatedBuild *)self parentBuild];
    v7 = parentBuild2 == toCopy || [(KNAnimatedBuild *)self isSiblingTo:toCopy];
  }

  return v7;
}

- (void)addChildBuild:(id)build
{
  buildCopy = build;
  v9 = buildCopy;
  if (!self->_childBuilds)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    childBuilds = self->_childBuilds;
    self->_childBuilds = v5;

    buildCopy = v9;
  }

  eventEndTime = self->_eventEndTime;
  [buildCopy eventEndTime];
  if (eventEndTime >= v8)
  {
    v8 = eventEndTime;
  }

  self->_eventEndTime = v8;
  [(NSArray *)self->_childBuilds addObject:v9];
}

- (BOOL)p_isActionEffect:(id)effect
{
  v17 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  if (([(NSString *)self->_effectIdentifier isEqual:effectCopy]& 1) != 0)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_childBuilds;
    v5 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v6);
          }

          effectIdentifier = [*(*(&v12 + 1) + 8 * i) effectIdentifier];
          v10 = [effectIdentifier isEqual:effectCopy];

          if (v10)
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

- (BOOL)hasPreviousActionAttributes
{
  previousAttributes = self->_previousAttributes;
  if (previousAttributes)
  {
    LOBYTE(previousAttributes) = [(NSDictionary *)previousAttributes count]!= 0;
  }

  return previousAttributes;
}

- (BOOL)hasPreviousActionScale
{
  previousAttributes = self->_previousAttributes;
  if (!previousAttributes)
  {
    return 0;
  }

  v3 = [(NSDictionary *)previousAttributes objectForKeyedSubscript:*MEMORY[0x277D80110]];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasPreviousActionRotate
{
  previousAttributes = self->_previousAttributes;
  if (!previousAttributes)
  {
    return 0;
  }

  v3 = [(NSDictionary *)previousAttributes objectForKeyedSubscript:*MEMORY[0x277D80100]];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasFinalActionScale
{
  finalAttributes = self->_finalAttributes;
  if (!finalAttributes)
  {
    return 0;
  }

  v3 = [(NSDictionary *)finalAttributes objectForKeyedSubscript:*MEMORY[0x277D80110]];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasFinalActionRotate
{
  finalAttributes = self->_finalAttributes;
  if (!finalAttributes)
  {
    return 0;
  }

  v3 = [(NSDictionary *)finalAttributes objectForKeyedSubscript:*MEMORY[0x277D80100]];
  v4 = v3 != 0;

  return v4;
}

- (double)initialScale
{
  v2 = [(NSDictionary *)self->_previousAttributes objectForKey:*MEMORY[0x277D80110]];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (double)finalScale
{
  v2 = [(NSDictionary *)self->_finalAttributes objectForKey:*MEMORY[0x277D80110]];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (double)maxScale
{
  v19 = *MEMORY[0x277D85DE8];
  [(KNAnimatedBuild *)self initialScale];
  v4 = v3;
  [(KNAnimatedBuild *)self finalScale];
  if (v4 < v5)
  {
    v4 = v5;
  }

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_childBuilds;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isActionScale])
        {
          [v11 maxScale];
          if (v4 < v12)
          {
            v4 = v12;
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v4;
}

- (NSArray)requiredScales
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_childBuilds;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 isActionScale])
        {
          v10 = MEMORY[0x277CCABB0];
          [v9 finalScale];
          v11 = [v10 numberWithDouble:?];
          if (([array containsObject:v11] & 1) == 0)
          {
            [array addObject:v11];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if ([(NSString *)self->_effectIdentifier isEqual:*MEMORY[0x277D800E0]])
  {
    v12 = MEMORY[0x277CCABB0];
    [(KNAnimatedBuild *)self finalScale];
    v13 = [v12 numberWithDouble:?];
    if (([array containsObject:v13] & 1) == 0)
    {
      [array addObject:v13];
    }
  }

  return array;
}

- (double)initialRotation
{
  v3 = [(NSDictionary *)self->_previousAttributes objectForKey:*MEMORY[0x277D80100]];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5 * 0.0174532925;
    v7 = [(NSDictionary *)self->_previousAttributes objectForKey:*MEMORY[0x277D80108]];
    v8 = v7;
    if (v7 && [v7 integerValue] == 32)
    {
      v6 = -v6;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)finalRotation
{
  v3 = [(NSDictionary *)self->_previousAttributes objectForKey:*MEMORY[0x277D80100]];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5 * 0.0174532925;
    v7 = [(NSDictionary *)self->_previousAttributes objectForKey:*MEMORY[0x277D80108]];
    v8 = v7;
    if (v7 && [v7 integerValue] == 32)
    {
      v6 = -v6;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  parentBuild = self->_parentBuild;
  coderCopy = coder;
  [coderCopy encodeObject:parentBuild forKey:@"_parentBuild"];
  [coderCopy encodeObject:self->_childBuilds forKey:@"childBuilds"];
  [coderCopy encodeInteger:self->_buildType forKey:@"buildType"];
  [coderCopy encodeObject:self->_effectIdentifier forKey:@"effectIdentifier"];
  [coderCopy encodeInteger:self->_eventIndex forKey:@"eventIndex"];
  [coderCopy encodeInteger:self->_indexInEvent forKey:@"indexInEvent"];
  [coderCopy encodeInteger:self->_stageIndex forKey:@"stageIndex"];
  [coderCopy encodeInteger:self->_direction forKey:@"direction"];
  [coderCopy encodeInteger:self->_deliveryOption forKey:@"deliveryOption"];
  [coderCopy encodeInteger:self->_deliveryStyle forKey:@"deliveryStyle"];
  [coderCopy encodeDouble:@"startTime" forKey:self->_startTime];
  [coderCopy encodeDouble:@"eventStartTime" forKey:self->_eventStartTime];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
  [coderCopy encodeDouble:@"endTime" forKey:self->_endTime];
  [coderCopy encodeDouble:@"eventEndTime" forKey:self->_eventEndTime];
  [coderCopy encodeBool:self->_automatic forKey:@"automatic"];
  [coderCopy encodeBool:self->_animateAtEndOfPreviousBuild forKey:@"animateAtEndOfPreviousBuild"];
  [coderCopy encodeBool:self->_isVisibleAtBeginning forKey:@"isVisibleAtBeginning"];
  [coderCopy encodeBool:self->_isVisibleAtEnd forKey:@"isVisibleAtEnd"];
  [coderCopy encodeBool:self->_isLastStage forKey:@"isLastStage"];
  [coderCopy encodeBool:self->_isInitialAmbientBuild forKey:@"isInitialAmbientBuild"];
}

- (KNAnimatedBuild)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29 = [coderCopy decodeIntegerForKey:@"buildType"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectIdentifier"];
  v28 = [coderCopy decodeIntegerForKey:@"deliveryStyle"];
  v5 = [coderCopy decodeIntegerForKey:@"deliveryOption"];
  v6 = [coderCopy decodeIntegerForKey:@"eventIndex"];
  v7 = [coderCopy decodeIntegerForKey:@"stageIndex"];
  [coderCopy decodeDoubleForKey:@"startTime"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"eventStartTime"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"duration"];
  v13 = v12;
  v14 = [coderCopy decodeIntegerForKey:@"direction"];
  v15 = [coderCopy decodeBoolForKey:@"automatic"];
  v16 = [coderCopy decodeBoolForKey:@"animateAtEndOfPreviousBuild"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_parentBuild"];
  BYTE1(v27) = v16;
  LOBYTE(v27) = v15;
  v18 = [(KNAnimatedBuild *)self initWithBuildType:v29 effectIdentifier:v4 attributes:0 pluginClass:0 deliveryStyle:v28 deliveryOption:v5 eventIndex:v9 stageIndex:v11 startTime:v13 eventStartTime:v6 duration:v7 direction:v14 automatic:v27 animateAtEndOfPreviousBuild:v17 parentBuild:?];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"childBuilds"];
  childBuilds = v18->_childBuilds;
  v18->_childBuilds = v22;

  v18->_indexInEvent = [coderCopy decodeIntegerForKey:@"indexInEvent"];
  [coderCopy decodeDoubleForKey:@"endTime"];
  v18->_endTime = v24;
  [coderCopy decodeDoubleForKey:@"eventEndTime"];
  v18->_eventEndTime = v25;
  v18->_isVisibleAtBeginning = [coderCopy decodeBoolForKey:@"isVisibleAtBeginning"];
  v18->_isVisibleAtEnd = [coderCopy decodeBoolForKey:@"isVisibleAtEnd"];
  v18->_isLastStage = [coderCopy decodeBoolForKey:@"isLastStage"];
  LOBYTE(v21) = [coderCopy decodeBoolForKey:@"isInitialAmbientBuild"];

  v18->_isInitialAmbientBuild = v21;
  return v18;
}

@end