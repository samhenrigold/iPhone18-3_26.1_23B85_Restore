@interface MapKit_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
+ (void)initializeJSContext:(id)context;
@end

@implementation MapKit_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1CA9B4;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9258 != -1)
  {
    dispatch_once(&qword_2806D9258, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  [self defineConstants:contextCopy];
  [contextCopy setObject:&unk_287F2CD40 forKeyedSubscript:@"MKCoordinateRegionMakeWithDistance"];
  [contextCopy setObject:&unk_287F2CD60 forKeyedSubscript:@"MKPlacemarkWithCoordinateAddressDictionary"];
  [contextCopy setObject:&unk_287F2CD80 forKeyedSubscript:@"MKMapItemWithCoordinateAddressDictionary"];
  [contextCopy setObject:&unk_287F2CDA0 forKeyedSubscript:@"MKRoadWidthAtZoomScale"];
  [contextCopy setObject:&unk_287F2CDC0 forKeyedSubscript:@"MKMapPointForCoordinate"];
  [contextCopy setObject:&unk_287F2CDE0 forKeyedSubscript:@"MKCoordinateForMapPoint"];
  [contextCopy setObject:&unk_287F2CE00 forKeyedSubscript:@"MKMetersBetweenMapPoints"];
  [contextCopy setObject:&unk_287F2CE20 forKeyedSubscript:@"MKCoordinateRegionForMapRect"];
  [contextCopy setObject:&unk_287F2CE40 forKeyedSubscript:@"MKPointAnnotation"];
  [contextCopy setObject:&unk_287F2CE60 forKeyedSubscript:@"MKPinAnnotationView"];
  [contextCopy setObject:&unk_287F2CE80 forKeyedSubscript:@"MKMapRectUnion"];
  [contextCopy setObject:&unk_287F2CEA0 forKeyedSubscript:@"MKMapSizeMake"];
  [contextCopy setObject:&unk_287F2CEC0 forKeyedSubscript:@"MKMapRectMake"];
  [contextCopy setObject:&unk_287F2CEE0 forKeyedSubscript:@"MKLocalSearch"];
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:&unk_287F55C40 forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"MKOverlayLevelAboveRoads" descriptor:dictionary];
  [dictionary setObject:&unk_287F55C58 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKOverlayLevelAboveLabels" descriptor:dictionary];
  [dictionary setObject:&unk_287F55C70 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKPinAnnotationColorRed" descriptor:dictionary];
  [dictionary setObject:&unk_287F55C88 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKPinAnnotationColorGreen" descriptor:dictionary];
  [dictionary setObject:&unk_287F55CA0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKPinAnnotationColorPurple" descriptor:dictionary];
  [dictionary setObject:&unk_287F57678 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKFeatureDisplayPriorityRequired" descriptor:dictionary];
  [dictionary setObject:&unk_287F57688 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKFeatureDisplayPriorityDefaultHigh" descriptor:dictionary];
  [dictionary setObject:&unk_287F57698 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKFeatureDisplayPriorityDefaultLow" descriptor:dictionary];
  [dictionary setObject:&unk_287F55C88 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKDirectionsTransportTypeAutomobile" descriptor:dictionary];
  [dictionary setObject:&unk_287F55CA0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKDirectionsTransportTypeWalking" descriptor:dictionary];
  [dictionary setObject:&unk_287F55CB8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKDirectionsTransportTypeAny" descriptor:dictionary];
  [dictionary setObject:&unk_287F55C70 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKDistanceFormatterUnitsDefault" descriptor:dictionary];
  [dictionary setObject:&unk_287F55C88 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKDistanceFormatterUnitsMetric" descriptor:dictionary];
  [dictionary setObject:&unk_287F55CA0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKDistanceFormatterUnitsImperial" descriptor:dictionary];
  [dictionary setObject:&unk_287F55CD0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKDistanceFormatterUnitsImperialWithYards" descriptor:dictionary];
  [dictionary setObject:&unk_287F55C70 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKDistanceFormatterUnitStyleDefault" descriptor:dictionary];
  [dictionary setObject:&unk_287F55C88 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKDistanceFormatterUnitStyleAbbreviated" descriptor:dictionary];
  [dictionary setObject:&unk_287F55CA0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKDistanceFormatterUnitStyleFull" descriptor:dictionary];
  [dictionary setObject:&unk_287F55C70 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKMapTypeStandard" descriptor:dictionary];
  [dictionary setObject:&unk_287F55C88 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKMapTypeSatellite" descriptor:dictionary];
  [dictionary setObject:&unk_287F55CA0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKMapTypeHybrid" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CD4B68] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKLaunchOptionsDirectionsModeKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CD4B98] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKLaunchOptionsMapTypeKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CD4BA8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKLaunchOptionsShowsTrafficKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CD4B60] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKLaunchOptionsDirectionsModeDriving" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CD4B78] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKLaunchOptionsDirectionsModeWalking" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CD4B70] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKLaunchOptionsDirectionsModeTransit" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CD4B80] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKLaunchOptionsMapCenterKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CD4B90] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKLaunchOptionsMapSpanKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CD4B50] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MKLaunchOptionsCameraKey" descriptor:dictionary];
  v6 = [MEMORY[0x277CCAE60] valueWithBytes:MEMORY[0x277CD4BB0] objCType:"{?={?=dd}{?=dd}}"];
  [dictionary setObject:v6 forKeyedSubscript:v5];

  [constantsCopy defineProperty:@"MKMapRectNull" descriptor:dictionary];
}

@end