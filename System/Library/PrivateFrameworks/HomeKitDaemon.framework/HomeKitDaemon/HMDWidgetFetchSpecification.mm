@interface HMDWidgetFetchSpecification
+ (NSSet)allHomeLockScreenWidgetKinds;
+ (NSSet)allOtherHomesSingleAccessorySecurityFetchSpecifications;
+ (NSSet)lightsFetchSpecifications;
+ (NSSet)mainHomeSecurityFetchSpecifications;
- (HMDWidgetFetchSpecification)initWithName:(id)name serviceTypes:(id)types associatedServiceTypes:(id)serviceTypes characteristicTypes:(id)characteristicTypes affectedWidgetKinds:(id)kinds;
- (id)attributeDescriptions;
@end

@implementation HMDWidgetFetchSpecification

- (id)attributeDescriptions
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  serviceTypes = [(HMDWidgetFetchSpecification *)self serviceTypes];
  v5 = [v3 initWithName:@"Service Types" value:serviceTypes];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  associatedServiceTypes = [(HMDWidgetFetchSpecification *)self associatedServiceTypes];
  v8 = [v6 initWithName:@"Associated Service Types" value:associatedServiceTypes];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  characteristicTypes = [(HMDWidgetFetchSpecification *)self characteristicTypes];
  v11 = [v9 initWithName:@"Characteristic Types" value:characteristicTypes];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  affectedWidgetKinds = [(HMDWidgetFetchSpecification *)self affectedWidgetKinds];
  v14 = [v12 initWithName:@"Affected Widget Kinds" value:affectedWidgetKinds];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

- (HMDWidgetFetchSpecification)initWithName:(id)name serviceTypes:(id)types associatedServiceTypes:(id)serviceTypes characteristicTypes:(id)characteristicTypes affectedWidgetKinds:(id)kinds
{
  v28.receiver = self;
  v28.super_class = HMDWidgetFetchSpecification;
  kindsCopy = kinds;
  characteristicTypesCopy = characteristicTypes;
  serviceTypesCopy = serviceTypes;
  typesCopy = types;
  nameCopy = name;
  v16 = [(HMDWidgetFetchSpecification *)&v28 init];
  v17 = objc_msgSend_copy(nameCopy, v28.receiver, v28.super_class);

  name = v16->_name;
  v16->_name = v17;

  v19 = objc_msgSend_copy(typesCopy);
  serviceTypes = v16->_serviceTypes;
  v16->_serviceTypes = v19;

  v21 = objc_msgSend_copy(serviceTypesCopy);
  associatedServiceTypes = v16->_associatedServiceTypes;
  v16->_associatedServiceTypes = v21;

  v23 = objc_msgSend_copy(characteristicTypesCopy);
  characteristicTypes = v16->_characteristicTypes;
  v16->_characteristicTypes = v23;

  v25 = objc_msgSend_copy(kindsCopy);
  affectedWidgetKinds = v16->_affectedWidgetKinds;
  v16->_affectedWidgetKinds = v25;

  return v16;
}

+ (NSSet)allOtherHomesSingleAccessorySecurityFetchSpecifications
{
  v22[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.Home.widget.security.singleAccessory"];
  v18 = MEMORY[0x277CBEB98];
  v3 = [HMDWidgetFetchSpecification alloc];
  v21 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0E58]];
  v20 = [MEMORY[0x277CBEB98] set];
  v19 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF800]];
  v17 = [(HMDWidgetFetchSpecification *)v3 initWithName:@"Garage Door Openers" serviceTypes:v21 associatedServiceTypes:v20 characteristicTypes:v19 affectedWidgetKinds:v2];
  v22[0] = v17;
  v4 = [HMDWidgetFetchSpecification alloc];
  v16 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0EB0]];
  v5 = [MEMORY[0x277CBEB98] set];
  v6 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF838]];
  v7 = [(HMDWidgetFetchSpecification *)v4 initWithName:@"Locks" serviceTypes:v16 associatedServiceTypes:v5 characteristicTypes:v6 affectedWidgetKinds:v2];
  v22[1] = v7;
  v8 = [HMDWidgetFetchSpecification alloc];
  v9 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0ED8]];
  v10 = [MEMORY[0x277CBEB98] set];
  v11 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF858]];
  v12 = [(HMDWidgetFetchSpecification *)v8 initWithName:@"Security Systems" serviceTypes:v9 associatedServiceTypes:v10 characteristicTypes:v11 affectedWidgetKinds:v2];
  v22[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v14 = [v18 setWithArray:v13];

  return v14;
}

+ (NSSet)mainHomeSecurityFetchSpecifications
{
  v48[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v48[0] = @"com.apple.Home.widget.security.category";
  v48[1] = @"com.apple.Home.widget.summary.category";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v38 = [v2 setWithArray:v3];

  v4 = MEMORY[0x277CBEB98];
  v47[0] = @"com.apple.Home.widget.security.category";
  v47[1] = @"com.apple.Home.widget.summary.category";
  v47[2] = @"com.apple.Home.widget.security.singleAccessory";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
  v6 = [v4 setWithArray:v5];

  v36 = MEMORY[0x277CBEB98];
  v7 = [HMDWidgetFetchSpecification alloc];
  v8 = *MEMORY[0x277CD0E58];
  v43 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0E58]];
  v42 = [MEMORY[0x277CBEB98] set];
  v41 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF800]];
  v40 = [(HMDWidgetFetchSpecification *)v7 initWithName:@"Garage Door Openers" serviceTypes:v43 associatedServiceTypes:v42 characteristicTypes:v41 affectedWidgetKinds:v6];
  v46[0] = v40;
  v9 = [HMDWidgetFetchSpecification alloc];
  v10 = MEMORY[0x277CBEB98];
  v12 = *MEMORY[0x277CD0F58];
  v45[0] = *MEMORY[0x277CD0E30];
  v11 = v45[0];
  v45[1] = v12;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v35 = [v10 setWithArray:v39];
  v34 = [MEMORY[0x277CBEB98] set];
  v33 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF9E0]];
  v32 = [(HMDWidgetFetchSpecification *)v9 initWithName:@"Motorized Doors & Windows" serviceTypes:v35 associatedServiceTypes:v34 characteristicTypes:v33 affectedWidgetKinds:v38];
  v46[1] = v32;
  v13 = [HMDWidgetFetchSpecification alloc];
  v30 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0E20]];
  v14 = MEMORY[0x277CBEB98];
  v44[0] = v8;
  v44[1] = v11;
  v44[2] = v12;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
  v29 = [v14 setWithArray:v31];
  v28 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF7E8]];
  v27 = [(HMDWidgetFetchSpecification *)v13 initWithName:@"Contact Sensors w/ associated Garage Doors serviceTypes:Doors associatedServiceTypes:or Windows" characteristicTypes:v30 affectedWidgetKinds:v29, v28, v6];
  v46[2] = v27;
  v15 = [HMDWidgetFetchSpecification alloc];
  v16 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0EB0]];
  v17 = [MEMORY[0x277CBEB98] set];
  v18 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF838]];
  v19 = [(HMDWidgetFetchSpecification *)v15 initWithName:@"Locks" serviceTypes:v16 associatedServiceTypes:v17 characteristicTypes:v18 affectedWidgetKinds:v6];
  v46[3] = v19;
  v20 = [HMDWidgetFetchSpecification alloc];
  v21 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0ED8]];
  v22 = [MEMORY[0x277CBEB98] set];
  v23 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF858]];
  v24 = [(HMDWidgetFetchSpecification *)v20 initWithName:@"Security Systems" serviceTypes:v21 associatedServiceTypes:v22 characteristicTypes:v23 affectedWidgetKinds:v6];
  v46[4] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:5];
  v37 = [v36 setWithArray:v25];

  return v37;
}

+ (NSSet)lightsFetchSpecifications
{
  v26[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v26[0] = @"com.apple.Home.widget.lights.category";
  v26[1] = @"com.apple.Home.widget.summary.category";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v4 = [v2 setWithArray:v3];

  v21 = MEMORY[0x277CBEB98];
  v5 = [HMDWidgetFetchSpecification alloc];
  v6 = *MEMORY[0x277CD0EA0];
  v23 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0EA0]];
  v22 = [MEMORY[0x277CBEB98] set];
  v7 = *MEMORY[0x277CCF9F0];
  v20 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF9F0]];
  v8 = [(HMDWidgetFetchSpecification *)v5 initWithName:@"Lightbulbs" serviceTypes:v23 associatedServiceTypes:v22 characteristicTypes:v20 affectedWidgetKinds:v4];
  v25[0] = v8;
  v9 = [HMDWidgetFetchSpecification alloc];
  v10 = MEMORY[0x277CBEB98];
  v11 = *MEMORY[0x277CD0F08];
  v24[0] = *MEMORY[0x277CD0ED0];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v13 = [v10 setWithArray:v12];
  v14 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v15 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v16 = [(HMDWidgetFetchSpecification *)v9 initWithName:@"Outlets & Switches w/ associated Lightbulbs" serviceTypes:v13 associatedServiceTypes:v14 characteristicTypes:v15 affectedWidgetKinds:v4];
  v25[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v18 = [v21 setWithArray:v17];

  return v18;
}

+ (NSSet)allHomeLockScreenWidgetKinds
{
  v6[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"com.apple.Home.widget.summary.category";
  v6[1] = @"com.apple.Home.widget.lights.category";
  v6[2] = @"com.apple.Home.widget.security.category";
  v6[3] = @"com.apple.Home.widget.security.singleAccessory";
  v6[4] = @"com.apple.Home.widget.climate.category";
  v6[5] = @"com.apple.Home.widget.climate.singleSensor";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:6];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end