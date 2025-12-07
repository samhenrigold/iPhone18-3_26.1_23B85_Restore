@interface MSVehicle
+ (Class)managedClass;
- (MSVehicle)initWithColorHex:(id)hex currentVehicleState:(id)state dateOfVehicleIngestion:(id)ingestion displayName:(id)name headUnitBluetoothIdentifier:(id)identifier headUnitMacAddress:(id)address iapIdentifier:(id)iapIdentifier lastStateUpdateDate:(id)self0 licensePlate:(id)self1 lprPowerType:(id)self2 lprVehicleType:(id)self3 manufacturer:(id)self4 model:(id)self5 pairedAppIdentifier:(id)self6 positionIndex:(int64_t)self7 powerByConnector:(id)self8 preferredChargingNetworks:(id)self9 siriIntentsIdentifier:(id)intentsIdentifier supportedConnectors:(id)connectors vehicleIdentifier:(id)vehicleIdentifier vehicleType:(id)a23 year:(id)year;
- (MSVehicle)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSVehicle)initWithStore:(id)store colorHex:(id)hex currentVehicleState:(id)state dateOfVehicleIngestion:(id)ingestion displayName:(id)name headUnitBluetoothIdentifier:(id)identifier headUnitMacAddress:(id)address iapIdentifier:(id)self0 lastStateUpdateDate:(id)self1 licensePlate:(id)self2 lprPowerType:(id)self3 lprVehicleType:(id)self4 manufacturer:(id)self5 model:(id)self6 pairedAppIdentifier:(id)self7 positionIndex:(int64_t)self8 powerByConnector:(id)self9 preferredChargingNetworks:(id)networks siriIntentsIdentifier:(id)intentsIdentifier supportedConnectors:(id)connectors vehicleIdentifier:(id)vehicleIdentifier vehicleType:(id)a24 year:(id)year;
- (NSNumber)supportedConnectors;
- (NSNumber)vehicleType;
- (NSNumber)year;
- (int64_t)positionIndex;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setSupportedConnectors:(id)connectors;
- (void)setVehicleType:(id)type;
- (void)setYear:(id)year;
@end

@implementation MSVehicle

- (MSVehicle)initWithColorHex:(id)hex currentVehicleState:(id)state dateOfVehicleIngestion:(id)ingestion displayName:(id)name headUnitBluetoothIdentifier:(id)identifier headUnitMacAddress:(id)address iapIdentifier:(id)iapIdentifier lastStateUpdateDate:(id)self0 licensePlate:(id)self1 lprPowerType:(id)self2 lprVehicleType:(id)self3 manufacturer:(id)self4 model:(id)self5 pairedAppIdentifier:(id)self6 positionIndex:(int64_t)self7 powerByConnector:(id)self8 preferredChargingNetworks:(id)self9 siriIntentsIdentifier:(id)intentsIdentifier supportedConnectors:(id)connectors vehicleIdentifier:(id)vehicleIdentifier vehicleType:(id)a23 year:(id)year
{
  ingestionCopy = ingestion;
  selfCopy = self;
  stateCopy = state;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v163 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v165 = &v133 - v31;
  identifierCopy = identifier;
  addressCopy = address;
  nameCopy = name;
  if (hex)
  {
    v32 = sub_1B63BEBD4();
    v150 = v33;
    v151 = v32;
  }

  else
  {
    v150 = 0;
    v151 = 0;
  }

  yearCopy = year;
  vehicleIdentifierCopy = vehicleIdentifier;
  v162 = a23;
  connectorCopy = connector;
  networksCopy = networks;
  connectorsCopy = connectors;
  modelCopy = model;
  appIdentifierCopy = appIdentifier;
  vehicleTypeCopy = vehicleType;
  manufacturerCopy = manufacturer;
  typeCopy = type;
  plateCopy = plate;
  dateCopy = date;
  iapIdentifierCopy = iapIdentifier;
  if (stateCopy)
  {
    v144 = stateCopy;
    v34 = ingestionCopy;
    v35 = nameCopy;
    v36 = identifierCopy;
    v37 = addressCopy;
    iapIdentifierCopy2 = iapIdentifier;
    dateCopy2 = date;
    plateCopy2 = plate;
    typeCopy2 = type;
    vehicleTypeCopy2 = vehicleType;
    manufacturerCopy2 = manufacturer;
    modelCopy2 = model;
    appIdentifierCopy2 = appIdentifier;
    v46 = connectorCopy;
    v47 = networksCopy;
    intentsIdentifierCopy3 = intentsIdentifier;
    intentsIdentifierCopy2 = intentsIdentifier;
    v50 = connectorsCopy;
    v51 = vehicleIdentifierCopy;
    v52 = v162;
    v53 = yearCopy;
    stateCopy = sub_1B63BE924();
    v149 = v54;
  }

  else
  {
    v55 = ingestionCopy;
    v56 = nameCopy;
    v57 = identifierCopy;
    v58 = addressCopy;
    iapIdentifierCopy3 = iapIdentifier;
    dateCopy3 = date;
    plateCopy3 = plate;
    typeCopy3 = type;
    vehicleTypeCopy3 = vehicleType;
    manufacturerCopy3 = manufacturer;
    modelCopy3 = model;
    appIdentifierCopy3 = appIdentifier;
    v67 = connectorCopy;
    v68 = networksCopy;
    intentsIdentifierCopy3 = intentsIdentifier;
    intentsIdentifierCopy4 = intentsIdentifier;
    connectorsCopy2 = connectors;
    v71 = vehicleIdentifierCopy;
    v72 = v162;
    v73 = yearCopy;
    stateCopy = 0;
    v149 = 0xF000000000000000;
  }

  v74 = v163;
  v75 = ingestionCopy;
  if (ingestionCopy)
  {
    v76 = v165;
    sub_1B63BE974();

    v77 = sub_1B63BE994();
    (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
  }

  else
  {
    v78 = sub_1B63BE994();
    (*(*(v78 - 8) + 56))(v165, 1, 1, v78);
  }

  v79 = intentsIdentifierCopy3;
  v81 = manufacturerCopy;
  v80 = modelCopy;
  v82 = vehicleTypeCopy;
  v83 = typeCopy;
  v85 = identifierCopy;
  v84 = addressCopy;
  v86 = nameCopy;
  if (nameCopy)
  {
    ingestionCopy = sub_1B63BEBD4();
    v144 = v87;

    if (v85)
    {
LABEL_12:
      nameCopy = sub_1B63BEBD4();
      v135 = v88;

      goto LABEL_15;
    }
  }

  else
  {
    ingestionCopy = 0;
    v144 = 0;
    if (identifierCopy)
    {
      goto LABEL_12;
    }
  }

  nameCopy = 0;
  v135 = 0;
LABEL_15:
  v89 = iapIdentifierCopy;
  if (v84)
  {
    identifierCopy = sub_1B63BEBD4();
    v141 = v90;
  }

  else
  {
    identifierCopy = 0;
    v141 = 0;
  }

  v91 = dateCopy;
  if (v89)
  {
    addressCopy = sub_1B63BEBD4();
    v139 = v92;

    if (v91)
    {
LABEL_20:
      sub_1B63BE974();

      v93 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    addressCopy = 0;
    v139 = 0;
    if (dateCopy)
    {
      goto LABEL_20;
    }
  }

  v93 = 1;
LABEL_23:
  v94 = sub_1B63BE994();
  (*(*(v94 - 8) + 56))(v74, v93, 1, v94);
  v95 = plateCopy;
  if (plateCopy)
  {
    dateCopy = sub_1B63BEBD4();
    iapIdentifierCopy = v96;
  }

  else
  {
    dateCopy = 0;
    iapIdentifierCopy = 0;
  }

  v97 = connectorCopy;
  v98 = appIdentifierCopy;
  if (v83)
  {
    connectorCopy = sub_1B63BEBD4();
    plateCopy = v99;

    if (v82)
    {
      goto LABEL_28;
    }
  }

  else
  {
    connectorCopy = 0;
    plateCopy = 0;
    if (v82)
    {
LABEL_28:
      typeCopy = sub_1B63BEBD4();
      v137 = v100;

      if (v81)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }
  }

  typeCopy = 0;
  v137 = 0;
  if (v81)
  {
LABEL_29:
    vehicleTypeCopy = sub_1B63BEBD4();
    v136 = v101;

    if (v80)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

LABEL_37:
  vehicleTypeCopy = 0;
  v136 = 0;
  if (v80)
  {
LABEL_30:
    v134 = sub_1B63BEBD4();
    v103 = v102;

    if (v98)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_38:
  v134 = 0;
  v103 = 0;
  if (v98)
  {
LABEL_31:
    v104 = sub_1B63BEBD4();
    manufacturerCopy = v105;
    modelCopy = v104;

    if (v97)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

LABEL_39:
  manufacturerCopy = 0;
  modelCopy = 0;
  if (v97)
  {
LABEL_32:
    v106 = sub_1B63BE924();
    appIdentifierCopy = v107;

    v108 = networksCopy;
    if (networksCopy)
    {
      goto LABEL_33;
    }

LABEL_41:
    v109 = 0;
    v111 = 0xF000000000000000;
    if (v79)
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

LABEL_40:
  v106 = 0;
  appIdentifierCopy = 0xF000000000000000;
  v108 = networksCopy;
  if (!networksCopy)
  {
    goto LABEL_41;
  }

LABEL_33:
  v109 = sub_1B63BE924();
  v111 = v110;

  if (v79)
  {
LABEL_34:
    v112 = sub_1B63BEBD4();
    v114 = v113;

    goto LABEL_43;
  }

LABEL_42:
  v112 = 0;
  v114 = 0;
LABEL_43:
  v115 = vehicleIdentifierCopy;
  if (vehicleIdentifierCopy)
  {
    v116 = sub_1B63BEBD4();
    v118 = v117;
  }

  else
  {
    v116 = 0;
    v118 = 0;
  }

  v132 = v118;
  v130 = v112;
  v131 = v114;
  v128 = v103;
  v119 = connectorsCopy;
  v120 = v106;
  v129 = v106;
  v121 = yearCopy;
  v122 = v162;
  v123 = appIdentifierCopy;
  v124 = stateCopy;
  v125 = v149;
  v126 = sub_1B6336F54(v151, v150, stateCopy, v149, v165, ingestionCopy, v144, nameCopy, v135, identifierCopy, v141, addressCopy, v139, v163, dateCopy, iapIdentifierCopy, connectorCopy, plateCopy, typeCopy, v137, vehicleTypeCopy, v136, v134, v128, modelCopy, manufacturerCopy, index, v129, appIdentifierCopy, v109, v111, v130, v131, connectorsCopy, v116, v132, v162, yearCopy);

  sub_1B6284F64(v109, v111);
  sub_1B6284F64(v120, v123);
  sub_1B6284F64(v124, v125);
  return v126;
}

- (MSVehicle)initWithStore:(id)store colorHex:(id)hex currentVehicleState:(id)state dateOfVehicleIngestion:(id)ingestion displayName:(id)name headUnitBluetoothIdentifier:(id)identifier headUnitMacAddress:(id)address iapIdentifier:(id)self0 lastStateUpdateDate:(id)self1 licensePlate:(id)self2 lprPowerType:(id)self3 lprVehicleType:(id)self4 manufacturer:(id)self5 model:(id)self6 pairedAppIdentifier:(id)self7 positionIndex:(int64_t)self8 powerByConnector:(id)self9 preferredChargingNetworks:(id)networks siriIntentsIdentifier:(id)intentsIdentifier supportedConnectors:(id)connectors vehicleIdentifier:(id)vehicleIdentifier vehicleType:(id)a24 year:(id)year
{
  ingestionCopy = ingestion;
  selfCopy = self;
  stateCopy = state;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v154 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v155 = &v121 - v32;
  nameCopy = name;
  identifierCopy = identifier;
  if (hex)
  {
    v33 = sub_1B63BEBD4();
    v143 = v34;
    v144 = v33;
  }

  else
  {
    v143 = 0;
    v144 = 0;
  }

  v147 = a24;
  vehicleIdentifierCopy = vehicleIdentifier;
  yearCopy = year;
  connectorsCopy = connectors;
  intentsIdentifierCopy = intentsIdentifier;
  networksCopy = networks;
  manufacturerCopy = manufacturer;
  storeCopy = store;
  connectorCopy = connector;
  v142 = storeCopy;
  appIdentifierCopy = appIdentifier;
  vehicleTypeCopy = vehicleType;
  modelCopy = model;
  typeCopy = type;
  plateCopy = plate;
  dateCopy = date;
  iapIdentifierCopy = iapIdentifier;
  addressCopy = address;
  if (stateCopy)
  {
    v131 = stateCopy;
    v36 = ingestionCopy;
    v37 = ingestionCopy;
    v38 = nameCopy;
    v39 = identifierCopy;
    addressCopy2 = address;
    iapIdentifierCopy2 = iapIdentifier;
    dateCopy2 = date;
    plateCopy2 = plate;
    typeCopy2 = type;
    vehicleTypeCopy2 = vehicleType;
    v46 = manufacturerCopy;
    v47 = manufacturerCopy;
    modelCopy2 = model;
    appIdentifierCopy2 = appIdentifier;
    connectorCopy2 = connector;
    v51 = networksCopy;
    v52 = networksCopy;
    v53 = intentsIdentifierCopy;
    v54 = connectorsCopy;
    v55 = vehicleIdentifierCopy;
    v56 = v147;
    v57 = yearCopy;
    stateCopy = sub_1B63BE924();
    v139 = v58;

    if (v36)
    {
LABEL_6:
      v59 = v155;
      sub_1B63BE974();

      v60 = sub_1B63BE994();
      (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
      goto LABEL_9;
    }
  }

  else
  {
    v36 = ingestionCopy;
    v61 = ingestionCopy;
    v62 = nameCopy;
    v63 = identifierCopy;
    addressCopy3 = address;
    iapIdentifierCopy3 = iapIdentifier;
    dateCopy3 = date;
    plateCopy3 = plate;
    typeCopy3 = type;
    vehicleTypeCopy3 = vehicleType;
    v46 = manufacturerCopy;
    v70 = manufacturerCopy;
    modelCopy3 = model;
    appIdentifierCopy3 = appIdentifier;
    connectorCopy3 = connector;
    v51 = networksCopy;
    v74 = networksCopy;
    v75 = intentsIdentifierCopy;
    v76 = connectorsCopy;
    v77 = vehicleIdentifierCopy;
    v78 = v147;
    v79 = yearCopy;
    stateCopy = 0;
    v139 = 0xF000000000000000;
    if (v36)
    {
      goto LABEL_6;
    }
  }

  v80 = sub_1B63BE994();
  (*(*(v80 - 8) + 56))(v155, 1, 1, v80);
LABEL_9:
  v81 = v154;
  v83 = vehicleTypeCopy;
  v82 = modelCopy;
  v84 = typeCopy;
  v85 = dateCopy;
  v87 = nameCopy;
  v86 = identifierCopy;
  if (nameCopy)
  {
    v88 = sub_1B63BEBD4();
    manufacturerCopy = v89;
    ingestionCopy = v88;
  }

  else
  {
    manufacturerCopy = 0;
    ingestionCopy = 0;
  }

  v90 = addressCopy;
  if (v86)
  {
    nameCopy = sub_1B63BEBD4();
    networksCopy = v91;
  }

  else
  {
    nameCopy = 0;
    networksCopy = 0;
  }

  v92 = iapIdentifierCopy;
  if (v90)
  {
    identifierCopy = sub_1B63BEBD4();
    v131 = v93;

    if (v92)
    {
      goto LABEL_17;
    }

LABEL_20:
    addressCopy = 0;
    v128 = 0;
    if (v85)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  identifierCopy = 0;
  v131 = 0;
  if (!iapIdentifierCopy)
  {
    goto LABEL_20;
  }

LABEL_17:
  addressCopy = sub_1B63BEBD4();
  v128 = v94;

  if (v85)
  {
LABEL_18:
    sub_1B63BE974();

    v95 = 0;
    goto LABEL_22;
  }

LABEL_21:
  v95 = 1;
LABEL_22:
  v96 = sub_1B63BE994();
  (*(*(v96 - 8) + 56))(v81, v95, 1, v96);
  v97 = plateCopy;
  if (plateCopy)
  {
    dateCopy = sub_1B63BEBD4();
    iapIdentifierCopy = v98;
  }

  else
  {
    dateCopy = 0;
    iapIdentifierCopy = 0;
  }

  v99 = intentsIdentifierCopy;
  v100 = appIdentifierCopy;
  if (v84)
  {
    intentsIdentifierCopy = sub_1B63BEBD4();
    plateCopy = v101;

    if (v83)
    {
      goto LABEL_27;
    }
  }

  else
  {
    intentsIdentifierCopy = 0;
    plateCopy = 0;
    if (v83)
    {
LABEL_27:
      typeCopy = sub_1B63BEBD4();
      v126 = v102;

      if (v46)
      {
        goto LABEL_28;
      }

      goto LABEL_36;
    }
  }

  typeCopy = 0;
  v126 = 0;
  if (v46)
  {
LABEL_28:
    vehicleTypeCopy = sub_1B63BEBD4();
    v125 = v103;

    if (v82)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_36:
  vehicleTypeCopy = 0;
  v125 = 0;
  if (v82)
  {
LABEL_29:
    v124 = sub_1B63BEBD4();
    v123 = v104;

    if (v100)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

LABEL_37:
  v124 = 0;
  v123 = 0;
  if (v100)
  {
LABEL_30:
    modelCopy = sub_1B63BEBD4();
    v122 = v105;

    v106 = connectorCopy;
    if (connectorCopy)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_38:
  modelCopy = 0;
  v122 = 0;
  v106 = connectorCopy;
  if (connectorCopy)
  {
LABEL_31:
    appIdentifierCopy = sub_1B63BE924();
    v108 = v107;

    v109 = v147;
    if (v51)
    {
      goto LABEL_32;
    }

LABEL_40:
    v110 = 0;
    v112 = 0xF000000000000000;
    if (v99)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

LABEL_39:
  appIdentifierCopy = 0;
  v108 = 0xF000000000000000;
  v109 = v147;
  if (!v51)
  {
    goto LABEL_40;
  }

LABEL_32:
  v110 = sub_1B63BE924();
  v112 = v111;

  if (v99)
  {
LABEL_33:
    v113 = sub_1B63BEBD4();
    v115 = v114;

    goto LABEL_42;
  }

LABEL_41:
  v113 = 0;
  v115 = 0;
LABEL_42:
  v116 = vehicleIdentifierCopy;
  if (vehicleIdentifierCopy)
  {
    v117 = sub_1B63BEBD4();
    v119 = v118;
  }

  else
  {
    v117 = 0;
    v119 = 0;
  }

  return Vehicle.init(store:colorHex:currentVehicleState:dateOfVehicleIngestion:displayName:headUnitBluetoothIdentifier:headUnitMacAddress:iapIdentifier:lastStateUpdateDate:licensePlate:lprPowerType:lprVehicleType:manufacturer:model:pairedAppIdentifier:positionIndex:powerByConnector:preferredChargingNetworks:siriIntentsIdentifier:supportedConnectors:vehicleIdentifier:vehicleType:year:)(v142, v144, v143, stateCopy, v139, v155, ingestionCopy, manufacturerCopy, nameCopy, networksCopy, identifierCopy, v131, addressCopy, v128, v154, dateCopy, iapIdentifierCopy, intentsIdentifierCopy, plateCopy, typeCopy, v126, vehicleTypeCopy, v125, v124, v123, modelCopy, v122, index, appIdentifierCopy, v108, v110, v112, v113, v115, connectorsCopy, v117, v119, v109, yearCopy);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedVehicle();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B6336468(objectCopy, load);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSVehicle__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B6332A68(index);
}

- (NSNumber)supportedConnectors
{
  selfCopy = self;
  v4 = sub_1B6334054(selfCopy, v3);

  return v4;
}

- (void)setSupportedConnectors:(id)connectors
{
  connectorsCopy = connectors;
  selfCopy = self;
  sub_1B63382BC(connectors);
}

- (NSNumber)vehicleType
{
  selfCopy = self;
  v4 = sub_1B6334E34(selfCopy, v3);

  return v4;
}

- (void)setVehicleType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  sub_1B63384E0(type);
}

- (NSNumber)year
{
  selfCopy = self;
  v4 = sub_1B6335350(selfCopy, v3);

  return v4;
}

- (void)setYear:(id)year
{
  yearCopy = year;
  selfCopy = self;
  sub_1B63386B8(year);
}

- (MSVehicle)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B6335988(object, store, loadCopy, parentCopy);
}

@end