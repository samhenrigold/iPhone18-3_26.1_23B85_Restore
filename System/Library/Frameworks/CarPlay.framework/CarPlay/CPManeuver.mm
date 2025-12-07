@interface CPManeuver
+ (NSArray)accNavParameters;
+ (NSDictionary)accNavParameterKeysIndexed;
+ (NSDictionary)accNavParametersIndexed;
+ (id)_descriptionForJunctionType:(unint64_t)type;
+ (id)_descriptionForManeuverType:(unint64_t)type;
+ (id)_descriptionForTrafficSide:(unint64_t)side;
- (BOOL)isEqual:(id)equal;
- (CPManeuver)init;
- (CPManeuver)initWithCoder:(id)coder;
- (CPManeuver)maneuverWithComponent:(id)component;
- (NSArray)stringInstructionVariants;
- (NSMeasurement)initialDistance;
- (NSMeasurement)initialDistanceDisplay;
- (NSString)description;
- (UIImage)dashboardJunctionImage;
- (UIImage)dashboardSymbolImage;
- (UIImage)junctionImage;
- (UIImage)notificationSymbolImage;
- (UIImage)symbolImage;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setCardBackgroundColor:(UIColor *)cardBackgroundColor;
- (void)setDashboardJunctionImage:(UIImage *)dashboardJunctionImage;
- (void)setDashboardSymbolImage:(UIImage *)dashboardSymbolImage;
- (void)setInitialDistance:(id)distance;
- (void)setInitialDistanceDisplay:(id)display;
- (void)setJunctionImage:(UIImage *)junctionImage;
- (void)setNotificationSymbolImage:(UIImage *)notificationSymbolImage;
- (void)setSymbolImage:(UIImage *)symbolImage;
- (void)setSymbolSet:(CPImageSet *)symbolSet;
@end

@implementation CPManeuver

- (CPManeuver)init
{
  v7.receiver = self;
  v7.super_class = CPManeuver;
  v2 = [(CPManeuver *)&v7 init];
  if (v2)
  {
    [CPAccNavUpdate resetUpdate:v2];
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = uUID;

    instructionVariants = v2->_instructionVariants;
    v2->_instructionVariants = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (CPManeuver)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CPManeuver *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverCardBackgroundColorKey"];
    v7 = v6;
    if (v6)
    {
      v8 = CPSanitizedBackgroundColor(v6);
      cardBackgroundColor = v5->_cardBackgroundColor;
      v5->_cardBackgroundColor = v8;
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverSymbolKey"];
    symbolSet = v5->_symbolSet;
    v5->_symbolSet = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"kCPManeuverAttributedInstructionVariantsKey"];
    attributedInstructionVariants = v5->_attributedInstructionVariants;
    v5->_attributedInstructionVariants = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverInitialTravelEstimatesKey"];
    initialTravelEstimates = v5->_initialTravelEstimates;
    v5->_initialTravelEstimates = v20;

    v5->_displayStyle = [coderCopy decodeIntegerForKey:@"kCPManeuverStyleKey"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverJunctionImageKey"];
    junctionImageSet = v5->_junctionImageSet;
    v5->_junctionImageSet = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverDashboardSymbolKey"];
    dashboardSymbolImageSet = v5->_dashboardSymbolImageSet;
    v5->_dashboardSymbolImageSet = v24;

    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"kCPManeuverDashboardInstructionVariantsKey"];
    dashboardInstructionVariants = v5->_dashboardInstructionVariants;
    v5->_dashboardInstructionVariants = v29;

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"kCPManeuverDashboardAttributedInstructionVariantsKey"];
    dashboardAttributedInstructionVariants = v5->_dashboardAttributedInstructionVariants;
    v5->_dashboardAttributedInstructionVariants = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverDashboardJunctionImageKey"];
    dashboardJunctionImageSet = v5->_dashboardJunctionImageSet;
    v5->_dashboardJunctionImageSet = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverNotificationSymbolKey"];
    notificationSymbolImageSet = v5->_notificationSymbolImageSet;
    v5->_notificationSymbolImageSet = v39;

    v41 = MEMORY[0x277CBEB98];
    v42 = objc_opt_class();
    v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
    v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"kCPManeuverNotificationInstructionVariantsKey"];
    notificationInstructionVariants = v5->_notificationInstructionVariants;
    v5->_notificationInstructionVariants = v44;

    v46 = MEMORY[0x277CBEB98];
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v49 = [v46 setWithObjects:{v47, v48, objc_opt_class(), 0}];
    v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"kCPManeuverNotificationAttributedInstructionVariantsKey"];
    notificationAttributedInstructionVariants = v5->_notificationAttributedInstructionVariants;
    v5->_notificationAttributedInstructionVariants = v50;

    [CPAccNavUpdate decodeUpdate:v5 withCoder:coderCopy];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cardBackgroundColor = [(CPManeuver *)self cardBackgroundColor];
  [coderCopy encodeObject:cardBackgroundColor forKey:@"kCPManeuverCardBackgroundColorKey"];

  identifier = [(CPManeuver *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPIdentifierKey"];

  symbolSet = [(CPManeuver *)self symbolSet];
  [coderCopy encodeObject:symbolSet forKey:@"kCPManeuverSymbolKey"];

  attributedInstructionVariants = [(CPManeuver *)self attributedInstructionVariants];
  [coderCopy encodeObject:attributedInstructionVariants forKey:@"kCPManeuverAttributedInstructionVariantsKey"];

  initialTravelEstimates = [(CPManeuver *)self initialTravelEstimates];
  [coderCopy encodeObject:initialTravelEstimates forKey:@"kCPManeuverInitialTravelEstimatesKey"];

  [coderCopy encodeInteger:-[CPManeuver displayStyle](self forKey:{"displayStyle"), @"kCPManeuverStyleKey"}];
  junctionImageSet = [(CPManeuver *)self junctionImageSet];
  [coderCopy encodeObject:junctionImageSet forKey:@"kCPManeuverJunctionImageKey"];

  dashboardSymbolImageSet = [(CPManeuver *)self dashboardSymbolImageSet];
  [coderCopy encodeObject:dashboardSymbolImageSet forKey:@"kCPManeuverDashboardSymbolKey"];

  dashboardInstructionVariants = [(CPManeuver *)self dashboardInstructionVariants];
  [coderCopy encodeObject:dashboardInstructionVariants forKey:@"kCPManeuverDashboardInstructionVariantsKey"];

  dashboardAttributedInstructionVariants = [(CPManeuver *)self dashboardAttributedInstructionVariants];
  [coderCopy encodeObject:dashboardAttributedInstructionVariants forKey:@"kCPManeuverDashboardAttributedInstructionVariantsKey"];

  dashboardJunctionImageSet = [(CPManeuver *)self dashboardJunctionImageSet];
  [coderCopy encodeObject:dashboardJunctionImageSet forKey:@"kCPManeuverDashboardJunctionImageKey"];

  notificationSymbolImageSet = [(CPManeuver *)self notificationSymbolImageSet];
  [coderCopy encodeObject:notificationSymbolImageSet forKey:@"kCPManeuverNotificationSymbolKey"];

  notificationInstructionVariants = [(CPManeuver *)self notificationInstructionVariants];
  [coderCopy encodeObject:notificationInstructionVariants forKey:@"kCPManeuverNotificationInstructionVariantsKey"];

  notificationAttributedInstructionVariants = [(CPManeuver *)self notificationAttributedInstructionVariants];
  [coderCopy encodeObject:notificationAttributedInstructionVariants forKey:@"kCPManeuverNotificationAttributedInstructionVariantsKey"];

  [CPAccNavUpdate encodeUpdate:self withCoder:coderCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CPAccNavUpdate copyUpdate:self];
  identifier = [(CPManeuver *)self identifier];
  v6 = v4[2];
  v4[2] = identifier;

  symbolSet = [(CPManeuver *)self symbolSet];
  [v4 setSymbolSet:symbolSet];

  junctionImageSet = [(CPManeuver *)self junctionImageSet];
  [v4 setJunctionImageSet:junctionImageSet];

  attributedInstructionVariants = [(CPManeuver *)self attributedInstructionVariants];
  [v4 setAttributedInstructionVariants:attributedInstructionVariants];

  initialTravelEstimates = [(CPManeuver *)self initialTravelEstimates];
  [v4 setInitialTravelEstimates:initialTravelEstimates];

  [v4 setDisplayStyle:{-[CPManeuver displayStyle](self, "displayStyle")}];
  dashboardSymbolImageSet = [(CPManeuver *)self dashboardSymbolImageSet];
  [v4 setDashboardSymbolImageSet:dashboardSymbolImageSet];

  dashboardInstructionVariants = [(CPManeuver *)self dashboardInstructionVariants];
  [v4 setDashboardInstructionVariants:dashboardInstructionVariants];

  dashboardAttributedInstructionVariants = [(CPManeuver *)self dashboardAttributedInstructionVariants];
  [v4 setDashboardAttributedInstructionVariants:dashboardAttributedInstructionVariants];

  dashboardJunctionImageSet = [(CPManeuver *)self dashboardJunctionImageSet];
  [v4 setDashboardJunctionImageSet:dashboardJunctionImageSet];

  notificationSymbolImageSet = [(CPManeuver *)self notificationSymbolImageSet];
  [v4 setNotificationSymbolImageSet:notificationSymbolImageSet];

  notificationInstructionVariants = [(CPManeuver *)self notificationInstructionVariants];
  [v4 setNotificationInstructionVariants:notificationInstructionVariants];

  notificationAttributedInstructionVariants = [(CPManeuver *)self notificationAttributedInstructionVariants];
  [v4 setNotificationAttributedInstructionVariants:notificationAttributedInstructionVariants];

  cardBackgroundColor = [(CPManeuver *)self cardBackgroundColor];
  [v4 setCardBackgroundColor:cardBackgroundColor];

  return v4;
}

- (NSArray)stringInstructionVariants
{
  attributedInstructionVariants = [(CPManeuver *)self attributedInstructionVariants];

  if (attributedInstructionVariants)
  {
    attributedInstructionVariants2 = [(CPManeuver *)self attributedInstructionVariants];
    instructionVariants = [attributedInstructionVariants2 cps_map:&__block_literal_global_12];
  }

  else
  {
    instructionVariants = [(CPManeuver *)self instructionVariants];
  }

  return instructionVariants;
}

- (NSString)description
{
  v20 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = CPManeuver;
  v3 = [(CPManeuver *)&v21 description];
  identifier = self->_identifier;
  v19 = v3;
  v4 = [objc_opt_class() _descriptionForManeuverType:self->_maneuverType];
  symbolSet = self->_symbolSet;
  initialTravelEstimates = self->_initialTravelEstimates;
  attributedInstructionVariants = self->_attributedInstructionVariants;
  junctionImageSet = self->_junctionImageSet;
  roadFollowingManeuverVariants = self->_roadFollowingManeuverVariants;
  instructionVariants = self->_instructionVariants;
  v8 = [objc_opt_class() _descriptionForTrafficSide:self->_trafficSide];
  v9 = [objc_opt_class() _descriptionForJunctionType:self->_junctionType];
  junctionExitAngle = self->_junctionExitAngle;
  junctionElementAngles = self->_junctionElementAngles;
  v12 = [CPAccNavUpdate description:self];
  v13 = [v20 stringWithFormat:@"%@ {identifier: %@, maneuverType: %@, symbol: %@, junction image: %@, instructionVariants: %@, attributedInstructionVariants: %@, roadFollowingManeuverVariants:%@, initialTravelEstimates: %@, trafficSide: %@, junctionType: %@, junctionExitAngle: %@, junctionElementAngles: %@, cardBackgroundColor: %@}\n{\n%@\n}", v19, identifier, v4, symbolSet, junctionImageSet, instructionVariants, attributedInstructionVariants, roadFollowingManeuverVariants, initialTravelEstimates, v8, v9, junctionExitAngle, junctionElementAngles, v12, self->_cardBackgroundColor];

  return v13;
}

+ (id)_descriptionForManeuverType:(unint64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return off_278A11388[type];
  }
}

+ (id)_descriptionForTrafficSide:(unint64_t)side
{
  v3 = @"right";
  if (side)
  {
    v3 = 0;
  }

  if (side == 1)
  {
    return @"left";
  }

  else
  {
    return v3;
  }
}

+ (id)_descriptionForJunctionType:(unint64_t)type
{
  v3 = @"intersection";
  if (type)
  {
    v3 = 0;
  }

  if (type == 1)
  {
    return @"roundabout";
  }

  else
  {
    return v3;
  }
}

- (void)setCardBackgroundColor:(UIColor *)cardBackgroundColor
{
  if (self->_cardBackgroundColor != cardBackgroundColor)
  {
    v5 = CPSanitizedBackgroundColor(cardBackgroundColor);
    v6 = self->_cardBackgroundColor;
    self->_cardBackgroundColor = v5;

    MEMORY[0x2821F96F8](v5, v6);
  }
}

- (void)setSymbolSet:(CPImageSet *)symbolSet
{
  v4 = symbolSet;
  [(CPImageSet *)v4 swapStyles];
  v5 = self->_symbolSet;
  self->_symbolSet = v4;
}

- (void)setSymbolImage:(UIImage *)symbolImage
{
  v4 = symbolImage;
  v6 = v4;
  if (v4)
  {
    v4 = [[CPImageSet alloc] initWithImage:v4];
  }

  symbolSet = self->_symbolSet;
  self->_symbolSet = v4;
}

- (UIImage)symbolImage
{
  symbolSet = [(CPManeuver *)self symbolSet];
  image = [symbolSet image];

  return image;
}

- (void)setJunctionImage:(UIImage *)junctionImage
{
  v4 = junctionImage;
  v6 = v4;
  if (v4)
  {
    v4 = [[CPImageSet alloc] initWithImage:v4];
  }

  junctionImageSet = self->_junctionImageSet;
  self->_junctionImageSet = v4;
}

- (UIImage)junctionImage
{
  junctionImageSet = [(CPManeuver *)self junctionImageSet];
  image = [junctionImageSet image];

  return image;
}

- (UIImage)dashboardSymbolImage
{
  dashboardSymbolImageSet = [(CPManeuver *)self dashboardSymbolImageSet];
  image = [dashboardSymbolImageSet image];

  return image;
}

- (void)setDashboardSymbolImage:(UIImage *)dashboardSymbolImage
{
  v4 = dashboardSymbolImage;
  v6 = v4;
  if (v4)
  {
    v4 = [[CPImageSet alloc] initWithImage:v4];
  }

  dashboardSymbolImageSet = self->_dashboardSymbolImageSet;
  self->_dashboardSymbolImageSet = v4;
}

- (UIImage)dashboardJunctionImage
{
  dashboardJunctionImageSet = [(CPManeuver *)self dashboardJunctionImageSet];
  image = [dashboardJunctionImageSet image];

  return image;
}

- (void)setDashboardJunctionImage:(UIImage *)dashboardJunctionImage
{
  v4 = dashboardJunctionImage;
  v6 = v4;
  if (v4)
  {
    v4 = [[CPImageSet alloc] initWithImage:v4];
  }

  dashboardJunctionImageSet = self->_dashboardJunctionImageSet;
  self->_dashboardJunctionImageSet = v4;
}

- (UIImage)notificationSymbolImage
{
  notificationSymbolImageSet = [(CPManeuver *)self notificationSymbolImageSet];
  image = [notificationSymbolImageSet image];

  return image;
}

- (void)setNotificationSymbolImage:(UIImage *)notificationSymbolImage
{
  v4 = notificationSymbolImage;
  v6 = v4;
  if (v4)
  {
    v4 = [[CPImageSet alloc] initWithImage:v4];
  }

  notificationSymbolImageSet = self->_notificationSymbolImageSet;
  self->_notificationSymbolImageSet = v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (objc_opt_isKindOfClass())
  {
    if (v5 == self)
    {
      v10 = 1;
    }

    else
    {
      if (!v5)
      {
        v11 = 0;
        v10 = 0;
        goto LABEL_13;
      }

      junctionImage = [(CPManeuver *)self junctionImage];

      junctionImage2 = [(CPManeuver *)v5 junctionImage];

      identifier = [(CPManeuver *)v5 identifier];
      identifier2 = [(CPManeuver *)self identifier];
      v10 = [identifier isEqual:identifier2] && (junctionImage != 0) != (junctionImage2 == 0) && +[CPAccNavUpdate isUpdate:equalTo:](CPAccNavUpdate, "isUpdate:equalTo:", self, v5);
    }

    v11 = v5;
  }

  else
  {

    v11 = 0;
    v10 = self == 0;
  }

LABEL_13:

  return v10;
}

- (NSMeasurement)initialDistance
{
  initialTravelEstimates = [(CPManeuver *)self initialTravelEstimates];
  distanceRemaining = [initialTravelEstimates distanceRemaining];

  return distanceRemaining;
}

- (void)setInitialDistance:(id)distance
{
  distanceCopy = distance;
  v5 = [CPTravelEstimates alloc];
  initialTravelEstimates = [(CPManeuver *)self initialTravelEstimates];
  distanceRemainingToDisplay = [initialTravelEstimates distanceRemainingToDisplay];
  initialTravelEstimates2 = [(CPManeuver *)self initialTravelEstimates];
  [initialTravelEstimates2 timeRemaining];
  v9 = [(CPTravelEstimates *)v5 initWithDistanceRemaining:distanceCopy distanceRemainingToDisplay:distanceRemainingToDisplay timeRemaining:?];

  [(CPManeuver *)self setInitialTravelEstimates:v9];
}

- (NSMeasurement)initialDistanceDisplay
{
  initialTravelEstimates = [(CPManeuver *)self initialTravelEstimates];
  distanceRemainingToDisplay = [initialTravelEstimates distanceRemainingToDisplay];

  return distanceRemainingToDisplay;
}

- (void)setInitialDistanceDisplay:(id)display
{
  displayCopy = display;
  v5 = [CPTravelEstimates alloc];
  initialTravelEstimates = [(CPManeuver *)self initialTravelEstimates];
  distanceRemaining = [initialTravelEstimates distanceRemaining];
  initialTravelEstimates2 = [(CPManeuver *)self initialTravelEstimates];
  [initialTravelEstimates2 timeRemaining];
  v9 = [(CPTravelEstimates *)v5 initWithDistanceRemaining:distanceRemaining distanceRemainingToDisplay:displayCopy timeRemaining:?];

  [(CPManeuver *)self setInitialTravelEstimates:v9];
}

+ (NSArray)accNavParameters
{
  if (accNavParameters_onceToken_0 != -1)
  {
    +[CPManeuver(CPAccNavUpdate) accNavParameters];
  }

  v3 = accNavParameters__accNavParameters_0;

  return v3;
}

void __46__CPManeuver_CPAccNavUpdate__accNavParameters__block_invoke()
{
  v88[13] = *MEMORY[0x277D85DE8];
  v72 = NSStringFromSelector(sel_componentID);
  v74 = [CPAccNavParamKey paramKey:0];
  v73 = [v74 copySettingIsIntegerValue:1];
  v87 = v73;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
  v70 = [CPAccNavParam paramWithProperty:v72 keys:v71];
  v88[0] = v70;
  v67 = NSStringFromSelector(sel_index);
  v69 = [CPAccNavParamKey paramKey:1];
  v68 = [v69 copySettingIsIntegerValue:1];
  v86 = v68;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
  v65 = [CPAccNavParam paramWithProperty:v67 keys:v66];
  v88[1] = v65;
  v62 = NSStringFromSelector(sel_instructionVariants);
  v64 = [CPAccNavParamKey paramKey:2];
  v63 = [v64 copySettingHasVariants:1];
  v85 = v63;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
  v60 = [CPAccNavParam paramWithProperty:v62 keys:v61];
  v59 = [v60 copySettingCollectionGeneric:objc_opt_class()];
  v88[2] = v59;
  v56 = NSStringFromSelector(sel_maneuverType);
  v58 = [CPAccNavParamKey paramKey:3];
  v57 = [v58 copySettingEnumType:1];
  v84 = v57;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
  v54 = [CPAccNavParam paramWithProperty:v56 keys:v55];
  v88[3] = v54;
  v51 = NSStringFromSelector(sel_roadFollowingManeuverVariants);
  v53 = [CPAccNavParamKey paramKey:4];
  v52 = [v53 copySettingHasVariants:1];
  v83 = v52;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
  v49 = [CPAccNavParam paramWithProperty:v51 keys:v50];
  v48 = [v49 copySettingCollectionGeneric:objc_opt_class()];
  v88[4] = v48;
  v44 = NSStringFromSelector(sel_initialDistance);
  v47 = [CPAccNavParamKey paramKey:5];
  v46 = [MEMORY[0x277CCAE20] meters];
  v45 = [v47 copySettingDimension:v46];
  v82 = v45;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  v42 = [CPAccNavParam paramWithProperty:v44 keys:v43];
  v41 = [v42 copySettingEncodeable:0];
  v88[5] = v41;
  v37 = NSStringFromSelector(sel_initialDistanceDisplay);
  v40 = [CPAccNavParamKey paramKey:6];
  v81[0] = v40;
  v39 = [CPAccNavParamKey paramKey:7];
  v38 = [v39 copySettingEnumType:5];
  v81[1] = v38;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
  v35 = [CPAccNavParam paramWithProperty:v37 keys:v36];
  v34 = [v35 copySettingEncodeable:0];
  v88[6] = v34;
  v31 = NSStringFromSelector(sel_trafficSide);
  v33 = [CPAccNavParamKey paramKey:8];
  v32 = [v33 copySettingEnumType:3];
  v80 = v32;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  v29 = [CPAccNavParam paramWithProperty:v31 keys:v30];
  v88[7] = v29;
  v26 = NSStringFromSelector(sel_junctionType);
  v28 = [CPAccNavParamKey paramKey:9];
  v27 = [v28 copySettingEnumType:2];
  v79 = v27;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  v24 = [CPAccNavParam paramWithProperty:v26 keys:v25];
  v88[8] = v24;
  v20 = NSStringFromSelector(sel_junctionElementAngles);
  v23 = [CPAccNavParamKey paramKey:10];
  v22 = [MEMORY[0x277CCADA8] degrees];
  v21 = [v23 copySettingDimension:v22];
  v78 = v21;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  v18 = [CPAccNavParam paramWithProperty:v20 keys:v19];
  v17 = [v18 copySettingCollectionGeneric:objc_opt_class()];
  v88[9] = v17;
  v13 = NSStringFromSelector(sel_junctionExitAngle);
  v16 = [CPAccNavParamKey paramKey:11];
  v15 = [MEMORY[0x277CCADA8] degrees];
  v14 = [v16 copySettingDimension:v15];
  v77 = v14;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  v11 = [CPAccNavParam paramWithProperty:v13 keys:v12];
  v88[10] = v11;
  v0 = NSStringFromSelector(sel_linkedLaneGuidanceIndex);
  v1 = [CPAccNavParamKey paramKey:12];
  v2 = [v1 copySettingIsIntegerValue:1];
  v76 = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  v4 = [CPAccNavParam paramWithProperty:v0 keys:v3];
  v88[11] = v4;
  v5 = NSStringFromSelector(sel_highwayExitLabel);
  v6 = [CPAccNavParamKey paramKey:13];
  v75 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
  v8 = [CPAccNavParam paramWithProperty:v5 keys:v7];
  v88[12] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:13];
  v10 = accNavParameters__accNavParameters_0;
  accNavParameters__accNavParameters_0 = v9;
}

+ (NSDictionary)accNavParametersIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CPManeuver_CPAccNavUpdate__accNavParametersIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accNavParametersIndexed_onceToken_0 != -1)
  {
    dispatch_once(&accNavParametersIndexed_onceToken_0, block);
  }

  v2 = accNavParametersIndexed__accNavParametersIndexed_0;

  return v2;
}

uint64_t __53__CPManeuver_CPAccNavUpdate__accNavParametersIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParametersIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParametersIndexed__accNavParametersIndexed_0;
  accNavParametersIndexed__accNavParametersIndexed_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSDictionary)accNavParameterKeysIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CPManeuver_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accNavParameterKeysIndexed_onceToken_0 != -1)
  {
    dispatch_once(&accNavParameterKeysIndexed_onceToken_0, block);
  }

  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_0;

  return v2;
}

uint64_t __56__CPManeuver_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParameterKeysIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_0;
  accNavParameterKeysIndexed__accNavParameterKeysIndexed_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (CPManeuver)maneuverWithComponent:(id)component
{
  v4 = MEMORY[0x277CE82E8];
  componentCopy = component;
  v6 = [v4 alloc];
  component = [componentCopy component];
  v8 = [v6 initWithManeuver:self component:component];

  v9 = [objc_alloc(MEMORY[0x277CF8A98]) initWithComponent:componentCopy accNavInfo:v8];

  return v9;
}

@end