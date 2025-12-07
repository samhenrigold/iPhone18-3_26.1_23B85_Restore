id sub_299AE7EE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 usesMeteredFare];
  *a2 = result;
  return result;
}

INMediaSearch __swiftcall INMediaSearch.init(mediaType:sortOrder:mediaName:artistName:albumName:genreNames:moodNames:releaseDate:reference:mediaIdentifier:)(INMediaItemType mediaType, INMediaSortOrder sortOrder, Swift::String_optional mediaName, Swift::String_optional artistName, Swift::String_optional albumName, Swift::OpaquePointer_optional genreNames, Swift::OpaquePointer_optional moodNames, INDateComponentsRange_optional releaseDate, INMediaReference reference, Swift::String_optional mediaIdentifier)
{
  object = albumName.value._object;
  countAndFlagsBits = albumName.value._countAndFlagsBits;
  v12 = artistName.value._object;
  v13 = artistName.value._countAndFlagsBits;
  if (mediaName.value._object)
  {
    v14 = MEMORY[0x29C2AAC80](mediaName.value._countAndFlagsBits, mediaName.value._object);

    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if (artistName.value._object)
    {
LABEL_3:
      v15 = MEMORY[0x29C2AAC80](v13, v12);

      rawValue = genreNames.value._rawValue;
      if (object)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v15 = 0;
  rawValue = genreNames.value._rawValue;
  if (object)
  {
LABEL_4:
    v17 = MEMORY[0x29C2AAC80](countAndFlagsBits, object);

    v18 = *&genreNames.is_nil;
    if (rawValue)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v17 = 0;
  v18 = *&genreNames.is_nil;
  if (rawValue)
  {
LABEL_5:
    v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = *&releaseDate.is_nil;
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_12:
    v21.super.isa = 0;
    v23 = moodNames.value._rawValue;
    v22 = *&moodNames.is_nil;
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

LABEL_11:
  v19.super.isa = 0;
  v20 = *&releaseDate.is_nil;
  if (!v18)
  {
    goto LABEL_12;
  }

LABEL_6:
  v21.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = moodNames.value._rawValue;
  v22 = *&moodNames.is_nil;
  if (!v20)
  {
    goto LABEL_13;
  }

LABEL_7:
  v24 = MEMORY[0x29C2AAC80](releaseDate.value.super.isa, v20);

LABEL_14:
  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMediaType:mediaType sortOrder:sortOrder mediaName:v14 artistName:v15 albumName:v17 genreNames:v19.super.isa moodNames:v21.super.isa releaseDate:v23 reference:v22 mediaIdentifier:v24];

  return v25;
}

id INParameter.init<A, B>(keyPath:)(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x29EDCA118]);
  if (swift_isClassType())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || (v3 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter(), !v4))
  {

    return 0;
  }

  else
  {
    v5 = v3;
    v6 = v4;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = swift_getObjCClassFromMetadata();
    v9 = MEMORY[0x29C2AAC80](v5, v6);

    v10 = [ObjCClassFromMetadata parameterForClass:v8 keyPath:v9];

    return v10;
  }
}

INSetCarLockStatusIntent __swiftcall INSetCarLockStatusIntent.init(locked:carName:)(Swift::Bool_optional locked, INSpeakableString_optional carName)
{
  isa = carName.value.super.isa;
  if (locked.value == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLocked:v3 carName:isa];

  return v4;
}

uint64_t INSetCarLockStatusIntent.locked.getter()
{
  v1 = [v0 locked];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

INRequestRideIntent __swiftcall INRequestRideIntent.init(pickupLocation:dropOffLocation:rideOptionName:partySize:paymentMethod:scheduledPickupTime:)(CLPlacemark_optional pickupLocation, CLPlacemark_optional dropOffLocation, INSpeakableString_optional rideOptionName, Swift::Int_optional partySize, INPaymentMethod_optional paymentMethod, INDateComponentsRange_optional scheduledPickupTime)
{
  isa = rideOptionName.value.super.isa;
  v7 = *&dropOffLocation.is_nil;
  v8 = *&pickupLocation.is_nil;
  internal = pickupLocation.value._internal;
  v10 = pickupLocation.value.super.isa;
  if (dropOffLocation.value._internal)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPickupLocation:v10 dropOffLocation:internal rideOptionName:v8 partySize:v11 paymentMethod:v7 scheduledPickupTime:isa];

  return v12;
}

id INRequestRideIntent.partySize.getter()
{
  v1 = [v0 partySize];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

id static INNotebookItemTypeResolutionResult.disambiguation(with:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [ObjCClassFromMetadata disambiguationWithNotebookItemTypesToDisambiguate_];

  return v7;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

id INRideOption.usesMeteredFare.getter()
{
  v1 = [v0 usesMeteredFare];

  return v1;
}

void INRideOption.usesMeteredFare.setter(void *a1)
{
  [v1 setUsesMeteredFare_];
}

void (*INRideOption.usesMeteredFare.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 usesMeteredFare];
  return INRideOption.usesMeteredFare.modify;
}

void INRideOption.usesMeteredFare.modify(id *a1)
{
  v1 = *a1;
  [a1[1] setUsesMeteredFare_];
}

uint64_t INRideOption.usesMeteredFare.getter()
{
  v1 = [v0 usesMeteredFare];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void key path getter for INRideOption.usesMeteredFare : INRideOption(id *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [*a1 usesMeteredFare];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void key path setter for INRideOption.usesMeteredFare : INRideOption(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v5 = v4;
  [v3 setUsesMeteredFare_];
}

void INRideOption.usesMeteredFare.setter(char a1)
{
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v3 = v2;
  [v1 setUsesMeteredFare_];
}

void (*INRideOption.usesMeteredFare.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 usesMeteredFare];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 2;
  }

  *(a1 + 8) = v6;
  return INRideOption.usesMeteredFare.modify;
}

void INRideOption.usesMeteredFare.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v4 = v3;
  [*a1 setUsesMeteredFare_];
}

id static INIntegerResolutionResult.confirmationRequired(with:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v3 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v3;
}

INPlayMediaIntent __swiftcall INPlayMediaIntent.init(mediaItems:mediaContainer:playShuffled:playbackRepeatMode:resumePlayback:)(Swift::OpaquePointer_optional mediaItems, INMediaItem_optional mediaContainer, Swift::Bool_optional playShuffled, INPlaybackRepeatMode playbackRepeatMode, Swift::Bool_optional resumePlayback)
{
  v6 = *&mediaContainer.is_nil;
  isa = mediaContainer.value.super.isa;
  v8 = *&mediaItems.is_nil;
  if (mediaItems.value._rawValue)
  {
    type metadata accessor for INMediaItem();
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  if (isa == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (playShuffled.value == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMediaItems:v9.super.isa mediaContainer:v8 playShuffled:v10 playbackRepeatMode:v6 resumePlayback:v11];

  return v12;
}

unint64_t type metadata accessor for INMediaItem()
{
  result = lazy cache variable for type metadata for INMediaItem;
  if (!lazy cache variable for type metadata for INMediaItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INMediaItem);
  }

  return result;
}

INPlayMediaIntent __swiftcall INPlayMediaIntent.init(mediaItems:mediaContainer:playShuffled:playbackRepeatMode:resumePlayback:playbackQueueLocation:playbackSpeed:mediaSearch:)(Swift::OpaquePointer_optional mediaItems, INMediaItem_optional mediaContainer, Swift::Bool_optional playShuffled, INPlaybackRepeatMode playbackRepeatMode, Swift::Bool_optional resumePlayback, INPlaybackQueueLocation playbackQueueLocation, Swift::Double_optional playbackSpeed, INMediaSearch_optional mediaSearch)
{
  v8 = playbackQueueLocation;
  v9 = *&resumePlayback.value;
  v11 = *&mediaContainer.is_nil;
  isa = mediaContainer.value.super.isa;
  v13 = *&mediaItems.is_nil;
  if (mediaItems.value._rawValue)
  {
    type metadata accessor for INMediaItem();
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  if (isa == 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (playShuffled.value != 2)
  {
    v16 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
    v17 = *&playbackSpeed.is_nil;
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v16 = 0;
  v17 = *&playbackSpeed.is_nil;
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_9:
  v18 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
LABEL_12:
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMediaItems:v14.super.isa mediaContainer:v13 playShuffled:v15 playbackRepeatMode:v11 resumePlayback:v16 playbackQueueLocation:playbackRepeatMode playbackSpeed:v18 mediaSearch:v17];

  return v19;
}

uint64_t INPlayMediaIntent.playShuffled.getter(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

id INPlayMediaIntent.playbackSpeed.getter()
{
  result = [v0 playbackSpeed];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

INSearchCallHistoryIntent __swiftcall INSearchCallHistoryIntent.init(dateCreated:recipient:callCapabilities:callTypes:unseen:)(INDateComponentsRange_optional dateCreated, INPerson_optional recipient, INCallCapabilityOptions callCapabilities, INCallRecordTypeOptions callTypes, Swift::Bool_optional unseen)
{
  v5 = *&recipient.is_nil;
  isa = recipient.value.super.isa;
  v7 = *&dateCreated.is_nil;
  v8 = dateCreated.value.super.isa;
  if (callCapabilities == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDateCreated:v8 recipient:v7 callCapabilities:isa callTypes:v5 unseen:v9];

  return v10;
}

uint64_t INSearchCallHistoryIntent.unseen.getter()
{
  v1 = [v0 unseen];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

INSetDefrosterSettingsInCarIntent __swiftcall INSetDefrosterSettingsInCarIntent.init(enable:defroster:carName:)(Swift::Bool_optional enable, INCarDefroster defroster, INSpeakableString_optional carName)
{
  isa = carName.value.super.isa;
  if (enable.value == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnable:v5 defroster:defroster carName:isa];

  return v6;
}

INSetDefrosterSettingsInCarIntent __swiftcall INSetDefrosterSettingsInCarIntent.init(enable:defroster:)(Swift::Bool_optional enable, INCarDefroster defroster)
{
  if (enable.value == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnable:v3 defroster:defroster];

  return v4;
}

uint64_t INSetDefrosterSettingsInCarIntent.enable.getter()
{
  v1 = [v0 enable];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

id INSetClimateSettingsInCarIntent.init(enableFan:enableAirConditioner:enableClimateControl:enableAutoMode:airCirculationMode:fanSpeedIndex:fanSpeedPercentage:relativeFanSpeedSetting:temperature:relativeTemperatureSetting:climateZone:carName:)(unsigned __int8 a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  v49 = a5;
  v45 = a8;
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  MEMORY[0x2A1C7C4A8]();
  v30 = &v43 - v29;
  if (v28 == 2)
  {
    v48 = 0;
  }

  else
  {
    v48 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (a2 == 2)
  {
    v47 = 0;
  }

  else
  {
    v47 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (a3 == 2)
  {
    v46 = 0;
  }

  else
  {
    v46 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (a4 == 2)
  {
    v44 = 0;
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (a7)
  {
    v31 = 0;
    if ((a17 & 1) == 0)
    {
LABEL_15:
      v32 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
      goto LABEL_18;
    }
  }

  else
  {
    v31 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if ((a17 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v32 = 0;
LABEL_18:
  v45 = a19;
  outlined init with copy of Measurement<NSUnitTemperature>?(a19, v30);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v30, 1, v33) == 1)
  {
    isa = 0;
  }

  else
  {
    v50 = Measurement._bridgeToObjectiveC()();
    isa = v50.super.isa;
    (*(v34 + 8))(v30, v33, *&v50._doubleValue);
  }

  v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v38 = v47;
  v37 = v48;
  v39 = v46;
  v40 = v44;
  v41 = [v36 initWithEnableFan:v48 enableAirConditioner:v47 enableClimateControl:v46 enableAutoMode:v44 airCirculationMode:v49 fanSpeedIndex:v31 fanSpeedPercentage:v32 relativeFanSpeedSetting:a18 temperature:isa relativeTemperatureSetting:a20 climateZone:a21 carName:a22];

  outlined destroy of Measurement<NSUnitTemperature>?(v45);
  return v41;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with copy of Measurement<NSUnitTemperature>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Measurement<NSUnitTemperature>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id INSetClimateSettingsInCarIntent.init(enableFan:enableAirConditioner:enableClimateControl:enableAutoMode:airCirculationMode:fanSpeedIndex:fanSpeedPercentage:relativeFanSpeedSetting:temperature:relativeTemperatureSetting:climateZone:)(unsigned __int8 a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v38 = a5;
  v34 = a8;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  MEMORY[0x2A1C7C4A8]();
  v21 = &v34 - v20;
  if (v19 == 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (a2 == 2)
  {
    v36 = 0;
  }

  else
  {
    v36 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (a3 == 2)
  {
    v35 = 0;
  }

  else
  {
    v35 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (a4 == 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (a7)
  {
    v23 = 0;
    if ((a9 & 1) == 0)
    {
LABEL_15:
      v24 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
      goto LABEL_18;
    }
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if ((a9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v24 = 0;
LABEL_18:
  v34 = a11;
  outlined init with copy of Measurement<NSUnitTemperature>?(a11, v21);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    isa = 0;
  }

  else
  {
    v39 = Measurement._bridgeToObjectiveC()();
    isa = v39.super.isa;
    (*(v26 + 8))(v21, v25, *&v39._doubleValue);
  }

  v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = v36;
  v29 = v37;
  v31 = v35;
  v32 = [v28 initWithEnableFan:v37 enableAirConditioner:v36 enableClimateControl:v35 enableAutoMode:v22 airCirculationMode:v38 fanSpeedIndex:v23 fanSpeedPercentage:v24 relativeFanSpeedSetting:a10 temperature:isa relativeTemperatureSetting:a12 climateZone:a13];

  outlined destroy of Measurement<NSUnitTemperature>?(v34);
  return v32;
}

id INSetClimateSettingsInCarIntent.fanSpeedIndex.getter()
{
  v1 = [v0 fanSpeedIndex];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

id INSetClimateSettingsInCarIntent.fanSpeedPercentage.getter()
{
  result = [v0 fanSpeedPercentage];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(profileNumber:profileName:isDefaultProfile:carName:)(Swift::Int_optional profileNumber, Swift::String_optional profileName, Swift::Bool_optional isDefaultProfile, INSpeakableString_optional carName)
{
  isa = carName.value.super.isa;
  object = profileName.value._object;
  countAndFlagsBits = profileName.value._countAndFlagsBits;
  if (profileNumber.is_nil)
  {
    v8 = 0;
    if (profileName.value._object)
    {
LABEL_3:
      v9 = MEMORY[0x29C2AAC80](countAndFlagsBits, object);

      goto LABEL_6;
    }
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if (object)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  if (isDefaultProfile.value == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v8 profileName:v9 defaultProfile:v10 carName:isa];

  return v11;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(defaultProfile:)(Swift::Int_optional defaultProfile)
{
  if (defaultProfile.is_nil)
  {
    v1 = 0;
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:0 profileName:0 defaultProfile:v1];

  return v2;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(profileLabel:)(Swift::String_optional profileLabel)
{
  if (profileLabel.value._object)
  {
    v1 = MEMORY[0x29C2AAC80](profileLabel.value._countAndFlagsBits);
  }

  else
  {
    v1 = 0;
  }

  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:0 profileName:v1 defaultProfile:0];

  return v2;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(profileLabel:isDefaultProfile:)(Swift::String_optional profileLabel, Swift::Bool_optional isDefaultProfile)
{
  if (profileLabel.value._object)
  {
    v3 = MEMORY[0x29C2AAC80](profileLabel.value._countAndFlagsBits);
  }

  else
  {
    v3 = 0;
  }

  if (isDefaultProfile.value == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:0 profileName:v3 defaultProfile:v4];

  return v5;
}

id INSetProfileInCarIntent.init(profileLabel:defaultProfile:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    goto LABEL_6;
  }

  v6 = MEMORY[0x29C2AAC80](a1);

  if ((a4 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 0;
LABEL_6:
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:0 profileName:v6 defaultProfile:v7];

  return v8;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(profileNumber:defaultProfile:)(Swift::Int_optional profileNumber, Swift::Int_optional defaultProfile)
{
  is_nil = defaultProfile.is_nil;
  value = defaultProfile.value;
  if (!profileNumber.is_nil)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if (!is_nil)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if (defaultProfile.is_nil)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_6:
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v4 profileName:0 defaultProfile:v5];

  return v6;
}

INSetProfileInCarIntent __swiftcall INSetProfileInCarIntent.init(profileNumber:profileLabel:)(Swift::Int_optional profileNumber, Swift::String_optional profileLabel)
{
  object = profileLabel.value._object;
  countAndFlagsBits = profileLabel.value._countAndFlagsBits;
  if (!profileNumber.is_nil)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if (object)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if (!profileLabel.value._object)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = MEMORY[0x29C2AAC80](countAndFlagsBits, object);

LABEL_6:
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v4 profileName:v5 defaultProfile:0];

  return v6;
}

id INSetProfileInCarIntent.init(profileNumber:profileName:isDefaultProfile:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v8 = 0;
    if (a4)
    {
LABEL_3:
      v9 = MEMORY[0x29C2AAC80](a3, a4);

      goto LABEL_6;
    }
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  if (a5 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v8 profileName:v9 defaultProfile:v10];

  return v11;
}

id INSetProfileInCarIntent.init(profileNumber:profileLabel:defaultProfile:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    goto LABEL_8;
  }

  v10 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = MEMORY[0x29C2AAC80](a3, a4);

  if ((a6 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = 0;
LABEL_8:
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v10 profileName:v11 defaultProfile:v12];

  return v13;
}

uint64_t INSetProfileInCarIntent.isDefaultProfile.getter()
{
  v1 = [v0 defaultProfile];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

id INSetProfileInCarIntent.defaultProfile.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = [v2 integerValue];

  return v4;
}

INSetSeatSettingsInCarIntent __swiftcall INSetSeatSettingsInCarIntent.init(enableHeating:enableCooling:enableMassage:seat:level:relativeLevel:carName:)(Swift::Bool_optional enableHeating, Swift::Bool_optional enableCooling, Swift::Bool_optional enableMassage, INCarSeat seat, Swift::Int_optional level, INRelativeSetting relativeLevel, INSpeakableString_optional carName)
{
  isa = carName.value.super.isa;
  is_nil = level.is_nil;
  value = level.value;
  if (enableHeating.value == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (enableCooling.value == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (enableMassage.value != 2)
  {
    v15 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
    if (!is_nil)
    {
      goto LABEL_9;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v15 = 0;
  if (is_nil)
  {
    goto LABEL_11;
  }

LABEL_9:
  v16 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_12:
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnableHeating:v13 enableCooling:v14 enableMassage:v15 seat:seat level:v16 relativeLevelSetting:relativeLevel carName:isa];

  return v17;
}

INSetSeatSettingsInCarIntent __swiftcall INSetSeatSettingsInCarIntent.init(enableHeating:enableCooling:enableMassage:seat:level:relativeLevel:)(Swift::Bool_optional enableHeating, Swift::Bool_optional enableCooling, Swift::Bool_optional enableMassage, INCarSeat seat, Swift::Int_optional level, INRelativeSetting relativeLevel)
{
  is_nil = level.is_nil;
  value = level.value;
  if (enableHeating.value == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (enableCooling.value == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  if (enableMassage.value != 2)
  {
    v14 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
    if (!is_nil)
    {
      goto LABEL_9;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v14 = 0;
  if (is_nil)
  {
    goto LABEL_11;
  }

LABEL_9:
  v15 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_12:
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnableHeating:v12 enableCooling:v13 enableMassage:v14 seat:seat level:v15 relativeLevelSetting:relativeLevel];

  return v16;
}

id INSetSeatSettingsInCarIntent.level.getter()
{
  v1 = [v0 level];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t static NSString.deferredLocalizedIntentsString(with:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized withVaList<A>(_:_:)(a3, v3, a1, a2);
  v8 = v7;

  return v8;
}

uint64_t static NSString.deferredLocalizedIntentsString(with:table:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  specialized withVaList<A>(_:_:)(a5, v5, a1, a2, a3, a4);
  v12 = v11;

  return v12;
}

void static NSString.deferredLocalizedIntentsString(with:table:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = MEMORY[0x29C2AAC80](a1, a2);
  v12 = MEMORY[0x29C2AAC80](a3, a4);
  v13 = [ObjCClassFromMetadata deferredLocalizedIntentsStringWithFormat:v11 fromTable:v12 arguments:a5];

  if (!v13)
  {
    __break(1u);
  }
}

void specialized withVaList<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v6 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a1 + 32;
    while (1)
    {
      __swift_project_boxed_opaque_existential_1((v9 + 40 * v8), *(v9 + 40 * v8 + 24));
      v10 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v11 = *v6;
      v12 = *(v10 + 16);
      v13 = __OFADD__(*v6, v12);
      v14 = *v6 + v12;
      if (v13)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v15 = v5[4];
      if (v15 >= v14)
      {
        goto LABEL_18;
      }

      if (v15 + 0x4000000000000000 < 0)
      {
        goto LABEL_30;
      }

      v16 = v5[5];
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      v5[4] = v14;
      if ((v14 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_31;
      }

      v17 = v10;
      v18 = swift_slowAlloc();
      v19 = v18;
      v5[5] = v18;
      if (v16)
      {
        break;
      }

      v10 = v17;
      if (!v19)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_19:
      v21 = *(v10 + 16);
      if (v21)
      {
        v22 = (v10 + 32);
        v23 = *v6;
        while (1)
        {
          v24 = *v22++;
          *&v19[8 * v23] = v24;
          v23 = *v6 + 1;
          if (__OFADD__(*v6, 1))
          {
            break;
          }

          *v6 = v23;
          if (!--v21)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        goto LABEL_29;
      }

LABEL_3:

      if (++v8 == v7)
      {
        goto LABEL_26;
      }
    }

    if (v18 != v16 || v18 >= &v16[8 * v11])
    {
      memmove(v18, v16, 8 * v11);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v10 = v17;
LABEL_18:
    v19 = v5[5];
    if (!v19)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_26:
  v25 = __VaListBuilder.va_list()();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = MEMORY[0x29C2AAC80](a3, a4);
  v28 = [ObjCClassFromMetadata deferredLocalizedIntentsStringWithFormat:v27 fromTable:0 arguments:v25];

  if (!v28)
  {
    goto LABEL_32;
  }
}

void specialized withVaList<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for __VaListBuilder();
  v7 = swift_allocObject();
  v7[2] = 8;
  v7[3] = 0;
  v8 = v7 + 3;
  v7[4] = 0;
  v7[5] = 0;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a1 + 32;
    while (1)
    {
      __swift_project_boxed_opaque_existential_1((v11 + 40 * v10), *(v11 + 40 * v10 + 24));
      v12 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v13 = *v8;
      v14 = *(v12 + 16);
      v15 = __OFADD__(*v8, v14);
      v16 = *v8 + v14;
      if (v15)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v17 = v7[4];
      if (v17 >= v16)
      {
        goto LABEL_18;
      }

      if (v17 + 0x4000000000000000 < 0)
      {
        goto LABEL_30;
      }

      v18 = v7[5];
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      v7[4] = v16;
      if ((v16 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_31;
      }

      v19 = v12;
      v20 = swift_slowAlloc();
      v21 = v20;
      v7[5] = v20;
      if (v18)
      {
        break;
      }

      v12 = v19;
      if (!v21)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_19:
      v23 = *(v12 + 16);
      if (v23)
      {
        v24 = (v12 + 32);
        v25 = *v8;
        while (1)
        {
          v26 = *v24++;
          *&v21[8 * v25] = v26;
          v25 = *v8 + 1;
          if (__OFADD__(*v8, 1))
          {
            break;
          }

          *v8 = v25;
          if (!--v23)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        goto LABEL_29;
      }

LABEL_3:

      if (++v10 == v9)
      {
        goto LABEL_26;
      }
    }

    if (v20 != v18 || v20 >= &v18[8 * v13])
    {
      memmove(v20, v18, 8 * v13);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v12 = v19;
LABEL_18:
    v21 = v7[5];
    if (!v21)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_26:
  v27 = __VaListBuilder.va_list()();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = MEMORY[0x29C2AAC80](a3, a4);
  v30 = MEMORY[0x29C2AAC80](a5, a6);
  v31 = [ObjCClassFromMetadata deferredLocalizedIntentsStringWithFormat:v29 fromTable:v30 arguments:v27];

  if (!v31)
  {
    goto LABEL_32;
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id INCallRecord.init(identifier:dateCreated:caller:callRecordType:callCapability:callDuration:unseen:numberOfCalls:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10, char a11)
{
  v29 = a5;
  v30 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x2A1C7C4A8]();
  v18 = &v29 - v17;
  v19 = MEMORY[0x29C2AAC80](a1, a2);

  outlined init with copy of Date?(a3, v18);
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  isa = 0;
  if ((*(v21 + 48))(v18, 1, v20) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v21 + 8))(v18, v20);
  }

  if (a8)
  {
    v23 = 0;
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  }

  if (a9 != 2)
  {
    v24 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
    if ((a11 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  v24 = 0;
  if (a11)
  {
    goto LABEL_10;
  }

LABEL_8:
  v25 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_11:
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = [v26 initWithIdentifier:v19 dateCreated:isa caller:a4 callRecordType:v29 callCapability:v30 callDuration:v23 unseen:v24 numberOfCalls:v25];

  outlined destroy of Date?(a3);
  return v27;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id INCallRecord.init(identifier:dateCreated:caller:callRecordType:callCapability:callDuration:unseen:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v26 = a5;
  v27 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x2A1C7C4A8]();
  v16 = &v26 - v15;
  v17 = MEMORY[0x29C2AAC80](a1, a2);

  outlined init with copy of Date?(a3, v16);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  isa = 0;
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v19 + 8))(v16, v18);
  }

  if (a8)
  {
    v21 = 0;
  }

  else
  {
    v21 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  }

  if (a9 == 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = [v23 initWithIdentifier:v17 dateCreated:isa caller:a4 callRecordType:v26 callCapability:v27 callDuration:v21 unseen:v22];

  outlined destroy of Date?(a3);
  return v24;
}

id INCallRecord.callDuration.getter()
{
  result = [v0 callDuration];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

uint64_t INCallRecord.unseen.getter()
{
  v1 = [v0 unseen];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

id INCallRecord.numberOfCalls.getter()
{
  v1 = [v0 numberOfCalls];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

id static INDoubleResolutionResult.confirmationRequired(with:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  }

  v3 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v3;
}

id INMediaUserContext.numberOfLibraryItems.getter()
{
  v1 = [v0 numberOfLibraryItems];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

void key path getter for INMediaUserContext.numberOfLibraryItems : INMediaUserContext(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 numberOfLibraryItems];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 == 0;
}

void key path setter for INMediaUserContext.numberOfLibraryItems : INMediaUserContext(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    isa = 0;
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v4 = isa;
  [v2 setNumberOfLibraryItems_];
}

void INMediaUserContext.numberOfLibraryItems.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    isa = 0;
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v4 = isa;
  [v2 setNumberOfLibraryItems_];
}

void (*INMediaUserContext.numberOfLibraryItems.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 numberOfLibraryItems];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return INMediaUserContext.numberOfLibraryItems.modify;
}

void INMediaUserContext.numberOfLibraryItems.modify(uint64_t a1)
{
  if (*(a1 + 8))
  {
    isa = 0;
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v3 = isa;
  [*(a1 + 16) setNumberOfLibraryItems_];
}

void _INIntentSetImageKeyPath.setImage<A>(_:forParameterNamed:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(*a2 + *MEMORY[0x29EDCA118]);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8]();
  v8 = v15 - v7;
  v9 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    (*(v6 + 16))(v8, v3, v5);
    type metadata accessor for INIntent();
    swift_dynamicCast();
    v13 = v15[1];
    v14 = MEMORY[0x29C2AAC80](v11, v12);

    [v13 setImage:a1 forParameterNamed:v14];
  }
}

unint64_t type metadata accessor for INIntent()
{
  result = lazy cache variable for type metadata for INIntent;
  if (!lazy cache variable for type metadata for INIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntent);
  }

  return result;
}

id _INIntentSetImageKeyPath.image<A>(forParameterNamed:)(void *a1)
{
  v2 = v1;
  v3 = *(*a1 + *MEMORY[0x29EDCA118]);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8]();
  v6 = v15 - v5;
  v7 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = v8;
  (*(v4 + 16))(v6, v2, v3);
  type metadata accessor for INIntent();
  swift_dynamicCast();
  v11 = v15[1];
  v12 = MEMORY[0x29C2AAC80](v9, v10);

  v13 = [v11 imageForParameterNamed_];

  return v13;
}

INDeleteTasksIntent __swiftcall INDeleteTasksIntent.init(taskList:tasks:all:)(INTaskList_optional taskList, Swift::OpaquePointer_optional tasks, Swift::Bool_optional all)
{
  rawValue = tasks.value._rawValue;
  isa = taskList.value.super.isa;
  if (*&taskList.is_nil)
  {
    type metadata accessor for INTask();
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  if (rawValue == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTaskList:isa tasks:v5.super.isa all:v6];

  return v7;
}

unint64_t type metadata accessor for INTask()
{
  result = lazy cache variable for type metadata for INTask;
  if (!lazy cache variable for type metadata for INTask)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INTask);
  }

  return result;
}

uint64_t INDeleteTasksIntent.all.getter()
{
  v1 = [v0 all];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void (*INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 fuelPercentRemaining];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  *(a1 + 12) = v5 == 0;
  return INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining.modify;
}

unint64_t INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 | ((v3 == 0) << 32);
}

void key path getter for INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining : INGetCarPowerLevelStatusIntentResponse(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 4) = v5 == 0;
}

void key path setter for INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining : INGetCarPowerLevelStatusIntentResponse(int *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = 0;
  }

  else
  {
    v8 = *a1;
    v9 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    LODWORD(v10) = v8;
    v7 = [v9 initWithFloat_];
  }

  v11 = v7;
  [v6 *a5];
}

void INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining.setter(uint64_t a1, SEL *a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v4 = a1;
    v5 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    LODWORD(v6) = v4;
    v7 = [v5 initWithFloat_];
  }

  v8 = v7;
  [v2 *a2];
}

void (*INGetCarPowerLevelStatusIntentResponse.chargePercentRemaining.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 chargePercentRemaining];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  *(a1 + 12) = v5 == 0;
  return INGetCarPowerLevelStatusIntentResponse.chargePercentRemaining.modify;
}

void INGetCarPowerLevelStatusIntentResponse.fuelPercentRemaining.modify(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (*(a1 + 12))
  {
    v5 = 0;
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    LODWORD(v8) = v6;
    v5 = [v7 initWithFloat_];
  }

  v9 = v5;
  [*a1 *a3];
}

uint64_t INGetCarPowerLevelStatusIntentResponse.charging.getter()
{
  v1 = [v0 charging];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void key path getter for INGetCarPowerLevelStatusIntentResponse.charging : INGetCarPowerLevelStatusIntentResponse(id *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [*a1 charging];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void key path setter for INGetCarPowerLevelStatusIntentResponse.charging : INGetCarPowerLevelStatusIntentResponse(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v5 = v4;
  [v3 setCharging_];
}

void INGetCarPowerLevelStatusIntentResponse.charging.setter(char a1)
{
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v3 = v2;
  [v1 setCharging_];
}

void (*INGetCarPowerLevelStatusIntentResponse.charging.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 charging];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 2;
  }

  *(a1 + 8) = v6;
  return INGetCarPowerLevelStatusIntentResponse.charging.modify;
}

void INGetCarPowerLevelStatusIntentResponse.charging.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v4 = v3;
  [*a1 setCharging_];
}

id INGetCarPowerLevelStatusIntentResponse.minutesToFull.getter()
{
  v1 = [v0 minutesToFull];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

void key path getter for INGetCarPowerLevelStatusIntentResponse.minutesToFull : INGetCarPowerLevelStatusIntentResponse(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 minutesToFull];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 == 0;
}

void key path setter for INGetCarPowerLevelStatusIntentResponse.minutesToFull : INGetCarPowerLevelStatusIntentResponse(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v4 = v3;
  [v2 setMinutesToFull_];
}

void INGetCarPowerLevelStatusIntentResponse.minutesToFull.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v4 = v3;
  [v2 setMinutesToFull_];
}

void (*INGetCarPowerLevelStatusIntentResponse.minutesToFull.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 minutesToFull];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return INGetCarPowerLevelStatusIntentResponse.minutesToFull.modify;
}

void INGetCarPowerLevelStatusIntentResponse.minutesToFull.modify(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v3 = v2;
  [*(a1 + 16) setMinutesToFull_];
}

id INSearchForPhotosIntentResponse.searchResultsCount.getter()
{
  v1 = [v0 searchResultsCount];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

void key path getter for INSearchForPhotosIntentResponse.searchResultsCount : INSearchForPhotosIntentResponse(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 searchResultsCount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 == 0;
}

void key path setter for INSearchForPhotosIntentResponse.searchResultsCount : INSearchForPhotosIntentResponse(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v4 = v3;
  [v2 setSearchResultsCount_];
}

void INSearchForPhotosIntentResponse.searchResultsCount.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v4 = v3;
  [v2 setSearchResultsCount_];
}

void (*INSearchForPhotosIntentResponse.searchResultsCount.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 searchResultsCount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return INSearchForPhotosIntentResponse.searchResultsCount.modify;
}

void INSearchForPhotosIntentResponse.searchResultsCount.modify(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v3 = v2;
  [*(a1 + 16) setSearchResultsCount_];
}

INSnoozeTasksIntent __swiftcall INSnoozeTasksIntent.init(tasks:nextTriggerTime:all:)(Swift::OpaquePointer_optional tasks, INDateComponentsRange_optional nextTriggerTime, Swift::Bool_optional all)
{
  isa = nextTriggerTime.value.super.isa;
  v4 = *&tasks.is_nil;
  if (tasks.value._rawValue)
  {
    type metadata accessor for INTask();
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  if (isa == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTasks:v5.super.isa nextTriggerTime:v4 all:v6];

  return v7;
}

uint64_t INSnoozeTasksIntent.all.getter()
{
  v1 = [v0 all];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

INSaveProfileInCarIntent __swiftcall INSaveProfileInCarIntent.init(profileNumber:profileLabel:)(Swift::Int_optional profileNumber, Swift::String_optional profileLabel)
{
  object = profileLabel.value._object;
  countAndFlagsBits = profileLabel.value._countAndFlagsBits;
  if (!profileNumber.is_nil)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    if (object)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if (!profileLabel.value._object)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = MEMORY[0x29C2AAC80](countAndFlagsBits, object);

LABEL_6:
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProfileNumber:v4 profileLabel:v5];

  return v6;
}

id INSaveProfileInCarIntent.profileNumber.getter()
{
  v1 = [v0 profileNumber];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t INMediaDestination.playlistName.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t INMediaDestination.description.getter(SEL *a1)
{
  v3 = v1[1];
  if (v3)
  {
    v4 = *v1;
    v5 = objc_opt_self();
    v6 = MEMORY[0x29C2AAC80](v4, v3);
    v7 = [v5 playlistDestinationWithName_];
  }

  else
  {
    v7 = [objc_opt_self() libraryDestination];
  }

  v8 = [v7 *a1];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance INMediaDestination(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3[1];
  if (v5)
  {
    v6 = *v3;
    v7 = objc_opt_self();
    v8 = MEMORY[0x29C2AAC80](v6, v5);
    v9 = [v7 playlistDestinationWithName_];
  }

  else
  {
    v9 = [objc_opt_self() libraryDestination];
  }

  v10 = [v9 *a3];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v11;
}

void INMediaDestination.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = objc_opt_self();
    v5 = MEMORY[0x29C2AAC80](v3, v2);
    v6 = [v4 playlistDestinationWithName_];
  }

  else
  {
    v6 = [objc_opt_self() libraryDestination];
  }

  NSObject.hash(into:)();
}

Swift::Int INMediaDestination.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = MEMORY[0x29C2AAC80](v1, v2);
    v5 = [v3 playlistDestinationWithName_];
  }

  else
  {
    v5 = [objc_opt_self() libraryDestination];
  }

  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance INMediaDestination(uint64_t a1)
{
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = objc_opt_self();
    v5 = MEMORY[0x29C2AAC80](v3, v2);
    v6 = [v4 playlistDestinationWithName_];
  }

  else
  {
    v6 = [objc_opt_self() libraryDestination];
  }

  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance INMediaDestination(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x29C2AAC80](v2, v3);
    v6 = [v4 playlistDestinationWithName_];
  }

  else
  {
    v6 = [objc_opt_self() libraryDestination];
  }

  NSObject.hash(into:)();

  return Hasher._finalize()();
}

INMediaDestination __swiftcall INMediaDestination._bridgeToObjectiveC()()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    v3 = objc_opt_self();
    v4 = MEMORY[0x29C2AAC80](v2, v1);
    v5 = [v3 playlistDestinationWithName_];

    return v5;
  }

  else
  {
    v7 = [objc_opt_self() libraryDestination];

    return v7;
  }
}

void static INMediaDestination._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  outlined consume of INMediaDestination?(*a2, a2[1]);
  v4 = [a1 playlistName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t static INMediaDestination._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  outlined consume of INMediaDestination?(*a2, a2[1]);
  v4 = [a1 playlistName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  return 1;
}

void static INMediaDestination._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 playlistName];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {

      v6 = 0;
      v8 = 0;
    }

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance INMediaDestination()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    v3 = objc_opt_self();
    v4 = MEMORY[0x29C2AAC80](v2, v1);
    v5 = [v3 playlistDestinationWithName_];

    return v5;
  }

  else
  {
    v7 = [objc_opt_self() libraryDestination];

    return v7;
  }
}

void protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance INMediaDestination(void *a1, uint64_t *a2)
{
  outlined consume of INMediaDestination?(*a2, a2[1]);
  v4 = [a1 playlistName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance INMediaDestination(void *a1, uint64_t *a2)
{
  outlined consume of INMediaDestination?(*a2, a2[1]);
  v4 = [a1 playlistName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  return 1;
}

uint64_t specialized static INMediaDestination.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return MEMORY[0x2A1C73088]();
}

uint64_t outlined consume of INMediaDestination?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type INMediaDestination and conformance INMediaDestination()
{
  result = lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination;
  if (!lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination;
  if (!lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination;
  if (!lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination;
  if (!lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination;
  if (!lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INMediaDestination and conformance INMediaDestination);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for INMediaDestination(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for INMediaDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for INMediaDestination(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for INMediaDestination(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

INStartWorkoutIntent __swiftcall INStartWorkoutIntent.init(workoutName:goalValue:workoutGoalUnitType:workoutLocationType:isOpenEnded:)(INSpeakableString_optional workoutName, Swift::Double_optional goalValue, INWorkoutGoalUnitType workoutGoalUnitType, INWorkoutLocationType workoutLocationType, Swift::Bool_optional isOpenEnded)
{
  isa = workoutName.value.super.isa;
  if (goalValue.is_nil)
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  }

  if (isOpenEnded.value == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWorkoutName:isa goalValue:v9 workoutGoalUnitType:workoutGoalUnitType workoutLocationType:workoutLocationType isOpenEnded:v10];

  return v11;
}

id INStartWorkoutIntent.goalValue.getter()
{
  result = [v0 goalValue];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

uint64_t INStartWorkoutIntent.isOpenEnded.getter()
{
  v1 = [v0 isOpenEnded];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

id INRestaurantReservation.init(itemReference:reservationNumber:bookingTime:reservationStatus:reservationHolderName:actions:reservationDuration:partySize:restaurantLocation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, char a11, void *a12)
{
  v33 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x2A1C7C4A8]();
  v20 = &v32 - v19;
  if (a3)
  {
    v21 = MEMORY[0x29C2AAC80](a2, a3);
  }

  else
  {
    v21 = 0;
  }

  outlined init with copy of Date?(a4, v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  isa = 0;
  if ((*(v23 + 48))(v20, 1, v22) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v23 + 8))(v20, v22);
  }

  if (a7)
  {
    v25 = MEMORY[0x29C2AAC80](a6, a7);

    v26 = a11;
    if (a8)
    {
LABEL_8:
      type metadata accessor for INReservationAction();
      v27.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_11;
    }
  }

  else
  {
    v25 = 0;
    v26 = a11;
    if (a8)
    {
      goto LABEL_8;
    }
  }

  v27.super.isa = 0;
LABEL_11:
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = [v29 initWithItemReference:a1 reservationNumber:v21 bookingTime:isa reservationStatus:v33 reservationHolderName:v25 actions:v27.super.isa reservationDuration:a9 partySize:v28 restaurantLocation:a12];

  outlined destroy of Date?(a4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v30;
}

unint64_t type metadata accessor for INReservationAction()
{
  result = lazy cache variable for type metadata for INReservationAction;
  if (!lazy cache variable for type metadata for INReservationAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INReservationAction);
  }

  return result;
}

id INRestaurantReservation.init(itemReference:reservationNumber:bookingTime:reservationStatus:reservationHolderName:actions:url:reservationDuration:partySize:restaurantLocation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13)
{
  v41 = a5;
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x2A1C7C4A8]();
  v20 = &v39 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x2A1C7C4A8]();
  v22 = &v39 - v21;
  if (a3)
  {
    v40 = MEMORY[0x29C2AAC80](a2, a3);
  }

  else
  {
    v40 = 0;
  }

  v43 = a4;
  outlined init with copy of Date?(a4, v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  isa = 0;
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v24 + 8))(v22, v23);
  }

  if (a7)
  {
    v26 = MEMORY[0x29C2AAC80](a6, a7);

    if (a8)
    {
LABEL_8:
      type metadata accessor for INReservationAction();
      v27.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_11;
    }
  }

  else
  {
    v26 = 0;
    if (a8)
    {
      goto LABEL_8;
    }
  }

  v27.super.isa = 0;
LABEL_11:
  v39 = a9;
  outlined init with copy of Date?(a9, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v31 = 0;
  if ((*(v29 + 48))(v20, 1, v28) != 1)
  {
    URL._bridgeToObjectiveC()(v30);
    v31 = v32;
    (*(v29 + 8))(v20, v28);
  }

  if (a12)
  {
    v33 = 0;
  }

  else
  {
    v33 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v35 = v42;
  v36 = v40;
  v37 = [v34 initWithItemReference:v42 reservationNumber:v40 bookingTime:isa reservationStatus:v41 reservationHolderName:v26 actions:v27.super.isa URL:v31 reservationDuration:a10 partySize:v33 restaurantLocation:a13];

  outlined destroy of Date?(v39, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of Date?(v43, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v37;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id INRestaurantReservation.partySize.getter()
{
  v1 = [v0 partySize];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

id static INBooleanResolutionResult.confirmationRequired(with:)(char a1)
{
  if (a1 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v2 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v2;
}

void INShortcut.init(intent:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x29EDBB228]) initWithIntent_];
  if (!v4)
  {

    *a2 = 0;
    *(a2 + 8) = -1;
    return;
  }

  v5 = v4;
  v6 = [v4 intent];
  if (v6)
  {
    v7 = v6;
LABEL_7:
    v9 = v6 == 0;

    *a2 = v7;
    *(a2 + 8) = v9;
    return;
  }

  v8 = [v5 userActivity];
  if (v8)
  {
    v7 = v8;
    v6 = 0;
    goto LABEL_7;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t INShortcut.init(userActivity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

id INShortcut.intent.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id INShortcut.userActivity.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id INShortcut.description.getter(SEL *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v4)
  {
    v6 = [v5 initWithUserActivity_];
LABEL_4:
    v8 = [v6 *a1];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v9;
  }

  result = [v5 initWithIntent_];
  v6 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

id protocol witness for CustomStringConvertible.description.getter in conformance INShortcut(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v6)
  {
    v8 = [v7 initWithUserActivity_];
LABEL_4:
    v10 = [v8 *a3];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v11;
  }

  result = [v7 initWithIntent_];
  v8 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void INShortcut.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v3)
  {
    v5 = [v4 initWithUserActivity_];
  }

  else
  {
    v5 = [v4 initWithIntent_];
    if (!v5)
    {
      __break(1u);
      return;
    }
  }

  v6 = v5;
  NSObject.hash(into:)();
}

id INShortcut.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v2)
  {
    v4 = [v3 initWithUserActivity_];
LABEL_4:
    NSObject.hash(into:)();

    return Hasher._finalize()();
  }

  result = [v3 initWithIntent_];
  v4 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

id protocol witness for Hashable.hashValue.getter in conformance INShortcut()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v2)
  {
    v4 = [v3 initWithUserActivity_];
LABEL_4:
    NSObject.hash(into:)();

    return Hasher._finalize()();
  }

  result = [v3 initWithIntent_];
  v4 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void protocol witness for Hashable.hash(into:) in conformance INShortcut(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v3)
  {
    v5 = [v4 initWithUserActivity_];
  }

  else
  {
    v5 = [v4 initWithIntent_];
    if (!v5)
    {
      __break(1u);
      return;
    }
  }

  v6 = v5;
  NSObject.hash(into:)();
}

id protocol witness for Hashable._rawHashValue(seed:) in conformance INShortcut(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  v4 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v3)
  {
    v5 = [v4 initWithUserActivity_];
LABEL_4:
    NSObject.hash(into:)();

    return Hasher._finalize()();
  }

  result = [v4 initWithIntent_];
  v5 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

INShortcut __swiftcall INShortcut._bridgeToObjectiveC()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v2)
  {

    return [v3 initWithUserActivity_];
  }

  else
  {
    result.super.isa = [v3 initWithIntent_];
    if (!result.super.isa)
    {
      __break(1u);
    }
  }

  return result;
}

id static INShortcut._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of INShortcut?(*a2, *(a2 + 8));
  result = [a1 intent];
  v5 = result;
  if (result)
  {
    goto LABEL_4;
  }

  result = [a1 userActivity];
  if (result)
  {
    v5 = 0;
LABEL_4:
    *a2 = result;
    *(a2 + 8) = v5 == 0;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static INShortcut._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of INShortcut?(*a2, *(a2 + 8));
  v4 = [a1 intent];
  v5 = v4;
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = [a1 userActivity];
  if (v4)
  {
    v5 = 0;
LABEL_4:
    *a2 = v4;
    *(a2 + 8) = v5 == 0;
    return 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void static INShortcut._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 intent];
    if (v4)
    {
      v5 = v4;
LABEL_6:
      v7 = v4 == 0;

      *a2 = v5;
      *(a2 + 8) = v7;
      return;
    }

    v6 = [v3 userActivity];
    if (v6)
    {
      v5 = v6;
      v4 = 0;
      goto LABEL_6;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance INShortcut()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(MEMORY[0x29EDBB228]);
  if (v2)
  {

    return [v3 initWithUserActivity_];
  }

  else
  {
    result = [v3 initWithIntent_];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance INShortcut(void *a1, uint64_t a2)
{
  outlined consume of INShortcut?(*a2, *(a2 + 8));
  result = [a1 intent];
  v5 = result;
  if (result)
  {
    goto LABEL_4;
  }

  result = [a1 userActivity];
  if (result)
  {
    v5 = 0;
LABEL_4:
    *a2 = result;
    *(a2 + 8) = v5 == 0;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance INShortcut(void *a1, uint64_t a2)
{
  outlined consume of INShortcut?(*a2, *(a2 + 8));
  v4 = [a1 intent];
  v5 = v4;
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = [a1 userActivity];
  if (v4)
  {
    v5 = 0;
LABEL_4:
    *a2 = v4;
    *(a2 + 8) = v5 == 0;
    return 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static INShortcut.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for NSObject();
  v5 = v3;
  v6 = v2;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

void outlined consume of INShortcut?(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type INShortcut and conformance INShortcut()
{
  result = lazy protocol witness table cache variable for type INShortcut and conformance INShortcut;
  if (!lazy protocol witness table cache variable for type INShortcut and conformance INShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShortcut and conformance INShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INShortcut and conformance INShortcut;
  if (!lazy protocol witness table cache variable for type INShortcut and conformance INShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShortcut and conformance INShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INShortcut and conformance INShortcut;
  if (!lazy protocol witness table cache variable for type INShortcut and conformance INShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShortcut and conformance INShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INShortcut and conformance INShortcut;
  if (!lazy protocol witness table cache variable for type INShortcut and conformance INShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShortcut and conformance INShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INShortcut and conformance INShortcut;
  if (!lazy protocol witness table cache variable for type INShortcut and conformance INShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShortcut and conformance INShortcut);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for INShortcut(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for INShortcut(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

id INLodgingReservation.init(itemReference:reservationNumber:bookingTime:reservationStatus:reservationHolderName:actions:lodgingBusinessLocation:reservationDuration:numberOfAdults:numberOfChildren:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v39 = a5;
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x2A1C7C4A8]();
  v21 = &v37 - v20;
  if (a3)
  {
    v38 = MEMORY[0x29C2AAC80](a2, a3);
  }

  else
  {
    v38 = 0;
  }

  v41 = a4;
  outlined init with copy of Date?(a4, v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  isa = 0;
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v23 + 8))(v21, v22);
  }

  if (a7)
  {
    v25 = MEMORY[0x29C2AAC80](a6, a7);

    v26 = a12;
    if (a8)
    {
LABEL_8:
      type metadata accessor for INReservationAction();
      v27.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_11;
    }
  }

  else
  {
    v25 = 0;
    v26 = a12;
    if (a8)
    {
      goto LABEL_8;
    }
  }

  v27.super.isa = 0;
LABEL_11:
  if ((v26 & 1) == 0)
  {
    v28 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    v29 = a9;
    v30 = a10;
    if ((a14 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v31 = 0;
    goto LABEL_16;
  }

  v28 = 0;
  v29 = a9;
  v30 = a10;
  if (a14)
  {
    goto LABEL_15;
  }

LABEL_13:
  v31 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_16:
  v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v33 = v40;
  v34 = v38;
  v35 = [v32 initWithItemReference:v40 reservationNumber:v38 bookingTime:isa reservationStatus:v39 reservationHolderName:v25 actions:v27.super.isa lodgingBusinessLocation:v29 reservationDuration:v30 numberOfAdults:v28 numberOfChildren:v31];

  outlined destroy of Date?(v41, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v35;
}

id INLodgingReservation.init(itemReference:reservationNumber:bookingTime:reservationStatus:reservationHolderName:actions:url:lodgingBusinessLocation:reservationDuration:numberOfAdults:numberOfChildren:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v51 = a5;
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x2A1C7C4A8]();
  v22 = &v47 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x2A1C7C4A8]();
  v24 = &v47 - v23;
  if (a3)
  {
    v50 = MEMORY[0x29C2AAC80](a2, a3);
  }

  else
  {
    v50 = 0;
  }

  v53 = a4;
  outlined init with copy of Date?(a4, v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  isa = 0;
  if ((*(v26 + 48))(v24, 1, v25) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v26 + 8))(v24, v25);
  }

  if (a7)
  {
    v48 = MEMORY[0x29C2AAC80](a6, a7);

    if (a8)
    {
LABEL_8:
      type metadata accessor for INReservationAction();
      v47 = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_11;
    }
  }

  else
  {
    v48 = 0;
    if (a8)
    {
      goto LABEL_8;
    }
  }

  v47 = 0;
LABEL_11:
  v49 = a9;
  outlined init with copy of Date?(a9, v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v31 = 0;
  if ((*(v29 + 48))(v22, 1, v28) != 1)
  {
    URL._bridgeToObjectiveC()(v30);
    v31 = v32;
    (*(v29 + 8))(v22, v28);
  }

  if ((a13 & 1) == 0)
  {
    v33 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    v35 = a10;
    v34 = a11;
    if ((a15 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    v36 = 0;
    goto LABEL_18;
  }

  v33 = 0;
  v35 = a10;
  v34 = a11;
  if (a15)
  {
    goto LABEL_17;
  }

LABEL_15:
  v36 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_18:
  v37 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v38 = v31;
  v46 = v31;
  v39 = v52;
  v40 = v50;
  v41 = isa;
  v42 = isa;
  v43 = v47;
  v44 = v48;
  v51 = [v37 initWithItemReference:v52 reservationNumber:v50 bookingTime:v41 reservationStatus:v51 reservationHolderName:v48 actions:v47 URL:v46 lodgingBusinessLocation:v35 reservationDuration:v34 numberOfAdults:v33 numberOfChildren:v36];

  outlined destroy of Date?(v49, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of Date?(v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v51;
}

uint64_t INGetCarLockStatusIntentResponse.locked.getter()
{
  v1 = [v0 locked];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void key path getter for INGetCarLockStatusIntentResponse.locked : INGetCarLockStatusIntentResponse(id *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [*a1 locked];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void key path setter for INGetCarLockStatusIntentResponse.locked : INGetCarLockStatusIntentResponse(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v5 = v4;
  [v3 setLocked_];
}

void INGetCarLockStatusIntentResponse.locked.setter(char a1)
{
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v3 = v2;
  [v1 setLocked_];
}

void (*INGetCarLockStatusIntentResponse.locked.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 locked];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 2;
  }

  *(a1 + 8) = v6;
  return INGetCarLockStatusIntentResponse.locked.modify;
}

void INGetCarLockStatusIntentResponse.locked.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v4 = v3;
  [*a1 setLocked_];
}

INFocusStatus __swiftcall INFocusStatus.init(isFocused:)(Swift::Bool_optional isFocused)
{
  if (isFocused.value == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIsFocused_];

  return v2;
}

uint64_t INFocusStatus.isFocused.getter()
{
  v1 = [v0 isFocused];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

INSetRadioStationIntent __swiftcall INSetRadioStationIntent.init(radioType:frequency:stationName:channel:presetNumber:)(INRadioType radioType, Swift::Double_optional frequency, Swift::String_optional stationName, Swift::String_optional channel, Swift::Int_optional presetNumber)
{
  v5 = *&presetNumber.is_nil;
  value = presetNumber.value;
  object = channel.value._object;
  countAndFlagsBits = channel.value._countAndFlagsBits;
  v9 = stationName.value._object;
  if (stationName.value._countAndFlagsBits)
  {
    v11 = 0;
    if (channel.value._countAndFlagsBits)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
    if (countAndFlagsBits)
    {
LABEL_3:
      v12 = MEMORY[0x29C2AAC80](v9, countAndFlagsBits, *&frequency.value);

      v13 = v18;
      if (value)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (v13)
      {
        goto LABEL_5;
      }

LABEL_9:
      v15 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
      goto LABEL_10;
    }
  }

  v12 = 0;
  v13 = v18;
  if (!value)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = MEMORY[0x29C2AAC80](object, value);

  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = 0;
LABEL_10:
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRadioType:radioType frequency:v11 stationName:v12 channel:v14 presetNumber:v15];

  return v16;
}

id INSetRadioStationIntent.frequency.getter()
{
  result = [v0 frequency];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

id INSetRadioStationIntent.presetNumber.getter()
{
  v1 = [v0 presetNumber];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

id INStartPhotoPlaybackIntentResponse.searchResultsCount.getter()
{
  v1 = [v0 searchResultsCount];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

void INStartPhotoPlaybackIntentResponse.searchResultsCount.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  v4 = v3;
  [v2 setSearchResultsCount_];
}

void (*INStartPhotoPlaybackIntentResponse.searchResultsCount.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 searchResultsCount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return INSearchForPhotosIntentResponse.searchResultsCount.modify;
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x2A1C5A2B8]();
  result._doubleValue = v2;
  result._unit = v1;
  result.super.isa = v0;
  return result;
}