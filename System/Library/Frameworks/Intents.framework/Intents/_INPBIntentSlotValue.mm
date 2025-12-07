@interface _INPBIntentSlotValue
- (BOOL)isEqual:(id)equal;
- (BOOL)payloadPrimitiveBoolAtIndex:(unint64_t)index;
- (_INPBIntentSlotValue)initWithCoder:(id)coder;
- (double)payloadPrimitiveDoubleAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)payloadAccountTypesAsString:(int)string;
- (id)payloadAlarmPeriodsAsString:(int)string;
- (id)payloadAlarmRepeatSchedulesAsString:(int)string;
- (id)payloadAlarmSearchTypesAsString:(int)string;
- (id)payloadBalanceTypesAsString:(int)string;
- (id)payloadBillTypesAsString:(int)string;
- (id)payloadBinarySettingValuesAsString:(int)string;
- (id)payloadBoundedSettingValuesAsString:(int)string;
- (id)payloadCallAudioRoutesAsString:(int)string;
- (id)payloadCallCapabilitiesAsString:(int)string;
- (id)payloadCallDestinationTypesAsString:(int)string;
- (id)payloadCallRecordTypesAsString:(int)string;
- (id)payloadCarAirCirculationModesAsString:(int)string;
- (id)payloadCarAudioSourcesAsString:(int)string;
- (id)payloadCarDefrostersAsString:(int)string;
- (id)payloadCarSeatsAsString:(int)string;
- (id)payloadCarSignalIdentifiersAsString:(int)string;
- (id)payloadChangeAlarmStatusOperationsAsString:(int)string;
- (id)payloadDateSearchTypesAsString:(int)string;
- (id)payloadDeviceTypesAsString:(int)string;
- (id)payloadEventAttributesAsString:(int)string;
- (id)payloadFileEntityTypesAsString:(int)string;
- (id)payloadFilePropertyNamesAsString:(int)string;
- (id)payloadFilePropertyQualifiersAsString:(int)string;
- (id)payloadFileSearchScopesAsString:(int)string;
- (id)payloadFileShareModesAsString:(int)string;
- (id)payloadFileTypesAsString:(int)string;
- (id)payloadHomeAttributeTypesAsString:(int)string;
- (id)payloadHomeAttributeValueTypesAsString:(int)string;
- (id)payloadHomeDeviceTypesAsString:(int)string;
- (id)payloadHomeEntityTypesAsString:(int)string;
- (id)payloadLocationSearchTypesAsString:(int)string;
- (id)payloadMediaAffinityTypesAsString:(int)string;
- (id)payloadMessageAttributesAsString:(int)string;
- (id)payloadMessageEffectsAsString:(int)string;
- (id)payloadMessageTypesAsString:(int)string;
- (id)payloadNotebookItemTypesAsString:(int)string;
- (id)payloadNumericSettingUnitsAsString:(int)string;
- (id)payloadOutgoingMessageTypesAsString:(int)string;
- (id)payloadParsecCategoriesAsString:(int)string;
- (id)payloadPaymentStatusAsString:(int)string;
- (id)payloadPersonalPlaceTypesAsString:(int)string;
- (id)payloadPhotoAttributesAsString:(int)string;
- (id)payloadPlaybackQueueLocationsAsString:(int)string;
- (id)payloadPlaybackRepeatModesAsString:(int)string;
- (id)payloadPreferredCallProvidersAsString:(int)string;
- (id)payloadRadioTypesAsString:(int)string;
- (id)payloadReadActionTypesAsString:(int)string;
- (id)payloadRelativeReferencesAsString:(int)string;
- (id)payloadRelativeSettingsAsString:(int)string;
- (id)payloadSettingActionsAsString:(int)string;
- (id)payloadTaskPrioritiesAsString:(int)string;
- (id)payloadTaskReferencesAsString:(int)string;
- (id)payloadTaskStatusAsString:(int)string;
- (id)payloadTemporalEventTriggerTypesAsString:(int)string;
- (id)payloadTimerStatesAsString:(int)string;
- (id)payloadTimerTypesAsString:(int)string;
- (id)payloadUpdateAlarmOperationsAsString:(int)string;
- (id)payloadUserNotificationTypesAsString:(int)string;
- (id)payloadVisualCodeTypesAsString:(int)string;
- (id)payloadWellnessObjectTypesAsString:(int)string;
- (id)payloadWellnessQueryResultTypesAsString:(int)string;
- (id)payloadWellnessQuestionTypesAsString:(int)string;
- (id)payloadWorkoutGoalUnitTypesAsString:(int)string;
- (id)payloadWorkoutLocationTypesAsString:(int)string;
- (id)payloadWorkoutSequenceLabelsAsString:(int)string;
- (id)typeAsString:(int)string;
- (int)StringAsPayloadAccountTypes:(id)types;
- (int)StringAsPayloadAlarmPeriods:(id)periods;
- (int)StringAsPayloadAlarmRepeatSchedules:(id)schedules;
- (int)StringAsPayloadAlarmSearchTypes:(id)types;
- (int)StringAsPayloadBalanceTypes:(id)types;
- (int)StringAsPayloadBillTypes:(id)types;
- (int)StringAsPayloadBinarySettingValues:(id)values;
- (int)StringAsPayloadBoundedSettingValues:(id)values;
- (int)StringAsPayloadCallAudioRoutes:(id)routes;
- (int)StringAsPayloadCallCapabilities:(id)capabilities;
- (int)StringAsPayloadCallDestinationTypes:(id)types;
- (int)StringAsPayloadCallRecordTypes:(id)types;
- (int)StringAsPayloadCarAirCirculationModes:(id)modes;
- (int)StringAsPayloadCarAudioSources:(id)sources;
- (int)StringAsPayloadCarDefrosters:(id)defrosters;
- (int)StringAsPayloadCarSeats:(id)seats;
- (int)StringAsPayloadCarSignalIdentifiers:(id)identifiers;
- (int)StringAsPayloadChangeAlarmStatusOperations:(id)operations;
- (int)StringAsPayloadDateSearchTypes:(id)types;
- (int)StringAsPayloadDeviceTypes:(id)types;
- (int)StringAsPayloadEventAttributes:(id)attributes;
- (int)StringAsPayloadFileEntityTypes:(id)types;
- (int)StringAsPayloadFilePropertyNames:(id)names;
- (int)StringAsPayloadFilePropertyQualifiers:(id)qualifiers;
- (int)StringAsPayloadFileSearchScopes:(id)scopes;
- (int)StringAsPayloadFileShareModes:(id)modes;
- (int)StringAsPayloadFileTypes:(id)types;
- (int)StringAsPayloadHomeAttributeTypes:(id)types;
- (int)StringAsPayloadHomeAttributeValueTypes:(id)types;
- (int)StringAsPayloadHomeDeviceTypes:(id)types;
- (int)StringAsPayloadHomeEntityTypes:(id)types;
- (int)StringAsPayloadLocationSearchTypes:(id)types;
- (int)StringAsPayloadMediaAffinityTypes:(id)types;
- (int)StringAsPayloadMessageAttributes:(id)attributes;
- (int)StringAsPayloadMessageEffects:(id)effects;
- (int)StringAsPayloadMessageTypes:(id)types;
- (int)StringAsPayloadNotebookItemTypes:(id)types;
- (int)StringAsPayloadOutgoingMessageTypes:(id)types;
- (int)StringAsPayloadParsecCategories:(id)categories;
- (int)StringAsPayloadPaymentStatus:(id)status;
- (int)StringAsPayloadPersonalPlaceTypes:(id)types;
- (int)StringAsPayloadPhotoAttributes:(id)attributes;
- (int)StringAsPayloadPlaybackQueueLocations:(id)locations;
- (int)StringAsPayloadPlaybackRepeatModes:(id)modes;
- (int)StringAsPayloadPreferredCallProviders:(id)providers;
- (int)StringAsPayloadRadioTypes:(id)types;
- (int)StringAsPayloadReadActionTypes:(id)types;
- (int)StringAsPayloadRelativeReferences:(id)references;
- (int)StringAsPayloadRelativeSettings:(id)settings;
- (int)StringAsPayloadSettingActions:(id)actions;
- (int)StringAsPayloadTaskPriorities:(id)priorities;
- (int)StringAsPayloadTaskStatus:(id)status;
- (int)StringAsPayloadTemporalEventTriggerTypes:(id)types;
- (int)StringAsPayloadTimerStates:(id)states;
- (int)StringAsPayloadTimerTypes:(id)types;
- (int)StringAsPayloadUpdateAlarmOperations:(id)operations;
- (int)StringAsPayloadUserNotificationTypes:(id)types;
- (int)StringAsPayloadVisualCodeTypes:(id)types;
- (int)StringAsPayloadWellnessObjectTypes:(id)types;
- (int)StringAsPayloadWellnessQueryResultTypes:(id)types;
- (int)StringAsPayloadWellnessQuestionTypes:(id)types;
- (int)StringAsPayloadWorkoutGoalUnitTypes:(id)types;
- (int)StringAsPayloadWorkoutLocationTypes:(id)types;
- (int)StringAsPayloadWorkoutSequenceLabels:(id)labels;
- (int)StringAsType:(id)type;
- (int)payloadPrimitiveIntAtIndex:(unint64_t)index;
- (int64_t)payloadEnumerationAtIndex:(unint64_t)index;
- (int64_t)payloadPrimitiveLongAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addPayloadAccountType:(int)type;
- (void)addPayloadActivity:(id)activity;
- (void)addPayloadActivityList:(id)list;
- (void)addPayloadAlarm:(id)alarm;
- (void)addPayloadAlarmPeriod:(int)period;
- (void)addPayloadAlarmRepeatSchedule:(int)schedule;
- (void)addPayloadAlarmSearch:(id)search;
- (void)addPayloadAlarmSearchType:(int)type;
- (void)addPayloadAnnouncement:(id)announcement;
- (void)addPayloadAppIdentifier:(id)identifier;
- (void)addPayloadArchivedObject:(id)object;
- (void)addPayloadBalanceType:(int)type;
- (void)addPayloadBillDetailsValue:(id)value;
- (void)addPayloadBillPayeeValue:(id)value;
- (void)addPayloadBillType:(int)type;
- (void)addPayloadBinarySettingValue:(int)value;
- (void)addPayloadBoundedSettingValue:(int)value;
- (void)addPayloadCalendarEvent:(id)event;
- (void)addPayloadCallAudioRoute:(int)route;
- (void)addPayloadCallCapability:(int)capability;
- (void)addPayloadCallDestinationType:(int)type;
- (void)addPayloadCallGroup:(id)group;
- (void)addPayloadCallGroupConversation:(id)conversation;
- (void)addPayloadCallRecordFilter:(id)filter;
- (void)addPayloadCallRecordType:(int)type;
- (void)addPayloadCallRecordValue:(id)value;
- (void)addPayloadCarAirCirculationMode:(int)mode;
- (void)addPayloadCarAudioSource:(int)source;
- (void)addPayloadCarDefroster:(int)defroster;
- (void)addPayloadCarSeat:(int)seat;
- (void)addPayloadCarSignalIdentifier:(int)identifier;
- (void)addPayloadChangeAlarmStatusOperation:(int)operation;
- (void)addPayloadChargingConnectorType:(id)type;
- (void)addPayloadContactEventTrigger:(id)trigger;
- (void)addPayloadContactList:(id)list;
- (void)addPayloadContactValue:(id)value;
- (void)addPayloadCurrencyAmount:(id)amount;
- (void)addPayloadCustomObject:(id)object;
- (void)addPayloadDataString:(id)string;
- (void)addPayloadDataStringList:(id)list;
- (void)addPayloadDateSearchType:(int)type;
- (void)addPayloadDateTimeRangeList:(id)list;
- (void)addPayloadDateTimeRangeValue:(id)value;
- (void)addPayloadDateTimeValue:(id)value;
- (void)addPayloadDevice:(id)device;
- (void)addPayloadDeviceDetail:(id)detail;
- (void)addPayloadDeviceType:(int)type;
- (void)addPayloadDialingContact:(id)contact;
- (void)addPayloadDistanceList:(id)list;
- (void)addPayloadDistanceValue:(id)value;
- (void)addPayloadDoubleList:(id)list;
- (void)addPayloadDoubleValue:(id)value;
- (void)addPayloadEnergyValue:(id)value;
- (void)addPayloadEnumeration:(int64_t)enumeration;
- (void)addPayloadEvent:(id)event;
- (void)addPayloadEventAttribute:(int)attribute;
- (void)addPayloadEventList:(id)list;
- (void)addPayloadEventParticipant:(id)participant;
- (void)addPayloadFile:(id)file;
- (void)addPayloadFileEntityType:(int)type;
- (void)addPayloadFileProperty:(id)property;
- (void)addPayloadFilePropertyName:(int)name;
- (void)addPayloadFilePropertyQualifier:(int)qualifier;
- (void)addPayloadFilePropertyValue:(id)value;
- (void)addPayloadFileSearchScope:(int)scope;
- (void)addPayloadFileShareMode:(int)mode;
- (void)addPayloadFileType:(int)type;
- (void)addPayloadFinancialAccountValue:(id)value;
- (void)addPayloadGeographicalFeature:(id)feature;
- (void)addPayloadGeographicalFeatureList:(id)list;
- (void)addPayloadGetSettingResponseData:(id)data;
- (void)addPayloadHomeAttribute:(id)attribute;
- (void)addPayloadHomeAttributeType:(int)type;
- (void)addPayloadHomeAttributeValue:(id)value;
- (void)addPayloadHomeAttributeValueType:(int)type;
- (void)addPayloadHomeDeviceType:(int)type;
- (void)addPayloadHomeEntity:(id)entity;
- (void)addPayloadHomeEntityType:(int)type;
- (void)addPayloadHomeFilter:(id)filter;
- (void)addPayloadHomeUserTask:(id)task;
- (void)addPayloadIntegerList:(id)list;
- (void)addPayloadIntegerValue:(id)value;
- (void)addPayloadIntent:(id)intent;
- (void)addPayloadIntentExecutionResult:(id)result;
- (void)addPayloadLocation:(id)location;
- (void)addPayloadLocationList:(id)list;
- (void)addPayloadLocationSearchType:(int)type;
- (void)addPayloadLongList:(id)list;
- (void)addPayloadLongValue:(id)value;
- (void)addPayloadMassValue:(id)value;
- (void)addPayloadMediaAffinityType:(int)type;
- (void)addPayloadMediaDestination:(id)destination;
- (void)addPayloadMediaItemGroup:(id)group;
- (void)addPayloadMediaItemValue:(id)value;
- (void)addPayloadMediaSearch:(id)search;
- (void)addPayloadMessageAttribute:(int)attribute;
- (void)addPayloadMessageEffect:(int)effect;
- (void)addPayloadMessageType:(int)type;
- (void)addPayloadModifyNickname:(id)nickname;
- (void)addPayloadModifyRelationship:(id)relationship;
- (void)addPayloadNote:(id)note;
- (void)addPayloadNoteContent:(id)content;
- (void)addPayloadNotebookItemType:(int)type;
- (void)addPayloadNumericSettingUnit:(int)unit;
- (void)addPayloadNumericSettingValue:(id)value;
- (void)addPayloadOutgoingMessageType:(int)type;
- (void)addPayloadParsecCategory:(int)category;
- (void)addPayloadPaymentAmountValue:(id)value;
- (void)addPayloadPaymentMethodList:(id)list;
- (void)addPayloadPaymentMethodValue:(id)value;
- (void)addPayloadPaymentStatus:(int)status;
- (void)addPayloadPersonalPlaceType:(int)type;
- (void)addPayloadPhotoAttribute:(int)attribute;
- (void)addPayloadPlace:(id)place;
- (void)addPayloadPlaceList:(id)list;
- (void)addPayloadPlaybackQueueLocation:(int)location;
- (void)addPayloadPlaybackRepeatMode:(int)mode;
- (void)addPayloadPreferredCallProvider:(int)provider;
- (void)addPayloadPrimitiveBool:(BOOL)bool;
- (void)addPayloadPrimitiveDouble:(double)double;
- (void)addPayloadPrimitiveInt:(int)int;
- (void)addPayloadPrimitiveLong:(int64_t)long;
- (void)addPayloadPrimitiveString:(id)string;
- (void)addPayloadPrivateAddMediaIntentData:(id)data;
- (void)addPayloadPrivatePlayMediaIntentData:(id)data;
- (void)addPayloadPrivateSearchForMediaIntentData:(id)data;
- (void)addPayloadPrivateUpdateMediaAffinityIntentData:(id)data;
- (void)addPayloadRadioType:(int)type;
- (void)addPayloadReadActionType:(int)type;
- (void)addPayloadRelativeReference:(int)reference;
- (void)addPayloadRelativeSetting:(int)setting;
- (void)addPayloadSendMessageAttachment:(id)attachment;
- (void)addPayloadSettingAction:(int)action;
- (void)addPayloadSettingMetadata:(id)metadata;
- (void)addPayloadShareDestination:(id)destination;
- (void)addPayloadSleepAlarmAttribute:(id)attribute;
- (void)addPayloadSpatialEventTrigger:(id)trigger;
- (void)addPayloadSpeedValue:(id)value;
- (void)addPayloadStartCallRequestMetadata:(id)metadata;
- (void)addPayloadStringList:(id)list;
- (void)addPayloadStringValue:(id)value;
- (void)addPayloadSupportedTrafficIncidentType:(id)type;
- (void)addPayloadTask:(id)task;
- (void)addPayloadTaskList:(id)list;
- (void)addPayloadTaskPriority:(int)priority;
- (void)addPayloadTaskReference:(int)reference;
- (void)addPayloadTaskStatus:(int)status;
- (void)addPayloadTemperatureList:(id)list;
- (void)addPayloadTemperatureValue:(id)value;
- (void)addPayloadTemporalEventTrigger:(id)trigger;
- (void)addPayloadTemporalEventTriggerType:(int)type;
- (void)addPayloadTimer:(id)timer;
- (void)addPayloadTimerState:(int)state;
- (void)addPayloadTimerType:(int)type;
- (void)addPayloadURLValue:(id)value;
- (void)addPayloadUpdateAlarmOperation:(int)operation;
- (void)addPayloadUserNotificationType:(int)type;
- (void)addPayloadVisualCodeType:(int)type;
- (void)addPayloadVoiceCommandDeviceInformation:(id)information;
- (void)addPayloadVolumeValue:(id)value;
- (void)addPayloadWellnessMetadataPair:(id)pair;
- (void)addPayloadWellnessObjectResultValue:(id)value;
- (void)addPayloadWellnessObjectType:(int)type;
- (void)addPayloadWellnessQueryResultType:(int)type;
- (void)addPayloadWellnessQuestionType:(int)type;
- (void)addPayloadWellnessUnitType:(id)type;
- (void)addPayloadWellnessValue:(id)value;
- (void)addPayloadWorkoutAssociatedItem:(id)item;
- (void)addPayloadWorkoutCustomization:(id)customization;
- (void)addPayloadWorkoutGoalUnitType:(int)type;
- (void)addPayloadWorkoutLocationType:(int)type;
- (void)addPayloadWorkoutSequenceLabel:(int)label;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setPayloadActivities:(id)activities;
- (void)setPayloadActivityLists:(id)lists;
- (void)setPayloadAlarmSearchs:(id)searchs;
- (void)setPayloadAlarms:(id)alarms;
- (void)setPayloadAnnouncements:(id)announcements;
- (void)setPayloadAppIdentifiers:(id)identifiers;
- (void)setPayloadArchivedObjects:(id)objects;
- (void)setPayloadBillDetailsValues:(id)values;
- (void)setPayloadBillPayeeValues:(id)values;
- (void)setPayloadCalendarEvents:(id)events;
- (void)setPayloadCallGroupConversations:(id)conversations;
- (void)setPayloadCallGroups:(id)groups;
- (void)setPayloadCallRecordFilters:(id)filters;
- (void)setPayloadCallRecordValues:(id)values;
- (void)setPayloadChargingConnectorTypes:(id)types;
- (void)setPayloadContactEventTriggers:(id)triggers;
- (void)setPayloadContactLists:(id)lists;
- (void)setPayloadContactValues:(id)values;
- (void)setPayloadCurrencyAmounts:(id)amounts;
- (void)setPayloadCustomObjects:(id)objects;
- (void)setPayloadDataStringLists:(id)lists;
- (void)setPayloadDataStrings:(id)strings;
- (void)setPayloadDateTimeRangeLists:(id)lists;
- (void)setPayloadDateTimeRangeValues:(id)values;
- (void)setPayloadDateTimeValues:(id)values;
- (void)setPayloadDeviceDetails:(id)details;
- (void)setPayloadDevices:(id)devices;
- (void)setPayloadDialingContacts:(id)contacts;
- (void)setPayloadDistanceLists:(id)lists;
- (void)setPayloadDistanceValues:(id)values;
- (void)setPayloadDoubleLists:(id)lists;
- (void)setPayloadDoubleValues:(id)values;
- (void)setPayloadEnergyValues:(id)values;
- (void)setPayloadEnumerations:(id)enumerations;
- (void)setPayloadEventLists:(id)lists;
- (void)setPayloadEventParticipants:(id)participants;
- (void)setPayloadEvents:(id)events;
- (void)setPayloadFileProperties:(id)properties;
- (void)setPayloadFilePropertyValues:(id)values;
- (void)setPayloadFiles:(id)files;
- (void)setPayloadFinancialAccountValues:(id)values;
- (void)setPayloadGeographicalFeatureLists:(id)lists;
- (void)setPayloadGeographicalFeatures:(id)features;
- (void)setPayloadGetSettingResponseDatas:(id)datas;
- (void)setPayloadHomeAttributeValues:(id)values;
- (void)setPayloadHomeAttributes:(id)attributes;
- (void)setPayloadHomeEntities:(id)entities;
- (void)setPayloadHomeFilters:(id)filters;
- (void)setPayloadHomeUserTasks:(id)tasks;
- (void)setPayloadIntegerLists:(id)lists;
- (void)setPayloadIntegerValues:(id)values;
- (void)setPayloadIntentExecutionResults:(id)results;
- (void)setPayloadIntents:(id)intents;
- (void)setPayloadLocationLists:(id)lists;
- (void)setPayloadLocations:(id)locations;
- (void)setPayloadLongLists:(id)lists;
- (void)setPayloadLongValues:(id)values;
- (void)setPayloadMassValues:(id)values;
- (void)setPayloadMediaDestinations:(id)destinations;
- (void)setPayloadMediaItemGroups:(id)groups;
- (void)setPayloadMediaItemValues:(id)values;
- (void)setPayloadMediaSearchs:(id)searchs;
- (void)setPayloadModifyNicknames:(id)nicknames;
- (void)setPayloadModifyRelationships:(id)relationships;
- (void)setPayloadNoteContents:(id)contents;
- (void)setPayloadNotes:(id)notes;
- (void)setPayloadNumericSettingValues:(id)values;
- (void)setPayloadPaymentAmountValues:(id)values;
- (void)setPayloadPaymentMethodLists:(id)lists;
- (void)setPayloadPaymentMethodValues:(id)values;
- (void)setPayloadPlaceLists:(id)lists;
- (void)setPayloadPlaces:(id)places;
- (void)setPayloadPrimitiveBools:(id)bools;
- (void)setPayloadPrimitiveDoubles:(id)doubles;
- (void)setPayloadPrimitiveInts:(id)ints;
- (void)setPayloadPrimitiveLongs:(id)longs;
- (void)setPayloadPrimitiveStrings:(id)strings;
- (void)setPayloadPrivateAddMediaIntentDatas:(id)datas;
- (void)setPayloadPrivatePlayMediaIntentDatas:(id)datas;
- (void)setPayloadPrivateSearchForMediaIntentDatas:(id)datas;
- (void)setPayloadPrivateUpdateMediaAffinityIntentDatas:(id)datas;
- (void)setPayloadSendMessageAttachments:(id)attachments;
- (void)setPayloadSettingMetadatas:(id)metadatas;
- (void)setPayloadShareDestinations:(id)destinations;
- (void)setPayloadSleepAlarmAttributes:(id)attributes;
- (void)setPayloadSpatialEventTriggers:(id)triggers;
- (void)setPayloadSpeedValues:(id)values;
- (void)setPayloadStartCallRequestMetadatas:(id)metadatas;
- (void)setPayloadStringLists:(id)lists;
- (void)setPayloadStringValues:(id)values;
- (void)setPayloadSupportedTrafficIncidentTypes:(id)types;
- (void)setPayloadTaskLists:(id)lists;
- (void)setPayloadTasks:(id)tasks;
- (void)setPayloadTemperatureLists:(id)lists;
- (void)setPayloadTemperatureValues:(id)values;
- (void)setPayloadTemporalEventTriggers:(id)triggers;
- (void)setPayloadTimers:(id)timers;
- (void)setPayloadURLValues:(id)values;
- (void)setPayloadVoiceCommandDeviceInformations:(id)informations;
- (void)setPayloadVolumeValues:(id)values;
- (void)setPayloadWellnessMetadataPairs:(id)pairs;
- (void)setPayloadWellnessObjectResultValues:(id)values;
- (void)setPayloadWellnessUnitTypes:(id)types;
- (void)setPayloadWellnessValues:(id)values;
- (void)setPayloadWorkoutAssociatedItems:(id)items;
- (void)setPayloadWorkoutCustomizations:(id)customizations;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentSlotValue

- (void)dealloc
{
  [(_INPBIntentSlotValue *)self clearPayloadAccountTypes];
  [(_INPBIntentSlotValue *)self clearPayloadAlarmPeriods];
  [(_INPBIntentSlotValue *)self clearPayloadAlarmRepeatSchedules];
  [(_INPBIntentSlotValue *)self clearPayloadAlarmSearchTypes];
  [(_INPBIntentSlotValue *)self clearPayloadBalanceTypes];
  [(_INPBIntentSlotValue *)self clearPayloadBillTypes];
  [(_INPBIntentSlotValue *)self clearPayloadBinarySettingValues];
  [(_INPBIntentSlotValue *)self clearPayloadBoundedSettingValues];
  [(_INPBIntentSlotValue *)self clearPayloadCallAudioRoutes];
  [(_INPBIntentSlotValue *)self clearPayloadCallCapabilities];
  [(_INPBIntentSlotValue *)self clearPayloadCallDestinationTypes];
  [(_INPBIntentSlotValue *)self clearPayloadCallRecordTypes];
  [(_INPBIntentSlotValue *)self clearPayloadCarAirCirculationModes];
  [(_INPBIntentSlotValue *)self clearPayloadCarAudioSources];
  [(_INPBIntentSlotValue *)self clearPayloadCarDefrosters];
  [(_INPBIntentSlotValue *)self clearPayloadCarSeats];
  [(_INPBIntentSlotValue *)self clearPayloadCarSignalIdentifiers];
  [(_INPBIntentSlotValue *)self clearPayloadChangeAlarmStatusOperations];
  [(_INPBIntentSlotValue *)self clearPayloadDateSearchTypes];
  [(_INPBIntentSlotValue *)self clearPayloadDeviceTypes];
  [(_INPBIntentSlotValue *)self clearPayloadEventAttributes];
  [(_INPBIntentSlotValue *)self clearPayloadFileEntityTypes];
  [(_INPBIntentSlotValue *)self clearPayloadFilePropertyNames];
  [(_INPBIntentSlotValue *)self clearPayloadFilePropertyQualifiers];
  [(_INPBIntentSlotValue *)self clearPayloadFileSearchScopes];
  [(_INPBIntentSlotValue *)self clearPayloadFileShareModes];
  [(_INPBIntentSlotValue *)self clearPayloadFileTypes];
  [(_INPBIntentSlotValue *)self clearPayloadHomeAttributeTypes];
  [(_INPBIntentSlotValue *)self clearPayloadHomeAttributeValueTypes];
  [(_INPBIntentSlotValue *)self clearPayloadHomeDeviceTypes];
  [(_INPBIntentSlotValue *)self clearPayloadHomeEntityTypes];
  [(_INPBIntentSlotValue *)self clearPayloadLocationSearchTypes];
  [(_INPBIntentSlotValue *)self clearPayloadMediaAffinityTypes];
  [(_INPBIntentSlotValue *)self clearPayloadMessageAttributes];
  [(_INPBIntentSlotValue *)self clearPayloadMessageEffects];
  [(_INPBIntentSlotValue *)self clearPayloadMessageTypes];
  [(_INPBIntentSlotValue *)self clearPayloadNotebookItemTypes];
  [(_INPBIntentSlotValue *)self clearPayloadNumericSettingUnits];
  [(_INPBIntentSlotValue *)self clearPayloadOutgoingMessageTypes];
  [(_INPBIntentSlotValue *)self clearPayloadParsecCategories];
  [(_INPBIntentSlotValue *)self clearPayloadPaymentStatus];
  [(_INPBIntentSlotValue *)self clearPayloadPersonalPlaceTypes];
  [(_INPBIntentSlotValue *)self clearPayloadPhotoAttributes];
  [(_INPBIntentSlotValue *)self clearPayloadPlaybackQueueLocations];
  [(_INPBIntentSlotValue *)self clearPayloadPlaybackRepeatModes];
  [(_INPBIntentSlotValue *)self clearPayloadPreferredCallProviders];
  [(_INPBIntentSlotValue *)self clearPayloadRadioTypes];
  [(_INPBIntentSlotValue *)self clearPayloadReadActionTypes];
  [(_INPBIntentSlotValue *)self clearPayloadRelativeReferences];
  [(_INPBIntentSlotValue *)self clearPayloadRelativeSettings];
  [(_INPBIntentSlotValue *)self clearPayloadSettingActions];
  [(_INPBIntentSlotValue *)self clearPayloadTaskPriorities];
  [(_INPBIntentSlotValue *)self clearPayloadTaskReferences];
  [(_INPBIntentSlotValue *)self clearPayloadTaskStatus];
  [(_INPBIntentSlotValue *)self clearPayloadTemporalEventTriggerTypes];
  [(_INPBIntentSlotValue *)self clearPayloadTimerStates];
  [(_INPBIntentSlotValue *)self clearPayloadTimerTypes];
  [(_INPBIntentSlotValue *)self clearPayloadUpdateAlarmOperations];
  [(_INPBIntentSlotValue *)self clearPayloadUserNotificationTypes];
  [(_INPBIntentSlotValue *)self clearPayloadVisualCodeTypes];
  [(_INPBIntentSlotValue *)self clearPayloadWellnessObjectTypes];
  [(_INPBIntentSlotValue *)self clearPayloadWellnessQueryResultTypes];
  [(_INPBIntentSlotValue *)self clearPayloadWellnessQuestionTypes];
  [(_INPBIntentSlotValue *)self clearPayloadWorkoutGoalUnitTypes];
  [(_INPBIntentSlotValue *)self clearPayloadWorkoutLocationTypes];
  [(_INPBIntentSlotValue *)self clearPayloadWorkoutSequenceLabels];
  v3.receiver = self;
  v3.super_class = _INPBIntentSlotValue;
  [(_INPBIntentSlotValue *)&v3 dealloc];
}

- (id)dictionaryRepresentation
{
  v2 = MEMORY[0x1EEE9AC00](self, a2);
  v1472 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*(v2 + 16))
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadAccountTypesCount")}];
    if ([v2 payloadAccountTypesCount])
    {
      v5 = 0;
      do
      {
        v6 = *(*(v2 + 8) + 4 * v5) - 1;
        if (v6 >= 7)
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 8) + 4 * v5)];
        }

        else
        {
          v7 = *(&off_1E72841F0 + v6);
        }

        [v4 addObject:v7];

        ++v5;
      }

      while (v5 < [v2 payloadAccountTypesCount]);
    }

    [dictionary setObject:v4 forKeyedSubscript:@"_payloadAccountType"];
  }

  if ([*(v2 + 1600) count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v1369 = 0u;
    v1370 = 0u;
    v1371 = 0u;
    v1372 = 0u;
    v9 = *(v2 + 1600);
    v10 = [v9 countByEnumeratingWithState:&v1369 objects:v1471 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v1370;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v1370 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v1369 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v11 = [v9 countByEnumeratingWithState:&v1369 objects:v1471 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"_payloadActivity"];
  }

  if ([*(v2 + 1608) count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v1365 = 0u;
    v1366 = 0u;
    v1367 = 0u;
    v1368 = 0u;
    v16 = *(v2 + 1608);
    v17 = [v16 countByEnumeratingWithState:&v1365 objects:v1470 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v1366;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v1366 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation2 = [*(*(&v1365 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v18 = [v16 countByEnumeratingWithState:&v1365 objects:v1470 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"_payloadActivityList"];
  }

  if ([*(v2 + 1616) count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v1361 = 0u;
    v1362 = 0u;
    v1363 = 0u;
    v1364 = 0u;
    v23 = *(v2 + 1616);
    v24 = [v23 countByEnumeratingWithState:&v1361 objects:v1469 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v1362;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v1362 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation3 = [*(*(&v1361 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation3];
        }

        v25 = [v23 countByEnumeratingWithState:&v1361 objects:v1469 count:16];
      }

      while (v25);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"_payloadAlarm"];
  }

  if (*(v2 + 40))
  {
    v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadAlarmPeriodsCount")}];
    if ([v2 payloadAlarmPeriodsCount])
    {
      v30 = 0;
      do
      {
        v31 = *(*(v2 + 32) + 4 * v30);
        if (v31 >= 9)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 32) + 4 * v30)];
        }

        else
        {
          v32 = *(&off_1E7284228 + v31);
        }

        [v29 addObject:v32];

        ++v30;
      }

      while (v30 < [v2 payloadAlarmPeriodsCount]);
    }

    [dictionary setObject:v29 forKeyedSubscript:@"_payloadAlarmPeriod"];
  }

  if (*(v2 + 64))
  {
    v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadAlarmRepeatSchedulesCount")}];
    if ([v2 payloadAlarmRepeatSchedulesCount])
    {
      v34 = 0;
      do
      {
        v35 = *(*(v2 + 56) + 4 * v34);
        if (v35 >= 8)
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 56) + 4 * v34)];
        }

        else
        {
          v36 = *(&off_1E7284270 + v35);
        }

        [v33 addObject:v36];

        ++v34;
      }

      while (v34 < [v2 payloadAlarmRepeatSchedulesCount]);
    }

    [dictionary setObject:v33 forKeyedSubscript:@"_payloadAlarmRepeatSchedule"];
  }

  if ([*(v2 + 1624) count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v1357 = 0u;
    v1358 = 0u;
    v1359 = 0u;
    v1360 = 0u;
    v38 = *(v2 + 1624);
    v39 = [v38 countByEnumeratingWithState:&v1357 objects:v1468 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v1358;
      do
      {
        for (m = 0; m != v40; ++m)
        {
          if (*v1358 != v41)
          {
            objc_enumerationMutation(v38);
          }

          dictionaryRepresentation4 = [*(*(&v1357 + 1) + 8 * m) dictionaryRepresentation];
          [array4 addObject:dictionaryRepresentation4];
        }

        v40 = [v38 countByEnumeratingWithState:&v1357 objects:v1468 count:16];
      }

      while (v40);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"_payloadAlarmSearch"];
  }

  if (*(v2 + 88))
  {
    v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadAlarmSearchTypesCount")}];
    if ([v2 payloadAlarmSearchTypesCount])
    {
      v45 = 0;
      do
      {
        v46 = *(*(v2 + 80) + 4 * v45);
        if (v46 >= 5)
        {
          v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 80) + 4 * v45)];
        }

        else
        {
          v47 = *(&off_1E72842B0 + v46);
        }

        [v44 addObject:v47];

        ++v45;
      }

      while (v45 < [v2 payloadAlarmSearchTypesCount]);
    }

    [dictionary setObject:v44 forKeyedSubscript:@"_payloadAlarmSearchType"];
  }

  if ([*(v2 + 1632) count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
    v1353 = 0u;
    v1354 = 0u;
    v1355 = 0u;
    v1356 = 0u;
    v49 = *(v2 + 1632);
    v50 = [v49 countByEnumeratingWithState:&v1353 objects:v1467 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v1354;
      do
      {
        for (n = 0; n != v51; ++n)
        {
          if (*v1354 != v52)
          {
            objc_enumerationMutation(v49);
          }

          dictionaryRepresentation5 = [*(*(&v1353 + 1) + 8 * n) dictionaryRepresentation];
          [array5 addObject:dictionaryRepresentation5];
        }

        v51 = [v49 countByEnumeratingWithState:&v1353 objects:v1467 count:16];
      }

      while (v51);
    }

    [dictionary setObject:array5 forKeyedSubscript:@"_payloadAnnouncement"];
  }

  if ([*(v2 + 1640) count])
  {
    array6 = [MEMORY[0x1E695DF70] array];
    v1349 = 0u;
    v1350 = 0u;
    v1351 = 0u;
    v1352 = 0u;
    v56 = *(v2 + 1640);
    v57 = [v56 countByEnumeratingWithState:&v1349 objects:v1466 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v1350;
      do
      {
        for (ii = 0; ii != v58; ++ii)
        {
          if (*v1350 != v59)
          {
            objc_enumerationMutation(v56);
          }

          dictionaryRepresentation6 = [*(*(&v1349 + 1) + 8 * ii) dictionaryRepresentation];
          [array6 addObject:dictionaryRepresentation6];
        }

        v58 = [v56 countByEnumeratingWithState:&v1349 objects:v1466 count:16];
      }

      while (v58);
    }

    [dictionary setObject:array6 forKeyedSubscript:@"_payloadAppIdentifier"];
  }

  if ([*(v2 + 1648) count])
  {
    array7 = [MEMORY[0x1E695DF70] array];
    v1345 = 0u;
    v1346 = 0u;
    v1347 = 0u;
    v1348 = 0u;
    v63 = *(v2 + 1648);
    v64 = [v63 countByEnumeratingWithState:&v1345 objects:v1465 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v1346;
      do
      {
        for (jj = 0; jj != v65; ++jj)
        {
          if (*v1346 != v66)
          {
            objc_enumerationMutation(v63);
          }

          dictionaryRepresentation7 = [*(*(&v1345 + 1) + 8 * jj) dictionaryRepresentation];
          [array7 addObject:dictionaryRepresentation7];
        }

        v65 = [v63 countByEnumeratingWithState:&v1345 objects:v1465 count:16];
      }

      while (v65);
    }

    [dictionary setObject:array7 forKeyedSubscript:@"_payloadArchivedObject"];
  }

  if (*(v2 + 112))
  {
    v69 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadBalanceTypesCount")}];
    if ([v2 payloadBalanceTypesCount])
    {
      v70 = 0;
      do
      {
        v71 = *(*(v2 + 104) + 4 * v70) - 1;
        if (v71 >= 3)
        {
          v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 104) + 4 * v70)];
        }

        else
        {
          v72 = *(&off_1E72842D8 + v71);
        }

        [v69 addObject:v72];

        ++v70;
      }

      while (v70 < [v2 payloadBalanceTypesCount]);
    }

    [dictionary setObject:v69 forKeyedSubscript:@"_payloadBalanceType"];
  }

  if ([*(v2 + 1656) count])
  {
    array8 = [MEMORY[0x1E695DF70] array];
    v1341 = 0u;
    v1342 = 0u;
    v1343 = 0u;
    v1344 = 0u;
    v74 = *(v2 + 1656);
    v75 = [v74 countByEnumeratingWithState:&v1341 objects:v1464 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v1342;
      do
      {
        for (kk = 0; kk != v76; ++kk)
        {
          if (*v1342 != v77)
          {
            objc_enumerationMutation(v74);
          }

          dictionaryRepresentation8 = [*(*(&v1341 + 1) + 8 * kk) dictionaryRepresentation];
          [array8 addObject:dictionaryRepresentation8];
        }

        v76 = [v74 countByEnumeratingWithState:&v1341 objects:v1464 count:16];
      }

      while (v76);
    }

    [dictionary setObject:array8 forKeyedSubscript:@"_payloadBillDetailsValue"];
  }

  if ([*(v2 + 1664) count])
  {
    array9 = [MEMORY[0x1E695DF70] array];
    v1337 = 0u;
    v1338 = 0u;
    v1339 = 0u;
    v1340 = 0u;
    v81 = *(v2 + 1664);
    v82 = [v81 countByEnumeratingWithState:&v1337 objects:v1463 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v1338;
      do
      {
        for (mm = 0; mm != v83; ++mm)
        {
          if (*v1338 != v84)
          {
            objc_enumerationMutation(v81);
          }

          dictionaryRepresentation9 = [*(*(&v1337 + 1) + 8 * mm) dictionaryRepresentation];
          [array9 addObject:dictionaryRepresentation9];
        }

        v83 = [v81 countByEnumeratingWithState:&v1337 objects:v1463 count:16];
      }

      while (v83);
    }

    [dictionary setObject:array9 forKeyedSubscript:@"_payloadBillPayeeValue"];
  }

  if (*(v2 + 136))
  {
    v87 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadBillTypesCount")}];
    if ([v2 payloadBillTypesCount])
    {
      v88 = 0;
      do
      {
        v89 = *(*(v2 + 128) + 4 * v88) - 1;
        if (v89 >= 0x16)
        {
          v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 128) + 4 * v88)];
        }

        else
        {
          v90 = *(&off_1E72842F0 + v89);
        }

        [v87 addObject:v90];

        ++v88;
      }

      while (v88 < [v2 payloadBillTypesCount]);
    }

    [dictionary setObject:v87 forKeyedSubscript:@"_payloadBillType"];
  }

  if (*(v2 + 160))
  {
    v91 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadBinarySettingValuesCount")}];
    if ([v2 payloadBinarySettingValuesCount])
    {
      v92 = 0;
      do
      {
        v93 = *(*(v2 + 152) + 4 * v92) - 1;
        if (v93 >= 3)
        {
          v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 152) + 4 * v92)];
        }

        else
        {
          v94 = *(&off_1E72843A0 + v93);
        }

        [v91 addObject:v94];

        ++v92;
      }

      while (v92 < [v2 payloadBinarySettingValuesCount]);
    }

    [dictionary setObject:v91 forKeyedSubscript:@"_payloadBinarySettingValue"];
  }

  if (*(v2 + 184))
  {
    v95 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadBoundedSettingValuesCount")}];
    if ([v2 payloadBoundedSettingValuesCount])
    {
      v96 = 0;
      do
      {
        v97 = *(*(v2 + 176) + 4 * v96) - 1;
        if (v97 >= 3)
        {
          v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 176) + 4 * v96)];
        }

        else
        {
          v98 = *(&off_1E72843B8 + v97);
        }

        [v95 addObject:v98];

        ++v96;
      }

      while (v96 < [v2 payloadBoundedSettingValuesCount]);
    }

    [dictionary setObject:v95 forKeyedSubscript:@"_payloadBoundedSettingValue"];
  }

  if ([*(v2 + 1672) count])
  {
    array10 = [MEMORY[0x1E695DF70] array];
    v1333 = 0u;
    v1334 = 0u;
    v1335 = 0u;
    v1336 = 0u;
    v100 = *(v2 + 1672);
    v101 = [v100 countByEnumeratingWithState:&v1333 objects:v1462 count:16];
    if (v101)
    {
      v102 = v101;
      v103 = *v1334;
      do
      {
        for (nn = 0; nn != v102; ++nn)
        {
          if (*v1334 != v103)
          {
            objc_enumerationMutation(v100);
          }

          dictionaryRepresentation10 = [*(*(&v1333 + 1) + 8 * nn) dictionaryRepresentation];
          [array10 addObject:dictionaryRepresentation10];
        }

        v102 = [v100 countByEnumeratingWithState:&v1333 objects:v1462 count:16];
      }

      while (v102);
    }

    [dictionary setObject:array10 forKeyedSubscript:@"_payloadCalendarEvent"];
  }

  if (*(v2 + 208))
  {
    v106 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadCallAudioRoutesCount")}];
    if ([v2 payloadCallAudioRoutesCount])
    {
      v107 = 0;
      do
      {
        v108 = *(*(v2 + 200) + 4 * v107) - 2;
        if (v108 >= 3)
        {
          v109 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 200) + 4 * v107)];
        }

        else
        {
          v109 = *(&off_1E72843D0 + v108);
        }

        [v106 addObject:v109];

        ++v107;
      }

      while (v107 < [v2 payloadCallAudioRoutesCount]);
    }

    [dictionary setObject:v106 forKeyedSubscript:@"_payloadCallAudioRoute"];
  }

  if (*(v2 + 232))
  {
    v110 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadCallCapabilitiesCount")}];
    if ([v2 payloadCallCapabilitiesCount])
    {
      v111 = 0;
      do
      {
        v112 = *(*(v2 + 224) + 4 * v111);
        if (v112 == 1)
        {
          v113 = @"AUDIO_CALL";
        }

        else if (v112 == 2)
        {
          v113 = @"VIDEO_CALL";
        }

        else
        {
          v113 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 224) + 4 * v111)];
        }

        [v110 addObject:v113];

        ++v111;
      }

      while (v111 < [v2 payloadCallCapabilitiesCount]);
    }

    [dictionary setObject:v110 forKeyedSubscript:@"_payloadCallCapability"];
  }

  if (*(v2 + 256))
  {
    v114 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadCallDestinationTypesCount")}];
    if ([v2 payloadCallDestinationTypesCount])
    {
      v115 = 0;
      do
      {
        v116 = *(*(v2 + 248) + 4 * v115) - 1;
        if (v116 >= 5)
        {
          v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 248) + 4 * v115)];
        }

        else
        {
          v117 = *(&off_1E72843E8 + v116);
        }

        [v114 addObject:v117];

        ++v115;
      }

      while (v115 < [v2 payloadCallDestinationTypesCount]);
    }

    [dictionary setObject:v114 forKeyedSubscript:@"_payloadCallDestinationType"];
  }

  if ([*(v2 + 1680) count])
  {
    array11 = [MEMORY[0x1E695DF70] array];
    v1329 = 0u;
    v1330 = 0u;
    v1331 = 0u;
    v1332 = 0u;
    v119 = *(v2 + 1680);
    v120 = [v119 countByEnumeratingWithState:&v1329 objects:v1461 count:16];
    if (v120)
    {
      v121 = v120;
      v122 = *v1330;
      do
      {
        for (i1 = 0; i1 != v121; ++i1)
        {
          if (*v1330 != v122)
          {
            objc_enumerationMutation(v119);
          }

          dictionaryRepresentation11 = [*(*(&v1329 + 1) + 8 * i1) dictionaryRepresentation];
          [array11 addObject:dictionaryRepresentation11];
        }

        v121 = [v119 countByEnumeratingWithState:&v1329 objects:v1461 count:16];
      }

      while (v121);
    }

    [dictionary setObject:array11 forKeyedSubscript:@"_payloadCallGroup"];
  }

  if ([*(v2 + 1688) count])
  {
    array12 = [MEMORY[0x1E695DF70] array];
    v1325 = 0u;
    v1326 = 0u;
    v1327 = 0u;
    v1328 = 0u;
    v126 = *(v2 + 1688);
    v127 = [v126 countByEnumeratingWithState:&v1325 objects:v1460 count:16];
    if (v127)
    {
      v128 = v127;
      v129 = *v1326;
      do
      {
        for (i2 = 0; i2 != v128; ++i2)
        {
          if (*v1326 != v129)
          {
            objc_enumerationMutation(v126);
          }

          dictionaryRepresentation12 = [*(*(&v1325 + 1) + 8 * i2) dictionaryRepresentation];
          [array12 addObject:dictionaryRepresentation12];
        }

        v128 = [v126 countByEnumeratingWithState:&v1325 objects:v1460 count:16];
      }

      while (v128);
    }

    [dictionary setObject:array12 forKeyedSubscript:@"_payloadCallGroupConversation"];
  }

  if ([*(v2 + 1696) count])
  {
    array13 = [MEMORY[0x1E695DF70] array];
    v1321 = 0u;
    v1322 = 0u;
    v1323 = 0u;
    v1324 = 0u;
    v133 = *(v2 + 1696);
    v134 = [v133 countByEnumeratingWithState:&v1321 objects:v1459 count:16];
    if (v134)
    {
      v135 = v134;
      v136 = *v1322;
      do
      {
        for (i3 = 0; i3 != v135; ++i3)
        {
          if (*v1322 != v136)
          {
            objc_enumerationMutation(v133);
          }

          dictionaryRepresentation13 = [*(*(&v1321 + 1) + 8 * i3) dictionaryRepresentation];
          [array13 addObject:dictionaryRepresentation13];
        }

        v135 = [v133 countByEnumeratingWithState:&v1321 objects:v1459 count:16];
      }

      while (v135);
    }

    [dictionary setObject:array13 forKeyedSubscript:@"_payloadCallRecordFilter"];
  }

  if (*(v2 + 280))
  {
    v139 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadCallRecordTypesCount")}];
    if ([v2 payloadCallRecordTypesCount])
    {
      v140 = 0;
      do
      {
        v141 = *(*(v2 + 272) + 4 * v140) - 2;
        if (v141 < 9 && ((0x1EFu >> v141) & 1) != 0)
        {
          v142 = *(&off_1E7284410 + v141);
        }

        else
        {
          v142 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 272) + 4 * v140)];
        }

        [v139 addObject:v142];

        ++v140;
      }

      while (v140 < [v2 payloadCallRecordTypesCount]);
    }

    [dictionary setObject:v139 forKeyedSubscript:@"_payloadCallRecordType"];
  }

  if ([*(v2 + 1704) count])
  {
    array14 = [MEMORY[0x1E695DF70] array];
    v1317 = 0u;
    v1318 = 0u;
    v1319 = 0u;
    v1320 = 0u;
    v144 = *(v2 + 1704);
    v145 = [v144 countByEnumeratingWithState:&v1317 objects:v1458 count:16];
    if (v145)
    {
      v146 = v145;
      v147 = *v1318;
      do
      {
        for (i4 = 0; i4 != v146; ++i4)
        {
          if (*v1318 != v147)
          {
            objc_enumerationMutation(v144);
          }

          dictionaryRepresentation14 = [*(*(&v1317 + 1) + 8 * i4) dictionaryRepresentation];
          [array14 addObject:dictionaryRepresentation14];
        }

        v146 = [v144 countByEnumeratingWithState:&v1317 objects:v1458 count:16];
      }

      while (v146);
    }

    [dictionary setObject:array14 forKeyedSubscript:@"_payloadCallRecordValue"];
  }

  if (*(v2 + 304))
  {
    v150 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadCarAirCirculationModesCount")}];
    if ([v2 payloadCarAirCirculationModesCount])
    {
      v151 = 0;
      do
      {
        v152 = *(*(v2 + 296) + 4 * v151);
        if (v152 == 1)
        {
          v153 = @"FRESH_AIR";
        }

        else if (v152 == 2)
        {
          v153 = @"RECIRCULATE_AIR";
        }

        else
        {
          v153 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 296) + 4 * v151)];
        }

        [v150 addObject:v153];

        ++v151;
      }

      while (v151 < [v2 payloadCarAirCirculationModesCount]);
    }

    [dictionary setObject:v150 forKeyedSubscript:@"_payloadCarAirCirculationMode"];
  }

  if (*(v2 + 328))
  {
    v154 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadCarAudioSourcesCount")}];
    if ([v2 payloadCarAudioSourcesCount])
    {
      v155 = 0;
      do
      {
        v156 = *(*(v2 + 320) + 4 * v155) - 1;
        if (v156 >= 9)
        {
          v157 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 320) + 4 * v155)];
        }

        else
        {
          v157 = *(&off_1E7284458 + v156);
        }

        [v154 addObject:v157];

        ++v155;
      }

      while (v155 < [v2 payloadCarAudioSourcesCount]);
    }

    [dictionary setObject:v154 forKeyedSubscript:@"_payloadCarAudioSource"];
  }

  if (*(v2 + 352))
  {
    v158 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadCarDefrostersCount")}];
    if ([v2 payloadCarDefrostersCount])
    {
      v159 = 0;
      do
      {
        v160 = *(*(v2 + 344) + 4 * v159) - 1;
        if (v160 >= 3)
        {
          v161 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 344) + 4 * v159)];
        }

        else
        {
          v161 = *(&off_1E72844A0 + v160);
        }

        [v158 addObject:v161];

        ++v159;
      }

      while (v159 < [v2 payloadCarDefrostersCount]);
    }

    [dictionary setObject:v158 forKeyedSubscript:@"_payloadCarDefroster"];
  }

  if (*(v2 + 376))
  {
    v162 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadCarSeatsCount")}];
    if ([v2 payloadCarSeatsCount])
    {
      v163 = 0;
      do
      {
        v164 = *(*(v2 + 368) + 4 * v163) - 1;
        if (v164 < 0x16 && ((0x3F8383u >> v164) & 1) != 0)
        {
          v165 = *(&off_1E72844B8 + v164);
        }

        else
        {
          v165 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 368) + 4 * v163)];
        }

        [v162 addObject:v165];

        ++v163;
      }

      while (v163 < [v2 payloadCarSeatsCount]);
    }

    [dictionary setObject:v162 forKeyedSubscript:@"_payloadCarSeat"];
  }

  if (*(v2 + 400))
  {
    v166 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadCarSignalIdentifiersCount")}];
    if ([v2 payloadCarSignalIdentifiersCount])
    {
      v167 = 0;
      do
      {
        v168 = *(*(v2 + 392) + 4 * v167);
        if (v168 == 1)
        {
          v169 = @"AUDIBLE";
        }

        else if (v168 == 2)
        {
          v169 = @"VISIBLE";
        }

        else
        {
          v169 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 392) + 4 * v167)];
        }

        [v166 addObject:v169];

        ++v167;
      }

      while (v167 < [v2 payloadCarSignalIdentifiersCount]);
    }

    [dictionary setObject:v166 forKeyedSubscript:@"_payloadCarSignalIdentifier"];
  }

  if (*(v2 + 424))
  {
    v170 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadChangeAlarmStatusOperationsCount")}];
    if ([v2 payloadChangeAlarmStatusOperationsCount])
    {
      v171 = 0;
      do
      {
        v172 = *(*(v2 + 416) + 4 * v171) - 1;
        if (v172 >= 3)
        {
          v173 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 416) + 4 * v171)];
        }

        else
        {
          v173 = *(&off_1E7284568 + v172);
        }

        [v170 addObject:v173];

        ++v171;
      }

      while (v171 < [v2 payloadChangeAlarmStatusOperationsCount]);
    }

    [dictionary setObject:v170 forKeyedSubscript:@"_payloadChangeAlarmStatusOperation"];
  }

  if (*(v2 + 1712))
  {
    payloadChargingConnectorTypes = [v2 payloadChargingConnectorTypes];
    v175 = [payloadChargingConnectorTypes copy];
    [dictionary setObject:v175 forKeyedSubscript:@"_payloadChargingConnectorType"];
  }

  if ([*(v2 + 1720) count])
  {
    array15 = [MEMORY[0x1E695DF70] array];
    v1313 = 0u;
    v1314 = 0u;
    v1315 = 0u;
    v1316 = 0u;
    v177 = *(v2 + 1720);
    v178 = [v177 countByEnumeratingWithState:&v1313 objects:v1457 count:16];
    if (v178)
    {
      v179 = v178;
      v180 = *v1314;
      do
      {
        for (i5 = 0; i5 != v179; ++i5)
        {
          if (*v1314 != v180)
          {
            objc_enumerationMutation(v177);
          }

          dictionaryRepresentation15 = [*(*(&v1313 + 1) + 8 * i5) dictionaryRepresentation];
          [array15 addObject:dictionaryRepresentation15];
        }

        v179 = [v177 countByEnumeratingWithState:&v1313 objects:v1457 count:16];
      }

      while (v179);
    }

    [dictionary setObject:array15 forKeyedSubscript:@"_payloadContactEventTrigger"];
  }

  if ([*(v2 + 1728) count])
  {
    array16 = [MEMORY[0x1E695DF70] array];
    v1309 = 0u;
    v1310 = 0u;
    v1311 = 0u;
    v1312 = 0u;
    v184 = *(v2 + 1728);
    v185 = [v184 countByEnumeratingWithState:&v1309 objects:v1456 count:16];
    if (v185)
    {
      v186 = v185;
      v187 = *v1310;
      do
      {
        for (i6 = 0; i6 != v186; ++i6)
        {
          if (*v1310 != v187)
          {
            objc_enumerationMutation(v184);
          }

          dictionaryRepresentation16 = [*(*(&v1309 + 1) + 8 * i6) dictionaryRepresentation];
          [array16 addObject:dictionaryRepresentation16];
        }

        v186 = [v184 countByEnumeratingWithState:&v1309 objects:v1456 count:16];
      }

      while (v186);
    }

    [dictionary setObject:array16 forKeyedSubscript:@"_payloadContactList"];
  }

  if ([*(v2 + 1736) count])
  {
    array17 = [MEMORY[0x1E695DF70] array];
    v1305 = 0u;
    v1306 = 0u;
    v1307 = 0u;
    v1308 = 0u;
    v191 = *(v2 + 1736);
    v192 = [v191 countByEnumeratingWithState:&v1305 objects:v1455 count:16];
    if (v192)
    {
      v193 = v192;
      v194 = *v1306;
      do
      {
        for (i7 = 0; i7 != v193; ++i7)
        {
          if (*v1306 != v194)
          {
            objc_enumerationMutation(v191);
          }

          dictionaryRepresentation17 = [*(*(&v1305 + 1) + 8 * i7) dictionaryRepresentation];
          [array17 addObject:dictionaryRepresentation17];
        }

        v193 = [v191 countByEnumeratingWithState:&v1305 objects:v1455 count:16];
      }

      while (v193);
    }

    [dictionary setObject:array17 forKeyedSubscript:@"_payloadContactValue"];
  }

  if ([*(v2 + 1744) count])
  {
    array18 = [MEMORY[0x1E695DF70] array];
    v1301 = 0u;
    v1302 = 0u;
    v1303 = 0u;
    v1304 = 0u;
    v198 = *(v2 + 1744);
    v199 = [v198 countByEnumeratingWithState:&v1301 objects:v1454 count:16];
    if (v199)
    {
      v200 = v199;
      v201 = *v1302;
      do
      {
        for (i8 = 0; i8 != v200; ++i8)
        {
          if (*v1302 != v201)
          {
            objc_enumerationMutation(v198);
          }

          dictionaryRepresentation18 = [*(*(&v1301 + 1) + 8 * i8) dictionaryRepresentation];
          [array18 addObject:dictionaryRepresentation18];
        }

        v200 = [v198 countByEnumeratingWithState:&v1301 objects:v1454 count:16];
      }

      while (v200);
    }

    [dictionary setObject:array18 forKeyedSubscript:@"_payloadCurrencyAmount"];
  }

  if ([*(v2 + 1752) count])
  {
    array19 = [MEMORY[0x1E695DF70] array];
    v1297 = 0u;
    v1298 = 0u;
    v1299 = 0u;
    v1300 = 0u;
    v205 = *(v2 + 1752);
    v206 = [v205 countByEnumeratingWithState:&v1297 objects:v1453 count:16];
    if (v206)
    {
      v207 = v206;
      v208 = *v1298;
      do
      {
        for (i9 = 0; i9 != v207; ++i9)
        {
          if (*v1298 != v208)
          {
            objc_enumerationMutation(v205);
          }

          dictionaryRepresentation19 = [*(*(&v1297 + 1) + 8 * i9) dictionaryRepresentation];
          [array19 addObject:dictionaryRepresentation19];
        }

        v207 = [v205 countByEnumeratingWithState:&v1297 objects:v1453 count:16];
      }

      while (v207);
    }

    [dictionary setObject:array19 forKeyedSubscript:@"_payloadCustomObject"];
  }

  if ([*(v2 + 1760) count])
  {
    array20 = [MEMORY[0x1E695DF70] array];
    v1293 = 0u;
    v1294 = 0u;
    v1295 = 0u;
    v1296 = 0u;
    v212 = *(v2 + 1760);
    v213 = [v212 countByEnumeratingWithState:&v1293 objects:v1452 count:16];
    if (v213)
    {
      v214 = v213;
      v215 = *v1294;
      do
      {
        for (i10 = 0; i10 != v214; ++i10)
        {
          if (*v1294 != v215)
          {
            objc_enumerationMutation(v212);
          }

          dictionaryRepresentation20 = [*(*(&v1293 + 1) + 8 * i10) dictionaryRepresentation];
          [array20 addObject:dictionaryRepresentation20];
        }

        v214 = [v212 countByEnumeratingWithState:&v1293 objects:v1452 count:16];
      }

      while (v214);
    }

    [dictionary setObject:array20 forKeyedSubscript:@"_payloadDataString"];
  }

  if ([*(v2 + 1768) count])
  {
    array21 = [MEMORY[0x1E695DF70] array];
    v1289 = 0u;
    v1290 = 0u;
    v1291 = 0u;
    v1292 = 0u;
    v219 = *(v2 + 1768);
    v220 = [v219 countByEnumeratingWithState:&v1289 objects:v1451 count:16];
    if (v220)
    {
      v221 = v220;
      v222 = *v1290;
      do
      {
        for (i11 = 0; i11 != v221; ++i11)
        {
          if (*v1290 != v222)
          {
            objc_enumerationMutation(v219);
          }

          dictionaryRepresentation21 = [*(*(&v1289 + 1) + 8 * i11) dictionaryRepresentation];
          [array21 addObject:dictionaryRepresentation21];
        }

        v221 = [v219 countByEnumeratingWithState:&v1289 objects:v1451 count:16];
      }

      while (v221);
    }

    [dictionary setObject:array21 forKeyedSubscript:@"_payloadDataStringList"];
  }

  if (*(v2 + 448))
  {
    v225 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadDateSearchTypesCount")}];
    if ([v2 payloadDateSearchTypesCount])
    {
      for (i12 = 0; i12 < [v2 payloadDateSearchTypesCount]; ++i12)
      {
        v227 = *(*(v2 + 440) + 4 * i12);
        if (v227 > 19)
        {
          if (v227 == 20)
          {
            v228 = @"BY_MODIFIED_DATE";
            goto LABEL_357;
          }

          if (v227 != 30)
          {
            goto LABEL_354;
          }

          v228 = @"BY_CREATED_DATE";
        }

        else
        {
          if (!v227)
          {
            v228 = @"UNKNOWN_DATE_SEARCH_TYPE";
            goto LABEL_357;
          }

          if (v227 != 10)
          {
LABEL_354:
            v228 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 440) + 4 * i12)];
            goto LABEL_357;
          }

          v228 = @"BY_DUE_DATE";
        }

LABEL_357:
        [v225 addObject:v228];
      }
    }

    [dictionary setObject:v225 forKeyedSubscript:@"_payloadDateSearchType"];
  }

  if ([*(v2 + 1776) count])
  {
    array22 = [MEMORY[0x1E695DF70] array];
    v1285 = 0u;
    v1286 = 0u;
    v1287 = 0u;
    v1288 = 0u;
    v230 = *(v2 + 1776);
    v231 = [v230 countByEnumeratingWithState:&v1285 objects:v1450 count:16];
    if (v231)
    {
      v232 = v231;
      v233 = *v1286;
      do
      {
        for (i13 = 0; i13 != v232; ++i13)
        {
          if (*v1286 != v233)
          {
            objc_enumerationMutation(v230);
          }

          dictionaryRepresentation22 = [*(*(&v1285 + 1) + 8 * i13) dictionaryRepresentation];
          [array22 addObject:dictionaryRepresentation22];
        }

        v232 = [v230 countByEnumeratingWithState:&v1285 objects:v1450 count:16];
      }

      while (v232);
    }

    [dictionary setObject:array22 forKeyedSubscript:@"_payloadDateTimeRangeList"];
  }

  if ([*(v2 + 1784) count])
  {
    array23 = [MEMORY[0x1E695DF70] array];
    v1281 = 0u;
    v1282 = 0u;
    v1283 = 0u;
    v1284 = 0u;
    v237 = *(v2 + 1784);
    v238 = [v237 countByEnumeratingWithState:&v1281 objects:v1449 count:16];
    if (v238)
    {
      v239 = v238;
      v240 = *v1282;
      do
      {
        for (i14 = 0; i14 != v239; ++i14)
        {
          if (*v1282 != v240)
          {
            objc_enumerationMutation(v237);
          }

          dictionaryRepresentation23 = [*(*(&v1281 + 1) + 8 * i14) dictionaryRepresentation];
          [array23 addObject:dictionaryRepresentation23];
        }

        v239 = [v237 countByEnumeratingWithState:&v1281 objects:v1449 count:16];
      }

      while (v239);
    }

    [dictionary setObject:array23 forKeyedSubscript:@"_payloadDateTimeRangeValue"];
  }

  if ([*(v2 + 1792) count])
  {
    array24 = [MEMORY[0x1E695DF70] array];
    v1277 = 0u;
    v1278 = 0u;
    v1279 = 0u;
    v1280 = 0u;
    v244 = *(v2 + 1792);
    v245 = [v244 countByEnumeratingWithState:&v1277 objects:v1448 count:16];
    if (v245)
    {
      v246 = v245;
      v247 = *v1278;
      do
      {
        for (i15 = 0; i15 != v246; ++i15)
        {
          if (*v1278 != v247)
          {
            objc_enumerationMutation(v244);
          }

          dictionaryRepresentation24 = [*(*(&v1277 + 1) + 8 * i15) dictionaryRepresentation];
          [array24 addObject:dictionaryRepresentation24];
        }

        v246 = [v244 countByEnumeratingWithState:&v1277 objects:v1448 count:16];
      }

      while (v246);
    }

    [dictionary setObject:array24 forKeyedSubscript:@"_payloadDateTimeValue"];
  }

  if ([*(v2 + 1800) count])
  {
    array25 = [MEMORY[0x1E695DF70] array];
    v1273 = 0u;
    v1274 = 0u;
    v1275 = 0u;
    v1276 = 0u;
    v251 = *(v2 + 1800);
    v252 = [v251 countByEnumeratingWithState:&v1273 objects:v1447 count:16];
    if (v252)
    {
      v253 = v252;
      v254 = *v1274;
      do
      {
        for (i16 = 0; i16 != v253; ++i16)
        {
          if (*v1274 != v254)
          {
            objc_enumerationMutation(v251);
          }

          dictionaryRepresentation25 = [*(*(&v1273 + 1) + 8 * i16) dictionaryRepresentation];
          [array25 addObject:dictionaryRepresentation25];
        }

        v253 = [v251 countByEnumeratingWithState:&v1273 objects:v1447 count:16];
      }

      while (v253);
    }

    [dictionary setObject:array25 forKeyedSubscript:@"_payloadDevice"];
  }

  if ([*(v2 + 1808) count])
  {
    array26 = [MEMORY[0x1E695DF70] array];
    v1269 = 0u;
    v1270 = 0u;
    v1271 = 0u;
    v1272 = 0u;
    v258 = *(v2 + 1808);
    v259 = [v258 countByEnumeratingWithState:&v1269 objects:v1446 count:16];
    if (v259)
    {
      v260 = v259;
      v261 = *v1270;
      do
      {
        for (i17 = 0; i17 != v260; ++i17)
        {
          if (*v1270 != v261)
          {
            objc_enumerationMutation(v258);
          }

          dictionaryRepresentation26 = [*(*(&v1269 + 1) + 8 * i17) dictionaryRepresentation];
          [array26 addObject:dictionaryRepresentation26];
        }

        v260 = [v258 countByEnumeratingWithState:&v1269 objects:v1446 count:16];
      }

      while (v260);
    }

    [dictionary setObject:array26 forKeyedSubscript:@"_payloadDeviceDetail"];
  }

  if (*(v2 + 472))
  {
    v264 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadDeviceTypesCount")}];
    if ([v2 payloadDeviceTypesCount])
    {
      v265 = 0;
      do
      {
        v266 = *(*(v2 + 464) + 4 * v265);
        if (v266 >= 0xC)
        {
          v267 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 464) + 4 * v265)];
        }

        else
        {
          v267 = *(&off_1E7284580 + v266);
        }

        [v264 addObject:v267];

        ++v265;
      }

      while (v265 < [v2 payloadDeviceTypesCount]);
    }

    [dictionary setObject:v264 forKeyedSubscript:@"_payloadDeviceType"];
  }

  if ([*(v2 + 1816) count])
  {
    array27 = [MEMORY[0x1E695DF70] array];
    v1265 = 0u;
    v1266 = 0u;
    v1267 = 0u;
    v1268 = 0u;
    v269 = *(v2 + 1816);
    v270 = [v269 countByEnumeratingWithState:&v1265 objects:v1445 count:16];
    if (v270)
    {
      v271 = v270;
      v272 = *v1266;
      do
      {
        for (i18 = 0; i18 != v271; ++i18)
        {
          if (*v1266 != v272)
          {
            objc_enumerationMutation(v269);
          }

          dictionaryRepresentation27 = [*(*(&v1265 + 1) + 8 * i18) dictionaryRepresentation];
          [array27 addObject:dictionaryRepresentation27];
        }

        v271 = [v269 countByEnumeratingWithState:&v1265 objects:v1445 count:16];
      }

      while (v271);
    }

    [dictionary setObject:array27 forKeyedSubscript:@"_payloadDialingContact"];
  }

  if ([*(v2 + 1824) count])
  {
    array28 = [MEMORY[0x1E695DF70] array];
    v1261 = 0u;
    v1262 = 0u;
    v1263 = 0u;
    v1264 = 0u;
    v276 = *(v2 + 1824);
    v277 = [v276 countByEnumeratingWithState:&v1261 objects:v1444 count:16];
    if (v277)
    {
      v278 = v277;
      v279 = *v1262;
      do
      {
        for (i19 = 0; i19 != v278; ++i19)
        {
          if (*v1262 != v279)
          {
            objc_enumerationMutation(v276);
          }

          dictionaryRepresentation28 = [*(*(&v1261 + 1) + 8 * i19) dictionaryRepresentation];
          [array28 addObject:dictionaryRepresentation28];
        }

        v278 = [v276 countByEnumeratingWithState:&v1261 objects:v1444 count:16];
      }

      while (v278);
    }

    [dictionary setObject:array28 forKeyedSubscript:@"_payloadDistanceList"];
  }

  if ([*(v2 + 1832) count])
  {
    array29 = [MEMORY[0x1E695DF70] array];
    v1257 = 0u;
    v1258 = 0u;
    v1259 = 0u;
    v1260 = 0u;
    v283 = *(v2 + 1832);
    v284 = [v283 countByEnumeratingWithState:&v1257 objects:v1443 count:16];
    if (v284)
    {
      v285 = v284;
      v286 = *v1258;
      do
      {
        for (i20 = 0; i20 != v285; ++i20)
        {
          if (*v1258 != v286)
          {
            objc_enumerationMutation(v283);
          }

          dictionaryRepresentation29 = [*(*(&v1257 + 1) + 8 * i20) dictionaryRepresentation];
          [array29 addObject:dictionaryRepresentation29];
        }

        v285 = [v283 countByEnumeratingWithState:&v1257 objects:v1443 count:16];
      }

      while (v285);
    }

    [dictionary setObject:array29 forKeyedSubscript:@"_payloadDistanceValue"];
  }

  if ([*(v2 + 1840) count])
  {
    array30 = [MEMORY[0x1E695DF70] array];
    v1253 = 0u;
    v1254 = 0u;
    v1255 = 0u;
    v1256 = 0u;
    v290 = *(v2 + 1840);
    v291 = [v290 countByEnumeratingWithState:&v1253 objects:v1442 count:16];
    if (v291)
    {
      v292 = v291;
      v293 = *v1254;
      do
      {
        for (i21 = 0; i21 != v292; ++i21)
        {
          if (*v1254 != v293)
          {
            objc_enumerationMutation(v290);
          }

          dictionaryRepresentation30 = [*(*(&v1253 + 1) + 8 * i21) dictionaryRepresentation];
          [array30 addObject:dictionaryRepresentation30];
        }

        v292 = [v290 countByEnumeratingWithState:&v1253 objects:v1442 count:16];
      }

      while (v292);
    }

    [dictionary setObject:array30 forKeyedSubscript:@"_payloadDoubleList"];
  }

  if ([*(v2 + 1848) count])
  {
    array31 = [MEMORY[0x1E695DF70] array];
    v1249 = 0u;
    v1250 = 0u;
    v1251 = 0u;
    v1252 = 0u;
    v297 = *(v2 + 1848);
    v298 = [v297 countByEnumeratingWithState:&v1249 objects:v1441 count:16];
    if (v298)
    {
      v299 = v298;
      v300 = *v1250;
      do
      {
        for (i22 = 0; i22 != v299; ++i22)
        {
          if (*v1250 != v300)
          {
            objc_enumerationMutation(v297);
          }

          dictionaryRepresentation31 = [*(*(&v1249 + 1) + 8 * i22) dictionaryRepresentation];
          [array31 addObject:dictionaryRepresentation31];
        }

        v299 = [v297 countByEnumeratingWithState:&v1249 objects:v1441 count:16];
      }

      while (v299);
    }

    [dictionary setObject:array31 forKeyedSubscript:@"_payloadDoubleValue"];
  }

  if ([*(v2 + 1856) count])
  {
    array32 = [MEMORY[0x1E695DF70] array];
    v1245 = 0u;
    v1246 = 0u;
    v1247 = 0u;
    v1248 = 0u;
    v304 = *(v2 + 1856);
    v305 = [v304 countByEnumeratingWithState:&v1245 objects:v1440 count:16];
    if (v305)
    {
      v306 = v305;
      v307 = *v1246;
      do
      {
        for (i23 = 0; i23 != v306; ++i23)
        {
          if (*v1246 != v307)
          {
            objc_enumerationMutation(v304);
          }

          dictionaryRepresentation32 = [*(*(&v1245 + 1) + 8 * i23) dictionaryRepresentation];
          [array32 addObject:dictionaryRepresentation32];
        }

        v306 = [v304 countByEnumeratingWithState:&v1245 objects:v1440 count:16];
      }

      while (v306);
    }

    [dictionary setObject:array32 forKeyedSubscript:@"_payloadEnergyValue"];
  }

  if ([*(v2 + 1864) count])
  {
    payloadEnumerations = [v2 payloadEnumerations];
    v311 = [payloadEnumerations copy];
    [dictionary setObject:v311 forKeyedSubscript:@"_payloadEnumeration"];
  }

  if ([*(v2 + 1872) count])
  {
    array33 = [MEMORY[0x1E695DF70] array];
    v1241 = 0u;
    v1242 = 0u;
    v1243 = 0u;
    v1244 = 0u;
    v313 = *(v2 + 1872);
    v314 = [v313 countByEnumeratingWithState:&v1241 objects:v1439 count:16];
    if (v314)
    {
      v315 = v314;
      v316 = *v1242;
      do
      {
        for (i24 = 0; i24 != v315; ++i24)
        {
          if (*v1242 != v316)
          {
            objc_enumerationMutation(v313);
          }

          dictionaryRepresentation33 = [*(*(&v1241 + 1) + 8 * i24) dictionaryRepresentation];
          [array33 addObject:dictionaryRepresentation33];
        }

        v315 = [v313 countByEnumeratingWithState:&v1241 objects:v1439 count:16];
      }

      while (v315);
    }

    [dictionary setObject:array33 forKeyedSubscript:@"_payloadEvent"];
  }

  if (*(v2 + 496))
  {
    v319 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadEventAttributesCount")}];
    if ([v2 payloadEventAttributesCount])
    {
      v320 = 0;
      do
      {
        v321 = *(*(v2 + 488) + 4 * v320) - 1;
        if (v321 >= 3)
        {
          v322 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 488) + 4 * v320)];
        }

        else
        {
          v322 = *(&off_1E72845E0 + v321);
        }

        [v319 addObject:v322];

        ++v320;
      }

      while (v320 < [v2 payloadEventAttributesCount]);
    }

    [dictionary setObject:v319 forKeyedSubscript:@"_payloadEventAttribute"];
  }

  if ([*(v2 + 1880) count])
  {
    array34 = [MEMORY[0x1E695DF70] array];
    v1237 = 0u;
    v1238 = 0u;
    v1239 = 0u;
    v1240 = 0u;
    v324 = *(v2 + 1880);
    v325 = [v324 countByEnumeratingWithState:&v1237 objects:v1438 count:16];
    if (v325)
    {
      v326 = v325;
      v327 = *v1238;
      do
      {
        for (i25 = 0; i25 != v326; ++i25)
        {
          if (*v1238 != v327)
          {
            objc_enumerationMutation(v324);
          }

          dictionaryRepresentation34 = [*(*(&v1237 + 1) + 8 * i25) dictionaryRepresentation];
          [array34 addObject:dictionaryRepresentation34];
        }

        v326 = [v324 countByEnumeratingWithState:&v1237 objects:v1438 count:16];
      }

      while (v326);
    }

    [dictionary setObject:array34 forKeyedSubscript:@"_payloadEventList"];
  }

  if ([*(v2 + 1888) count])
  {
    array35 = [MEMORY[0x1E695DF70] array];
    v1233 = 0u;
    v1234 = 0u;
    v1235 = 0u;
    v1236 = 0u;
    v331 = *(v2 + 1888);
    v332 = [v331 countByEnumeratingWithState:&v1233 objects:v1437 count:16];
    if (v332)
    {
      v333 = v332;
      v334 = *v1234;
      do
      {
        for (i26 = 0; i26 != v333; ++i26)
        {
          if (*v1234 != v334)
          {
            objc_enumerationMutation(v331);
          }

          dictionaryRepresentation35 = [*(*(&v1233 + 1) + 8 * i26) dictionaryRepresentation];
          [array35 addObject:dictionaryRepresentation35];
        }

        v333 = [v331 countByEnumeratingWithState:&v1233 objects:v1437 count:16];
      }

      while (v333);
    }

    [dictionary setObject:array35 forKeyedSubscript:@"_payloadEventParticipant"];
  }

  if ([*(v2 + 1896) count])
  {
    array36 = [MEMORY[0x1E695DF70] array];
    v1229 = 0u;
    v1230 = 0u;
    v1231 = 0u;
    v1232 = 0u;
    v338 = *(v2 + 1896);
    v339 = [v338 countByEnumeratingWithState:&v1229 objects:v1436 count:16];
    if (v339)
    {
      v340 = v339;
      v341 = *v1230;
      do
      {
        for (i27 = 0; i27 != v340; ++i27)
        {
          if (*v1230 != v341)
          {
            objc_enumerationMutation(v338);
          }

          dictionaryRepresentation36 = [*(*(&v1229 + 1) + 8 * i27) dictionaryRepresentation];
          [array36 addObject:dictionaryRepresentation36];
        }

        v340 = [v338 countByEnumeratingWithState:&v1229 objects:v1436 count:16];
      }

      while (v340);
    }

    [dictionary setObject:array36 forKeyedSubscript:@"_payloadFile"];
  }

  if (*(v2 + 520))
  {
    v344 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadFileEntityTypesCount")}];
    if ([v2 payloadFileEntityTypesCount])
    {
      v345 = 0;
      do
      {
        v346 = *(*(v2 + 512) + 4 * v345);
        if (v346 >= 4)
        {
          v347 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 512) + 4 * v345)];
        }

        else
        {
          v347 = *(&off_1E72845F8 + v346);
        }

        [v344 addObject:v347];

        ++v345;
      }

      while (v345 < [v2 payloadFileEntityTypesCount]);
    }

    [dictionary setObject:v344 forKeyedSubscript:@"_payloadFileEntityType"];
  }

  if ([*(v2 + 1904) count])
  {
    array37 = [MEMORY[0x1E695DF70] array];
    v1225 = 0u;
    v1226 = 0u;
    v1227 = 0u;
    v1228 = 0u;
    v349 = *(v2 + 1904);
    v350 = [v349 countByEnumeratingWithState:&v1225 objects:v1435 count:16];
    if (v350)
    {
      v351 = v350;
      v352 = *v1226;
      do
      {
        for (i28 = 0; i28 != v351; ++i28)
        {
          if (*v1226 != v352)
          {
            objc_enumerationMutation(v349);
          }

          dictionaryRepresentation37 = [*(*(&v1225 + 1) + 8 * i28) dictionaryRepresentation];
          [array37 addObject:dictionaryRepresentation37];
        }

        v351 = [v349 countByEnumeratingWithState:&v1225 objects:v1435 count:16];
      }

      while (v351);
    }

    [dictionary setObject:array37 forKeyedSubscript:@"_payloadFileProperty"];
  }

  if (*(v2 + 544))
  {
    v355 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadFilePropertyNamesCount")}];
    if ([v2 payloadFilePropertyNamesCount])
    {
      v356 = 0;
      do
      {
        v357 = *(*(v2 + 536) + 4 * v356);
        if (v357 >= 0xC)
        {
          v358 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 536) + 4 * v356)];
        }

        else
        {
          v358 = *(&off_1E7284618 + v357);
        }

        [v355 addObject:v358];

        ++v356;
      }

      while (v356 < [v2 payloadFilePropertyNamesCount]);
    }

    [dictionary setObject:v355 forKeyedSubscript:@"_payloadFilePropertyName"];
  }

  if (*(v2 + 568))
  {
    v359 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadFilePropertyQualifiersCount")}];
    if ([v2 payloadFilePropertyQualifiersCount])
    {
      v360 = 0;
      do
      {
        v361 = *(*(v2 + 560) + 4 * v360);
        if (v361 >= 5)
        {
          v362 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 560) + 4 * v360)];
        }

        else
        {
          v362 = *(&off_1E7284678 + v361);
        }

        [v359 addObject:v362];

        ++v360;
      }

      while (v360 < [v2 payloadFilePropertyQualifiersCount]);
    }

    [dictionary setObject:v359 forKeyedSubscript:@"_payloadFilePropertyQualifier"];
  }

  if ([*(v2 + 1912) count])
  {
    array38 = [MEMORY[0x1E695DF70] array];
    v1221 = 0u;
    v1222 = 0u;
    v1223 = 0u;
    v1224 = 0u;
    v364 = *(v2 + 1912);
    v365 = [v364 countByEnumeratingWithState:&v1221 objects:v1434 count:16];
    if (v365)
    {
      v366 = v365;
      v367 = *v1222;
      do
      {
        for (i29 = 0; i29 != v366; ++i29)
        {
          if (*v1222 != v367)
          {
            objc_enumerationMutation(v364);
          }

          dictionaryRepresentation38 = [*(*(&v1221 + 1) + 8 * i29) dictionaryRepresentation];
          [array38 addObject:dictionaryRepresentation38];
        }

        v366 = [v364 countByEnumeratingWithState:&v1221 objects:v1434 count:16];
      }

      while (v366);
    }

    [dictionary setObject:array38 forKeyedSubscript:@"_payloadFilePropertyValue"];
  }

  if (*(v2 + 592))
  {
    v370 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadFileSearchScopesCount")}];
    if ([v2 payloadFileSearchScopesCount])
    {
      v371 = 0;
      do
      {
        v372 = *(*(v2 + 584) + 4 * v371);
        if (v372 >= 3)
        {
          v373 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 584) + 4 * v371)];
        }

        else
        {
          v373 = *(&off_1E72846A0 + v372);
        }

        [v370 addObject:v373];

        ++v371;
      }

      while (v371 < [v2 payloadFileSearchScopesCount]);
    }

    [dictionary setObject:v370 forKeyedSubscript:@"_payloadFileSearchScope"];
  }

  if (*(v2 + 616))
  {
    v374 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadFileShareModesCount")}];
    if ([v2 payloadFileShareModesCount])
    {
      v375 = 0;
      do
      {
        v376 = *(*(v2 + 608) + 4 * v375);
        if (v376 >= 3)
        {
          v377 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 608) + 4 * v375)];
        }

        else
        {
          v377 = *(&off_1E72846B8 + v376);
        }

        [v374 addObject:v377];

        ++v375;
      }

      while (v375 < [v2 payloadFileShareModesCount]);
    }

    [dictionary setObject:v374 forKeyedSubscript:@"_payloadFileShareMode"];
  }

  if (*(v2 + 640))
  {
    v378 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadFileTypesCount")}];
    if ([v2 payloadFileTypesCount])
    {
      v379 = 0;
      do
      {
        v380 = *(*(v2 + 632) + 4 * v379);
        if (v380 >= 0xB)
        {
          v381 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 632) + 4 * v379)];
        }

        else
        {
          v381 = *(&off_1E72846D0 + v380);
        }

        [v378 addObject:v381];

        ++v379;
      }

      while (v379 < [v2 payloadFileTypesCount]);
    }

    [dictionary setObject:v378 forKeyedSubscript:@"_payloadFileType"];
  }

  if ([*(v2 + 1920) count])
  {
    array39 = [MEMORY[0x1E695DF70] array];
    v1217 = 0u;
    v1218 = 0u;
    v1219 = 0u;
    v1220 = 0u;
    v383 = *(v2 + 1920);
    v384 = [v383 countByEnumeratingWithState:&v1217 objects:v1433 count:16];
    if (v384)
    {
      v385 = v384;
      v386 = *v1218;
      do
      {
        for (i30 = 0; i30 != v385; ++i30)
        {
          if (*v1218 != v386)
          {
            objc_enumerationMutation(v383);
          }

          dictionaryRepresentation39 = [*(*(&v1217 + 1) + 8 * i30) dictionaryRepresentation];
          [array39 addObject:dictionaryRepresentation39];
        }

        v385 = [v383 countByEnumeratingWithState:&v1217 objects:v1433 count:16];
      }

      while (v385);
    }

    [dictionary setObject:array39 forKeyedSubscript:@"_payloadFinancialAccountValue"];
  }

  if ([*(v2 + 1928) count])
  {
    array40 = [MEMORY[0x1E695DF70] array];
    v1213 = 0u;
    v1214 = 0u;
    v1215 = 0u;
    v1216 = 0u;
    v390 = *(v2 + 1928);
    v391 = [v390 countByEnumeratingWithState:&v1213 objects:v1432 count:16];
    if (v391)
    {
      v392 = v391;
      v393 = *v1214;
      do
      {
        for (i31 = 0; i31 != v392; ++i31)
        {
          if (*v1214 != v393)
          {
            objc_enumerationMutation(v390);
          }

          dictionaryRepresentation40 = [*(*(&v1213 + 1) + 8 * i31) dictionaryRepresentation];
          [array40 addObject:dictionaryRepresentation40];
        }

        v392 = [v390 countByEnumeratingWithState:&v1213 objects:v1432 count:16];
      }

      while (v392);
    }

    [dictionary setObject:array40 forKeyedSubscript:@"_payloadGeographicalFeature"];
  }

  if ([*(v2 + 1936) count])
  {
    array41 = [MEMORY[0x1E695DF70] array];
    v1209 = 0u;
    v1210 = 0u;
    v1211 = 0u;
    v1212 = 0u;
    v397 = *(v2 + 1936);
    v398 = [v397 countByEnumeratingWithState:&v1209 objects:v1431 count:16];
    if (v398)
    {
      v399 = v398;
      v400 = *v1210;
      do
      {
        for (i32 = 0; i32 != v399; ++i32)
        {
          if (*v1210 != v400)
          {
            objc_enumerationMutation(v397);
          }

          dictionaryRepresentation41 = [*(*(&v1209 + 1) + 8 * i32) dictionaryRepresentation];
          [array41 addObject:dictionaryRepresentation41];
        }

        v399 = [v397 countByEnumeratingWithState:&v1209 objects:v1431 count:16];
      }

      while (v399);
    }

    [dictionary setObject:array41 forKeyedSubscript:@"_payloadGeographicalFeatureList"];
  }

  if ([*(v2 + 1944) count])
  {
    array42 = [MEMORY[0x1E695DF70] array];
    v1205 = 0u;
    v1206 = 0u;
    v1207 = 0u;
    v1208 = 0u;
    v404 = *(v2 + 1944);
    v405 = [v404 countByEnumeratingWithState:&v1205 objects:v1430 count:16];
    if (v405)
    {
      v406 = v405;
      v407 = *v1206;
      do
      {
        for (i33 = 0; i33 != v406; ++i33)
        {
          if (*v1206 != v407)
          {
            objc_enumerationMutation(v404);
          }

          dictionaryRepresentation42 = [*(*(&v1205 + 1) + 8 * i33) dictionaryRepresentation];
          [array42 addObject:dictionaryRepresentation42];
        }

        v406 = [v404 countByEnumeratingWithState:&v1205 objects:v1430 count:16];
      }

      while (v406);
    }

    [dictionary setObject:array42 forKeyedSubscript:@"_payloadGetSettingResponseData"];
  }

  if ([*(v2 + 1952) count])
  {
    array43 = [MEMORY[0x1E695DF70] array];
    v1201 = 0u;
    v1202 = 0u;
    v1203 = 0u;
    v1204 = 0u;
    v411 = *(v2 + 1952);
    v412 = [v411 countByEnumeratingWithState:&v1201 objects:v1429 count:16];
    if (v412)
    {
      v413 = v412;
      v414 = *v1202;
      do
      {
        for (i34 = 0; i34 != v413; ++i34)
        {
          if (*v1202 != v414)
          {
            objc_enumerationMutation(v411);
          }

          dictionaryRepresentation43 = [*(*(&v1201 + 1) + 8 * i34) dictionaryRepresentation];
          [array43 addObject:dictionaryRepresentation43];
        }

        v413 = [v411 countByEnumeratingWithState:&v1201 objects:v1429 count:16];
      }

      while (v413);
    }

    [dictionary setObject:array43 forKeyedSubscript:@"_payloadHomeAttribute"];
  }

  if (*(v2 + 664))
  {
    v417 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadHomeAttributeTypesCount")}];
    if ([v2 payloadHomeAttributeTypesCount])
    {
      v418 = 0;
      do
      {
        v419 = *(*(v2 + 656) + 4 * v418);
        if (v419 >= 0x42)
        {
          v420 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 656) + 4 * v418)];
        }

        else
        {
          v420 = *(&off_1E7284728 + v419);
        }

        [v417 addObject:v420];

        ++v418;
      }

      while (v418 < [v2 payloadHomeAttributeTypesCount]);
    }

    [dictionary setObject:v417 forKeyedSubscript:@"_payloadHomeAttributeType"];
  }

  if ([*(v2 + 1960) count])
  {
    array44 = [MEMORY[0x1E695DF70] array];
    v1197 = 0u;
    v1198 = 0u;
    v1199 = 0u;
    v1200 = 0u;
    v422 = *(v2 + 1960);
    v423 = [v422 countByEnumeratingWithState:&v1197 objects:v1428 count:16];
    if (v423)
    {
      v424 = v423;
      v425 = *v1198;
      do
      {
        for (i35 = 0; i35 != v424; ++i35)
        {
          if (*v1198 != v425)
          {
            objc_enumerationMutation(v422);
          }

          dictionaryRepresentation44 = [*(*(&v1197 + 1) + 8 * i35) dictionaryRepresentation];
          [array44 addObject:dictionaryRepresentation44];
        }

        v424 = [v422 countByEnumeratingWithState:&v1197 objects:v1428 count:16];
      }

      while (v424);
    }

    [dictionary setObject:array44 forKeyedSubscript:@"_payloadHomeAttributeValue"];
  }

  if (*(v2 + 688))
  {
    v428 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadHomeAttributeValueTypesCount")}];
    if ([v2 payloadHomeAttributeValueTypesCount])
    {
      v429 = 0;
      do
      {
        v430 = *(*(v2 + 680) + 4 * v429);
        if (v430 >= 6)
        {
          v431 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 680) + 4 * v429)];
        }

        else
        {
          v431 = *(&off_1E7284938 + v430);
        }

        [v428 addObject:v431];

        ++v429;
      }

      while (v429 < [v2 payloadHomeAttributeValueTypesCount]);
    }

    [dictionary setObject:v428 forKeyedSubscript:@"_payloadHomeAttributeValueType"];
  }

  if (*(v2 + 712))
  {
    v432 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadHomeDeviceTypesCount")}];
    if ([v2 payloadHomeDeviceTypesCount])
    {
      v433 = 0;
      do
      {
        v434 = *(*(v2 + 704) + 4 * v433);
        if (v434 < 0x32 && ((0x3FFFFF79FFEEFuLL >> v434) & 1) != 0)
        {
          v435 = *(&off_1E7284968 + v434);
        }

        else
        {
          v435 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 704) + 4 * v433)];
        }

        [v432 addObject:v435];

        ++v433;
      }

      while (v433 < [v2 payloadHomeDeviceTypesCount]);
    }

    [dictionary setObject:v432 forKeyedSubscript:@"_payloadHomeDeviceType"];
  }

  if ([*(v2 + 1968) count])
  {
    array45 = [MEMORY[0x1E695DF70] array];
    v1193 = 0u;
    v1194 = 0u;
    v1195 = 0u;
    v1196 = 0u;
    v437 = *(v2 + 1968);
    v438 = [v437 countByEnumeratingWithState:&v1193 objects:v1427 count:16];
    if (v438)
    {
      v439 = v438;
      v440 = *v1194;
      do
      {
        for (i36 = 0; i36 != v439; ++i36)
        {
          if (*v1194 != v440)
          {
            objc_enumerationMutation(v437);
          }

          dictionaryRepresentation45 = [*(*(&v1193 + 1) + 8 * i36) dictionaryRepresentation];
          [array45 addObject:dictionaryRepresentation45];
        }

        v439 = [v437 countByEnumeratingWithState:&v1193 objects:v1427 count:16];
      }

      while (v439);
    }

    [dictionary setObject:array45 forKeyedSubscript:@"_payloadHomeEntity"];
  }

  if (*(v2 + 736))
  {
    v443 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadHomeEntityTypesCount")}];
    if ([v2 payloadHomeEntityTypesCount])
    {
      v444 = 0;
      do
      {
        v445 = *(*(v2 + 728) + 4 * v444);
        if (v445 >= 7)
        {
          v446 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 728) + 4 * v444)];
        }

        else
        {
          v446 = *(&off_1E7284AF8 + v445);
        }

        [v443 addObject:v446];

        ++v444;
      }

      while (v444 < [v2 payloadHomeEntityTypesCount]);
    }

    [dictionary setObject:v443 forKeyedSubscript:@"_payloadHomeEntityType"];
  }

  if ([*(v2 + 1976) count])
  {
    array46 = [MEMORY[0x1E695DF70] array];
    v1189 = 0u;
    v1190 = 0u;
    v1191 = 0u;
    v1192 = 0u;
    v448 = *(v2 + 1976);
    v449 = [v448 countByEnumeratingWithState:&v1189 objects:v1426 count:16];
    if (v449)
    {
      v450 = v449;
      v451 = *v1190;
      do
      {
        for (i37 = 0; i37 != v450; ++i37)
        {
          if (*v1190 != v451)
          {
            objc_enumerationMutation(v448);
          }

          dictionaryRepresentation46 = [*(*(&v1189 + 1) + 8 * i37) dictionaryRepresentation];
          [array46 addObject:dictionaryRepresentation46];
        }

        v450 = [v448 countByEnumeratingWithState:&v1189 objects:v1426 count:16];
      }

      while (v450);
    }

    [dictionary setObject:array46 forKeyedSubscript:@"_payloadHomeFilter"];
  }

  if ([*(v2 + 1984) count])
  {
    array47 = [MEMORY[0x1E695DF70] array];
    v1185 = 0u;
    v1186 = 0u;
    v1187 = 0u;
    v1188 = 0u;
    v455 = *(v2 + 1984);
    v456 = [v455 countByEnumeratingWithState:&v1185 objects:v1425 count:16];
    if (v456)
    {
      v457 = v456;
      v458 = *v1186;
      do
      {
        for (i38 = 0; i38 != v457; ++i38)
        {
          if (*v1186 != v458)
          {
            objc_enumerationMutation(v455);
          }

          dictionaryRepresentation47 = [*(*(&v1185 + 1) + 8 * i38) dictionaryRepresentation];
          [array47 addObject:dictionaryRepresentation47];
        }

        v457 = [v455 countByEnumeratingWithState:&v1185 objects:v1425 count:16];
      }

      while (v457);
    }

    [dictionary setObject:array47 forKeyedSubscript:@"_payloadHomeUserTask"];
  }

  if ([*(v2 + 1992) count])
  {
    array48 = [MEMORY[0x1E695DF70] array];
    v1181 = 0u;
    v1182 = 0u;
    v1183 = 0u;
    v1184 = 0u;
    v462 = *(v2 + 1992);
    v463 = [v462 countByEnumeratingWithState:&v1181 objects:v1424 count:16];
    if (v463)
    {
      v464 = v463;
      v465 = *v1182;
      do
      {
        for (i39 = 0; i39 != v464; ++i39)
        {
          if (*v1182 != v465)
          {
            objc_enumerationMutation(v462);
          }

          dictionaryRepresentation48 = [*(*(&v1181 + 1) + 8 * i39) dictionaryRepresentation];
          [array48 addObject:dictionaryRepresentation48];
        }

        v464 = [v462 countByEnumeratingWithState:&v1181 objects:v1424 count:16];
      }

      while (v464);
    }

    [dictionary setObject:array48 forKeyedSubscript:@"_payloadIntegerList"];
  }

  if ([*(v2 + 2000) count])
  {
    array49 = [MEMORY[0x1E695DF70] array];
    v1177 = 0u;
    v1178 = 0u;
    v1179 = 0u;
    v1180 = 0u;
    v469 = *(v2 + 2000);
    v470 = [v469 countByEnumeratingWithState:&v1177 objects:v1423 count:16];
    if (v470)
    {
      v471 = v470;
      v472 = *v1178;
      do
      {
        for (i40 = 0; i40 != v471; ++i40)
        {
          if (*v1178 != v472)
          {
            objc_enumerationMutation(v469);
          }

          dictionaryRepresentation49 = [*(*(&v1177 + 1) + 8 * i40) dictionaryRepresentation];
          [array49 addObject:dictionaryRepresentation49];
        }

        v471 = [v469 countByEnumeratingWithState:&v1177 objects:v1423 count:16];
      }

      while (v471);
    }

    [dictionary setObject:array49 forKeyedSubscript:@"_payloadIntegerValue"];
  }

  if ([*(v2 + 2008) count])
  {
    array50 = [MEMORY[0x1E695DF70] array];
    v1173 = 0u;
    v1174 = 0u;
    v1175 = 0u;
    v1176 = 0u;
    v476 = *(v2 + 2008);
    v477 = [v476 countByEnumeratingWithState:&v1173 objects:v1422 count:16];
    if (v477)
    {
      v478 = v477;
      v479 = *v1174;
      do
      {
        for (i41 = 0; i41 != v478; ++i41)
        {
          if (*v1174 != v479)
          {
            objc_enumerationMutation(v476);
          }

          dictionaryRepresentation50 = [*(*(&v1173 + 1) + 8 * i41) dictionaryRepresentation];
          [array50 addObject:dictionaryRepresentation50];
        }

        v478 = [v476 countByEnumeratingWithState:&v1173 objects:v1422 count:16];
      }

      while (v478);
    }

    [dictionary setObject:array50 forKeyedSubscript:@"_payloadIntent"];
  }

  if ([*(v2 + 2016) count])
  {
    array51 = [MEMORY[0x1E695DF70] array];
    v1169 = 0u;
    v1170 = 0u;
    v1171 = 0u;
    v1172 = 0u;
    v483 = *(v2 + 2016);
    v484 = [v483 countByEnumeratingWithState:&v1169 objects:v1421 count:16];
    if (v484)
    {
      v485 = v484;
      v486 = *v1170;
      do
      {
        for (i42 = 0; i42 != v485; ++i42)
        {
          if (*v1170 != v486)
          {
            objc_enumerationMutation(v483);
          }

          dictionaryRepresentation51 = [*(*(&v1169 + 1) + 8 * i42) dictionaryRepresentation];
          [array51 addObject:dictionaryRepresentation51];
        }

        v485 = [v483 countByEnumeratingWithState:&v1169 objects:v1421 count:16];
      }

      while (v485);
    }

    [dictionary setObject:array51 forKeyedSubscript:@"_payloadIntentExecutionResult"];
  }

  if ([*(v2 + 2024) count])
  {
    array52 = [MEMORY[0x1E695DF70] array];
    v1165 = 0u;
    v1166 = 0u;
    v1167 = 0u;
    v1168 = 0u;
    v490 = *(v2 + 2024);
    v491 = [v490 countByEnumeratingWithState:&v1165 objects:v1420 count:16];
    if (v491)
    {
      v492 = v491;
      v493 = *v1166;
      do
      {
        for (i43 = 0; i43 != v492; ++i43)
        {
          if (*v1166 != v493)
          {
            objc_enumerationMutation(v490);
          }

          dictionaryRepresentation52 = [*(*(&v1165 + 1) + 8 * i43) dictionaryRepresentation];
          [array52 addObject:dictionaryRepresentation52];
        }

        v492 = [v490 countByEnumeratingWithState:&v1165 objects:v1420 count:16];
      }

      while (v492);
    }

    [dictionary setObject:array52 forKeyedSubscript:@"_payloadLocation"];
  }

  if ([*(v2 + 2032) count])
  {
    array53 = [MEMORY[0x1E695DF70] array];
    v1161 = 0u;
    v1162 = 0u;
    v1163 = 0u;
    v1164 = 0u;
    v497 = *(v2 + 2032);
    v498 = [v497 countByEnumeratingWithState:&v1161 objects:v1419 count:16];
    if (v498)
    {
      v499 = v498;
      v500 = *v1162;
      do
      {
        for (i44 = 0; i44 != v499; ++i44)
        {
          if (*v1162 != v500)
          {
            objc_enumerationMutation(v497);
          }

          dictionaryRepresentation53 = [*(*(&v1161 + 1) + 8 * i44) dictionaryRepresentation];
          [array53 addObject:dictionaryRepresentation53];
        }

        v499 = [v497 countByEnumeratingWithState:&v1161 objects:v1419 count:16];
      }

      while (v499);
    }

    [dictionary setObject:array53 forKeyedSubscript:@"_payloadLocationList"];
  }

  if (*(v2 + 760))
  {
    v503 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadLocationSearchTypesCount")}];
    if ([v2 payloadLocationSearchTypesCount])
    {
      v504 = 0;
      do
      {
        v505 = *(*(v2 + 752) + 4 * v504);
        if (v505)
        {
          if (v505 == 10)
          {
            v506 = @"BY_LOCATION_TRIGGER";
          }

          else
          {
            v506 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 752) + 4 * v504)];
          }
        }

        else
        {
          v506 = @"UNKNOWN_LOCATION_SEARCH_TYPE";
        }

        [v503 addObject:v506];

        ++v504;
      }

      while (v504 < [v2 payloadLocationSearchTypesCount]);
    }

    [dictionary setObject:v503 forKeyedSubscript:@"_payloadLocationSearchType"];
  }

  if ([*(v2 + 2040) count])
  {
    array54 = [MEMORY[0x1E695DF70] array];
    v1157 = 0u;
    v1158 = 0u;
    v1159 = 0u;
    v1160 = 0u;
    v508 = *(v2 + 2040);
    v509 = [v508 countByEnumeratingWithState:&v1157 objects:v1418 count:16];
    if (v509)
    {
      v510 = v509;
      v511 = *v1158;
      do
      {
        for (i45 = 0; i45 != v510; ++i45)
        {
          if (*v1158 != v511)
          {
            objc_enumerationMutation(v508);
          }

          dictionaryRepresentation54 = [*(*(&v1157 + 1) + 8 * i45) dictionaryRepresentation];
          [array54 addObject:dictionaryRepresentation54];
        }

        v510 = [v508 countByEnumeratingWithState:&v1157 objects:v1418 count:16];
      }

      while (v510);
    }

    [dictionary setObject:array54 forKeyedSubscript:@"_payloadLongList"];
  }

  if ([*(v2 + 2048) count])
  {
    array55 = [MEMORY[0x1E695DF70] array];
    v1153 = 0u;
    v1154 = 0u;
    v1155 = 0u;
    v1156 = 0u;
    v515 = *(v2 + 2048);
    v516 = [v515 countByEnumeratingWithState:&v1153 objects:v1417 count:16];
    if (v516)
    {
      v517 = v516;
      v518 = *v1154;
      do
      {
        for (i46 = 0; i46 != v517; ++i46)
        {
          if (*v1154 != v518)
          {
            objc_enumerationMutation(v515);
          }

          dictionaryRepresentation55 = [*(*(&v1153 + 1) + 8 * i46) dictionaryRepresentation];
          [array55 addObject:dictionaryRepresentation55];
        }

        v517 = [v515 countByEnumeratingWithState:&v1153 objects:v1417 count:16];
      }

      while (v517);
    }

    [dictionary setObject:array55 forKeyedSubscript:@"_payloadLongValue"];
  }

  if ([*(v2 + 2056) count])
  {
    array56 = [MEMORY[0x1E695DF70] array];
    v1149 = 0u;
    v1150 = 0u;
    v1151 = 0u;
    v1152 = 0u;
    v522 = *(v2 + 2056);
    v523 = [v522 countByEnumeratingWithState:&v1149 objects:v1416 count:16];
    if (v523)
    {
      v524 = v523;
      v525 = *v1150;
      do
      {
        for (i47 = 0; i47 != v524; ++i47)
        {
          if (*v1150 != v525)
          {
            objc_enumerationMutation(v522);
          }

          dictionaryRepresentation56 = [*(*(&v1149 + 1) + 8 * i47) dictionaryRepresentation];
          [array56 addObject:dictionaryRepresentation56];
        }

        v524 = [v522 countByEnumeratingWithState:&v1149 objects:v1416 count:16];
      }

      while (v524);
    }

    [dictionary setObject:array56 forKeyedSubscript:@"_payloadMassValue"];
  }

  if (*(v2 + 784))
  {
    v528 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadMediaAffinityTypesCount")}];
    if ([v2 payloadMediaAffinityTypesCount])
    {
      v529 = 0;
      do
      {
        v530 = *(*(v2 + 776) + 4 * v529);
        if (v530 >= 3)
        {
          v531 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 776) + 4 * v529)];
        }

        else
        {
          v531 = *(&off_1E7284B30 + v530);
        }

        [v528 addObject:v531];

        ++v529;
      }

      while (v529 < [v2 payloadMediaAffinityTypesCount]);
    }

    [dictionary setObject:v528 forKeyedSubscript:@"_payloadMediaAffinityType"];
  }

  if ([*(v2 + 2064) count])
  {
    array57 = [MEMORY[0x1E695DF70] array];
    v1145 = 0u;
    v1146 = 0u;
    v1147 = 0u;
    v1148 = 0u;
    v533 = *(v2 + 2064);
    v534 = [v533 countByEnumeratingWithState:&v1145 objects:v1415 count:16];
    if (v534)
    {
      v535 = v534;
      v536 = *v1146;
      do
      {
        for (i48 = 0; i48 != v535; ++i48)
        {
          if (*v1146 != v536)
          {
            objc_enumerationMutation(v533);
          }

          dictionaryRepresentation57 = [*(*(&v1145 + 1) + 8 * i48) dictionaryRepresentation];
          [array57 addObject:dictionaryRepresentation57];
        }

        v535 = [v533 countByEnumeratingWithState:&v1145 objects:v1415 count:16];
      }

      while (v535);
    }

    [dictionary setObject:array57 forKeyedSubscript:@"_payloadMediaDestination"];
  }

  if ([*(v2 + 2072) count])
  {
    array58 = [MEMORY[0x1E695DF70] array];
    v1141 = 0u;
    v1142 = 0u;
    v1143 = 0u;
    v1144 = 0u;
    v540 = *(v2 + 2072);
    v541 = [v540 countByEnumeratingWithState:&v1141 objects:v1414 count:16];
    if (v541)
    {
      v542 = v541;
      v543 = *v1142;
      do
      {
        for (i49 = 0; i49 != v542; ++i49)
        {
          if (*v1142 != v543)
          {
            objc_enumerationMutation(v540);
          }

          dictionaryRepresentation58 = [*(*(&v1141 + 1) + 8 * i49) dictionaryRepresentation];
          [array58 addObject:dictionaryRepresentation58];
        }

        v542 = [v540 countByEnumeratingWithState:&v1141 objects:v1414 count:16];
      }

      while (v542);
    }

    [dictionary setObject:array58 forKeyedSubscript:@"_payloadMediaItemGroup"];
  }

  if ([*(v2 + 2080) count])
  {
    array59 = [MEMORY[0x1E695DF70] array];
    v1137 = 0u;
    v1138 = 0u;
    v1139 = 0u;
    v1140 = 0u;
    v547 = *(v2 + 2080);
    v548 = [v547 countByEnumeratingWithState:&v1137 objects:v1413 count:16];
    if (v548)
    {
      v549 = v548;
      v550 = *v1138;
      do
      {
        for (i50 = 0; i50 != v549; ++i50)
        {
          if (*v1138 != v550)
          {
            objc_enumerationMutation(v547);
          }

          dictionaryRepresentation59 = [*(*(&v1137 + 1) + 8 * i50) dictionaryRepresentation];
          [array59 addObject:dictionaryRepresentation59];
        }

        v549 = [v547 countByEnumeratingWithState:&v1137 objects:v1413 count:16];
      }

      while (v549);
    }

    [dictionary setObject:array59 forKeyedSubscript:@"_payloadMediaItemValue"];
  }

  if ([*(v2 + 2088) count])
  {
    array60 = [MEMORY[0x1E695DF70] array];
    v1133 = 0u;
    v1134 = 0u;
    v1135 = 0u;
    v1136 = 0u;
    v554 = *(v2 + 2088);
    v555 = [v554 countByEnumeratingWithState:&v1133 objects:v1412 count:16];
    if (v555)
    {
      v556 = v555;
      v557 = *v1134;
      do
      {
        for (i51 = 0; i51 != v556; ++i51)
        {
          if (*v1134 != v557)
          {
            objc_enumerationMutation(v554);
          }

          dictionaryRepresentation60 = [*(*(&v1133 + 1) + 8 * i51) dictionaryRepresentation];
          [array60 addObject:dictionaryRepresentation60];
        }

        v556 = [v554 countByEnumeratingWithState:&v1133 objects:v1412 count:16];
      }

      while (v556);
    }

    [dictionary setObject:array60 forKeyedSubscript:@"_payloadMediaSearch"];
  }

  if (*(v2 + 808))
  {
    v560 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadMessageAttributesCount")}];
    if ([v2 payloadMessageAttributesCount])
    {
      v561 = 0;
      do
      {
        v562 = *(*(v2 + 800) + 4 * v561) - 1;
        if (v562 >= 5)
        {
          v563 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 800) + 4 * v561)];
        }

        else
        {
          v563 = *(&off_1E7284B48 + v562);
        }

        [v560 addObject:v563];

        ++v561;
      }

      while (v561 < [v2 payloadMessageAttributesCount]);
    }

    [dictionary setObject:v560 forKeyedSubscript:@"_payloadMessageAttribute"];
  }

  if (*(v2 + 832))
  {
    v564 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadMessageEffectsCount")}];
    if ([v2 payloadMessageEffectsCount])
    {
      v565 = 0;
      do
      {
        v566 = *(*(v2 + 824) + 4 * v565) - 1;
        if (v566 >= 0xD)
        {
          v567 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 824) + 4 * v565)];
        }

        else
        {
          v567 = *(&off_1E7284B70 + v566);
        }

        [v564 addObject:v567];

        ++v565;
      }

      while (v565 < [v2 payloadMessageEffectsCount]);
    }

    [dictionary setObject:v564 forKeyedSubscript:@"_payloadMessageEffect"];
  }

  if (*(v2 + 856))
  {
    v568 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadMessageTypesCount")}];
    if ([v2 payloadMessageTypesCount])
    {
      v569 = 0;
      do
      {
        v570 = *(*(v2 + 848) + 4 * v569) - 1;
        if (v570 >= 0x23)
        {
          v571 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 848) + 4 * v569)];
        }

        else
        {
          v571 = *(&off_1E7284BD8 + v570);
        }

        [v568 addObject:v571];

        ++v569;
      }

      while (v569 < [v2 payloadMessageTypesCount]);
    }

    [dictionary setObject:v568 forKeyedSubscript:@"_payloadMessageType"];
  }

  if ([*(v2 + 2096) count])
  {
    array61 = [MEMORY[0x1E695DF70] array];
    v1129 = 0u;
    v1130 = 0u;
    v1131 = 0u;
    v1132 = 0u;
    v573 = *(v2 + 2096);
    v574 = [v573 countByEnumeratingWithState:&v1129 objects:v1411 count:16];
    if (v574)
    {
      v575 = v574;
      v576 = *v1130;
      do
      {
        for (i52 = 0; i52 != v575; ++i52)
        {
          if (*v1130 != v576)
          {
            objc_enumerationMutation(v573);
          }

          dictionaryRepresentation61 = [*(*(&v1129 + 1) + 8 * i52) dictionaryRepresentation];
          [array61 addObject:dictionaryRepresentation61];
        }

        v575 = [v573 countByEnumeratingWithState:&v1129 objects:v1411 count:16];
      }

      while (v575);
    }

    [dictionary setObject:array61 forKeyedSubscript:@"_payloadModifyNickname"];
  }

  if ([*(v2 + 2104) count])
  {
    array62 = [MEMORY[0x1E695DF70] array];
    v1125 = 0u;
    v1126 = 0u;
    v1127 = 0u;
    v1128 = 0u;
    v580 = *(v2 + 2104);
    v581 = [v580 countByEnumeratingWithState:&v1125 objects:v1410 count:16];
    if (v581)
    {
      v582 = v581;
      v583 = *v1126;
      do
      {
        for (i53 = 0; i53 != v582; ++i53)
        {
          if (*v1126 != v583)
          {
            objc_enumerationMutation(v580);
          }

          dictionaryRepresentation62 = [*(*(&v1125 + 1) + 8 * i53) dictionaryRepresentation];
          [array62 addObject:dictionaryRepresentation62];
        }

        v582 = [v580 countByEnumeratingWithState:&v1125 objects:v1410 count:16];
      }

      while (v582);
    }

    [dictionary setObject:array62 forKeyedSubscript:@"_payloadModifyRelationship"];
  }

  if ([*(v2 + 2112) count])
  {
    array63 = [MEMORY[0x1E695DF70] array];
    v1121 = 0u;
    v1122 = 0u;
    v1123 = 0u;
    v1124 = 0u;
    v587 = *(v2 + 2112);
    v588 = [v587 countByEnumeratingWithState:&v1121 objects:v1409 count:16];
    if (v588)
    {
      v589 = v588;
      v590 = *v1122;
      do
      {
        for (i54 = 0; i54 != v589; ++i54)
        {
          if (*v1122 != v590)
          {
            objc_enumerationMutation(v587);
          }

          dictionaryRepresentation63 = [*(*(&v1121 + 1) + 8 * i54) dictionaryRepresentation];
          [array63 addObject:dictionaryRepresentation63];
        }

        v589 = [v587 countByEnumeratingWithState:&v1121 objects:v1409 count:16];
      }

      while (v589);
    }

    [dictionary setObject:array63 forKeyedSubscript:@"_payloadNote"];
  }

  if ([*(v2 + 2120) count])
  {
    array64 = [MEMORY[0x1E695DF70] array];
    v1117 = 0u;
    v1118 = 0u;
    v1119 = 0u;
    v1120 = 0u;
    v594 = *(v2 + 2120);
    v595 = [v594 countByEnumeratingWithState:&v1117 objects:v1408 count:16];
    if (v595)
    {
      v596 = v595;
      v597 = *v1118;
      do
      {
        for (i55 = 0; i55 != v596; ++i55)
        {
          if (*v1118 != v597)
          {
            objc_enumerationMutation(v594);
          }

          dictionaryRepresentation64 = [*(*(&v1117 + 1) + 8 * i55) dictionaryRepresentation];
          [array64 addObject:dictionaryRepresentation64];
        }

        v596 = [v594 countByEnumeratingWithState:&v1117 objects:v1408 count:16];
      }

      while (v596);
    }

    [dictionary setObject:array64 forKeyedSubscript:@"_payloadNoteContent"];
  }

  if (*(v2 + 880))
  {
    v600 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadNotebookItemTypesCount")}];
    if ([v2 payloadNotebookItemTypesCount])
    {
      for (i56 = 0; i56 < [v2 payloadNotebookItemTypesCount]; ++i56)
      {
        v602 = *(*(v2 + 872) + 4 * i56);
        if (v602 > 19)
        {
          if (v602 == 20)
          {
            v603 = @"TASK_LIST";
            goto LABEL_900;
          }

          if (v602 != 30)
          {
            goto LABEL_897;
          }

          v603 = @"TASK";
        }

        else
        {
          if (!v602)
          {
            v603 = @"UNKNOWN_NOTE_TYPE";
            goto LABEL_900;
          }

          if (v602 != 10)
          {
LABEL_897:
            v603 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 872) + 4 * i56)];
            goto LABEL_900;
          }

          v603 = @"NOTE";
        }

LABEL_900:
        [v600 addObject:v603];
      }
    }

    [dictionary setObject:v600 forKeyedSubscript:@"_payloadNotebookItemType"];
  }

  if (*(v2 + 904))
  {
    v604 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadNumericSettingUnitsCount")}];
    if ([v2 payloadNumericSettingUnitsCount])
    {
      v605 = 0;
      do
      {
        v606 = @"PERCENTAGE";
        if (*(*(v2 + 896) + 4 * v605) != 1)
        {
          v606 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 896) + 4 * v605)];
        }

        [v604 addObject:v606];

        ++v605;
      }

      while (v605 < [v2 payloadNumericSettingUnitsCount]);
    }

    [dictionary setObject:v604 forKeyedSubscript:@"_payloadNumericSettingUnit"];
  }

  if ([*(v2 + 2128) count])
  {
    array65 = [MEMORY[0x1E695DF70] array];
    v1113 = 0u;
    v1114 = 0u;
    v1115 = 0u;
    v1116 = 0u;
    v608 = *(v2 + 2128);
    v609 = [v608 countByEnumeratingWithState:&v1113 objects:v1407 count:16];
    if (v609)
    {
      v610 = v609;
      v611 = *v1114;
      do
      {
        for (i57 = 0; i57 != v610; ++i57)
        {
          if (*v1114 != v611)
          {
            objc_enumerationMutation(v608);
          }

          dictionaryRepresentation65 = [*(*(&v1113 + 1) + 8 * i57) dictionaryRepresentation];
          [array65 addObject:dictionaryRepresentation65];
        }

        v610 = [v608 countByEnumeratingWithState:&v1113 objects:v1407 count:16];
      }

      while (v610);
    }

    [dictionary setObject:array65 forKeyedSubscript:@"_payloadNumericSettingValue"];
  }

  if (*(v2 + 928))
  {
    v614 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadOutgoingMessageTypesCount")}];
    if ([v2 payloadOutgoingMessageTypesCount])
    {
      v615 = 0;
      do
      {
        v616 = *(*(v2 + 920) + 4 * v615);
        if (v616 == 1)
        {
          v617 = @"OUTGOING_MESSAGE_TEXT";
        }

        else if (v616 == 2)
        {
          v617 = @"OUTGOING_MESSAGE_AUDIO";
        }

        else
        {
          v617 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 920) + 4 * v615)];
        }

        [v614 addObject:v617];

        ++v615;
      }

      while (v615 < [v2 payloadOutgoingMessageTypesCount]);
    }

    [dictionary setObject:v614 forKeyedSubscript:@"_payloadOutgoingMessageType"];
  }

  if (*(v2 + 952))
  {
    v618 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadParsecCategoriesCount")}];
    if ([v2 payloadParsecCategoriesCount])
    {
      v619 = 0;
      do
      {
        v620 = *(*(v2 + 944) + 4 * v619);
        if (v620 >= 9)
        {
          v621 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 944) + 4 * v619)];
        }

        else
        {
          v621 = *(&off_1E7284CF0 + v620);
        }

        [v618 addObject:v621];

        ++v619;
      }

      while (v619 < [v2 payloadParsecCategoriesCount]);
    }

    [dictionary setObject:v618 forKeyedSubscript:@"_payloadParsecCategory"];
  }

  if ([*(v2 + 2136) count])
  {
    array66 = [MEMORY[0x1E695DF70] array];
    v1109 = 0u;
    v1110 = 0u;
    v1111 = 0u;
    v1112 = 0u;
    v623 = *(v2 + 2136);
    v624 = [v623 countByEnumeratingWithState:&v1109 objects:v1406 count:16];
    if (v624)
    {
      v625 = v624;
      v626 = *v1110;
      do
      {
        for (i58 = 0; i58 != v625; ++i58)
        {
          if (*v1110 != v626)
          {
            objc_enumerationMutation(v623);
          }

          dictionaryRepresentation66 = [*(*(&v1109 + 1) + 8 * i58) dictionaryRepresentation];
          [array66 addObject:dictionaryRepresentation66];
        }

        v625 = [v623 countByEnumeratingWithState:&v1109 objects:v1406 count:16];
      }

      while (v625);
    }

    [dictionary setObject:array66 forKeyedSubscript:@"_payloadPaymentAmountValue"];
  }

  if ([*(v2 + 2144) count])
  {
    array67 = [MEMORY[0x1E695DF70] array];
    v1105 = 0u;
    v1106 = 0u;
    v1107 = 0u;
    v1108 = 0u;
    v630 = *(v2 + 2144);
    v631 = [v630 countByEnumeratingWithState:&v1105 objects:v1405 count:16];
    if (v631)
    {
      v632 = v631;
      v633 = *v1106;
      do
      {
        for (i59 = 0; i59 != v632; ++i59)
        {
          if (*v1106 != v633)
          {
            objc_enumerationMutation(v630);
          }

          dictionaryRepresentation67 = [*(*(&v1105 + 1) + 8 * i59) dictionaryRepresentation];
          [array67 addObject:dictionaryRepresentation67];
        }

        v632 = [v630 countByEnumeratingWithState:&v1105 objects:v1405 count:16];
      }

      while (v632);
    }

    [dictionary setObject:array67 forKeyedSubscript:@"_payloadPaymentMethodList"];
  }

  if ([*(v2 + 2152) count])
  {
    array68 = [MEMORY[0x1E695DF70] array];
    v1101 = 0u;
    v1102 = 0u;
    v1103 = 0u;
    v1104 = 0u;
    v637 = *(v2 + 2152);
    v638 = [v637 countByEnumeratingWithState:&v1101 objects:v1404 count:16];
    if (v638)
    {
      v639 = v638;
      v640 = *v1102;
      do
      {
        for (i60 = 0; i60 != v639; ++i60)
        {
          if (*v1102 != v640)
          {
            objc_enumerationMutation(v637);
          }

          dictionaryRepresentation68 = [*(*(&v1101 + 1) + 8 * i60) dictionaryRepresentation];
          [array68 addObject:dictionaryRepresentation68];
        }

        v639 = [v637 countByEnumeratingWithState:&v1101 objects:v1404 count:16];
      }

      while (v639);
    }

    [dictionary setObject:array68 forKeyedSubscript:@"_payloadPaymentMethodValue"];
  }

  if (*(v2 + 976))
  {
    v643 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadPaymentStatusCount")}];
    if ([v2 payloadPaymentStatusCount])
    {
      v644 = 0;
      do
      {
        v645 = *(*(v2 + 968) + 4 * v644) - 1;
        if (v645 >= 5)
        {
          v646 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 968) + 4 * v644)];
        }

        else
        {
          v646 = *(&off_1E7284D38 + v645);
        }

        [v643 addObject:v646];

        ++v644;
      }

      while (v644 < [v2 payloadPaymentStatusCount]);
    }

    [dictionary setObject:v643 forKeyedSubscript:@"_payloadPaymentStatus"];
  }

  if (*(v2 + 1000))
  {
    v647 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadPersonalPlaceTypesCount")}];
    if ([v2 payloadPersonalPlaceTypesCount])
    {
      v648 = 0;
      do
      {
        v649 = *(*(v2 + 992) + 4 * v648);
        if (v649 == 2)
        {
          v650 = @"HOME";
        }

        else if (v649 == 3)
        {
          v650 = @"WORK";
        }

        else
        {
          v650 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 992) + 4 * v648)];
        }

        [v647 addObject:v650];

        ++v648;
      }

      while (v648 < [v2 payloadPersonalPlaceTypesCount]);
    }

    [dictionary setObject:v647 forKeyedSubscript:@"_payloadPersonalPlaceType"];
  }

  if (*(v2 + 1024))
  {
    v651 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadPhotoAttributesCount")}];
    if ([v2 payloadPhotoAttributesCount])
    {
      for (i61 = 0; i61 < [v2 payloadPhotoAttributesCount]; ++i61)
      {
        v653 = *(*(v2 + 1016) + 4 * i61);
        if (v653 <= 53)
        {
          if (v653 > 13)
          {
            if (v653 > 49)
            {
              if (v653 > 51)
              {
                if (v653 == 52)
                {
                  v654 = @"SQUARE_PHOTO";
                }

                else
                {
                  v654 = @"PANORAMA_PHOTO";
                }
              }

              else if (v653 == 50)
              {
                v654 = @"BURST_PHOTO";
              }

              else
              {
                v654 = @"HDR_PHOTO";
              }

              goto LABEL_1047;
            }

            switch(v653)
            {
              case 14:
                v654 = @"SELFIE";
                break;
              case 15:
                v654 = @"FRONT_FACING_CAMERA";
                break;
              case 16:
                v654 = @"SCREENSHOT";
                break;
              default:
                goto LABEL_1046;
            }
          }

          else
          {
            if (v653 > 9)
            {
              if (v653 > 11)
              {
                if (v653 == 12)
                {
                  v654 = @"PORTRAIT_ORIENTATION";
                }

                else
                {
                  v654 = @"FAVORITE";
                }
              }

              else if (v653 == 10)
              {
                v654 = @"FLASH";
              }

              else
              {
                v654 = @"LANDSCAPE_ORIENTATION";
              }

              goto LABEL_1047;
            }

            switch(v653)
            {
              case 2:
                v654 = @"PHOTO";
                break;
              case 3:
                v654 = @"VIDEO";
                break;
              case 4:
                v654 = @"GIF";
                break;
              default:
                goto LABEL_1046;
            }
          }
        }

        else if (v653 <= 299)
        {
          if (v653 <= 56)
          {
            if (v653 == 54)
            {
              v654 = @"PORTRAIT_PHOTO";
            }

            else if (v653 == 55)
            {
              v654 = @"LIVE_PHOTO";
            }

            else
            {
              v654 = @"LOOP_PHOTO";
            }

            goto LABEL_1047;
          }

          if (v653 > 79)
          {
            if (v653 == 80)
            {
              v654 = @"TIME_LAPSE_VIDEO";
            }

            else
            {
              if (v653 != 81)
              {
                goto LABEL_1046;
              }

              v654 = @"SLOW_MOTION_VIDEO";
            }
          }

          else if (v653 == 57)
          {
            v654 = @"BOUNCE_PHOTO";
          }

          else
          {
            if (v653 != 58)
            {
              goto LABEL_1046;
            }

            v654 = @"LONG_EXPOSURE_PHOTO";
          }
        }

        else
        {
          if (v653 <= 303)
          {
            if (v653 > 301)
            {
              if (v653 == 302)
              {
                v654 = @"INSTANT_FILTER";
              }

              else
              {
                v654 = @"TONAL_FILTER";
              }
            }

            else if (v653 == 300)
            {
              v654 = @"NOIR_FILTER";
            }

            else
            {
              v654 = @"CHROME_FILTER";
            }

            goto LABEL_1047;
          }

          if (v653 <= 305)
          {
            if (v653 == 304)
            {
              v654 = @"TRANSFER_FILTER";
            }

            else
            {
              v654 = @"MONO_FILTER";
            }

            goto LABEL_1047;
          }

          if (v653 == 306)
          {
            v654 = @"FADE_FILTER";
          }

          else
          {
            if (v653 != 307)
            {
LABEL_1046:
              v654 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1016) + 4 * i61)];
              goto LABEL_1047;
            }

            v654 = @"PROCESS_FILTER";
          }
        }

LABEL_1047:
        [v651 addObject:v654];
      }
    }

    [dictionary setObject:v651 forKeyedSubscript:@"_payloadPhotoAttribute"];
  }

  if ([*(v2 + 2160) count])
  {
    array69 = [MEMORY[0x1E695DF70] array];
    v1097 = 0u;
    v1098 = 0u;
    v1099 = 0u;
    v1100 = 0u;
    v656 = *(v2 + 2160);
    v657 = [v656 countByEnumeratingWithState:&v1097 objects:v1403 count:16];
    if (v657)
    {
      v658 = v657;
      v659 = *v1098;
      do
      {
        for (i62 = 0; i62 != v658; ++i62)
        {
          if (*v1098 != v659)
          {
            objc_enumerationMutation(v656);
          }

          dictionaryRepresentation69 = [*(*(&v1097 + 1) + 8 * i62) dictionaryRepresentation];
          [array69 addObject:dictionaryRepresentation69];
        }

        v658 = [v656 countByEnumeratingWithState:&v1097 objects:v1403 count:16];
      }

      while (v658);
    }

    [dictionary setObject:array69 forKeyedSubscript:@"_payloadPlace"];
  }

  if ([*(v2 + 2168) count])
  {
    array70 = [MEMORY[0x1E695DF70] array];
    v1093 = 0u;
    v1094 = 0u;
    v1095 = 0u;
    v1096 = 0u;
    v663 = *(v2 + 2168);
    v664 = [v663 countByEnumeratingWithState:&v1093 objects:v1402 count:16];
    if (v664)
    {
      v665 = v664;
      v666 = *v1094;
      do
      {
        for (i63 = 0; i63 != v665; ++i63)
        {
          if (*v1094 != v666)
          {
            objc_enumerationMutation(v663);
          }

          dictionaryRepresentation70 = [*(*(&v1093 + 1) + 8 * i63) dictionaryRepresentation];
          [array70 addObject:dictionaryRepresentation70];
        }

        v665 = [v663 countByEnumeratingWithState:&v1093 objects:v1402 count:16];
      }

      while (v665);
    }

    [dictionary setObject:array70 forKeyedSubscript:@"_payloadPlaceList"];
  }

  if (*(v2 + 1048))
  {
    v669 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadPlaybackQueueLocationsCount")}];
    if ([v2 payloadPlaybackQueueLocationsCount])
    {
      v670 = 0;
      do
      {
        v671 = *(*(v2 + 1040) + 4 * v670);
        if (v671 >= 4)
        {
          v672 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1040) + 4 * v670)];
        }

        else
        {
          v672 = *(&off_1E7284D60 + v671);
        }

        [v669 addObject:v672];

        ++v670;
      }

      while (v670 < [v2 payloadPlaybackQueueLocationsCount]);
    }

    [dictionary setObject:v669 forKeyedSubscript:@"_payloadPlaybackQueueLocation"];
  }

  if (*(v2 + 1072))
  {
    v673 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadPlaybackRepeatModesCount")}];
    if ([v2 payloadPlaybackRepeatModesCount])
    {
      v674 = 0;
      do
      {
        v675 = *(*(v2 + 1064) + 4 * v674);
        if (v675 >= 3)
        {
          v676 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1064) + 4 * v674)];
        }

        else
        {
          v676 = *(&off_1E7284D80 + v675);
        }

        [v673 addObject:v676];

        ++v674;
      }

      while (v674 < [v2 payloadPlaybackRepeatModesCount]);
    }

    [dictionary setObject:v673 forKeyedSubscript:@"_payloadPlaybackRepeatMode"];
  }

  if (*(v2 + 1096))
  {
    v677 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadPreferredCallProvidersCount")}];
    if ([v2 payloadPreferredCallProvidersCount])
    {
      v678 = 0;
      do
      {
        v679 = *(*(v2 + 1088) + 4 * v678) - 2;
        if (v679 >= 3)
        {
          v680 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1088) + 4 * v678)];
        }

        else
        {
          v680 = *(&off_1E7284D98 + v679);
        }

        [v677 addObject:v680];

        ++v678;
      }

      while (v678 < [v2 payloadPreferredCallProvidersCount]);
    }

    [dictionary setObject:v677 forKeyedSubscript:@"_payloadPreferredCallProvider"];
  }

  if ([*(v2 + 2176) count])
  {
    payloadPrimitiveBools = [v2 payloadPrimitiveBools];
    v682 = [payloadPrimitiveBools copy];
    [dictionary setObject:v682 forKeyedSubscript:@"_payloadPrimitiveBool"];
  }

  if ([*(v2 + 2184) count])
  {
    payloadPrimitiveDoubles = [v2 payloadPrimitiveDoubles];
    v684 = [payloadPrimitiveDoubles copy];
    [dictionary setObject:v684 forKeyedSubscript:@"_payloadPrimitiveDouble"];
  }

  if ([*(v2 + 2192) count])
  {
    payloadPrimitiveInts = [v2 payloadPrimitiveInts];
    v686 = [payloadPrimitiveInts copy];
    [dictionary setObject:v686 forKeyedSubscript:@"_payloadPrimitiveInt"];
  }

  if ([*(v2 + 2200) count])
  {
    payloadPrimitiveLongs = [v2 payloadPrimitiveLongs];
    v688 = [payloadPrimitiveLongs copy];
    [dictionary setObject:v688 forKeyedSubscript:@"_payloadPrimitiveLong"];
  }

  if (*(v2 + 2208))
  {
    payloadPrimitiveStrings = [v2 payloadPrimitiveStrings];
    v690 = [payloadPrimitiveStrings copy];
    [dictionary setObject:v690 forKeyedSubscript:@"_payloadPrimitiveString"];
  }

  if ([*(v2 + 2216) count])
  {
    array71 = [MEMORY[0x1E695DF70] array];
    v1089 = 0u;
    v1090 = 0u;
    v1091 = 0u;
    v1092 = 0u;
    v692 = *(v2 + 2216);
    v693 = [v692 countByEnumeratingWithState:&v1089 objects:v1401 count:16];
    if (v693)
    {
      v694 = v693;
      v695 = *v1090;
      do
      {
        for (i64 = 0; i64 != v694; ++i64)
        {
          if (*v1090 != v695)
          {
            objc_enumerationMutation(v692);
          }

          dictionaryRepresentation71 = [*(*(&v1089 + 1) + 8 * i64) dictionaryRepresentation];
          [array71 addObject:dictionaryRepresentation71];
        }

        v694 = [v692 countByEnumeratingWithState:&v1089 objects:v1401 count:16];
      }

      while (v694);
    }

    [dictionary setObject:array71 forKeyedSubscript:@"_payloadPrivateAddMediaIntentData"];
  }

  if ([*(v2 + 2224) count])
  {
    array72 = [MEMORY[0x1E695DF70] array];
    v1085 = 0u;
    v1086 = 0u;
    v1087 = 0u;
    v1088 = 0u;
    v699 = *(v2 + 2224);
    v700 = [v699 countByEnumeratingWithState:&v1085 objects:v1400 count:16];
    if (v700)
    {
      v701 = v700;
      v702 = *v1086;
      do
      {
        for (i65 = 0; i65 != v701; ++i65)
        {
          if (*v1086 != v702)
          {
            objc_enumerationMutation(v699);
          }

          dictionaryRepresentation72 = [*(*(&v1085 + 1) + 8 * i65) dictionaryRepresentation];
          [array72 addObject:dictionaryRepresentation72];
        }

        v701 = [v699 countByEnumeratingWithState:&v1085 objects:v1400 count:16];
      }

      while (v701);
    }

    [dictionary setObject:array72 forKeyedSubscript:@"_payloadPrivatePlayMediaIntentData"];
  }

  if ([*(v2 + 2232) count])
  {
    array73 = [MEMORY[0x1E695DF70] array];
    v1081 = 0u;
    v1082 = 0u;
    v1083 = 0u;
    v1084 = 0u;
    v706 = *(v2 + 2232);
    v707 = [v706 countByEnumeratingWithState:&v1081 objects:v1399 count:16];
    if (v707)
    {
      v708 = v707;
      v709 = *v1082;
      do
      {
        for (i66 = 0; i66 != v708; ++i66)
        {
          if (*v1082 != v709)
          {
            objc_enumerationMutation(v706);
          }

          dictionaryRepresentation73 = [*(*(&v1081 + 1) + 8 * i66) dictionaryRepresentation];
          [array73 addObject:dictionaryRepresentation73];
        }

        v708 = [v706 countByEnumeratingWithState:&v1081 objects:v1399 count:16];
      }

      while (v708);
    }

    [dictionary setObject:array73 forKeyedSubscript:@"_payloadPrivateSearchForMediaIntentData"];
  }

  if ([*(v2 + 2240) count])
  {
    array74 = [MEMORY[0x1E695DF70] array];
    v1077 = 0u;
    v1078 = 0u;
    v1079 = 0u;
    v1080 = 0u;
    v713 = *(v2 + 2240);
    v714 = [v713 countByEnumeratingWithState:&v1077 objects:v1398 count:16];
    if (v714)
    {
      v715 = v714;
      v716 = *v1078;
      do
      {
        for (i67 = 0; i67 != v715; ++i67)
        {
          if (*v1078 != v716)
          {
            objc_enumerationMutation(v713);
          }

          dictionaryRepresentation74 = [*(*(&v1077 + 1) + 8 * i67) dictionaryRepresentation];
          [array74 addObject:dictionaryRepresentation74];
        }

        v715 = [v713 countByEnumeratingWithState:&v1077 objects:v1398 count:16];
      }

      while (v715);
    }

    [dictionary setObject:array74 forKeyedSubscript:@"_payloadPrivateUpdateMediaAffinityIntentData"];
  }

  if (*(v2 + 1120))
  {
    v719 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadRadioTypesCount")}];
    if ([v2 payloadRadioTypesCount])
    {
      v720 = 0;
      do
      {
        v721 = *(*(v2 + 1112) + 4 * v720) - 1;
        if (v721 >= 5)
        {
          v722 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1112) + 4 * v720)];
        }

        else
        {
          v722 = *(&off_1E7284DB0 + v721);
        }

        [v719 addObject:v722];

        ++v720;
      }

      while (v720 < [v2 payloadRadioTypesCount]);
    }

    [dictionary setObject:v719 forKeyedSubscript:@"_payloadRadioType"];
  }

  if (*(v2 + 1144))
  {
    v723 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadReadActionTypesCount")}];
    if ([v2 payloadReadActionTypesCount])
    {
      v724 = 0;
      do
      {
        v725 = *(*(v2 + 1136) + 4 * v724);
        if (v725 == 1)
        {
          v726 = @"READ";
        }

        else if (v725 == 2)
        {
          v726 = @"REPEAT";
        }

        else
        {
          v726 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1136) + 4 * v724)];
        }

        [v723 addObject:v726];

        ++v724;
      }

      while (v724 < [v2 payloadReadActionTypesCount]);
    }

    [dictionary setObject:v723 forKeyedSubscript:@"_payloadReadActionType"];
  }

  if (*(v2 + 1168))
  {
    v727 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadRelativeReferencesCount")}];
    if ([v2 payloadRelativeReferencesCount])
    {
      v728 = 0;
      do
      {
        v729 = *(*(v2 + 1160) + 4 * v728);
        if (v729 == 1)
        {
          v730 = @"NEXT";
        }

        else if (v729 == 2)
        {
          v730 = @"PREVIOUS";
        }

        else
        {
          v730 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1160) + 4 * v728)];
        }

        [v727 addObject:v730];

        ++v728;
      }

      while (v728 < [v2 payloadRelativeReferencesCount]);
    }

    [dictionary setObject:v727 forKeyedSubscript:@"_payloadRelativeReference"];
  }

  if (*(v2 + 1192))
  {
    v731 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadRelativeSettingsCount")}];
    if ([v2 payloadRelativeSettingsCount])
    {
      v732 = 0;
      do
      {
        v733 = *(*(v2 + 1184) + 4 * v732) - 1;
        if (v733 >= 4)
        {
          v734 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1184) + 4 * v732)];
        }

        else
        {
          v734 = *(&off_1E7284DD8 + v733);
        }

        [v731 addObject:v734];

        ++v732;
      }

      while (v732 < [v2 payloadRelativeSettingsCount]);
    }

    [dictionary setObject:v731 forKeyedSubscript:@"_payloadRelativeSetting"];
  }

  if ([*(v2 + 2248) count])
  {
    array75 = [MEMORY[0x1E695DF70] array];
    v1073 = 0u;
    v1074 = 0u;
    v1075 = 0u;
    v1076 = 0u;
    v736 = *(v2 + 2248);
    v737 = [v736 countByEnumeratingWithState:&v1073 objects:v1397 count:16];
    if (v737)
    {
      v738 = v737;
      v739 = *v1074;
      do
      {
        for (i68 = 0; i68 != v738; ++i68)
        {
          if (*v1074 != v739)
          {
            objc_enumerationMutation(v736);
          }

          dictionaryRepresentation75 = [*(*(&v1073 + 1) + 8 * i68) dictionaryRepresentation];
          [array75 addObject:dictionaryRepresentation75];
        }

        v738 = [v736 countByEnumeratingWithState:&v1073 objects:v1397 count:16];
      }

      while (v738);
    }

    [dictionary setObject:array75 forKeyedSubscript:@"_payloadSendMessageAttachment"];
  }

  if (*(v2 + 1216))
  {
    v742 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadSettingActionsCount")}];
    if ([v2 payloadSettingActionsCount])
    {
      v743 = 0;
      do
      {
        v744 = *(*(v2 + 1208) + 4 * v743) - 1;
        if (v744 >= 3)
        {
          v745 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1208) + 4 * v743)];
        }

        else
        {
          v745 = *(&off_1E7284DF8 + v744);
        }

        [v742 addObject:v745];

        ++v743;
      }

      while (v743 < [v2 payloadSettingActionsCount]);
    }

    [dictionary setObject:v742 forKeyedSubscript:@"_payloadSettingAction"];
  }

  if ([*(v2 + 2256) count])
  {
    array76 = [MEMORY[0x1E695DF70] array];
    v1069 = 0u;
    v1070 = 0u;
    v1071 = 0u;
    v1072 = 0u;
    v747 = *(v2 + 2256);
    v748 = [v747 countByEnumeratingWithState:&v1069 objects:v1396 count:16];
    if (v748)
    {
      v749 = v748;
      v750 = *v1070;
      do
      {
        for (i69 = 0; i69 != v749; ++i69)
        {
          if (*v1070 != v750)
          {
            objc_enumerationMutation(v747);
          }

          dictionaryRepresentation76 = [*(*(&v1069 + 1) + 8 * i69) dictionaryRepresentation];
          [array76 addObject:dictionaryRepresentation76];
        }

        v749 = [v747 countByEnumeratingWithState:&v1069 objects:v1396 count:16];
      }

      while (v749);
    }

    [dictionary setObject:array76 forKeyedSubscript:@"_payloadSettingMetadata"];
  }

  if ([*(v2 + 2264) count])
  {
    array77 = [MEMORY[0x1E695DF70] array];
    v1065 = 0u;
    v1066 = 0u;
    v1067 = 0u;
    v1068 = 0u;
    v754 = *(v2 + 2264);
    v755 = [v754 countByEnumeratingWithState:&v1065 objects:v1395 count:16];
    if (v755)
    {
      v756 = v755;
      v757 = *v1066;
      do
      {
        for (i70 = 0; i70 != v756; ++i70)
        {
          if (*v1066 != v757)
          {
            objc_enumerationMutation(v754);
          }

          dictionaryRepresentation77 = [*(*(&v1065 + 1) + 8 * i70) dictionaryRepresentation];
          [array77 addObject:dictionaryRepresentation77];
        }

        v756 = [v754 countByEnumeratingWithState:&v1065 objects:v1395 count:16];
      }

      while (v756);
    }

    [dictionary setObject:array77 forKeyedSubscript:@"_payloadShareDestination"];
  }

  if ([*(v2 + 2272) count])
  {
    array78 = [MEMORY[0x1E695DF70] array];
    v1061 = 0u;
    v1062 = 0u;
    v1063 = 0u;
    v1064 = 0u;
    v761 = *(v2 + 2272);
    v762 = [v761 countByEnumeratingWithState:&v1061 objects:v1394 count:16];
    if (v762)
    {
      v763 = v762;
      v764 = *v1062;
      do
      {
        for (i71 = 0; i71 != v763; ++i71)
        {
          if (*v1062 != v764)
          {
            objc_enumerationMutation(v761);
          }

          dictionaryRepresentation78 = [*(*(&v1061 + 1) + 8 * i71) dictionaryRepresentation];
          [array78 addObject:dictionaryRepresentation78];
        }

        v763 = [v761 countByEnumeratingWithState:&v1061 objects:v1394 count:16];
      }

      while (v763);
    }

    [dictionary setObject:array78 forKeyedSubscript:@"_payloadSleepAlarmAttribute"];
  }

  if ([*(v2 + 2280) count])
  {
    array79 = [MEMORY[0x1E695DF70] array];
    v1057 = 0u;
    v1058 = 0u;
    v1059 = 0u;
    v1060 = 0u;
    v768 = *(v2 + 2280);
    v769 = [v768 countByEnumeratingWithState:&v1057 objects:v1393 count:16];
    if (v769)
    {
      v770 = v769;
      v771 = *v1058;
      do
      {
        for (i72 = 0; i72 != v770; ++i72)
        {
          if (*v1058 != v771)
          {
            objc_enumerationMutation(v768);
          }

          dictionaryRepresentation79 = [*(*(&v1057 + 1) + 8 * i72) dictionaryRepresentation];
          [array79 addObject:dictionaryRepresentation79];
        }

        v770 = [v768 countByEnumeratingWithState:&v1057 objects:v1393 count:16];
      }

      while (v770);
    }

    [dictionary setObject:array79 forKeyedSubscript:@"_payloadSpatialEventTrigger"];
  }

  if ([*(v2 + 2288) count])
  {
    array80 = [MEMORY[0x1E695DF70] array];
    v1053 = 0u;
    v1054 = 0u;
    v1055 = 0u;
    v1056 = 0u;
    v775 = *(v2 + 2288);
    v776 = [v775 countByEnumeratingWithState:&v1053 objects:v1392 count:16];
    if (v776)
    {
      v777 = v776;
      v778 = *v1054;
      do
      {
        for (i73 = 0; i73 != v777; ++i73)
        {
          if (*v1054 != v778)
          {
            objc_enumerationMutation(v775);
          }

          dictionaryRepresentation80 = [*(*(&v1053 + 1) + 8 * i73) dictionaryRepresentation];
          [array80 addObject:dictionaryRepresentation80];
        }

        v777 = [v775 countByEnumeratingWithState:&v1053 objects:v1392 count:16];
      }

      while (v777);
    }

    [dictionary setObject:array80 forKeyedSubscript:@"_payloadSpeedValue"];
  }

  if ([*(v2 + 2296) count])
  {
    array81 = [MEMORY[0x1E695DF70] array];
    v1049 = 0u;
    v1050 = 0u;
    v1051 = 0u;
    v1052 = 0u;
    v782 = *(v2 + 2296);
    v783 = [v782 countByEnumeratingWithState:&v1049 objects:v1391 count:16];
    if (v783)
    {
      v784 = v783;
      v785 = *v1050;
      do
      {
        for (i74 = 0; i74 != v784; ++i74)
        {
          if (*v1050 != v785)
          {
            objc_enumerationMutation(v782);
          }

          dictionaryRepresentation81 = [*(*(&v1049 + 1) + 8 * i74) dictionaryRepresentation];
          [array81 addObject:dictionaryRepresentation81];
        }

        v784 = [v782 countByEnumeratingWithState:&v1049 objects:v1391 count:16];
      }

      while (v784);
    }

    [dictionary setObject:array81 forKeyedSubscript:@"_payloadStartCallRequestMetadata"];
  }

  if ([*(v2 + 2304) count])
  {
    array82 = [MEMORY[0x1E695DF70] array];
    v1045 = 0u;
    v1046 = 0u;
    v1047 = 0u;
    v1048 = 0u;
    v789 = *(v2 + 2304);
    v790 = [v789 countByEnumeratingWithState:&v1045 objects:v1390 count:16];
    if (v790)
    {
      v791 = v790;
      v792 = *v1046;
      do
      {
        for (i75 = 0; i75 != v791; ++i75)
        {
          if (*v1046 != v792)
          {
            objc_enumerationMutation(v789);
          }

          dictionaryRepresentation82 = [*(*(&v1045 + 1) + 8 * i75) dictionaryRepresentation];
          [array82 addObject:dictionaryRepresentation82];
        }

        v791 = [v789 countByEnumeratingWithState:&v1045 objects:v1390 count:16];
      }

      while (v791);
    }

    [dictionary setObject:array82 forKeyedSubscript:@"_payloadStringList"];
  }

  if ([*(v2 + 2312) count])
  {
    array83 = [MEMORY[0x1E695DF70] array];
    v1041 = 0u;
    v1042 = 0u;
    v1043 = 0u;
    v1044 = 0u;
    v796 = *(v2 + 2312);
    v797 = [v796 countByEnumeratingWithState:&v1041 objects:v1389 count:16];
    if (v797)
    {
      v798 = v797;
      v799 = *v1042;
      do
      {
        for (i76 = 0; i76 != v798; ++i76)
        {
          if (*v1042 != v799)
          {
            objc_enumerationMutation(v796);
          }

          dictionaryRepresentation83 = [*(*(&v1041 + 1) + 8 * i76) dictionaryRepresentation];
          [array83 addObject:dictionaryRepresentation83];
        }

        v798 = [v796 countByEnumeratingWithState:&v1041 objects:v1389 count:16];
      }

      while (v798);
    }

    [dictionary setObject:array83 forKeyedSubscript:@"_payloadStringValue"];
  }

  if ([*(v2 + 2320) count])
  {
    array84 = [MEMORY[0x1E695DF70] array];
    v1037 = 0u;
    v1038 = 0u;
    v1039 = 0u;
    v1040 = 0u;
    v803 = *(v2 + 2320);
    v804 = [v803 countByEnumeratingWithState:&v1037 objects:v1388 count:16];
    if (v804)
    {
      v805 = v804;
      v806 = *v1038;
      do
      {
        for (i77 = 0; i77 != v805; ++i77)
        {
          if (*v1038 != v806)
          {
            objc_enumerationMutation(v803);
          }

          dictionaryRepresentation84 = [*(*(&v1037 + 1) + 8 * i77) dictionaryRepresentation];
          [array84 addObject:dictionaryRepresentation84];
        }

        v805 = [v803 countByEnumeratingWithState:&v1037 objects:v1388 count:16];
      }

      while (v805);
    }

    [dictionary setObject:array84 forKeyedSubscript:@"_payloadSupportedTrafficIncidentType"];
  }

  if ([*(v2 + 2328) count])
  {
    array85 = [MEMORY[0x1E695DF70] array];
    v1033 = 0u;
    v1034 = 0u;
    v1035 = 0u;
    v1036 = 0u;
    v810 = *(v2 + 2328);
    v811 = [v810 countByEnumeratingWithState:&v1033 objects:v1387 count:16];
    if (v811)
    {
      v812 = v811;
      v813 = *v1034;
      do
      {
        for (i78 = 0; i78 != v812; ++i78)
        {
          if (*v1034 != v813)
          {
            objc_enumerationMutation(v810);
          }

          dictionaryRepresentation85 = [*(*(&v1033 + 1) + 8 * i78) dictionaryRepresentation];
          [array85 addObject:dictionaryRepresentation85];
        }

        v812 = [v810 countByEnumeratingWithState:&v1033 objects:v1387 count:16];
      }

      while (v812);
    }

    [dictionary setObject:array85 forKeyedSubscript:@"_payloadTask"];
  }

  if ([*(v2 + 2336) count])
  {
    array86 = [MEMORY[0x1E695DF70] array];
    v1029 = 0u;
    v1030 = 0u;
    v1031 = 0u;
    v1032 = 0u;
    v817 = *(v2 + 2336);
    v818 = [v817 countByEnumeratingWithState:&v1029 objects:v1386 count:16];
    if (v818)
    {
      v819 = v818;
      v820 = *v1030;
      do
      {
        for (i79 = 0; i79 != v819; ++i79)
        {
          if (*v1030 != v820)
          {
            objc_enumerationMutation(v817);
          }

          dictionaryRepresentation86 = [*(*(&v1029 + 1) + 8 * i79) dictionaryRepresentation];
          [array86 addObject:dictionaryRepresentation86];
        }

        v819 = [v817 countByEnumeratingWithState:&v1029 objects:v1386 count:16];
      }

      while (v819);
    }

    [dictionary setObject:array86 forKeyedSubscript:@"_payloadTaskList"];
  }

  if (*(v2 + 1240))
  {
    v823 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadTaskPrioritiesCount")}];
    if ([v2 payloadTaskPrioritiesCount])
    {
      v824 = 0;
      do
      {
        v825 = *(*(v2 + 1232) + 4 * v824);
        if (v825 >= 3)
        {
          v826 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1232) + 4 * v824)];
        }

        else
        {
          v826 = *(&off_1E7284E10 + v825);
        }

        [v823 addObject:v826];

        ++v824;
      }

      while (v824 < [v2 payloadTaskPrioritiesCount]);
    }

    [dictionary setObject:v823 forKeyedSubscript:@"_payloadTaskPriority"];
  }

  if (*(v2 + 1264))
  {
    v827 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadTaskReferencesCount")}];
    if ([v2 payloadTaskReferencesCount])
    {
      v828 = 0;
      do
      {
        if (*(*(v2 + 1256) + 4 * v828))
        {
          v829 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1256) + 4 * v828)];
        }

        else
        {
          v829 = @"CURRENT_ACTIVITY";
        }

        [v827 addObject:v829];

        ++v828;
      }

      while (v828 < [v2 payloadTaskReferencesCount]);
    }

    [dictionary setObject:v827 forKeyedSubscript:@"_payloadTaskReference"];
  }

  if (*(v2 + 1288))
  {
    v830 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadTaskStatusCount")}];
    if ([v2 payloadTaskStatusCount])
    {
      v831 = 0;
      do
      {
        v832 = *(*(v2 + 1280) + 4 * v831);
        if (v832)
        {
          if (v832 == 20)
          {
            v833 = @"COMPLETED";
          }

          else if (v832 == 10)
          {
            v833 = @"NOT_COMPLETED";
          }

          else
          {
            v833 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1280) + 4 * v831)];
          }
        }

        else
        {
          v833 = @"UNKNOWN_STATUS";
        }

        [v830 addObject:v833];

        ++v831;
      }

      while (v831 < [v2 payloadTaskStatusCount]);
    }

    [dictionary setObject:v830 forKeyedSubscript:@"_payloadTaskStatus"];
  }

  if ([*(v2 + 2344) count])
  {
    array87 = [MEMORY[0x1E695DF70] array];
    v1025 = 0u;
    v1026 = 0u;
    v1027 = 0u;
    v1028 = 0u;
    v835 = *(v2 + 2344);
    v836 = [v835 countByEnumeratingWithState:&v1025 objects:v1385 count:16];
    if (v836)
    {
      v837 = v836;
      v838 = *v1026;
      do
      {
        for (i80 = 0; i80 != v837; ++i80)
        {
          if (*v1026 != v838)
          {
            objc_enumerationMutation(v835);
          }

          dictionaryRepresentation87 = [*(*(&v1025 + 1) + 8 * i80) dictionaryRepresentation];
          [array87 addObject:dictionaryRepresentation87];
        }

        v837 = [v835 countByEnumeratingWithState:&v1025 objects:v1385 count:16];
      }

      while (v837);
    }

    [dictionary setObject:array87 forKeyedSubscript:@"_payloadTemperatureList"];
  }

  if ([*(v2 + 2352) count])
  {
    array88 = [MEMORY[0x1E695DF70] array];
    v1021 = 0u;
    v1022 = 0u;
    v1023 = 0u;
    v1024 = 0u;
    v842 = *(v2 + 2352);
    v843 = [v842 countByEnumeratingWithState:&v1021 objects:v1384 count:16];
    if (v843)
    {
      v844 = v843;
      v845 = *v1022;
      do
      {
        for (i81 = 0; i81 != v844; ++i81)
        {
          if (*v1022 != v845)
          {
            objc_enumerationMutation(v842);
          }

          dictionaryRepresentation88 = [*(*(&v1021 + 1) + 8 * i81) dictionaryRepresentation];
          [array88 addObject:dictionaryRepresentation88];
        }

        v844 = [v842 countByEnumeratingWithState:&v1021 objects:v1384 count:16];
      }

      while (v844);
    }

    [dictionary setObject:array88 forKeyedSubscript:@"_payloadTemperatureValue"];
  }

  if ([*(v2 + 2360) count])
  {
    array89 = [MEMORY[0x1E695DF70] array];
    v1017 = 0u;
    v1018 = 0u;
    v1019 = 0u;
    v1020 = 0u;
    v849 = *(v2 + 2360);
    v850 = [v849 countByEnumeratingWithState:&v1017 objects:v1383 count:16];
    if (v850)
    {
      v851 = v850;
      v852 = *v1018;
      do
      {
        for (i82 = 0; i82 != v851; ++i82)
        {
          if (*v1018 != v852)
          {
            objc_enumerationMutation(v849);
          }

          dictionaryRepresentation89 = [*(*(&v1017 + 1) + 8 * i82) dictionaryRepresentation];
          [array89 addObject:dictionaryRepresentation89];
        }

        v851 = [v849 countByEnumeratingWithState:&v1017 objects:v1383 count:16];
      }

      while (v851);
    }

    [dictionary setObject:array89 forKeyedSubscript:@"_payloadTemporalEventTrigger"];
  }

  if (*(v2 + 1312))
  {
    v855 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadTemporalEventTriggerTypesCount")}];
    if ([v2 payloadTemporalEventTriggerTypesCount])
    {
      v856 = 0;
      do
      {
        v857 = *(*(v2 + 1304) + 4 * v856);
        if (v857 >= 4)
        {
          v858 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1304) + 4 * v856)];
        }

        else
        {
          v858 = *(&off_1E7284E28 + v857);
        }

        [v855 addObject:v858];

        ++v856;
      }

      while (v856 < [v2 payloadTemporalEventTriggerTypesCount]);
    }

    [dictionary setObject:v855 forKeyedSubscript:@"_payloadTemporalEventTriggerType"];
  }

  if ([*(v2 + 2368) count])
  {
    array90 = [MEMORY[0x1E695DF70] array];
    v1013 = 0u;
    v1014 = 0u;
    v1015 = 0u;
    v1016 = 0u;
    v860 = *(v2 + 2368);
    v861 = [v860 countByEnumeratingWithState:&v1013 objects:v1382 count:16];
    if (v861)
    {
      v862 = v861;
      v863 = *v1014;
      do
      {
        for (i83 = 0; i83 != v862; ++i83)
        {
          if (*v1014 != v863)
          {
            objc_enumerationMutation(v860);
          }

          dictionaryRepresentation90 = [*(*(&v1013 + 1) + 8 * i83) dictionaryRepresentation];
          [array90 addObject:dictionaryRepresentation90];
        }

        v862 = [v860 countByEnumeratingWithState:&v1013 objects:v1382 count:16];
      }

      while (v862);
    }

    [dictionary setObject:array90 forKeyedSubscript:@"_payloadTimer"];
  }

  if (*(v2 + 1336))
  {
    v866 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadTimerStatesCount")}];
    if ([v2 payloadTimerStatesCount])
    {
      v867 = 0;
      do
      {
        v868 = *(*(v2 + 1328) + 4 * v867);
        if (v868 >= 3)
        {
          v869 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1328) + 4 * v867)];
        }

        else
        {
          v869 = *(&off_1E7284E48 + v868);
        }

        [v866 addObject:v869];

        ++v867;
      }

      while (v867 < [v2 payloadTimerStatesCount]);
    }

    [dictionary setObject:v866 forKeyedSubscript:@"_payloadTimerState"];
  }

  if (*(v2 + 1360))
  {
    v870 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadTimerTypesCount")}];
    if ([v2 payloadTimerTypesCount])
    {
      v871 = 0;
      do
      {
        v872 = *(*(v2 + 1352) + 4 * v871);
        if (v872 >= 3)
        {
          v873 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1352) + 4 * v871)];
        }

        else
        {
          v873 = *(&off_1E7284E60 + v872);
        }

        [v870 addObject:v873];

        ++v871;
      }

      while (v871 < [v2 payloadTimerTypesCount]);
    }

    [dictionary setObject:v870 forKeyedSubscript:@"_payloadTimerType"];
  }

  if ([*(v2 + 2376) count])
  {
    array91 = [MEMORY[0x1E695DF70] array];
    v1009 = 0u;
    v1010 = 0u;
    v1011 = 0u;
    v1012 = 0u;
    v875 = *(v2 + 2376);
    v876 = [v875 countByEnumeratingWithState:&v1009 objects:v1381 count:16];
    if (v876)
    {
      v877 = v876;
      v878 = *v1010;
      do
      {
        for (i84 = 0; i84 != v877; ++i84)
        {
          if (*v1010 != v878)
          {
            objc_enumerationMutation(v875);
          }

          dictionaryRepresentation91 = [*(*(&v1009 + 1) + 8 * i84) dictionaryRepresentation];
          [array91 addObject:dictionaryRepresentation91];
        }

        v877 = [v875 countByEnumeratingWithState:&v1009 objects:v1381 count:16];
      }

      while (v877);
    }

    [dictionary setObject:array91 forKeyedSubscript:@"_payloadURLValue"];
  }

  if (*(v2 + 1384))
  {
    v881 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadUpdateAlarmOperationsCount")}];
    if ([v2 payloadUpdateAlarmOperationsCount])
    {
      v882 = 0;
      do
      {
        v883 = *(*(v2 + 1376) + 4 * v882);
        if (v883 == 1)
        {
          v884 = @"UPDATE_LABEL";
        }

        else if (v883 == 2)
        {
          v884 = @"UPDATE_TIME";
        }

        else
        {
          v884 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1376) + 4 * v882)];
        }

        [v881 addObject:v884];

        ++v882;
      }

      while (v882 < [v2 payloadUpdateAlarmOperationsCount]);
    }

    [dictionary setObject:v881 forKeyedSubscript:@"_payloadUpdateAlarmOperation"];
  }

  if (*(v2 + 1408))
  {
    v885 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadUserNotificationTypesCount")}];
    if ([v2 payloadUserNotificationTypesCount])
    {
      v886 = 0;
      do
      {
        v887 = *(*(v2 + 1400) + 4 * v886);
        if (v887 == 1)
        {
          v888 = @"ANNOUNCEMENT";
        }

        else if (v887 == 2)
        {
          v888 = @"DELIVERY_FAILURE";
        }

        else
        {
          v888 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1400) + 4 * v886)];
        }

        [v885 addObject:v888];

        ++v886;
      }

      while (v886 < [v2 payloadUserNotificationTypesCount]);
    }

    [dictionary setObject:v885 forKeyedSubscript:@"_payloadUserNotificationType"];
  }

  if (*(v2 + 1432))
  {
    v889 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadVisualCodeTypesCount")}];
    if ([v2 payloadVisualCodeTypesCount])
    {
      v890 = 0;
      do
      {
        v891 = *(*(v2 + 1424) + 4 * v890);
        if (v891 >= 7)
        {
          v892 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1424) + 4 * v890)];
        }

        else
        {
          v892 = *(&off_1E7284E78 + v891);
        }

        [v889 addObject:v892];

        ++v890;
      }

      while (v890 < [v2 payloadVisualCodeTypesCount]);
    }

    [dictionary setObject:v889 forKeyedSubscript:@"_payloadVisualCodeType"];
  }

  if ([*(v2 + 2384) count])
  {
    array92 = [MEMORY[0x1E695DF70] array];
    v1005 = 0u;
    v1006 = 0u;
    v1007 = 0u;
    v1008 = 0u;
    v894 = *(v2 + 2384);
    v895 = [v894 countByEnumeratingWithState:&v1005 objects:v1380 count:16];
    if (v895)
    {
      v896 = v895;
      v897 = *v1006;
      do
      {
        for (i85 = 0; i85 != v896; ++i85)
        {
          if (*v1006 != v897)
          {
            objc_enumerationMutation(v894);
          }

          dictionaryRepresentation92 = [*(*(&v1005 + 1) + 8 * i85) dictionaryRepresentation];
          [array92 addObject:dictionaryRepresentation92];
        }

        v896 = [v894 countByEnumeratingWithState:&v1005 objects:v1380 count:16];
      }

      while (v896);
    }

    [dictionary setObject:array92 forKeyedSubscript:@"_payloadVoiceCommandDeviceInformation"];
  }

  if ([*(v2 + 2392) count])
  {
    array93 = [MEMORY[0x1E695DF70] array];
    v1001 = 0u;
    v1002 = 0u;
    v1003 = 0u;
    v1004 = 0u;
    v901 = *(v2 + 2392);
    v902 = [v901 countByEnumeratingWithState:&v1001 objects:v1379 count:16];
    if (v902)
    {
      v903 = v902;
      v904 = *v1002;
      do
      {
        for (i86 = 0; i86 != v903; ++i86)
        {
          if (*v1002 != v904)
          {
            objc_enumerationMutation(v901);
          }

          dictionaryRepresentation93 = [*(*(&v1001 + 1) + 8 * i86) dictionaryRepresentation];
          [array93 addObject:dictionaryRepresentation93];
        }

        v903 = [v901 countByEnumeratingWithState:&v1001 objects:v1379 count:16];
      }

      while (v903);
    }

    [dictionary setObject:array93 forKeyedSubscript:@"_payloadVolumeValue"];
  }

  if ([*(v2 + 2400) count])
  {
    array94 = [MEMORY[0x1E695DF70] array];
    v997 = 0u;
    v998 = 0u;
    v999 = 0u;
    v1000 = 0u;
    v908 = *(v2 + 2400);
    v909 = [v908 countByEnumeratingWithState:&v997 objects:v1378 count:16];
    if (v909)
    {
      v910 = v909;
      v911 = *v998;
      do
      {
        for (i87 = 0; i87 != v910; ++i87)
        {
          if (*v998 != v911)
          {
            objc_enumerationMutation(v908);
          }

          dictionaryRepresentation94 = [*(*(&v997 + 1) + 8 * i87) dictionaryRepresentation];
          [array94 addObject:dictionaryRepresentation94];
        }

        v910 = [v908 countByEnumeratingWithState:&v997 objects:v1378 count:16];
      }

      while (v910);
    }

    [dictionary setObject:array94 forKeyedSubscript:@"_payloadWellnessMetadataPair"];
  }

  if ([*(v2 + 2408) count])
  {
    array95 = [MEMORY[0x1E695DF70] array];
    v993 = 0u;
    v994 = 0u;
    v995 = 0u;
    v996 = 0u;
    v915 = *(v2 + 2408);
    v916 = [v915 countByEnumeratingWithState:&v993 objects:v1377 count:16];
    if (v916)
    {
      v917 = v916;
      v918 = *v994;
      do
      {
        for (i88 = 0; i88 != v917; ++i88)
        {
          if (*v994 != v918)
          {
            objc_enumerationMutation(v915);
          }

          dictionaryRepresentation95 = [*(*(&v993 + 1) + 8 * i88) dictionaryRepresentation];
          [array95 addObject:dictionaryRepresentation95];
        }

        v917 = [v915 countByEnumeratingWithState:&v993 objects:v1377 count:16];
      }

      while (v917);
    }

    [dictionary setObject:array95 forKeyedSubscript:@"_payloadWellnessObjectResultValue"];
  }

  if (*(v2 + 1456))
  {
    v921 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadWellnessObjectTypesCount")}];
    if ([v2 payloadWellnessObjectTypesCount])
    {
      v922 = 0;
      do
      {
        v923 = *(*(v2 + 1448) + 4 * v922);
        if (v923 >= 0x4B)
        {
          v924 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1448) + 4 * v922)];
        }

        else
        {
          v924 = *(&off_1E7284EB0 + v923);
        }

        [v921 addObject:v924];

        ++v922;
      }

      while (v922 < [v2 payloadWellnessObjectTypesCount]);
    }

    [dictionary setObject:v921 forKeyedSubscript:@"_payloadWellnessObjectType"];
  }

  if (*(v2 + 1480))
  {
    v925 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadWellnessQueryResultTypesCount")}];
    if ([v2 payloadWellnessQueryResultTypesCount])
    {
      v926 = 0;
      do
      {
        v927 = *(*(v2 + 1472) + 4 * v926);
        if (v927 >= 0xA)
        {
          v928 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1472) + 4 * v926)];
        }

        else
        {
          v928 = *(&off_1E7285108 + v927);
        }

        [v925 addObject:v928];

        ++v926;
      }

      while (v926 < [v2 payloadWellnessQueryResultTypesCount]);
    }

    [dictionary setObject:v925 forKeyedSubscript:@"_payloadWellnessQueryResultType"];
  }

  if (*(v2 + 1504))
  {
    v929 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadWellnessQuestionTypesCount")}];
    if ([v2 payloadWellnessQuestionTypesCount])
    {
      v930 = 0;
      do
      {
        v931 = *(*(v2 + 1496) + 4 * v930);
        if (v931 >= 8)
        {
          v932 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1496) + 4 * v930)];
        }

        else
        {
          v932 = *(&off_1E7285158 + v931);
        }

        [v929 addObject:v932];

        ++v930;
      }

      while (v930 < [v2 payloadWellnessQuestionTypesCount]);
    }

    [dictionary setObject:v929 forKeyedSubscript:@"_payloadWellnessQuestionType"];
  }

  if ([*(v2 + 2416) count])
  {
    array96 = [MEMORY[0x1E695DF70] array];
    v989 = 0u;
    v990 = 0u;
    v991 = 0u;
    v992 = 0u;
    v934 = *(v2 + 2416);
    v935 = [v934 countByEnumeratingWithState:&v989 objects:v1376 count:16];
    if (v935)
    {
      v936 = v935;
      v937 = *v990;
      do
      {
        for (i89 = 0; i89 != v936; ++i89)
        {
          if (*v990 != v937)
          {
            objc_enumerationMutation(v934);
          }

          dictionaryRepresentation96 = [*(*(&v989 + 1) + 8 * i89) dictionaryRepresentation];
          [array96 addObject:dictionaryRepresentation96];
        }

        v936 = [v934 countByEnumeratingWithState:&v989 objects:v1376 count:16];
      }

      while (v936);
    }

    [dictionary setObject:array96 forKeyedSubscript:@"_payloadWellnessUnitType"];
  }

  if ([*(v2 + 2424) count])
  {
    array97 = [MEMORY[0x1E695DF70] array];
    v985 = 0u;
    v986 = 0u;
    v987 = 0u;
    v988 = 0u;
    v941 = *(v2 + 2424);
    v942 = [v941 countByEnumeratingWithState:&v985 objects:v1375 count:16];
    if (v942)
    {
      v943 = v942;
      v944 = *v986;
      do
      {
        for (i90 = 0; i90 != v943; ++i90)
        {
          if (*v986 != v944)
          {
            objc_enumerationMutation(v941);
          }

          dictionaryRepresentation97 = [*(*(&v985 + 1) + 8 * i90) dictionaryRepresentation];
          [array97 addObject:dictionaryRepresentation97];
        }

        v943 = [v941 countByEnumeratingWithState:&v985 objects:v1375 count:16];
      }

      while (v943);
    }

    [dictionary setObject:array97 forKeyedSubscript:@"_payloadWellnessValue"];
  }

  if ([*(v2 + 2432) count])
  {
    array98 = [MEMORY[0x1E695DF70] array];
    v981 = 0u;
    v982 = 0u;
    v983 = 0u;
    v984 = 0u;
    v948 = *(v2 + 2432);
    v949 = [v948 countByEnumeratingWithState:&v981 objects:v1374 count:16];
    if (v949)
    {
      v950 = v949;
      v951 = *v982;
      do
      {
        for (i91 = 0; i91 != v950; ++i91)
        {
          if (*v982 != v951)
          {
            objc_enumerationMutation(v948);
          }

          dictionaryRepresentation98 = [*(*(&v981 + 1) + 8 * i91) dictionaryRepresentation];
          [array98 addObject:dictionaryRepresentation98];
        }

        v950 = [v948 countByEnumeratingWithState:&v981 objects:v1374 count:16];
      }

      while (v950);
    }

    [dictionary setObject:array98 forKeyedSubscript:@"_payloadWorkoutAssociatedItem"];
  }

  if ([*(v2 + 2440) count])
  {
    array99 = [MEMORY[0x1E695DF70] array];
    v977 = 0u;
    v978 = 0u;
    v979 = 0u;
    v980 = 0u;
    v955 = *(v2 + 2440);
    v956 = [v955 countByEnumeratingWithState:&v977 objects:v1373 count:16];
    if (v956)
    {
      v957 = v956;
      v958 = *v978;
      do
      {
        for (i92 = 0; i92 != v957; ++i92)
        {
          if (*v978 != v958)
          {
            objc_enumerationMutation(v955);
          }

          dictionaryRepresentation99 = [*(*(&v977 + 1) + 8 * i92) dictionaryRepresentation];
          [array99 addObject:dictionaryRepresentation99];
        }

        v957 = [v955 countByEnumeratingWithState:&v977 objects:v1373 count:16];
      }

      while (v957);
    }

    [dictionary setObject:array99 forKeyedSubscript:@"_payloadWorkoutCustomization"];
  }

  if (*(v2 + 1528))
  {
    v961 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadWorkoutGoalUnitTypesCount")}];
    if ([v2 payloadWorkoutGoalUnitTypesCount])
    {
      v962 = 0;
      do
      {
        v963 = *(*(v2 + 1520) + 4 * v962);
        if (v963 >= 0xA)
        {
          v964 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1520) + 4 * v962)];
        }

        else
        {
          v964 = *(&off_1E7285198 + v963);
        }

        [v961 addObject:v964];

        ++v962;
      }

      while (v962 < [v2 payloadWorkoutGoalUnitTypesCount]);
    }

    [dictionary setObject:v961 forKeyedSubscript:@"_payloadWorkoutGoalUnitType"];
  }

  if (*(v2 + 1552))
  {
    v965 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadWorkoutLocationTypesCount")}];
    if ([v2 payloadWorkoutLocationTypesCount])
    {
      v966 = 0;
      do
      {
        v967 = *(*(v2 + 1544) + 4 * v966);
        if (v967)
        {
          if (v967 == 1)
          {
            v968 = @"INDOOR";
          }

          else
          {
            v968 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1544) + 4 * v966)];
          }
        }

        else
        {
          v968 = @"OUTDOOR";
        }

        [v965 addObject:v968];

        ++v966;
      }

      while (v966 < [v2 payloadWorkoutLocationTypesCount]);
    }

    [dictionary setObject:v965 forKeyedSubscript:@"_payloadWorkoutLocationType"];
  }

  if (*(v2 + 1576))
  {
    v969 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "payloadWorkoutSequenceLabelsCount")}];
    if ([v2 payloadWorkoutSequenceLabelsCount])
    {
      v970 = 0;
      do
      {
        v971 = *(*(v2 + 1568) + 4 * v970);
        if (v971)
        {
          if (v971 == 1)
          {
            v972 = @"next";
          }

          else
          {
            v972 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(*(v2 + 1568) + 4 * v970)];
          }
        }

        else
        {
          v972 = @"last";
        }

        [v969 addObject:v972];

        ++v970;
      }

      while (v970 < [v2 payloadWorkoutSequenceLabelsCount]);
    }

    [dictionary setObject:v969 forKeyedSubscript:@"_payloadWorkoutSequenceLabel"];
  }

  if ([v2 hasType])
  {
    type = [v2 type];
    if (type <= 99)
    {
      v973 = @"String";
      switch(type)
      {
        case 1:
          goto LABEL_1596;
        case 2:
          v973 = @"Double";
          break;
        case 3:
          v973 = @"Integer";
          break;
        case 4:
          v973 = @"Contact";
          break;
        case 5:
          v973 = @"DateTimeRange";
          break;
        case 6:
          v973 = @"Location";
          break;
        case 7:
          v973 = @"DataString";
          break;
        case 8:
          v973 = @"Long";
          break;
        case 9:
          v973 = @"PaymentMethod";
          break;
        case 10:
          v973 = @"Temperature";
          break;
        case 11:
          v973 = @"Distance";
          break;
        case 12:
          v973 = @"FinancialAccount";
          break;
        case 13:
          v973 = @"BillType";
          break;
        case 14:
          v973 = @"Mass";
          break;
        case 15:
          v973 = @"Volume";
          break;
        case 16:
          v973 = @"Speed";
          break;
        case 17:
          v973 = @"Energy";
          break;
        case 50:
          v973 = @"StringList";
          break;
        case 51:
          v973 = @"DoubleList";
          break;
        case 52:
          v973 = @"IntegerList";
          break;
        case 53:
          v973 = @"ContactList";
          break;
        case 54:
          v973 = @"DateTimeRangeList";
          break;
        case 55:
          v973 = @"LocationList";
          break;
        case 56:
          v973 = @"DataStringList";
          break;
        case 57:
          v973 = @"LongList";
          break;
        case 58:
          v973 = @"PaymentMethodList";
          break;
        case 59:
          v973 = @"TemperatureList";
          break;
        case 60:
          v973 = @"DistanceList";
          break;
        default:
          goto LABEL_1595;
      }

      goto LABEL_1596;
    }

    if (type <= 106)
    {
      if (type <= 102)
      {
        if (type == 100)
        {
          v973 = @"PrimitiveBool";
        }

        else if (type == 101)
        {
          v973 = @"PrimitiveInt";
        }

        else
        {
          v973 = @"PrimitiveLong";
        }

        goto LABEL_1596;
      }

      switch(type)
      {
        case 'g':
          v973 = @"PrimitiveDouble";
          goto LABEL_1596;
        case 'h':
          v973 = @"PrimitiveString";
          goto LABEL_1596;
        case 'i':
          v973 = @"DateTime";
LABEL_1596:
          [dictionary setObject:v973 forKeyedSubscript:@"type"];

          goto LABEL_1597;
      }
    }

    else
    {
      if (type <= 109)
      {
        if (type == 107)
        {
          v973 = @"Intent";
        }

        else if (type == 108)
        {
          v973 = @"ModifyRelationship";
        }

        else
        {
          v973 = @"ModifyNickname";
        }

        goto LABEL_1596;
      }

      if (type <= 111)
      {
        if (type == 110)
        {
          v973 = @"CalendarEvent";
        }

        else
        {
          v973 = @"EventParticipant";
        }

        goto LABEL_1596;
      }

      if (type == 112)
      {
        v973 = @"EventAttribute";
        goto LABEL_1596;
      }

      if (type == 1000)
      {
        v973 = @"Extension";
        goto LABEL_1596;
      }
    }

LABEL_1595:
    v973 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    goto LABEL_1596;
  }

LABEL_1597:
  v975 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v177 = PBRepeatedInt32Hash();
  v176 = [(NSArray *)self->_payloadActivities hash];
  v175 = [(NSArray *)self->_payloadActivityLists hash];
  v174 = [(NSArray *)self->_payloadAlarms hash];
  v173 = PBRepeatedInt32Hash();
  v172 = PBRepeatedInt32Hash();
  v171 = [(NSArray *)self->_payloadAlarmSearchs hash];
  v170 = PBRepeatedInt32Hash();
  v169 = [(NSArray *)self->_payloadAnnouncements hash];
  v168 = [(NSArray *)self->_payloadAppIdentifiers hash];
  v167 = [(NSArray *)self->_payloadArchivedObjects hash];
  v166 = PBRepeatedInt32Hash();
  v165 = [(NSArray *)self->_payloadBillDetailsValues hash];
  v164 = [(NSArray *)self->_payloadBillPayeeValues hash];
  v163 = PBRepeatedInt32Hash();
  v162 = PBRepeatedInt32Hash();
  v161 = PBRepeatedInt32Hash();
  v160 = [(NSArray *)self->_payloadCalendarEvents hash];
  v159 = PBRepeatedInt32Hash();
  v158 = PBRepeatedInt32Hash();
  v157 = PBRepeatedInt32Hash();
  v156 = [(NSArray *)self->_payloadCallGroups hash];
  v155 = [(NSArray *)self->_payloadCallGroupConversations hash];
  v154 = [(NSArray *)self->_payloadCallRecordFilters hash];
  v153 = PBRepeatedInt32Hash();
  v152 = [(NSArray *)self->_payloadCallRecordValues hash];
  v151 = PBRepeatedInt32Hash();
  v150 = PBRepeatedInt32Hash();
  v149 = PBRepeatedInt32Hash();
  v148 = PBRepeatedInt32Hash();
  v147 = PBRepeatedInt32Hash();
  v146 = PBRepeatedInt32Hash();
  v145 = [(NSArray *)self->_payloadChargingConnectorTypes hash];
  v144 = [(NSArray *)self->_payloadContactEventTriggers hash];
  v143 = [(NSArray *)self->_payloadContactLists hash];
  v142 = [(NSArray *)self->_payloadContactValues hash];
  v141 = [(NSArray *)self->_payloadCurrencyAmounts hash];
  v140 = [(NSArray *)self->_payloadCustomObjects hash];
  v139 = [(NSArray *)self->_payloadDataStrings hash];
  v138 = [(NSArray *)self->_payloadDataStringLists hash];
  v137 = PBRepeatedInt32Hash();
  v136 = [(NSArray *)self->_payloadDateTimeRangeLists hash];
  v135 = [(NSArray *)self->_payloadDateTimeRangeValues hash];
  v134 = [(NSArray *)self->_payloadDateTimeValues hash];
  v133 = [(NSArray *)self->_payloadDevices hash];
  v132 = [(NSArray *)self->_payloadDeviceDetails hash];
  v131 = PBRepeatedInt32Hash();
  v130 = [(NSArray *)self->_payloadDialingContacts hash];
  v129 = [(NSArray *)self->_payloadDistanceLists hash];
  v128 = [(NSArray *)self->_payloadDistanceValues hash];
  v127 = [(NSArray *)self->_payloadDoubleLists hash];
  v126 = [(NSArray *)self->_payloadDoubleValues hash];
  v125 = [(NSArray *)self->_payloadEnergyValues hash];
  v124 = [(NSArray *)self->_payloadEnumerations hash];
  v123 = [(NSArray *)self->_payloadEvents hash];
  v122 = PBRepeatedInt32Hash();
  v121 = [(NSArray *)self->_payloadEventLists hash];
  v120 = [(NSArray *)self->_payloadEventParticipants hash];
  v119 = [(NSArray *)self->_payloadFiles hash];
  v118 = PBRepeatedInt32Hash();
  v117 = [(NSArray *)self->_payloadFileProperties hash];
  v116 = PBRepeatedInt32Hash();
  v115 = PBRepeatedInt32Hash();
  v114 = [(NSArray *)self->_payloadFilePropertyValues hash];
  v113 = PBRepeatedInt32Hash();
  v112 = PBRepeatedInt32Hash();
  v111 = PBRepeatedInt32Hash();
  v110 = [(NSArray *)self->_payloadFinancialAccountValues hash];
  v109 = [(NSArray *)self->_payloadGeographicalFeatures hash];
  v108 = [(NSArray *)self->_payloadGeographicalFeatureLists hash];
  v107 = [(NSArray *)self->_payloadGetSettingResponseDatas hash];
  v106 = [(NSArray *)self->_payloadHomeAttributes hash];
  v105 = PBRepeatedInt32Hash();
  v104 = [(NSArray *)self->_payloadHomeAttributeValues hash];
  v103 = PBRepeatedInt32Hash();
  v102 = PBRepeatedInt32Hash();
  v101 = [(NSArray *)self->_payloadHomeEntities hash];
  v100 = PBRepeatedInt32Hash();
  v99 = [(NSArray *)self->_payloadHomeFilters hash];
  v98 = [(NSArray *)self->_payloadHomeUserTasks hash];
  v97 = [(NSArray *)self->_payloadIntegerLists hash];
  v96 = [(NSArray *)self->_payloadIntegerValues hash];
  v95 = [(NSArray *)self->_payloadIntents hash];
  v94 = [(NSArray *)self->_payloadIntentExecutionResults hash];
  v93 = [(NSArray *)self->_payloadLocations hash];
  v92 = [(NSArray *)self->_payloadLocationLists hash];
  v91 = PBRepeatedInt32Hash();
  v90 = [(NSArray *)self->_payloadLongLists hash];
  v89 = [(NSArray *)self->_payloadLongValues hash];
  v88 = [(NSArray *)self->_payloadMassValues hash];
  v87 = PBRepeatedInt32Hash();
  v86 = [(NSArray *)self->_payloadMediaDestinations hash];
  v85 = [(NSArray *)self->_payloadMediaItemGroups hash];
  v84 = [(NSArray *)self->_payloadMediaItemValues hash];
  v83 = [(NSArray *)self->_payloadMediaSearchs hash];
  v82 = PBRepeatedInt32Hash();
  v81 = PBRepeatedInt32Hash();
  v80 = PBRepeatedInt32Hash();
  v79 = [(NSArray *)self->_payloadModifyNicknames hash];
  v78 = [(NSArray *)self->_payloadModifyRelationships hash];
  v77 = [(NSArray *)self->_payloadNotes hash];
  v76 = [(NSArray *)self->_payloadNoteContents hash];
  v75 = PBRepeatedInt32Hash();
  v74 = PBRepeatedInt32Hash();
  v73 = [(NSArray *)self->_payloadNumericSettingValues hash];
  v72 = PBRepeatedInt32Hash();
  v71 = PBRepeatedInt32Hash();
  v70 = [(NSArray *)self->_payloadPaymentAmountValues hash];
  v69 = [(NSArray *)self->_payloadPaymentMethodLists hash];
  v68 = [(NSArray *)self->_payloadPaymentMethodValues hash];
  v67 = PBRepeatedInt32Hash();
  v66 = PBRepeatedInt32Hash();
  v65 = PBRepeatedInt32Hash();
  v64 = [(NSArray *)self->_payloadPlaces hash];
  v63 = [(NSArray *)self->_payloadPlaceLists hash];
  v62 = PBRepeatedInt32Hash();
  v61 = PBRepeatedInt32Hash();
  v60 = PBRepeatedInt32Hash();
  v59 = [(NSArray *)self->_payloadPrimitiveBools hash];
  v58 = [(NSArray *)self->_payloadPrimitiveDoubles hash];
  v57 = [(NSArray *)self->_payloadPrimitiveInts hash];
  v56 = [(NSArray *)self->_payloadPrimitiveLongs hash];
  v55 = [(NSArray *)self->_payloadPrimitiveStrings hash];
  v54 = [(NSArray *)self->_payloadPrivateAddMediaIntentDatas hash];
  v53 = [(NSArray *)self->_payloadPrivatePlayMediaIntentDatas hash];
  v52 = [(NSArray *)self->_payloadPrivateSearchForMediaIntentDatas hash];
  v51 = [(NSArray *)self->_payloadPrivateUpdateMediaAffinityIntentDatas hash];
  v50 = PBRepeatedInt32Hash();
  v49 = PBRepeatedInt32Hash();
  v48 = PBRepeatedInt32Hash();
  v47 = PBRepeatedInt32Hash();
  v46 = [(NSArray *)self->_payloadSendMessageAttachments hash];
  v45 = PBRepeatedInt32Hash();
  v44 = [(NSArray *)self->_payloadSettingMetadatas hash];
  v43 = [(NSArray *)self->_payloadShareDestinations hash];
  v42 = [(NSArray *)self->_payloadSleepAlarmAttributes hash];
  v41 = [(NSArray *)self->_payloadSpatialEventTriggers hash];
  v40 = [(NSArray *)self->_payloadSpeedValues hash];
  v39 = [(NSArray *)self->_payloadStartCallRequestMetadatas hash];
  v38 = [(NSArray *)self->_payloadStringLists hash];
  v37 = [(NSArray *)self->_payloadStringValues hash];
  v36 = [(NSArray *)self->_payloadSupportedTrafficIncidentTypes hash];
  v35 = [(NSArray *)self->_payloadTasks hash];
  v34 = [(NSArray *)self->_payloadTaskLists hash];
  v33 = PBRepeatedInt32Hash();
  v32 = PBRepeatedInt32Hash();
  v31 = PBRepeatedInt32Hash();
  v30 = [(NSArray *)self->_payloadTemperatureLists hash];
  v29 = [(NSArray *)self->_payloadTemperatureValues hash];
  v28 = [(NSArray *)self->_payloadTemporalEventTriggers hash];
  v27 = PBRepeatedInt32Hash();
  v26 = [(NSArray *)self->_payloadTimers hash];
  v25 = PBRepeatedInt32Hash();
  v24 = PBRepeatedInt32Hash();
  v23 = [(NSArray *)self->_payloadURLValues hash];
  v22 = PBRepeatedInt32Hash();
  v21 = PBRepeatedInt32Hash();
  v20 = PBRepeatedInt32Hash();
  v19 = [(NSArray *)self->_payloadVoiceCommandDeviceInformations hash];
  v18 = [(NSArray *)self->_payloadVolumeValues hash];
  v17 = [(NSArray *)self->_payloadWellnessMetadataPairs hash];
  v16 = [(NSArray *)self->_payloadWellnessObjectResultValues hash];
  v15 = PBRepeatedInt32Hash();
  v3 = PBRepeatedInt32Hash();
  v4 = PBRepeatedInt32Hash();
  v5 = [(NSArray *)self->_payloadWellnessUnitTypes hash];
  v6 = [(NSArray *)self->_payloadWellnessValues hash];
  v7 = [(NSArray *)self->_payloadWorkoutAssociatedItems hash];
  v8 = [(NSArray *)self->_payloadWorkoutCustomizations hash];
  v9 = PBRepeatedInt32Hash();
  v10 = PBRepeatedInt32Hash();
  v11 = PBRepeatedInt32Hash();
  if ([(_INPBIntentSlotValue *)self hasType])
  {
    v12 = 2654435761 * self->_type;
  }

  else
  {
    v12 = 0;
  }

  v13 = v176 ^ v177 ^ v175 ^ v174 ^ v173 ^ v172 ^ v171 ^ v170 ^ v169 ^ v168 ^ v167 ^ v166 ^ v165 ^ v164 ^ v163 ^ v162 ^ v161 ^ v160 ^ v159 ^ v158 ^ v157 ^ v156 ^ v155 ^ v154 ^ v153 ^ v152 ^ v151 ^ v150 ^ v149 ^ v148 ^ v147 ^ v146 ^ v145 ^ v144 ^ v143 ^ v142 ^ v141 ^ v140 ^ v139 ^ v138 ^ v137 ^ v136 ^ v135 ^ v134 ^ v133 ^ v132 ^ v131 ^ v130 ^ v129 ^ v128 ^ v127 ^ v126 ^ v125 ^ v124 ^ v123 ^ v122 ^ v121 ^ v120 ^ v119 ^ v118 ^ v117 ^ v116 ^ v115 ^ v114 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97;
  return v13 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadActivities];
  payloadActivities2 = [equalCopy payloadActivities];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadActivities3 = [(_INPBIntentSlotValue *)self payloadActivities];
  if (payloadActivities3)
  {
    v8 = payloadActivities3;
    payloadActivities4 = [(_INPBIntentSlotValue *)self payloadActivities];
    payloadActivities5 = [equalCopy payloadActivities];
    v11 = [payloadActivities4 isEqual:payloadActivities5];

    if (!v11)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadActivityLists];
  payloadActivities2 = [equalCopy payloadActivityLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadActivityLists = [(_INPBIntentSlotValue *)self payloadActivityLists];
  if (payloadActivityLists)
  {
    v13 = payloadActivityLists;
    payloadActivityLists2 = [(_INPBIntentSlotValue *)self payloadActivityLists];
    payloadActivityLists3 = [equalCopy payloadActivityLists];
    v16 = [payloadActivityLists2 isEqual:payloadActivityLists3];

    if (!v16)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadAlarms];
  payloadActivities2 = [equalCopy payloadAlarms];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadAlarms = [(_INPBIntentSlotValue *)self payloadAlarms];
  if (payloadAlarms)
  {
    v18 = payloadAlarms;
    payloadAlarms2 = [(_INPBIntentSlotValue *)self payloadAlarms];
    payloadAlarms3 = [equalCopy payloadAlarms];
    v21 = [payloadAlarms2 isEqual:payloadAlarms3];

    if (!v21)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadAlarmSearchs];
  payloadActivities2 = [equalCopy payloadAlarmSearchs];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadAlarmSearchs = [(_INPBIntentSlotValue *)self payloadAlarmSearchs];
  if (payloadAlarmSearchs)
  {
    v23 = payloadAlarmSearchs;
    payloadAlarmSearchs2 = [(_INPBIntentSlotValue *)self payloadAlarmSearchs];
    payloadAlarmSearchs3 = [equalCopy payloadAlarmSearchs];
    v26 = [payloadAlarmSearchs2 isEqual:payloadAlarmSearchs3];

    if (!v26)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadAnnouncements];
  payloadActivities2 = [equalCopy payloadAnnouncements];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadAnnouncements = [(_INPBIntentSlotValue *)self payloadAnnouncements];
  if (payloadAnnouncements)
  {
    v28 = payloadAnnouncements;
    payloadAnnouncements2 = [(_INPBIntentSlotValue *)self payloadAnnouncements];
    payloadAnnouncements3 = [equalCopy payloadAnnouncements];
    v31 = [payloadAnnouncements2 isEqual:payloadAnnouncements3];

    if (!v31)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadAppIdentifiers];
  payloadActivities2 = [equalCopy payloadAppIdentifiers];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadAppIdentifiers = [(_INPBIntentSlotValue *)self payloadAppIdentifiers];
  if (payloadAppIdentifiers)
  {
    v33 = payloadAppIdentifiers;
    payloadAppIdentifiers2 = [(_INPBIntentSlotValue *)self payloadAppIdentifiers];
    payloadAppIdentifiers3 = [equalCopy payloadAppIdentifiers];
    v36 = [payloadAppIdentifiers2 isEqual:payloadAppIdentifiers3];

    if (!v36)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadArchivedObjects];
  payloadActivities2 = [equalCopy payloadArchivedObjects];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadArchivedObjects = [(_INPBIntentSlotValue *)self payloadArchivedObjects];
  if (payloadArchivedObjects)
  {
    v38 = payloadArchivedObjects;
    payloadArchivedObjects2 = [(_INPBIntentSlotValue *)self payloadArchivedObjects];
    payloadArchivedObjects3 = [equalCopy payloadArchivedObjects];
    v41 = [payloadArchivedObjects2 isEqual:payloadArchivedObjects3];

    if (!v41)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadBillDetailsValues];
  payloadActivities2 = [equalCopy payloadBillDetailsValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadBillDetailsValues = [(_INPBIntentSlotValue *)self payloadBillDetailsValues];
  if (payloadBillDetailsValues)
  {
    v43 = payloadBillDetailsValues;
    payloadBillDetailsValues2 = [(_INPBIntentSlotValue *)self payloadBillDetailsValues];
    payloadBillDetailsValues3 = [equalCopy payloadBillDetailsValues];
    v46 = [payloadBillDetailsValues2 isEqual:payloadBillDetailsValues3];

    if (!v46)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadBillPayeeValues];
  payloadActivities2 = [equalCopy payloadBillPayeeValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadBillPayeeValues = [(_INPBIntentSlotValue *)self payloadBillPayeeValues];
  if (payloadBillPayeeValues)
  {
    v48 = payloadBillPayeeValues;
    payloadBillPayeeValues2 = [(_INPBIntentSlotValue *)self payloadBillPayeeValues];
    payloadBillPayeeValues3 = [equalCopy payloadBillPayeeValues];
    v51 = [payloadBillPayeeValues2 isEqual:payloadBillPayeeValues3];

    if (!v51)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadCalendarEvents];
  payloadActivities2 = [equalCopy payloadCalendarEvents];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadCalendarEvents = [(_INPBIntentSlotValue *)self payloadCalendarEvents];
  if (payloadCalendarEvents)
  {
    v53 = payloadCalendarEvents;
    payloadCalendarEvents2 = [(_INPBIntentSlotValue *)self payloadCalendarEvents];
    payloadCalendarEvents3 = [equalCopy payloadCalendarEvents];
    v56 = [payloadCalendarEvents2 isEqual:payloadCalendarEvents3];

    if (!v56)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadCallGroups];
  payloadActivities2 = [equalCopy payloadCallGroups];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadCallGroups = [(_INPBIntentSlotValue *)self payloadCallGroups];
  if (payloadCallGroups)
  {
    v58 = payloadCallGroups;
    payloadCallGroups2 = [(_INPBIntentSlotValue *)self payloadCallGroups];
    payloadCallGroups3 = [equalCopy payloadCallGroups];
    v61 = [payloadCallGroups2 isEqual:payloadCallGroups3];

    if (!v61)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadCallGroupConversations];
  payloadActivities2 = [equalCopy payloadCallGroupConversations];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadCallGroupConversations = [(_INPBIntentSlotValue *)self payloadCallGroupConversations];
  if (payloadCallGroupConversations)
  {
    v63 = payloadCallGroupConversations;
    payloadCallGroupConversations2 = [(_INPBIntentSlotValue *)self payloadCallGroupConversations];
    payloadCallGroupConversations3 = [equalCopy payloadCallGroupConversations];
    v66 = [payloadCallGroupConversations2 isEqual:payloadCallGroupConversations3];

    if (!v66)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadCallRecordFilters];
  payloadActivities2 = [equalCopy payloadCallRecordFilters];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadCallRecordFilters = [(_INPBIntentSlotValue *)self payloadCallRecordFilters];
  if (payloadCallRecordFilters)
  {
    v68 = payloadCallRecordFilters;
    payloadCallRecordFilters2 = [(_INPBIntentSlotValue *)self payloadCallRecordFilters];
    payloadCallRecordFilters3 = [equalCopy payloadCallRecordFilters];
    v71 = [payloadCallRecordFilters2 isEqual:payloadCallRecordFilters3];

    if (!v71)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadCallRecordValues];
  payloadActivities2 = [equalCopy payloadCallRecordValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadCallRecordValues = [(_INPBIntentSlotValue *)self payloadCallRecordValues];
  if (payloadCallRecordValues)
  {
    v73 = payloadCallRecordValues;
    payloadCallRecordValues2 = [(_INPBIntentSlotValue *)self payloadCallRecordValues];
    payloadCallRecordValues3 = [equalCopy payloadCallRecordValues];
    v76 = [payloadCallRecordValues2 isEqual:payloadCallRecordValues3];

    if (!v76)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadChargingConnectorTypes];
  payloadActivities2 = [equalCopy payloadChargingConnectorTypes];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadChargingConnectorTypes = [(_INPBIntentSlotValue *)self payloadChargingConnectorTypes];
  if (payloadChargingConnectorTypes)
  {
    v78 = payloadChargingConnectorTypes;
    payloadChargingConnectorTypes2 = [(_INPBIntentSlotValue *)self payloadChargingConnectorTypes];
    payloadChargingConnectorTypes3 = [equalCopy payloadChargingConnectorTypes];
    v81 = [payloadChargingConnectorTypes2 isEqual:payloadChargingConnectorTypes3];

    if (!v81)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadContactEventTriggers];
  payloadActivities2 = [equalCopy payloadContactEventTriggers];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadContactEventTriggers = [(_INPBIntentSlotValue *)self payloadContactEventTriggers];
  if (payloadContactEventTriggers)
  {
    v83 = payloadContactEventTriggers;
    payloadContactEventTriggers2 = [(_INPBIntentSlotValue *)self payloadContactEventTriggers];
    payloadContactEventTriggers3 = [equalCopy payloadContactEventTriggers];
    v86 = [payloadContactEventTriggers2 isEqual:payloadContactEventTriggers3];

    if (!v86)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadContactLists];
  payloadActivities2 = [equalCopy payloadContactLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadContactLists = [(_INPBIntentSlotValue *)self payloadContactLists];
  if (payloadContactLists)
  {
    v88 = payloadContactLists;
    payloadContactLists2 = [(_INPBIntentSlotValue *)self payloadContactLists];
    payloadContactLists3 = [equalCopy payloadContactLists];
    v91 = [payloadContactLists2 isEqual:payloadContactLists3];

    if (!v91)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadContactValues];
  payloadActivities2 = [equalCopy payloadContactValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadContactValues = [(_INPBIntentSlotValue *)self payloadContactValues];
  if (payloadContactValues)
  {
    v93 = payloadContactValues;
    payloadContactValues2 = [(_INPBIntentSlotValue *)self payloadContactValues];
    payloadContactValues3 = [equalCopy payloadContactValues];
    v96 = [payloadContactValues2 isEqual:payloadContactValues3];

    if (!v96)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadCurrencyAmounts];
  payloadActivities2 = [equalCopy payloadCurrencyAmounts];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadCurrencyAmounts = [(_INPBIntentSlotValue *)self payloadCurrencyAmounts];
  if (payloadCurrencyAmounts)
  {
    v98 = payloadCurrencyAmounts;
    payloadCurrencyAmounts2 = [(_INPBIntentSlotValue *)self payloadCurrencyAmounts];
    payloadCurrencyAmounts3 = [equalCopy payloadCurrencyAmounts];
    v101 = [payloadCurrencyAmounts2 isEqual:payloadCurrencyAmounts3];

    if (!v101)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadCustomObjects];
  payloadActivities2 = [equalCopy payloadCustomObjects];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadCustomObjects = [(_INPBIntentSlotValue *)self payloadCustomObjects];
  if (payloadCustomObjects)
  {
    v103 = payloadCustomObjects;
    payloadCustomObjects2 = [(_INPBIntentSlotValue *)self payloadCustomObjects];
    payloadCustomObjects3 = [equalCopy payloadCustomObjects];
    v106 = [payloadCustomObjects2 isEqual:payloadCustomObjects3];

    if (!v106)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDataStrings];
  payloadActivities2 = [equalCopy payloadDataStrings];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDataStrings = [(_INPBIntentSlotValue *)self payloadDataStrings];
  if (payloadDataStrings)
  {
    v108 = payloadDataStrings;
    payloadDataStrings2 = [(_INPBIntentSlotValue *)self payloadDataStrings];
    payloadDataStrings3 = [equalCopy payloadDataStrings];
    v111 = [payloadDataStrings2 isEqual:payloadDataStrings3];

    if (!v111)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDataStringLists];
  payloadActivities2 = [equalCopy payloadDataStringLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDataStringLists = [(_INPBIntentSlotValue *)self payloadDataStringLists];
  if (payloadDataStringLists)
  {
    v113 = payloadDataStringLists;
    payloadDataStringLists2 = [(_INPBIntentSlotValue *)self payloadDataStringLists];
    payloadDataStringLists3 = [equalCopy payloadDataStringLists];
    v116 = [payloadDataStringLists2 isEqual:payloadDataStringLists3];

    if (!v116)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDateTimeRangeLists];
  payloadActivities2 = [equalCopy payloadDateTimeRangeLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDateTimeRangeLists = [(_INPBIntentSlotValue *)self payloadDateTimeRangeLists];
  if (payloadDateTimeRangeLists)
  {
    v118 = payloadDateTimeRangeLists;
    payloadDateTimeRangeLists2 = [(_INPBIntentSlotValue *)self payloadDateTimeRangeLists];
    payloadDateTimeRangeLists3 = [equalCopy payloadDateTimeRangeLists];
    v121 = [payloadDateTimeRangeLists2 isEqual:payloadDateTimeRangeLists3];

    if (!v121)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDateTimeRangeValues];
  payloadActivities2 = [equalCopy payloadDateTimeRangeValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDateTimeRangeValues = [(_INPBIntentSlotValue *)self payloadDateTimeRangeValues];
  if (payloadDateTimeRangeValues)
  {
    v123 = payloadDateTimeRangeValues;
    payloadDateTimeRangeValues2 = [(_INPBIntentSlotValue *)self payloadDateTimeRangeValues];
    payloadDateTimeRangeValues3 = [equalCopy payloadDateTimeRangeValues];
    v126 = [payloadDateTimeRangeValues2 isEqual:payloadDateTimeRangeValues3];

    if (!v126)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDateTimeValues];
  payloadActivities2 = [equalCopy payloadDateTimeValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDateTimeValues = [(_INPBIntentSlotValue *)self payloadDateTimeValues];
  if (payloadDateTimeValues)
  {
    v128 = payloadDateTimeValues;
    payloadDateTimeValues2 = [(_INPBIntentSlotValue *)self payloadDateTimeValues];
    payloadDateTimeValues3 = [equalCopy payloadDateTimeValues];
    v131 = [payloadDateTimeValues2 isEqual:payloadDateTimeValues3];

    if (!v131)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDevices];
  payloadActivities2 = [equalCopy payloadDevices];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDevices = [(_INPBIntentSlotValue *)self payloadDevices];
  if (payloadDevices)
  {
    v133 = payloadDevices;
    payloadDevices2 = [(_INPBIntentSlotValue *)self payloadDevices];
    payloadDevices3 = [equalCopy payloadDevices];
    v136 = [payloadDevices2 isEqual:payloadDevices3];

    if (!v136)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDeviceDetails];
  payloadActivities2 = [equalCopy payloadDeviceDetails];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDeviceDetails = [(_INPBIntentSlotValue *)self payloadDeviceDetails];
  if (payloadDeviceDetails)
  {
    v138 = payloadDeviceDetails;
    payloadDeviceDetails2 = [(_INPBIntentSlotValue *)self payloadDeviceDetails];
    payloadDeviceDetails3 = [equalCopy payloadDeviceDetails];
    v141 = [payloadDeviceDetails2 isEqual:payloadDeviceDetails3];

    if (!v141)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDialingContacts];
  payloadActivities2 = [equalCopy payloadDialingContacts];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDialingContacts = [(_INPBIntentSlotValue *)self payloadDialingContacts];
  if (payloadDialingContacts)
  {
    v143 = payloadDialingContacts;
    payloadDialingContacts2 = [(_INPBIntentSlotValue *)self payloadDialingContacts];
    payloadDialingContacts3 = [equalCopy payloadDialingContacts];
    v146 = [payloadDialingContacts2 isEqual:payloadDialingContacts3];

    if (!v146)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDistanceLists];
  payloadActivities2 = [equalCopy payloadDistanceLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDistanceLists = [(_INPBIntentSlotValue *)self payloadDistanceLists];
  if (payloadDistanceLists)
  {
    v148 = payloadDistanceLists;
    payloadDistanceLists2 = [(_INPBIntentSlotValue *)self payloadDistanceLists];
    payloadDistanceLists3 = [equalCopy payloadDistanceLists];
    v151 = [payloadDistanceLists2 isEqual:payloadDistanceLists3];

    if (!v151)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDistanceValues];
  payloadActivities2 = [equalCopy payloadDistanceValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDistanceValues = [(_INPBIntentSlotValue *)self payloadDistanceValues];
  if (payloadDistanceValues)
  {
    v153 = payloadDistanceValues;
    payloadDistanceValues2 = [(_INPBIntentSlotValue *)self payloadDistanceValues];
    payloadDistanceValues3 = [equalCopy payloadDistanceValues];
    v156 = [payloadDistanceValues2 isEqual:payloadDistanceValues3];

    if (!v156)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDoubleLists];
  payloadActivities2 = [equalCopy payloadDoubleLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDoubleLists = [(_INPBIntentSlotValue *)self payloadDoubleLists];
  if (payloadDoubleLists)
  {
    v158 = payloadDoubleLists;
    payloadDoubleLists2 = [(_INPBIntentSlotValue *)self payloadDoubleLists];
    payloadDoubleLists3 = [equalCopy payloadDoubleLists];
    v161 = [payloadDoubleLists2 isEqual:payloadDoubleLists3];

    if (!v161)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadDoubleValues];
  payloadActivities2 = [equalCopy payloadDoubleValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadDoubleValues = [(_INPBIntentSlotValue *)self payloadDoubleValues];
  if (payloadDoubleValues)
  {
    v163 = payloadDoubleValues;
    payloadDoubleValues2 = [(_INPBIntentSlotValue *)self payloadDoubleValues];
    payloadDoubleValues3 = [equalCopy payloadDoubleValues];
    v166 = [payloadDoubleValues2 isEqual:payloadDoubleValues3];

    if (!v166)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadEnergyValues];
  payloadActivities2 = [equalCopy payloadEnergyValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadEnergyValues = [(_INPBIntentSlotValue *)self payloadEnergyValues];
  if (payloadEnergyValues)
  {
    v168 = payloadEnergyValues;
    payloadEnergyValues2 = [(_INPBIntentSlotValue *)self payloadEnergyValues];
    payloadEnergyValues3 = [equalCopy payloadEnergyValues];
    v171 = [payloadEnergyValues2 isEqual:payloadEnergyValues3];

    if (!v171)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadEnumerations];
  payloadActivities2 = [equalCopy payloadEnumerations];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadEnumerations = [(_INPBIntentSlotValue *)self payloadEnumerations];
  if (payloadEnumerations)
  {
    v173 = payloadEnumerations;
    payloadEnumerations2 = [(_INPBIntentSlotValue *)self payloadEnumerations];
    payloadEnumerations3 = [equalCopy payloadEnumerations];
    v176 = [payloadEnumerations2 isEqual:payloadEnumerations3];

    if (!v176)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadEvents];
  payloadActivities2 = [equalCopy payloadEvents];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadEvents = [(_INPBIntentSlotValue *)self payloadEvents];
  if (payloadEvents)
  {
    v178 = payloadEvents;
    payloadEvents2 = [(_INPBIntentSlotValue *)self payloadEvents];
    payloadEvents3 = [equalCopy payloadEvents];
    v181 = [payloadEvents2 isEqual:payloadEvents3];

    if (!v181)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadEventLists];
  payloadActivities2 = [equalCopy payloadEventLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadEventLists = [(_INPBIntentSlotValue *)self payloadEventLists];
  if (payloadEventLists)
  {
    v183 = payloadEventLists;
    payloadEventLists2 = [(_INPBIntentSlotValue *)self payloadEventLists];
    payloadEventLists3 = [equalCopy payloadEventLists];
    v186 = [payloadEventLists2 isEqual:payloadEventLists3];

    if (!v186)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadEventParticipants];
  payloadActivities2 = [equalCopy payloadEventParticipants];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadEventParticipants = [(_INPBIntentSlotValue *)self payloadEventParticipants];
  if (payloadEventParticipants)
  {
    v188 = payloadEventParticipants;
    payloadEventParticipants2 = [(_INPBIntentSlotValue *)self payloadEventParticipants];
    payloadEventParticipants3 = [equalCopy payloadEventParticipants];
    v191 = [payloadEventParticipants2 isEqual:payloadEventParticipants3];

    if (!v191)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadFiles];
  payloadActivities2 = [equalCopy payloadFiles];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadFiles = [(_INPBIntentSlotValue *)self payloadFiles];
  if (payloadFiles)
  {
    v193 = payloadFiles;
    payloadFiles2 = [(_INPBIntentSlotValue *)self payloadFiles];
    payloadFiles3 = [equalCopy payloadFiles];
    v196 = [payloadFiles2 isEqual:payloadFiles3];

    if (!v196)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadFileProperties];
  payloadActivities2 = [equalCopy payloadFileProperties];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadFileProperties = [(_INPBIntentSlotValue *)self payloadFileProperties];
  if (payloadFileProperties)
  {
    v198 = payloadFileProperties;
    payloadFileProperties2 = [(_INPBIntentSlotValue *)self payloadFileProperties];
    payloadFileProperties3 = [equalCopy payloadFileProperties];
    v201 = [payloadFileProperties2 isEqual:payloadFileProperties3];

    if (!v201)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadFilePropertyValues];
  payloadActivities2 = [equalCopy payloadFilePropertyValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadFilePropertyValues = [(_INPBIntentSlotValue *)self payloadFilePropertyValues];
  if (payloadFilePropertyValues)
  {
    v203 = payloadFilePropertyValues;
    payloadFilePropertyValues2 = [(_INPBIntentSlotValue *)self payloadFilePropertyValues];
    payloadFilePropertyValues3 = [equalCopy payloadFilePropertyValues];
    v206 = [payloadFilePropertyValues2 isEqual:payloadFilePropertyValues3];

    if (!v206)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadFinancialAccountValues];
  payloadActivities2 = [equalCopy payloadFinancialAccountValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadFinancialAccountValues = [(_INPBIntentSlotValue *)self payloadFinancialAccountValues];
  if (payloadFinancialAccountValues)
  {
    v208 = payloadFinancialAccountValues;
    payloadFinancialAccountValues2 = [(_INPBIntentSlotValue *)self payloadFinancialAccountValues];
    payloadFinancialAccountValues3 = [equalCopy payloadFinancialAccountValues];
    v211 = [payloadFinancialAccountValues2 isEqual:payloadFinancialAccountValues3];

    if (!v211)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadGeographicalFeatures];
  payloadActivities2 = [equalCopy payloadGeographicalFeatures];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadGeographicalFeatures = [(_INPBIntentSlotValue *)self payloadGeographicalFeatures];
  if (payloadGeographicalFeatures)
  {
    v213 = payloadGeographicalFeatures;
    payloadGeographicalFeatures2 = [(_INPBIntentSlotValue *)self payloadGeographicalFeatures];
    payloadGeographicalFeatures3 = [equalCopy payloadGeographicalFeatures];
    v216 = [payloadGeographicalFeatures2 isEqual:payloadGeographicalFeatures3];

    if (!v216)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadGeographicalFeatureLists];
  payloadActivities2 = [equalCopy payloadGeographicalFeatureLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadGeographicalFeatureLists = [(_INPBIntentSlotValue *)self payloadGeographicalFeatureLists];
  if (payloadGeographicalFeatureLists)
  {
    v218 = payloadGeographicalFeatureLists;
    payloadGeographicalFeatureLists2 = [(_INPBIntentSlotValue *)self payloadGeographicalFeatureLists];
    payloadGeographicalFeatureLists3 = [equalCopy payloadGeographicalFeatureLists];
    v221 = [payloadGeographicalFeatureLists2 isEqual:payloadGeographicalFeatureLists3];

    if (!v221)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadGetSettingResponseDatas];
  payloadActivities2 = [equalCopy payloadGetSettingResponseDatas];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadGetSettingResponseDatas = [(_INPBIntentSlotValue *)self payloadGetSettingResponseDatas];
  if (payloadGetSettingResponseDatas)
  {
    v223 = payloadGetSettingResponseDatas;
    payloadGetSettingResponseDatas2 = [(_INPBIntentSlotValue *)self payloadGetSettingResponseDatas];
    payloadGetSettingResponseDatas3 = [equalCopy payloadGetSettingResponseDatas];
    v226 = [payloadGetSettingResponseDatas2 isEqual:payloadGetSettingResponseDatas3];

    if (!v226)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadHomeAttributes];
  payloadActivities2 = [equalCopy payloadHomeAttributes];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadHomeAttributes = [(_INPBIntentSlotValue *)self payloadHomeAttributes];
  if (payloadHomeAttributes)
  {
    v228 = payloadHomeAttributes;
    payloadHomeAttributes2 = [(_INPBIntentSlotValue *)self payloadHomeAttributes];
    payloadHomeAttributes3 = [equalCopy payloadHomeAttributes];
    v231 = [payloadHomeAttributes2 isEqual:payloadHomeAttributes3];

    if (!v231)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadHomeAttributeValues];
  payloadActivities2 = [equalCopy payloadHomeAttributeValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadHomeAttributeValues = [(_INPBIntentSlotValue *)self payloadHomeAttributeValues];
  if (payloadHomeAttributeValues)
  {
    v233 = payloadHomeAttributeValues;
    payloadHomeAttributeValues2 = [(_INPBIntentSlotValue *)self payloadHomeAttributeValues];
    payloadHomeAttributeValues3 = [equalCopy payloadHomeAttributeValues];
    v236 = [payloadHomeAttributeValues2 isEqual:payloadHomeAttributeValues3];

    if (!v236)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadHomeEntities];
  payloadActivities2 = [equalCopy payloadHomeEntities];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadHomeEntities = [(_INPBIntentSlotValue *)self payloadHomeEntities];
  if (payloadHomeEntities)
  {
    v238 = payloadHomeEntities;
    payloadHomeEntities2 = [(_INPBIntentSlotValue *)self payloadHomeEntities];
    payloadHomeEntities3 = [equalCopy payloadHomeEntities];
    v241 = [payloadHomeEntities2 isEqual:payloadHomeEntities3];

    if (!v241)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadHomeFilters];
  payloadActivities2 = [equalCopy payloadHomeFilters];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadHomeFilters = [(_INPBIntentSlotValue *)self payloadHomeFilters];
  if (payloadHomeFilters)
  {
    v243 = payloadHomeFilters;
    payloadHomeFilters2 = [(_INPBIntentSlotValue *)self payloadHomeFilters];
    payloadHomeFilters3 = [equalCopy payloadHomeFilters];
    v246 = [payloadHomeFilters2 isEqual:payloadHomeFilters3];

    if (!v246)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadHomeUserTasks];
  payloadActivities2 = [equalCopy payloadHomeUserTasks];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadHomeUserTasks = [(_INPBIntentSlotValue *)self payloadHomeUserTasks];
  if (payloadHomeUserTasks)
  {
    v248 = payloadHomeUserTasks;
    payloadHomeUserTasks2 = [(_INPBIntentSlotValue *)self payloadHomeUserTasks];
    payloadHomeUserTasks3 = [equalCopy payloadHomeUserTasks];
    v251 = [payloadHomeUserTasks2 isEqual:payloadHomeUserTasks3];

    if (!v251)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadIntegerLists];
  payloadActivities2 = [equalCopy payloadIntegerLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadIntegerLists = [(_INPBIntentSlotValue *)self payloadIntegerLists];
  if (payloadIntegerLists)
  {
    v253 = payloadIntegerLists;
    payloadIntegerLists2 = [(_INPBIntentSlotValue *)self payloadIntegerLists];
    payloadIntegerLists3 = [equalCopy payloadIntegerLists];
    v256 = [payloadIntegerLists2 isEqual:payloadIntegerLists3];

    if (!v256)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadIntegerValues];
  payloadActivities2 = [equalCopy payloadIntegerValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadIntegerValues = [(_INPBIntentSlotValue *)self payloadIntegerValues];
  if (payloadIntegerValues)
  {
    v258 = payloadIntegerValues;
    payloadIntegerValues2 = [(_INPBIntentSlotValue *)self payloadIntegerValues];
    payloadIntegerValues3 = [equalCopy payloadIntegerValues];
    v261 = [payloadIntegerValues2 isEqual:payloadIntegerValues3];

    if (!v261)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadIntents];
  payloadActivities2 = [equalCopy payloadIntents];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadIntents = [(_INPBIntentSlotValue *)self payloadIntents];
  if (payloadIntents)
  {
    v263 = payloadIntents;
    payloadIntents2 = [(_INPBIntentSlotValue *)self payloadIntents];
    payloadIntents3 = [equalCopy payloadIntents];
    v266 = [payloadIntents2 isEqual:payloadIntents3];

    if (!v266)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadIntentExecutionResults];
  payloadActivities2 = [equalCopy payloadIntentExecutionResults];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadIntentExecutionResults = [(_INPBIntentSlotValue *)self payloadIntentExecutionResults];
  if (payloadIntentExecutionResults)
  {
    v268 = payloadIntentExecutionResults;
    payloadIntentExecutionResults2 = [(_INPBIntentSlotValue *)self payloadIntentExecutionResults];
    payloadIntentExecutionResults3 = [equalCopy payloadIntentExecutionResults];
    v271 = [payloadIntentExecutionResults2 isEqual:payloadIntentExecutionResults3];

    if (!v271)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadLocations];
  payloadActivities2 = [equalCopy payloadLocations];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadLocations = [(_INPBIntentSlotValue *)self payloadLocations];
  if (payloadLocations)
  {
    v273 = payloadLocations;
    payloadLocations2 = [(_INPBIntentSlotValue *)self payloadLocations];
    payloadLocations3 = [equalCopy payloadLocations];
    v276 = [payloadLocations2 isEqual:payloadLocations3];

    if (!v276)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadLocationLists];
  payloadActivities2 = [equalCopy payloadLocationLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadLocationLists = [(_INPBIntentSlotValue *)self payloadLocationLists];
  if (payloadLocationLists)
  {
    v278 = payloadLocationLists;
    payloadLocationLists2 = [(_INPBIntentSlotValue *)self payloadLocationLists];
    payloadLocationLists3 = [equalCopy payloadLocationLists];
    v281 = [payloadLocationLists2 isEqual:payloadLocationLists3];

    if (!v281)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadLongLists];
  payloadActivities2 = [equalCopy payloadLongLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadLongLists = [(_INPBIntentSlotValue *)self payloadLongLists];
  if (payloadLongLists)
  {
    v283 = payloadLongLists;
    payloadLongLists2 = [(_INPBIntentSlotValue *)self payloadLongLists];
    payloadLongLists3 = [equalCopy payloadLongLists];
    v286 = [payloadLongLists2 isEqual:payloadLongLists3];

    if (!v286)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadLongValues];
  payloadActivities2 = [equalCopy payloadLongValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadLongValues = [(_INPBIntentSlotValue *)self payloadLongValues];
  if (payloadLongValues)
  {
    v288 = payloadLongValues;
    payloadLongValues2 = [(_INPBIntentSlotValue *)self payloadLongValues];
    payloadLongValues3 = [equalCopy payloadLongValues];
    v291 = [payloadLongValues2 isEqual:payloadLongValues3];

    if (!v291)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadMassValues];
  payloadActivities2 = [equalCopy payloadMassValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadMassValues = [(_INPBIntentSlotValue *)self payloadMassValues];
  if (payloadMassValues)
  {
    v293 = payloadMassValues;
    payloadMassValues2 = [(_INPBIntentSlotValue *)self payloadMassValues];
    payloadMassValues3 = [equalCopy payloadMassValues];
    v296 = [payloadMassValues2 isEqual:payloadMassValues3];

    if (!v296)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadMediaDestinations];
  payloadActivities2 = [equalCopy payloadMediaDestinations];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadMediaDestinations = [(_INPBIntentSlotValue *)self payloadMediaDestinations];
  if (payloadMediaDestinations)
  {
    v298 = payloadMediaDestinations;
    payloadMediaDestinations2 = [(_INPBIntentSlotValue *)self payloadMediaDestinations];
    payloadMediaDestinations3 = [equalCopy payloadMediaDestinations];
    v301 = [payloadMediaDestinations2 isEqual:payloadMediaDestinations3];

    if (!v301)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadMediaItemGroups];
  payloadActivities2 = [equalCopy payloadMediaItemGroups];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadMediaItemGroups = [(_INPBIntentSlotValue *)self payloadMediaItemGroups];
  if (payloadMediaItemGroups)
  {
    v303 = payloadMediaItemGroups;
    payloadMediaItemGroups2 = [(_INPBIntentSlotValue *)self payloadMediaItemGroups];
    payloadMediaItemGroups3 = [equalCopy payloadMediaItemGroups];
    v306 = [payloadMediaItemGroups2 isEqual:payloadMediaItemGroups3];

    if (!v306)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadMediaItemValues];
  payloadActivities2 = [equalCopy payloadMediaItemValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadMediaItemValues = [(_INPBIntentSlotValue *)self payloadMediaItemValues];
  if (payloadMediaItemValues)
  {
    v308 = payloadMediaItemValues;
    payloadMediaItemValues2 = [(_INPBIntentSlotValue *)self payloadMediaItemValues];
    payloadMediaItemValues3 = [equalCopy payloadMediaItemValues];
    v311 = [payloadMediaItemValues2 isEqual:payloadMediaItemValues3];

    if (!v311)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadMediaSearchs];
  payloadActivities2 = [equalCopy payloadMediaSearchs];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadMediaSearchs = [(_INPBIntentSlotValue *)self payloadMediaSearchs];
  if (payloadMediaSearchs)
  {
    v313 = payloadMediaSearchs;
    payloadMediaSearchs2 = [(_INPBIntentSlotValue *)self payloadMediaSearchs];
    payloadMediaSearchs3 = [equalCopy payloadMediaSearchs];
    v316 = [payloadMediaSearchs2 isEqual:payloadMediaSearchs3];

    if (!v316)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadModifyNicknames];
  payloadActivities2 = [equalCopy payloadModifyNicknames];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadModifyNicknames = [(_INPBIntentSlotValue *)self payloadModifyNicknames];
  if (payloadModifyNicknames)
  {
    v318 = payloadModifyNicknames;
    payloadModifyNicknames2 = [(_INPBIntentSlotValue *)self payloadModifyNicknames];
    payloadModifyNicknames3 = [equalCopy payloadModifyNicknames];
    v321 = [payloadModifyNicknames2 isEqual:payloadModifyNicknames3];

    if (!v321)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadModifyRelationships];
  payloadActivities2 = [equalCopy payloadModifyRelationships];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadModifyRelationships = [(_INPBIntentSlotValue *)self payloadModifyRelationships];
  if (payloadModifyRelationships)
  {
    v323 = payloadModifyRelationships;
    payloadModifyRelationships2 = [(_INPBIntentSlotValue *)self payloadModifyRelationships];
    payloadModifyRelationships3 = [equalCopy payloadModifyRelationships];
    v326 = [payloadModifyRelationships2 isEqual:payloadModifyRelationships3];

    if (!v326)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadNotes];
  payloadActivities2 = [equalCopy payloadNotes];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadNotes = [(_INPBIntentSlotValue *)self payloadNotes];
  if (payloadNotes)
  {
    v328 = payloadNotes;
    payloadNotes2 = [(_INPBIntentSlotValue *)self payloadNotes];
    payloadNotes3 = [equalCopy payloadNotes];
    v331 = [payloadNotes2 isEqual:payloadNotes3];

    if (!v331)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadNoteContents];
  payloadActivities2 = [equalCopy payloadNoteContents];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadNoteContents = [(_INPBIntentSlotValue *)self payloadNoteContents];
  if (payloadNoteContents)
  {
    v333 = payloadNoteContents;
    payloadNoteContents2 = [(_INPBIntentSlotValue *)self payloadNoteContents];
    payloadNoteContents3 = [equalCopy payloadNoteContents];
    v336 = [payloadNoteContents2 isEqual:payloadNoteContents3];

    if (!v336)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadNumericSettingValues];
  payloadActivities2 = [equalCopy payloadNumericSettingValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadNumericSettingValues = [(_INPBIntentSlotValue *)self payloadNumericSettingValues];
  if (payloadNumericSettingValues)
  {
    v338 = payloadNumericSettingValues;
    payloadNumericSettingValues2 = [(_INPBIntentSlotValue *)self payloadNumericSettingValues];
    payloadNumericSettingValues3 = [equalCopy payloadNumericSettingValues];
    v341 = [payloadNumericSettingValues2 isEqual:payloadNumericSettingValues3];

    if (!v341)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPaymentAmountValues];
  payloadActivities2 = [equalCopy payloadPaymentAmountValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPaymentAmountValues = [(_INPBIntentSlotValue *)self payloadPaymentAmountValues];
  if (payloadPaymentAmountValues)
  {
    v343 = payloadPaymentAmountValues;
    payloadPaymentAmountValues2 = [(_INPBIntentSlotValue *)self payloadPaymentAmountValues];
    payloadPaymentAmountValues3 = [equalCopy payloadPaymentAmountValues];
    v346 = [payloadPaymentAmountValues2 isEqual:payloadPaymentAmountValues3];

    if (!v346)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPaymentMethodLists];
  payloadActivities2 = [equalCopy payloadPaymentMethodLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPaymentMethodLists = [(_INPBIntentSlotValue *)self payloadPaymentMethodLists];
  if (payloadPaymentMethodLists)
  {
    v348 = payloadPaymentMethodLists;
    payloadPaymentMethodLists2 = [(_INPBIntentSlotValue *)self payloadPaymentMethodLists];
    payloadPaymentMethodLists3 = [equalCopy payloadPaymentMethodLists];
    v351 = [payloadPaymentMethodLists2 isEqual:payloadPaymentMethodLists3];

    if (!v351)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPaymentMethodValues];
  payloadActivities2 = [equalCopy payloadPaymentMethodValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPaymentMethodValues = [(_INPBIntentSlotValue *)self payloadPaymentMethodValues];
  if (payloadPaymentMethodValues)
  {
    v353 = payloadPaymentMethodValues;
    payloadPaymentMethodValues2 = [(_INPBIntentSlotValue *)self payloadPaymentMethodValues];
    payloadPaymentMethodValues3 = [equalCopy payloadPaymentMethodValues];
    v356 = [payloadPaymentMethodValues2 isEqual:payloadPaymentMethodValues3];

    if (!v356)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPlaces];
  payloadActivities2 = [equalCopy payloadPlaces];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPlaces = [(_INPBIntentSlotValue *)self payloadPlaces];
  if (payloadPlaces)
  {
    v358 = payloadPlaces;
    payloadPlaces2 = [(_INPBIntentSlotValue *)self payloadPlaces];
    payloadPlaces3 = [equalCopy payloadPlaces];
    v361 = [payloadPlaces2 isEqual:payloadPlaces3];

    if (!v361)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPlaceLists];
  payloadActivities2 = [equalCopy payloadPlaceLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPlaceLists = [(_INPBIntentSlotValue *)self payloadPlaceLists];
  if (payloadPlaceLists)
  {
    v363 = payloadPlaceLists;
    payloadPlaceLists2 = [(_INPBIntentSlotValue *)self payloadPlaceLists];
    payloadPlaceLists3 = [equalCopy payloadPlaceLists];
    v366 = [payloadPlaceLists2 isEqual:payloadPlaceLists3];

    if (!v366)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPrimitiveBools];
  payloadActivities2 = [equalCopy payloadPrimitiveBools];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPrimitiveBools = [(_INPBIntentSlotValue *)self payloadPrimitiveBools];
  if (payloadPrimitiveBools)
  {
    v368 = payloadPrimitiveBools;
    payloadPrimitiveBools2 = [(_INPBIntentSlotValue *)self payloadPrimitiveBools];
    payloadPrimitiveBools3 = [equalCopy payloadPrimitiveBools];
    v371 = [payloadPrimitiveBools2 isEqual:payloadPrimitiveBools3];

    if (!v371)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPrimitiveDoubles];
  payloadActivities2 = [equalCopy payloadPrimitiveDoubles];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPrimitiveDoubles = [(_INPBIntentSlotValue *)self payloadPrimitiveDoubles];
  if (payloadPrimitiveDoubles)
  {
    v373 = payloadPrimitiveDoubles;
    payloadPrimitiveDoubles2 = [(_INPBIntentSlotValue *)self payloadPrimitiveDoubles];
    payloadPrimitiveDoubles3 = [equalCopy payloadPrimitiveDoubles];
    v376 = [payloadPrimitiveDoubles2 isEqual:payloadPrimitiveDoubles3];

    if (!v376)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPrimitiveInts];
  payloadActivities2 = [equalCopy payloadPrimitiveInts];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPrimitiveInts = [(_INPBIntentSlotValue *)self payloadPrimitiveInts];
  if (payloadPrimitiveInts)
  {
    v378 = payloadPrimitiveInts;
    payloadPrimitiveInts2 = [(_INPBIntentSlotValue *)self payloadPrimitiveInts];
    payloadPrimitiveInts3 = [equalCopy payloadPrimitiveInts];
    v381 = [payloadPrimitiveInts2 isEqual:payloadPrimitiveInts3];

    if (!v381)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPrimitiveLongs];
  payloadActivities2 = [equalCopy payloadPrimitiveLongs];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPrimitiveLongs = [(_INPBIntentSlotValue *)self payloadPrimitiveLongs];
  if (payloadPrimitiveLongs)
  {
    v383 = payloadPrimitiveLongs;
    payloadPrimitiveLongs2 = [(_INPBIntentSlotValue *)self payloadPrimitiveLongs];
    payloadPrimitiveLongs3 = [equalCopy payloadPrimitiveLongs];
    v386 = [payloadPrimitiveLongs2 isEqual:payloadPrimitiveLongs3];

    if (!v386)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPrimitiveStrings];
  payloadActivities2 = [equalCopy payloadPrimitiveStrings];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPrimitiveStrings = [(_INPBIntentSlotValue *)self payloadPrimitiveStrings];
  if (payloadPrimitiveStrings)
  {
    v388 = payloadPrimitiveStrings;
    payloadPrimitiveStrings2 = [(_INPBIntentSlotValue *)self payloadPrimitiveStrings];
    payloadPrimitiveStrings3 = [equalCopy payloadPrimitiveStrings];
    v391 = [payloadPrimitiveStrings2 isEqual:payloadPrimitiveStrings3];

    if (!v391)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPrivateAddMediaIntentDatas];
  payloadActivities2 = [equalCopy payloadPrivateAddMediaIntentDatas];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPrivateAddMediaIntentDatas = [(_INPBIntentSlotValue *)self payloadPrivateAddMediaIntentDatas];
  if (payloadPrivateAddMediaIntentDatas)
  {
    v393 = payloadPrivateAddMediaIntentDatas;
    payloadPrivateAddMediaIntentDatas2 = [(_INPBIntentSlotValue *)self payloadPrivateAddMediaIntentDatas];
    payloadPrivateAddMediaIntentDatas3 = [equalCopy payloadPrivateAddMediaIntentDatas];
    v396 = [payloadPrivateAddMediaIntentDatas2 isEqual:payloadPrivateAddMediaIntentDatas3];

    if (!v396)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPrivatePlayMediaIntentDatas];
  payloadActivities2 = [equalCopy payloadPrivatePlayMediaIntentDatas];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPrivatePlayMediaIntentDatas = [(_INPBIntentSlotValue *)self payloadPrivatePlayMediaIntentDatas];
  if (payloadPrivatePlayMediaIntentDatas)
  {
    v398 = payloadPrivatePlayMediaIntentDatas;
    payloadPrivatePlayMediaIntentDatas2 = [(_INPBIntentSlotValue *)self payloadPrivatePlayMediaIntentDatas];
    payloadPrivatePlayMediaIntentDatas3 = [equalCopy payloadPrivatePlayMediaIntentDatas];
    v401 = [payloadPrivatePlayMediaIntentDatas2 isEqual:payloadPrivatePlayMediaIntentDatas3];

    if (!v401)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPrivateSearchForMediaIntentDatas];
  payloadActivities2 = [equalCopy payloadPrivateSearchForMediaIntentDatas];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPrivateSearchForMediaIntentDatas = [(_INPBIntentSlotValue *)self payloadPrivateSearchForMediaIntentDatas];
  if (payloadPrivateSearchForMediaIntentDatas)
  {
    v403 = payloadPrivateSearchForMediaIntentDatas;
    payloadPrivateSearchForMediaIntentDatas2 = [(_INPBIntentSlotValue *)self payloadPrivateSearchForMediaIntentDatas];
    payloadPrivateSearchForMediaIntentDatas3 = [equalCopy payloadPrivateSearchForMediaIntentDatas];
    v406 = [payloadPrivateSearchForMediaIntentDatas2 isEqual:payloadPrivateSearchForMediaIntentDatas3];

    if (!v406)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadPrivateUpdateMediaAffinityIntentDatas];
  payloadActivities2 = [equalCopy payloadPrivateUpdateMediaAffinityIntentDatas];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadPrivateUpdateMediaAffinityIntentDatas = [(_INPBIntentSlotValue *)self payloadPrivateUpdateMediaAffinityIntentDatas];
  if (payloadPrivateUpdateMediaAffinityIntentDatas)
  {
    v408 = payloadPrivateUpdateMediaAffinityIntentDatas;
    payloadPrivateUpdateMediaAffinityIntentDatas2 = [(_INPBIntentSlotValue *)self payloadPrivateUpdateMediaAffinityIntentDatas];
    payloadPrivateUpdateMediaAffinityIntentDatas3 = [equalCopy payloadPrivateUpdateMediaAffinityIntentDatas];
    v411 = [payloadPrivateUpdateMediaAffinityIntentDatas2 isEqual:payloadPrivateUpdateMediaAffinityIntentDatas3];

    if (!v411)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadSendMessageAttachments];
  payloadActivities2 = [equalCopy payloadSendMessageAttachments];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadSendMessageAttachments = [(_INPBIntentSlotValue *)self payloadSendMessageAttachments];
  if (payloadSendMessageAttachments)
  {
    v413 = payloadSendMessageAttachments;
    payloadSendMessageAttachments2 = [(_INPBIntentSlotValue *)self payloadSendMessageAttachments];
    payloadSendMessageAttachments3 = [equalCopy payloadSendMessageAttachments];
    v416 = [payloadSendMessageAttachments2 isEqual:payloadSendMessageAttachments3];

    if (!v416)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadSettingMetadatas];
  payloadActivities2 = [equalCopy payloadSettingMetadatas];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadSettingMetadatas = [(_INPBIntentSlotValue *)self payloadSettingMetadatas];
  if (payloadSettingMetadatas)
  {
    v418 = payloadSettingMetadatas;
    payloadSettingMetadatas2 = [(_INPBIntentSlotValue *)self payloadSettingMetadatas];
    payloadSettingMetadatas3 = [equalCopy payloadSettingMetadatas];
    v421 = [payloadSettingMetadatas2 isEqual:payloadSettingMetadatas3];

    if (!v421)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadShareDestinations];
  payloadActivities2 = [equalCopy payloadShareDestinations];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadShareDestinations = [(_INPBIntentSlotValue *)self payloadShareDestinations];
  if (payloadShareDestinations)
  {
    v423 = payloadShareDestinations;
    payloadShareDestinations2 = [(_INPBIntentSlotValue *)self payloadShareDestinations];
    payloadShareDestinations3 = [equalCopy payloadShareDestinations];
    v426 = [payloadShareDestinations2 isEqual:payloadShareDestinations3];

    if (!v426)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadSleepAlarmAttributes];
  payloadActivities2 = [equalCopy payloadSleepAlarmAttributes];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadSleepAlarmAttributes = [(_INPBIntentSlotValue *)self payloadSleepAlarmAttributes];
  if (payloadSleepAlarmAttributes)
  {
    v428 = payloadSleepAlarmAttributes;
    payloadSleepAlarmAttributes2 = [(_INPBIntentSlotValue *)self payloadSleepAlarmAttributes];
    payloadSleepAlarmAttributes3 = [equalCopy payloadSleepAlarmAttributes];
    v431 = [payloadSleepAlarmAttributes2 isEqual:payloadSleepAlarmAttributes3];

    if (!v431)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadSpatialEventTriggers];
  payloadActivities2 = [equalCopy payloadSpatialEventTriggers];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadSpatialEventTriggers = [(_INPBIntentSlotValue *)self payloadSpatialEventTriggers];
  if (payloadSpatialEventTriggers)
  {
    v433 = payloadSpatialEventTriggers;
    payloadSpatialEventTriggers2 = [(_INPBIntentSlotValue *)self payloadSpatialEventTriggers];
    payloadSpatialEventTriggers3 = [equalCopy payloadSpatialEventTriggers];
    v436 = [payloadSpatialEventTriggers2 isEqual:payloadSpatialEventTriggers3];

    if (!v436)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadSpeedValues];
  payloadActivities2 = [equalCopy payloadSpeedValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadSpeedValues = [(_INPBIntentSlotValue *)self payloadSpeedValues];
  if (payloadSpeedValues)
  {
    v438 = payloadSpeedValues;
    payloadSpeedValues2 = [(_INPBIntentSlotValue *)self payloadSpeedValues];
    payloadSpeedValues3 = [equalCopy payloadSpeedValues];
    v441 = [payloadSpeedValues2 isEqual:payloadSpeedValues3];

    if (!v441)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadStartCallRequestMetadatas];
  payloadActivities2 = [equalCopy payloadStartCallRequestMetadatas];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadStartCallRequestMetadatas = [(_INPBIntentSlotValue *)self payloadStartCallRequestMetadatas];
  if (payloadStartCallRequestMetadatas)
  {
    v443 = payloadStartCallRequestMetadatas;
    payloadStartCallRequestMetadatas2 = [(_INPBIntentSlotValue *)self payloadStartCallRequestMetadatas];
    payloadStartCallRequestMetadatas3 = [equalCopy payloadStartCallRequestMetadatas];
    v446 = [payloadStartCallRequestMetadatas2 isEqual:payloadStartCallRequestMetadatas3];

    if (!v446)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadStringLists];
  payloadActivities2 = [equalCopy payloadStringLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadStringLists = [(_INPBIntentSlotValue *)self payloadStringLists];
  if (payloadStringLists)
  {
    v448 = payloadStringLists;
    payloadStringLists2 = [(_INPBIntentSlotValue *)self payloadStringLists];
    payloadStringLists3 = [equalCopy payloadStringLists];
    v451 = [payloadStringLists2 isEqual:payloadStringLists3];

    if (!v451)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadStringValues];
  payloadActivities2 = [equalCopy payloadStringValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadStringValues = [(_INPBIntentSlotValue *)self payloadStringValues];
  if (payloadStringValues)
  {
    v453 = payloadStringValues;
    payloadStringValues2 = [(_INPBIntentSlotValue *)self payloadStringValues];
    payloadStringValues3 = [equalCopy payloadStringValues];
    v456 = [payloadStringValues2 isEqual:payloadStringValues3];

    if (!v456)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadSupportedTrafficIncidentTypes];
  payloadActivities2 = [equalCopy payloadSupportedTrafficIncidentTypes];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadSupportedTrafficIncidentTypes = [(_INPBIntentSlotValue *)self payloadSupportedTrafficIncidentTypes];
  if (payloadSupportedTrafficIncidentTypes)
  {
    v458 = payloadSupportedTrafficIncidentTypes;
    payloadSupportedTrafficIncidentTypes2 = [(_INPBIntentSlotValue *)self payloadSupportedTrafficIncidentTypes];
    payloadSupportedTrafficIncidentTypes3 = [equalCopy payloadSupportedTrafficIncidentTypes];
    v461 = [payloadSupportedTrafficIncidentTypes2 isEqual:payloadSupportedTrafficIncidentTypes3];

    if (!v461)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadTasks];
  payloadActivities2 = [equalCopy payloadTasks];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadTasks = [(_INPBIntentSlotValue *)self payloadTasks];
  if (payloadTasks)
  {
    v463 = payloadTasks;
    payloadTasks2 = [(_INPBIntentSlotValue *)self payloadTasks];
    payloadTasks3 = [equalCopy payloadTasks];
    v466 = [payloadTasks2 isEqual:payloadTasks3];

    if (!v466)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadTaskLists];
  payloadActivities2 = [equalCopy payloadTaskLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadTaskLists = [(_INPBIntentSlotValue *)self payloadTaskLists];
  if (payloadTaskLists)
  {
    v468 = payloadTaskLists;
    payloadTaskLists2 = [(_INPBIntentSlotValue *)self payloadTaskLists];
    payloadTaskLists3 = [equalCopy payloadTaskLists];
    v471 = [payloadTaskLists2 isEqual:payloadTaskLists3];

    if (!v471)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadTemperatureLists];
  payloadActivities2 = [equalCopy payloadTemperatureLists];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadTemperatureLists = [(_INPBIntentSlotValue *)self payloadTemperatureLists];
  if (payloadTemperatureLists)
  {
    v473 = payloadTemperatureLists;
    payloadTemperatureLists2 = [(_INPBIntentSlotValue *)self payloadTemperatureLists];
    payloadTemperatureLists3 = [equalCopy payloadTemperatureLists];
    v476 = [payloadTemperatureLists2 isEqual:payloadTemperatureLists3];

    if (!v476)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadTemperatureValues];
  payloadActivities2 = [equalCopy payloadTemperatureValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadTemperatureValues = [(_INPBIntentSlotValue *)self payloadTemperatureValues];
  if (payloadTemperatureValues)
  {
    v478 = payloadTemperatureValues;
    payloadTemperatureValues2 = [(_INPBIntentSlotValue *)self payloadTemperatureValues];
    payloadTemperatureValues3 = [equalCopy payloadTemperatureValues];
    v481 = [payloadTemperatureValues2 isEqual:payloadTemperatureValues3];

    if (!v481)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadTemporalEventTriggers];
  payloadActivities2 = [equalCopy payloadTemporalEventTriggers];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadTemporalEventTriggers = [(_INPBIntentSlotValue *)self payloadTemporalEventTriggers];
  if (payloadTemporalEventTriggers)
  {
    v483 = payloadTemporalEventTriggers;
    payloadTemporalEventTriggers2 = [(_INPBIntentSlotValue *)self payloadTemporalEventTriggers];
    payloadTemporalEventTriggers3 = [equalCopy payloadTemporalEventTriggers];
    v486 = [payloadTemporalEventTriggers2 isEqual:payloadTemporalEventTriggers3];

    if (!v486)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadTimers];
  payloadActivities2 = [equalCopy payloadTimers];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadTimers = [(_INPBIntentSlotValue *)self payloadTimers];
  if (payloadTimers)
  {
    v488 = payloadTimers;
    payloadTimers2 = [(_INPBIntentSlotValue *)self payloadTimers];
    payloadTimers3 = [equalCopy payloadTimers];
    v491 = [payloadTimers2 isEqual:payloadTimers3];

    if (!v491)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadURLValues];
  payloadActivities2 = [equalCopy payloadURLValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadURLValues = [(_INPBIntentSlotValue *)self payloadURLValues];
  if (payloadURLValues)
  {
    v493 = payloadURLValues;
    payloadURLValues2 = [(_INPBIntentSlotValue *)self payloadURLValues];
    payloadURLValues3 = [equalCopy payloadURLValues];
    v496 = [payloadURLValues2 isEqual:payloadURLValues3];

    if (!v496)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadVoiceCommandDeviceInformations];
  payloadActivities2 = [equalCopy payloadVoiceCommandDeviceInformations];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadVoiceCommandDeviceInformations = [(_INPBIntentSlotValue *)self payloadVoiceCommandDeviceInformations];
  if (payloadVoiceCommandDeviceInformations)
  {
    v498 = payloadVoiceCommandDeviceInformations;
    payloadVoiceCommandDeviceInformations2 = [(_INPBIntentSlotValue *)self payloadVoiceCommandDeviceInformations];
    payloadVoiceCommandDeviceInformations3 = [equalCopy payloadVoiceCommandDeviceInformations];
    v501 = [payloadVoiceCommandDeviceInformations2 isEqual:payloadVoiceCommandDeviceInformations3];

    if (!v501)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadVolumeValues];
  payloadActivities2 = [equalCopy payloadVolumeValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadVolumeValues = [(_INPBIntentSlotValue *)self payloadVolumeValues];
  if (payloadVolumeValues)
  {
    v503 = payloadVolumeValues;
    payloadVolumeValues2 = [(_INPBIntentSlotValue *)self payloadVolumeValues];
    payloadVolumeValues3 = [equalCopy payloadVolumeValues];
    v506 = [payloadVolumeValues2 isEqual:payloadVolumeValues3];

    if (!v506)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadWellnessMetadataPairs];
  payloadActivities2 = [equalCopy payloadWellnessMetadataPairs];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadWellnessMetadataPairs = [(_INPBIntentSlotValue *)self payloadWellnessMetadataPairs];
  if (payloadWellnessMetadataPairs)
  {
    v508 = payloadWellnessMetadataPairs;
    payloadWellnessMetadataPairs2 = [(_INPBIntentSlotValue *)self payloadWellnessMetadataPairs];
    payloadWellnessMetadataPairs3 = [equalCopy payloadWellnessMetadataPairs];
    v511 = [payloadWellnessMetadataPairs2 isEqual:payloadWellnessMetadataPairs3];

    if (!v511)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadWellnessObjectResultValues];
  payloadActivities2 = [equalCopy payloadWellnessObjectResultValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadWellnessObjectResultValues = [(_INPBIntentSlotValue *)self payloadWellnessObjectResultValues];
  if (payloadWellnessObjectResultValues)
  {
    v513 = payloadWellnessObjectResultValues;
    payloadWellnessObjectResultValues2 = [(_INPBIntentSlotValue *)self payloadWellnessObjectResultValues];
    payloadWellnessObjectResultValues3 = [equalCopy payloadWellnessObjectResultValues];
    v516 = [payloadWellnessObjectResultValues2 isEqual:payloadWellnessObjectResultValues3];

    if (!v516)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_595;
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadWellnessUnitTypes];
  payloadActivities2 = [equalCopy payloadWellnessUnitTypes];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadWellnessUnitTypes = [(_INPBIntentSlotValue *)self payloadWellnessUnitTypes];
  if (payloadWellnessUnitTypes)
  {
    v518 = payloadWellnessUnitTypes;
    payloadWellnessUnitTypes2 = [(_INPBIntentSlotValue *)self payloadWellnessUnitTypes];
    payloadWellnessUnitTypes3 = [equalCopy payloadWellnessUnitTypes];
    v521 = [payloadWellnessUnitTypes2 isEqual:payloadWellnessUnitTypes3];

    if (!v521)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadWellnessValues];
  payloadActivities2 = [equalCopy payloadWellnessValues];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadWellnessValues = [(_INPBIntentSlotValue *)self payloadWellnessValues];
  if (payloadWellnessValues)
  {
    v523 = payloadWellnessValues;
    payloadWellnessValues2 = [(_INPBIntentSlotValue *)self payloadWellnessValues];
    payloadWellnessValues3 = [equalCopy payloadWellnessValues];
    v526 = [payloadWellnessValues2 isEqual:payloadWellnessValues3];

    if (!v526)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadWorkoutAssociatedItems];
  payloadActivities2 = [equalCopy payloadWorkoutAssociatedItems];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
    goto LABEL_594;
  }

  payloadWorkoutAssociatedItems = [(_INPBIntentSlotValue *)self payloadWorkoutAssociatedItems];
  if (payloadWorkoutAssociatedItems)
  {
    v528 = payloadWorkoutAssociatedItems;
    payloadWorkoutAssociatedItems2 = [(_INPBIntentSlotValue *)self payloadWorkoutAssociatedItems];
    payloadWorkoutAssociatedItems3 = [equalCopy payloadWorkoutAssociatedItems];
    v531 = [payloadWorkoutAssociatedItems2 isEqual:payloadWorkoutAssociatedItems3];

    if (!v531)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  payloadActivities = [(_INPBIntentSlotValue *)self payloadWorkoutCustomizations];
  payloadActivities2 = [equalCopy payloadWorkoutCustomizations];
  if ((payloadActivities != 0) == (payloadActivities2 == 0))
  {
LABEL_594:

    goto LABEL_595;
  }

  payloadWorkoutCustomizations = [(_INPBIntentSlotValue *)self payloadWorkoutCustomizations];
  if (payloadWorkoutCustomizations)
  {
    v533 = payloadWorkoutCustomizations;
    payloadWorkoutCustomizations2 = [(_INPBIntentSlotValue *)self payloadWorkoutCustomizations];
    payloadWorkoutCustomizations3 = [equalCopy payloadWorkoutCustomizations];
    v536 = [payloadWorkoutCustomizations2 isEqual:payloadWorkoutCustomizations3];

    if (!v536)
    {
      goto LABEL_595;
    }
  }

  else
  {
  }

  if (PBRepeatedInt32IsEqual())
  {
    if (PBRepeatedInt32IsEqual())
    {
      if (PBRepeatedInt32IsEqual())
      {
        hasType = [(_INPBIntentSlotValue *)self hasType];
        if (hasType == [equalCopy hasType])
        {
          if (!-[_INPBIntentSlotValue hasType](self, "hasType") || ![equalCopy hasType] || (type = self->_type, type == objc_msgSend(equalCopy, "type")))
          {
            v537 = 1;
            goto LABEL_596;
          }
        }
      }
    }
  }

LABEL_595:
  v537 = 0;
LABEL_596:

  return v537;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentSlotValue allocWithZone:](_INPBIntentSlotValue init];
  PBRepeatedInt32Copy();
  v6 = [(NSArray *)self->_payloadActivities copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadActivities:v6];

  v7 = [(NSArray *)self->_payloadActivityLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadActivityLists:v7];

  v8 = [(NSArray *)self->_payloadAlarms copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadAlarms:v8];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v9 = [(NSArray *)self->_payloadAlarmSearchs copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadAlarmSearchs:v9];

  PBRepeatedInt32Copy();
  v10 = [(NSArray *)self->_payloadAnnouncements copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadAnnouncements:v10];

  v11 = [(NSArray *)self->_payloadAppIdentifiers copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadAppIdentifiers:v11];

  v12 = [(NSArray *)self->_payloadArchivedObjects copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadArchivedObjects:v12];

  PBRepeatedInt32Copy();
  v13 = [(NSArray *)self->_payloadBillDetailsValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadBillDetailsValues:v13];

  v14 = [(NSArray *)self->_payloadBillPayeeValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadBillPayeeValues:v14];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v15 = [(NSArray *)self->_payloadCalendarEvents copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadCalendarEvents:v15];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v16 = [(NSArray *)self->_payloadCallGroups copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadCallGroups:v16];

  v17 = [(NSArray *)self->_payloadCallGroupConversations copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadCallGroupConversations:v17];

  v18 = [(NSArray *)self->_payloadCallRecordFilters copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadCallRecordFilters:v18];

  PBRepeatedInt32Copy();
  v19 = [(NSArray *)self->_payloadCallRecordValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadCallRecordValues:v19];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v20 = [(NSArray *)self->_payloadChargingConnectorTypes copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadChargingConnectorTypes:v20];

  v21 = [(NSArray *)self->_payloadContactEventTriggers copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadContactEventTriggers:v21];

  v22 = [(NSArray *)self->_payloadContactLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadContactLists:v22];

  v23 = [(NSArray *)self->_payloadContactValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadContactValues:v23];

  v24 = [(NSArray *)self->_payloadCurrencyAmounts copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadCurrencyAmounts:v24];

  v25 = [(NSArray *)self->_payloadCustomObjects copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadCustomObjects:v25];

  v26 = [(NSArray *)self->_payloadDataStrings copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDataStrings:v26];

  v27 = [(NSArray *)self->_payloadDataStringLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDataStringLists:v27];

  PBRepeatedInt32Copy();
  v28 = [(NSArray *)self->_payloadDateTimeRangeLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDateTimeRangeLists:v28];

  v29 = [(NSArray *)self->_payloadDateTimeRangeValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDateTimeRangeValues:v29];

  v30 = [(NSArray *)self->_payloadDateTimeValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDateTimeValues:v30];

  v31 = [(NSArray *)self->_payloadDevices copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDevices:v31];

  v32 = [(NSArray *)self->_payloadDeviceDetails copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDeviceDetails:v32];

  PBRepeatedInt32Copy();
  v33 = [(NSArray *)self->_payloadDialingContacts copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDialingContacts:v33];

  v34 = [(NSArray *)self->_payloadDistanceLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDistanceLists:v34];

  v35 = [(NSArray *)self->_payloadDistanceValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDistanceValues:v35];

  v36 = [(NSArray *)self->_payloadDoubleLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDoubleLists:v36];

  v37 = [(NSArray *)self->_payloadDoubleValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadDoubleValues:v37];

  v38 = [(NSArray *)self->_payloadEnergyValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadEnergyValues:v38];

  v39 = [(NSArray *)self->_payloadEnumerations copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadEnumerations:v39];

  v40 = [(NSArray *)self->_payloadEvents copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadEvents:v40];

  PBRepeatedInt32Copy();
  v41 = [(NSArray *)self->_payloadEventLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadEventLists:v41];

  v42 = [(NSArray *)self->_payloadEventParticipants copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadEventParticipants:v42];

  v43 = [(NSArray *)self->_payloadFiles copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadFiles:v43];

  PBRepeatedInt32Copy();
  v44 = [(NSArray *)self->_payloadFileProperties copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadFileProperties:v44];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v45 = [(NSArray *)self->_payloadFilePropertyValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadFilePropertyValues:v45];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v46 = [(NSArray *)self->_payloadFinancialAccountValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadFinancialAccountValues:v46];

  v47 = [(NSArray *)self->_payloadGeographicalFeatures copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadGeographicalFeatures:v47];

  v48 = [(NSArray *)self->_payloadGeographicalFeatureLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadGeographicalFeatureLists:v48];

  v49 = [(NSArray *)self->_payloadGetSettingResponseDatas copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadGetSettingResponseDatas:v49];

  v50 = [(NSArray *)self->_payloadHomeAttributes copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadHomeAttributes:v50];

  PBRepeatedInt32Copy();
  v51 = [(NSArray *)self->_payloadHomeAttributeValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadHomeAttributeValues:v51];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v52 = [(NSArray *)self->_payloadHomeEntities copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadHomeEntities:v52];

  PBRepeatedInt32Copy();
  v53 = [(NSArray *)self->_payloadHomeFilters copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadHomeFilters:v53];

  v54 = [(NSArray *)self->_payloadHomeUserTasks copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadHomeUserTasks:v54];

  v55 = [(NSArray *)self->_payloadIntegerLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadIntegerLists:v55];

  v56 = [(NSArray *)self->_payloadIntegerValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadIntegerValues:v56];

  v57 = [(NSArray *)self->_payloadIntents copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadIntents:v57];

  v58 = [(NSArray *)self->_payloadIntentExecutionResults copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadIntentExecutionResults:v58];

  v59 = [(NSArray *)self->_payloadLocations copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadLocations:v59];

  v60 = [(NSArray *)self->_payloadLocationLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadLocationLists:v60];

  PBRepeatedInt32Copy();
  v61 = [(NSArray *)self->_payloadLongLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadLongLists:v61];

  v62 = [(NSArray *)self->_payloadLongValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadLongValues:v62];

  v63 = [(NSArray *)self->_payloadMassValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadMassValues:v63];

  PBRepeatedInt32Copy();
  v64 = [(NSArray *)self->_payloadMediaDestinations copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadMediaDestinations:v64];

  v65 = [(NSArray *)self->_payloadMediaItemGroups copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadMediaItemGroups:v65];

  v66 = [(NSArray *)self->_payloadMediaItemValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadMediaItemValues:v66];

  v67 = [(NSArray *)self->_payloadMediaSearchs copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadMediaSearchs:v67];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v68 = [(NSArray *)self->_payloadModifyNicknames copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadModifyNicknames:v68];

  v69 = [(NSArray *)self->_payloadModifyRelationships copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadModifyRelationships:v69];

  v70 = [(NSArray *)self->_payloadNotes copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadNotes:v70];

  v71 = [(NSArray *)self->_payloadNoteContents copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadNoteContents:v71];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v72 = [(NSArray *)self->_payloadNumericSettingValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadNumericSettingValues:v72];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v73 = [(NSArray *)self->_payloadPaymentAmountValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPaymentAmountValues:v73];

  v74 = [(NSArray *)self->_payloadPaymentMethodLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPaymentMethodLists:v74];

  v75 = [(NSArray *)self->_payloadPaymentMethodValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPaymentMethodValues:v75];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v76 = [(NSArray *)self->_payloadPlaces copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPlaces:v76];

  v77 = [(NSArray *)self->_payloadPlaceLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPlaceLists:v77];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v78 = [(NSArray *)self->_payloadPrimitiveBools copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPrimitiveBools:v78];

  v79 = [(NSArray *)self->_payloadPrimitiveDoubles copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPrimitiveDoubles:v79];

  v80 = [(NSArray *)self->_payloadPrimitiveInts copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPrimitiveInts:v80];

  v81 = [(NSArray *)self->_payloadPrimitiveLongs copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPrimitiveLongs:v81];

  v82 = [(NSArray *)self->_payloadPrimitiveStrings copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPrimitiveStrings:v82];

  v83 = [(NSArray *)self->_payloadPrivateAddMediaIntentDatas copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPrivateAddMediaIntentDatas:v83];

  v84 = [(NSArray *)self->_payloadPrivatePlayMediaIntentDatas copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPrivatePlayMediaIntentDatas:v84];

  v85 = [(NSArray *)self->_payloadPrivateSearchForMediaIntentDatas copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPrivateSearchForMediaIntentDatas:v85];

  v86 = [(NSArray *)self->_payloadPrivateUpdateMediaAffinityIntentDatas copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadPrivateUpdateMediaAffinityIntentDatas:v86];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v87 = [(NSArray *)self->_payloadSendMessageAttachments copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadSendMessageAttachments:v87];

  PBRepeatedInt32Copy();
  v88 = [(NSArray *)self->_payloadSettingMetadatas copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadSettingMetadatas:v88];

  v89 = [(NSArray *)self->_payloadShareDestinations copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadShareDestinations:v89];

  v90 = [(NSArray *)self->_payloadSleepAlarmAttributes copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadSleepAlarmAttributes:v90];

  v91 = [(NSArray *)self->_payloadSpatialEventTriggers copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadSpatialEventTriggers:v91];

  v92 = [(NSArray *)self->_payloadSpeedValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadSpeedValues:v92];

  v93 = [(NSArray *)self->_payloadStartCallRequestMetadatas copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadStartCallRequestMetadatas:v93];

  v94 = [(NSArray *)self->_payloadStringLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadStringLists:v94];

  v95 = [(NSArray *)self->_payloadStringValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadStringValues:v95];

  v96 = [(NSArray *)self->_payloadSupportedTrafficIncidentTypes copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadSupportedTrafficIncidentTypes:v96];

  v97 = [(NSArray *)self->_payloadTasks copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadTasks:v97];

  v98 = [(NSArray *)self->_payloadTaskLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadTaskLists:v98];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v99 = [(NSArray *)self->_payloadTemperatureLists copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadTemperatureLists:v99];

  v100 = [(NSArray *)self->_payloadTemperatureValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadTemperatureValues:v100];

  v101 = [(NSArray *)self->_payloadTemporalEventTriggers copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadTemporalEventTriggers:v101];

  PBRepeatedInt32Copy();
  v102 = [(NSArray *)self->_payloadTimers copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadTimers:v102];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v103 = [(NSArray *)self->_payloadURLValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadURLValues:v103];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v104 = [(NSArray *)self->_payloadVoiceCommandDeviceInformations copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadVoiceCommandDeviceInformations:v104];

  v105 = [(NSArray *)self->_payloadVolumeValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadVolumeValues:v105];

  v106 = [(NSArray *)self->_payloadWellnessMetadataPairs copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadWellnessMetadataPairs:v106];

  v107 = [(NSArray *)self->_payloadWellnessObjectResultValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadWellnessObjectResultValues:v107];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v108 = [(NSArray *)self->_payloadWellnessUnitTypes copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadWellnessUnitTypes:v108];

  v109 = [(NSArray *)self->_payloadWellnessValues copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadWellnessValues:v109];

  v110 = [(NSArray *)self->_payloadWorkoutAssociatedItems copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadWorkoutAssociatedItems:v110];

  v111 = [(NSArray *)self->_payloadWorkoutCustomizations copyWithZone:zone];
  [(_INPBIntentSlotValue *)v5 setPayloadWorkoutCustomizations:v111];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  if ([(_INPBIntentSlotValue *)self hasType])
  {
    [(_INPBIntentSlotValue *)v5 setType:[(_INPBIntentSlotValue *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentSlotValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentSlotValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentSlotValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v1131 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_payloadAccountTypes.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_payloadAccountTypes.count);
  }

  v1024 = 0u;
  v1023 = 0u;
  v1022 = 0u;
  v1021 = 0u;
  v6 = self->_payloadActivities;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v1021 objects:v1130 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v1022;
    do
    {
      v10 = 0;
      do
      {
        if (*v1022 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v1021 objects:v1130 count:16];
    }

    while (v8);
  }

  v1020 = 0u;
  v1019 = 0u;
  v1018 = 0u;
  v1017 = 0u;
  v11 = self->_payloadActivityLists;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v1017 objects:v1129 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v1018;
    do
    {
      v15 = 0;
      do
      {
        if (*v1018 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v1017 objects:v1129 count:16];
    }

    while (v13);
  }

  v1016 = 0u;
  v1015 = 0u;
  v1014 = 0u;
  v1013 = 0u;
  v16 = self->_payloadAlarms;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v1013 objects:v1128 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v1014;
    do
    {
      v20 = 0;
      do
      {
        if (*v1014 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v1013 objects:v1128 count:16];
    }

    while (v18);
  }

  if (self->_payloadAlarmPeriods.count)
  {
    v21 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v21;
    }

    while (v21 < self->_payloadAlarmPeriods.count);
  }

  if (self->_payloadAlarmRepeatSchedules.count)
  {
    v22 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v22;
    }

    while (v22 < self->_payloadAlarmRepeatSchedules.count);
  }

  v1012 = 0u;
  v1011 = 0u;
  v1010 = 0u;
  v1009 = 0u;
  v23 = self->_payloadAlarmSearchs;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v1009 objects:v1127 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v1010;
    do
    {
      v27 = 0;
      do
      {
        if (*v1010 != v26)
        {
          objc_enumerationMutation(v23);
        }

        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v1009 objects:v1127 count:16];
    }

    while (v25);
  }

  if (self->_payloadAlarmSearchTypes.count)
  {
    v28 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v28;
    }

    while (v28 < self->_payloadAlarmSearchTypes.count);
  }

  v1008 = 0u;
  v1007 = 0u;
  v1006 = 0u;
  v1005 = 0u;
  v29 = self->_payloadAnnouncements;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v1005 objects:v1126 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v1006;
    do
    {
      v33 = 0;
      do
      {
        if (*v1006 != v32)
        {
          objc_enumerationMutation(v29);
        }

        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v1005 objects:v1126 count:16];
    }

    while (v31);
  }

  v1004 = 0u;
  v1003 = 0u;
  v1002 = 0u;
  v1001 = 0u;
  v34 = self->_payloadAppIdentifiers;
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v1001 objects:v1125 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v1002;
    do
    {
      v38 = 0;
      do
      {
        if (*v1002 != v37)
        {
          objc_enumerationMutation(v34);
        }

        PBDataWriterWriteSubmessage();
        ++v38;
      }

      while (v36 != v38);
      v36 = [(NSArray *)v34 countByEnumeratingWithState:&v1001 objects:v1125 count:16];
    }

    while (v36);
  }

  v1000 = 0u;
  v999 = 0u;
  v998 = 0u;
  v997 = 0u;
  v39 = self->_payloadArchivedObjects;
  v40 = [(NSArray *)v39 countByEnumeratingWithState:&v997 objects:v1124 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v998;
    do
    {
      v43 = 0;
      do
      {
        if (*v998 != v42)
        {
          objc_enumerationMutation(v39);
        }

        PBDataWriterWriteSubmessage();
        ++v43;
      }

      while (v41 != v43);
      v41 = [(NSArray *)v39 countByEnumeratingWithState:&v997 objects:v1124 count:16];
    }

    while (v41);
  }

  if (self->_payloadBalanceTypes.count)
  {
    v44 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v44;
    }

    while (v44 < self->_payloadBalanceTypes.count);
  }

  v996 = 0u;
  v995 = 0u;
  v994 = 0u;
  v993 = 0u;
  v45 = self->_payloadBillDetailsValues;
  v46 = [(NSArray *)v45 countByEnumeratingWithState:&v993 objects:v1123 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v994;
    do
    {
      v49 = 0;
      do
      {
        if (*v994 != v48)
        {
          objc_enumerationMutation(v45);
        }

        PBDataWriterWriteSubmessage();
        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSArray *)v45 countByEnumeratingWithState:&v993 objects:v1123 count:16];
    }

    while (v47);
  }

  v992 = 0u;
  v991 = 0u;
  v990 = 0u;
  v989 = 0u;
  v50 = self->_payloadBillPayeeValues;
  v51 = [(NSArray *)v50 countByEnumeratingWithState:&v989 objects:v1122 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v990;
    do
    {
      v54 = 0;
      do
      {
        if (*v990 != v53)
        {
          objc_enumerationMutation(v50);
        }

        PBDataWriterWriteSubmessage();
        ++v54;
      }

      while (v52 != v54);
      v52 = [(NSArray *)v50 countByEnumeratingWithState:&v989 objects:v1122 count:16];
    }

    while (v52);
  }

  if (self->_payloadBillTypes.count)
  {
    v55 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v55;
    }

    while (v55 < self->_payloadBillTypes.count);
  }

  if (self->_payloadBinarySettingValues.count)
  {
    v56 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v56;
    }

    while (v56 < self->_payloadBinarySettingValues.count);
  }

  if (self->_payloadBoundedSettingValues.count)
  {
    v57 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v57;
    }

    while (v57 < self->_payloadBoundedSettingValues.count);
  }

  v988 = 0u;
  v987 = 0u;
  v986 = 0u;
  v985 = 0u;
  v58 = self->_payloadCalendarEvents;
  v59 = [(NSArray *)v58 countByEnumeratingWithState:&v985 objects:v1121 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v986;
    do
    {
      v62 = 0;
      do
      {
        if (*v986 != v61)
        {
          objc_enumerationMutation(v58);
        }

        PBDataWriterWriteSubmessage();
        ++v62;
      }

      while (v60 != v62);
      v60 = [(NSArray *)v58 countByEnumeratingWithState:&v985 objects:v1121 count:16];
    }

    while (v60);
  }

  if (self->_payloadCallAudioRoutes.count)
  {
    v63 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v63;
    }

    while (v63 < self->_payloadCallAudioRoutes.count);
  }

  if (self->_payloadCallCapabilities.count)
  {
    v64 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v64;
    }

    while (v64 < self->_payloadCallCapabilities.count);
  }

  if (self->_payloadCallDestinationTypes.count)
  {
    v65 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v65;
    }

    while (v65 < self->_payloadCallDestinationTypes.count);
  }

  v984 = 0u;
  v983 = 0u;
  v982 = 0u;
  v981 = 0u;
  v66 = self->_payloadCallGroups;
  v67 = [(NSArray *)v66 countByEnumeratingWithState:&v981 objects:v1120 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v982;
    do
    {
      v70 = 0;
      do
      {
        if (*v982 != v69)
        {
          objc_enumerationMutation(v66);
        }

        PBDataWriterWriteSubmessage();
        ++v70;
      }

      while (v68 != v70);
      v68 = [(NSArray *)v66 countByEnumeratingWithState:&v981 objects:v1120 count:16];
    }

    while (v68);
  }

  v980 = 0u;
  v979 = 0u;
  v978 = 0u;
  v977 = 0u;
  v71 = self->_payloadCallGroupConversations;
  v72 = [(NSArray *)v71 countByEnumeratingWithState:&v977 objects:v1119 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v978;
    do
    {
      v75 = 0;
      do
      {
        if (*v978 != v74)
        {
          objc_enumerationMutation(v71);
        }

        PBDataWriterWriteSubmessage();
        ++v75;
      }

      while (v73 != v75);
      v73 = [(NSArray *)v71 countByEnumeratingWithState:&v977 objects:v1119 count:16];
    }

    while (v73);
  }

  v976 = 0u;
  v975 = 0u;
  v974 = 0u;
  v973 = 0u;
  v76 = self->_payloadCallRecordFilters;
  v77 = [(NSArray *)v76 countByEnumeratingWithState:&v973 objects:v1118 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v974;
    do
    {
      v80 = 0;
      do
      {
        if (*v974 != v79)
        {
          objc_enumerationMutation(v76);
        }

        PBDataWriterWriteSubmessage();
        ++v80;
      }

      while (v78 != v80);
      v78 = [(NSArray *)v76 countByEnumeratingWithState:&v973 objects:v1118 count:16];
    }

    while (v78);
  }

  if (self->_payloadCallRecordTypes.count)
  {
    v81 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v81;
    }

    while (v81 < self->_payloadCallRecordTypes.count);
  }

  v972 = 0u;
  v971 = 0u;
  v970 = 0u;
  v969 = 0u;
  v82 = self->_payloadCallRecordValues;
  v83 = [(NSArray *)v82 countByEnumeratingWithState:&v969 objects:v1117 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v970;
    do
    {
      v86 = 0;
      do
      {
        if (*v970 != v85)
        {
          objc_enumerationMutation(v82);
        }

        PBDataWriterWriteSubmessage();
        ++v86;
      }

      while (v84 != v86);
      v84 = [(NSArray *)v82 countByEnumeratingWithState:&v969 objects:v1117 count:16];
    }

    while (v84);
  }

  if (self->_payloadCarAirCirculationModes.count)
  {
    v87 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v87;
    }

    while (v87 < self->_payloadCarAirCirculationModes.count);
  }

  if (self->_payloadCarAudioSources.count)
  {
    v88 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v88;
    }

    while (v88 < self->_payloadCarAudioSources.count);
  }

  if (self->_payloadCarDefrosters.count)
  {
    v89 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v89;
    }

    while (v89 < self->_payloadCarDefrosters.count);
  }

  if (self->_payloadCarSeats.count)
  {
    v90 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v90;
    }

    while (v90 < self->_payloadCarSeats.count);
  }

  if (self->_payloadCarSignalIdentifiers.count)
  {
    v91 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v91;
    }

    while (v91 < self->_payloadCarSignalIdentifiers.count);
  }

  if (self->_payloadChangeAlarmStatusOperations.count)
  {
    v92 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v92;
    }

    while (v92 < self->_payloadChangeAlarmStatusOperations.count);
  }

  v968 = 0u;
  v967 = 0u;
  v966 = 0u;
  v965 = 0u;
  v93 = self->_payloadChargingConnectorTypes;
  v94 = [(NSArray *)v93 countByEnumeratingWithState:&v965 objects:v1116 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v966;
    do
    {
      v97 = 0;
      do
      {
        if (*v966 != v96)
        {
          objc_enumerationMutation(v93);
        }

        PBDataWriterWriteStringField();
        ++v97;
      }

      while (v95 != v97);
      v95 = [(NSArray *)v93 countByEnumeratingWithState:&v965 objects:v1116 count:16];
    }

    while (v95);
  }

  v964 = 0u;
  v963 = 0u;
  v962 = 0u;
  v961 = 0u;
  v98 = self->_payloadContactEventTriggers;
  v99 = [(NSArray *)v98 countByEnumeratingWithState:&v961 objects:v1115 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v962;
    do
    {
      v102 = 0;
      do
      {
        if (*v962 != v101)
        {
          objc_enumerationMutation(v98);
        }

        PBDataWriterWriteSubmessage();
        ++v102;
      }

      while (v100 != v102);
      v100 = [(NSArray *)v98 countByEnumeratingWithState:&v961 objects:v1115 count:16];
    }

    while (v100);
  }

  v960 = 0u;
  v959 = 0u;
  v958 = 0u;
  v957 = 0u;
  v103 = self->_payloadContactLists;
  v104 = [(NSArray *)v103 countByEnumeratingWithState:&v957 objects:v1114 count:16];
  if (v104)
  {
    v105 = v104;
    v106 = *v958;
    do
    {
      v107 = 0;
      do
      {
        if (*v958 != v106)
        {
          objc_enumerationMutation(v103);
        }

        PBDataWriterWriteSubmessage();
        ++v107;
      }

      while (v105 != v107);
      v105 = [(NSArray *)v103 countByEnumeratingWithState:&v957 objects:v1114 count:16];
    }

    while (v105);
  }

  v956 = 0u;
  v955 = 0u;
  v954 = 0u;
  v953 = 0u;
  v108 = self->_payloadContactValues;
  v109 = [(NSArray *)v108 countByEnumeratingWithState:&v953 objects:v1113 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v954;
    do
    {
      v112 = 0;
      do
      {
        if (*v954 != v111)
        {
          objc_enumerationMutation(v108);
        }

        PBDataWriterWriteSubmessage();
        ++v112;
      }

      while (v110 != v112);
      v110 = [(NSArray *)v108 countByEnumeratingWithState:&v953 objects:v1113 count:16];
    }

    while (v110);
  }

  v952 = 0u;
  v951 = 0u;
  v950 = 0u;
  v949 = 0u;
  v113 = self->_payloadCurrencyAmounts;
  v114 = [(NSArray *)v113 countByEnumeratingWithState:&v949 objects:v1112 count:16];
  if (v114)
  {
    v115 = v114;
    v116 = *v950;
    do
    {
      v117 = 0;
      do
      {
        if (*v950 != v116)
        {
          objc_enumerationMutation(v113);
        }

        PBDataWriterWriteSubmessage();
        ++v117;
      }

      while (v115 != v117);
      v115 = [(NSArray *)v113 countByEnumeratingWithState:&v949 objects:v1112 count:16];
    }

    while (v115);
  }

  v948 = 0u;
  v947 = 0u;
  v946 = 0u;
  v945 = 0u;
  v118 = self->_payloadCustomObjects;
  v119 = [(NSArray *)v118 countByEnumeratingWithState:&v945 objects:v1111 count:16];
  if (v119)
  {
    v120 = v119;
    v121 = *v946;
    do
    {
      v122 = 0;
      do
      {
        if (*v946 != v121)
        {
          objc_enumerationMutation(v118);
        }

        PBDataWriterWriteSubmessage();
        ++v122;
      }

      while (v120 != v122);
      v120 = [(NSArray *)v118 countByEnumeratingWithState:&v945 objects:v1111 count:16];
    }

    while (v120);
  }

  v944 = 0u;
  v943 = 0u;
  v942 = 0u;
  v941 = 0u;
  v123 = self->_payloadDataStrings;
  v124 = [(NSArray *)v123 countByEnumeratingWithState:&v941 objects:v1110 count:16];
  if (v124)
  {
    v125 = v124;
    v126 = *v942;
    do
    {
      v127 = 0;
      do
      {
        if (*v942 != v126)
        {
          objc_enumerationMutation(v123);
        }

        PBDataWriterWriteSubmessage();
        ++v127;
      }

      while (v125 != v127);
      v125 = [(NSArray *)v123 countByEnumeratingWithState:&v941 objects:v1110 count:16];
    }

    while (v125);
  }

  v940 = 0u;
  v939 = 0u;
  v938 = 0u;
  v937 = 0u;
  v128 = self->_payloadDataStringLists;
  v129 = [(NSArray *)v128 countByEnumeratingWithState:&v937 objects:v1109 count:16];
  if (v129)
  {
    v130 = v129;
    v131 = *v938;
    do
    {
      v132 = 0;
      do
      {
        if (*v938 != v131)
        {
          objc_enumerationMutation(v128);
        }

        PBDataWriterWriteSubmessage();
        ++v132;
      }

      while (v130 != v132);
      v130 = [(NSArray *)v128 countByEnumeratingWithState:&v937 objects:v1109 count:16];
    }

    while (v130);
  }

  if (self->_payloadDateSearchTypes.count)
  {
    v133 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v133;
    }

    while (v133 < self->_payloadDateSearchTypes.count);
  }

  v936 = 0u;
  v935 = 0u;
  v934 = 0u;
  v933 = 0u;
  v134 = self->_payloadDateTimeRangeLists;
  v135 = [(NSArray *)v134 countByEnumeratingWithState:&v933 objects:v1108 count:16];
  if (v135)
  {
    v136 = v135;
    v137 = *v934;
    do
    {
      v138 = 0;
      do
      {
        if (*v934 != v137)
        {
          objc_enumerationMutation(v134);
        }

        PBDataWriterWriteSubmessage();
        ++v138;
      }

      while (v136 != v138);
      v136 = [(NSArray *)v134 countByEnumeratingWithState:&v933 objects:v1108 count:16];
    }

    while (v136);
  }

  v932 = 0u;
  v931 = 0u;
  v930 = 0u;
  v929 = 0u;
  v139 = self->_payloadDateTimeRangeValues;
  v140 = [(NSArray *)v139 countByEnumeratingWithState:&v929 objects:v1107 count:16];
  if (v140)
  {
    v141 = v140;
    v142 = *v930;
    do
    {
      v143 = 0;
      do
      {
        if (*v930 != v142)
        {
          objc_enumerationMutation(v139);
        }

        PBDataWriterWriteSubmessage();
        ++v143;
      }

      while (v141 != v143);
      v141 = [(NSArray *)v139 countByEnumeratingWithState:&v929 objects:v1107 count:16];
    }

    while (v141);
  }

  v928 = 0u;
  v927 = 0u;
  v926 = 0u;
  v925 = 0u;
  v144 = self->_payloadDateTimeValues;
  v145 = [(NSArray *)v144 countByEnumeratingWithState:&v925 objects:v1106 count:16];
  if (v145)
  {
    v146 = v145;
    v147 = *v926;
    do
    {
      v148 = 0;
      do
      {
        if (*v926 != v147)
        {
          objc_enumerationMutation(v144);
        }

        PBDataWriterWriteSubmessage();
        ++v148;
      }

      while (v146 != v148);
      v146 = [(NSArray *)v144 countByEnumeratingWithState:&v925 objects:v1106 count:16];
    }

    while (v146);
  }

  v924 = 0u;
  v923 = 0u;
  v922 = 0u;
  v921 = 0u;
  v149 = self->_payloadDevices;
  v150 = [(NSArray *)v149 countByEnumeratingWithState:&v921 objects:v1105 count:16];
  if (v150)
  {
    v151 = v150;
    v152 = *v922;
    do
    {
      v153 = 0;
      do
      {
        if (*v922 != v152)
        {
          objc_enumerationMutation(v149);
        }

        PBDataWriterWriteSubmessage();
        ++v153;
      }

      while (v151 != v153);
      v151 = [(NSArray *)v149 countByEnumeratingWithState:&v921 objects:v1105 count:16];
    }

    while (v151);
  }

  v920 = 0u;
  v919 = 0u;
  v918 = 0u;
  v917 = 0u;
  v154 = self->_payloadDeviceDetails;
  v155 = [(NSArray *)v154 countByEnumeratingWithState:&v917 objects:v1104 count:16];
  if (v155)
  {
    v156 = v155;
    v157 = *v918;
    do
    {
      v158 = 0;
      do
      {
        if (*v918 != v157)
        {
          objc_enumerationMutation(v154);
        }

        PBDataWriterWriteSubmessage();
        ++v158;
      }

      while (v156 != v158);
      v156 = [(NSArray *)v154 countByEnumeratingWithState:&v917 objects:v1104 count:16];
    }

    while (v156);
  }

  if (self->_payloadDeviceTypes.count)
  {
    v159 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v159;
    }

    while (v159 < self->_payloadDeviceTypes.count);
  }

  v916 = 0u;
  v915 = 0u;
  v914 = 0u;
  v913 = 0u;
  v160 = self->_payloadDialingContacts;
  v161 = [(NSArray *)v160 countByEnumeratingWithState:&v913 objects:v1103 count:16];
  if (v161)
  {
    v162 = v161;
    v163 = *v914;
    do
    {
      v164 = 0;
      do
      {
        if (*v914 != v163)
        {
          objc_enumerationMutation(v160);
        }

        PBDataWriterWriteSubmessage();
        ++v164;
      }

      while (v162 != v164);
      v162 = [(NSArray *)v160 countByEnumeratingWithState:&v913 objects:v1103 count:16];
    }

    while (v162);
  }

  v912 = 0u;
  v911 = 0u;
  v910 = 0u;
  v909 = 0u;
  v165 = self->_payloadDistanceLists;
  v166 = [(NSArray *)v165 countByEnumeratingWithState:&v909 objects:v1102 count:16];
  if (v166)
  {
    v167 = v166;
    v168 = *v910;
    do
    {
      v169 = 0;
      do
      {
        if (*v910 != v168)
        {
          objc_enumerationMutation(v165);
        }

        PBDataWriterWriteSubmessage();
        ++v169;
      }

      while (v167 != v169);
      v167 = [(NSArray *)v165 countByEnumeratingWithState:&v909 objects:v1102 count:16];
    }

    while (v167);
  }

  v908 = 0u;
  v907 = 0u;
  v906 = 0u;
  v905 = 0u;
  v170 = self->_payloadDistanceValues;
  v171 = [(NSArray *)v170 countByEnumeratingWithState:&v905 objects:v1101 count:16];
  if (v171)
  {
    v172 = v171;
    v173 = *v906;
    do
    {
      v174 = 0;
      do
      {
        if (*v906 != v173)
        {
          objc_enumerationMutation(v170);
        }

        PBDataWriterWriteSubmessage();
        ++v174;
      }

      while (v172 != v174);
      v172 = [(NSArray *)v170 countByEnumeratingWithState:&v905 objects:v1101 count:16];
    }

    while (v172);
  }

  v904 = 0u;
  v903 = 0u;
  v902 = 0u;
  v901 = 0u;
  v175 = self->_payloadDoubleLists;
  v176 = [(NSArray *)v175 countByEnumeratingWithState:&v901 objects:v1100 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v902;
    do
    {
      v179 = 0;
      do
      {
        if (*v902 != v178)
        {
          objc_enumerationMutation(v175);
        }

        PBDataWriterWriteSubmessage();
        ++v179;
      }

      while (v177 != v179);
      v177 = [(NSArray *)v175 countByEnumeratingWithState:&v901 objects:v1100 count:16];
    }

    while (v177);
  }

  v900 = 0u;
  v899 = 0u;
  v898 = 0u;
  v897 = 0u;
  v180 = self->_payloadDoubleValues;
  v181 = [(NSArray *)v180 countByEnumeratingWithState:&v897 objects:v1099 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v898;
    do
    {
      v184 = 0;
      do
      {
        if (*v898 != v183)
        {
          objc_enumerationMutation(v180);
        }

        PBDataWriterWriteSubmessage();
        ++v184;
      }

      while (v182 != v184);
      v182 = [(NSArray *)v180 countByEnumeratingWithState:&v897 objects:v1099 count:16];
    }

    while (v182);
  }

  v896 = 0u;
  v895 = 0u;
  v894 = 0u;
  v893 = 0u;
  v185 = self->_payloadEnergyValues;
  v186 = [(NSArray *)v185 countByEnumeratingWithState:&v893 objects:v1098 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v894;
    do
    {
      v189 = 0;
      do
      {
        if (*v894 != v188)
        {
          objc_enumerationMutation(v185);
        }

        PBDataWriterWriteSubmessage();
        ++v189;
      }

      while (v187 != v189);
      v187 = [(NSArray *)v185 countByEnumeratingWithState:&v893 objects:v1098 count:16];
    }

    while (v187);
  }

  v892 = 0u;
  v891 = 0u;
  v890 = 0u;
  v889 = 0u;
  v190 = self->_payloadEnumerations;
  v191 = [(NSArray *)v190 countByEnumeratingWithState:&v889 objects:v1097 count:16];
  if (v191)
  {
    v192 = v191;
    v193 = *v890;
    do
    {
      v194 = 0;
      do
      {
        if (*v890 != v193)
        {
          objc_enumerationMutation(v190);
        }

        [*(*(&v889 + 1) + 8 * v194) longLongValue];
        PBDataWriterWriteInt64Field();
        ++v194;
      }

      while (v192 != v194);
      v192 = [(NSArray *)v190 countByEnumeratingWithState:&v889 objects:v1097 count:16];
    }

    while (v192);
  }

  v888 = 0u;
  v887 = 0u;
  v886 = 0u;
  v885 = 0u;
  v195 = self->_payloadEvents;
  v196 = [(NSArray *)v195 countByEnumeratingWithState:&v885 objects:v1096 count:16];
  if (v196)
  {
    v197 = v196;
    v198 = *v886;
    do
    {
      v199 = 0;
      do
      {
        if (*v886 != v198)
        {
          objc_enumerationMutation(v195);
        }

        PBDataWriterWriteSubmessage();
        ++v199;
      }

      while (v197 != v199);
      v197 = [(NSArray *)v195 countByEnumeratingWithState:&v885 objects:v1096 count:16];
    }

    while (v197);
  }

  if (self->_payloadEventAttributes.count)
  {
    v200 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v200;
    }

    while (v200 < self->_payloadEventAttributes.count);
  }

  v884 = 0u;
  v883 = 0u;
  v882 = 0u;
  v881 = 0u;
  v201 = self->_payloadEventLists;
  v202 = [(NSArray *)v201 countByEnumeratingWithState:&v881 objects:v1095 count:16];
  if (v202)
  {
    v203 = v202;
    v204 = *v882;
    do
    {
      v205 = 0;
      do
      {
        if (*v882 != v204)
        {
          objc_enumerationMutation(v201);
        }

        PBDataWriterWriteSubmessage();
        ++v205;
      }

      while (v203 != v205);
      v203 = [(NSArray *)v201 countByEnumeratingWithState:&v881 objects:v1095 count:16];
    }

    while (v203);
  }

  v880 = 0u;
  v879 = 0u;
  v878 = 0u;
  v877 = 0u;
  v206 = self->_payloadEventParticipants;
  v207 = [(NSArray *)v206 countByEnumeratingWithState:&v877 objects:v1094 count:16];
  if (v207)
  {
    v208 = v207;
    v209 = *v878;
    do
    {
      v210 = 0;
      do
      {
        if (*v878 != v209)
        {
          objc_enumerationMutation(v206);
        }

        PBDataWriterWriteSubmessage();
        ++v210;
      }

      while (v208 != v210);
      v208 = [(NSArray *)v206 countByEnumeratingWithState:&v877 objects:v1094 count:16];
    }

    while (v208);
  }

  v876 = 0u;
  v875 = 0u;
  v874 = 0u;
  v873 = 0u;
  v211 = self->_payloadFiles;
  v212 = [(NSArray *)v211 countByEnumeratingWithState:&v873 objects:v1093 count:16];
  if (v212)
  {
    v213 = v212;
    v214 = *v874;
    do
    {
      v215 = 0;
      do
      {
        if (*v874 != v214)
        {
          objc_enumerationMutation(v211);
        }

        PBDataWriterWriteSubmessage();
        ++v215;
      }

      while (v213 != v215);
      v213 = [(NSArray *)v211 countByEnumeratingWithState:&v873 objects:v1093 count:16];
    }

    while (v213);
  }

  if (self->_payloadFileEntityTypes.count)
  {
    v216 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v216;
    }

    while (v216 < self->_payloadFileEntityTypes.count);
  }

  v872 = 0u;
  v871 = 0u;
  v870 = 0u;
  v869 = 0u;
  v217 = self->_payloadFileProperties;
  v218 = [(NSArray *)v217 countByEnumeratingWithState:&v869 objects:v1092 count:16];
  if (v218)
  {
    v219 = v218;
    v220 = *v870;
    do
    {
      v221 = 0;
      do
      {
        if (*v870 != v220)
        {
          objc_enumerationMutation(v217);
        }

        PBDataWriterWriteSubmessage();
        ++v221;
      }

      while (v219 != v221);
      v219 = [(NSArray *)v217 countByEnumeratingWithState:&v869 objects:v1092 count:16];
    }

    while (v219);
  }

  if (self->_payloadFilePropertyNames.count)
  {
    v222 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v222;
    }

    while (v222 < self->_payloadFilePropertyNames.count);
  }

  if (self->_payloadFilePropertyQualifiers.count)
  {
    v223 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v223;
    }

    while (v223 < self->_payloadFilePropertyQualifiers.count);
  }

  v868 = 0u;
  v867 = 0u;
  v866 = 0u;
  v865 = 0u;
  v224 = self->_payloadFilePropertyValues;
  v225 = [(NSArray *)v224 countByEnumeratingWithState:&v865 objects:v1091 count:16];
  if (v225)
  {
    v226 = v225;
    v227 = *v866;
    do
    {
      v228 = 0;
      do
      {
        if (*v866 != v227)
        {
          objc_enumerationMutation(v224);
        }

        PBDataWriterWriteSubmessage();
        ++v228;
      }

      while (v226 != v228);
      v226 = [(NSArray *)v224 countByEnumeratingWithState:&v865 objects:v1091 count:16];
    }

    while (v226);
  }

  if (self->_payloadFileSearchScopes.count)
  {
    v229 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v229;
    }

    while (v229 < self->_payloadFileSearchScopes.count);
  }

  if (self->_payloadFileShareModes.count)
  {
    v230 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v230;
    }

    while (v230 < self->_payloadFileShareModes.count);
  }

  if (self->_payloadFileTypes.count)
  {
    v231 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v231;
    }

    while (v231 < self->_payloadFileTypes.count);
  }

  v864 = 0u;
  v863 = 0u;
  v862 = 0u;
  v861 = 0u;
  v232 = self->_payloadFinancialAccountValues;
  v233 = [(NSArray *)v232 countByEnumeratingWithState:&v861 objects:v1090 count:16];
  if (v233)
  {
    v234 = v233;
    v235 = *v862;
    do
    {
      v236 = 0;
      do
      {
        if (*v862 != v235)
        {
          objc_enumerationMutation(v232);
        }

        PBDataWriterWriteSubmessage();
        ++v236;
      }

      while (v234 != v236);
      v234 = [(NSArray *)v232 countByEnumeratingWithState:&v861 objects:v1090 count:16];
    }

    while (v234);
  }

  v860 = 0u;
  v859 = 0u;
  v858 = 0u;
  v857 = 0u;
  v237 = self->_payloadGeographicalFeatures;
  v238 = [(NSArray *)v237 countByEnumeratingWithState:&v857 objects:v1089 count:16];
  if (v238)
  {
    v239 = v238;
    v240 = *v858;
    do
    {
      v241 = 0;
      do
      {
        if (*v858 != v240)
        {
          objc_enumerationMutation(v237);
        }

        PBDataWriterWriteSubmessage();
        ++v241;
      }

      while (v239 != v241);
      v239 = [(NSArray *)v237 countByEnumeratingWithState:&v857 objects:v1089 count:16];
    }

    while (v239);
  }

  v856 = 0u;
  v855 = 0u;
  v854 = 0u;
  v853 = 0u;
  v242 = self->_payloadGeographicalFeatureLists;
  v243 = [(NSArray *)v242 countByEnumeratingWithState:&v853 objects:v1088 count:16];
  if (v243)
  {
    v244 = v243;
    v245 = *v854;
    do
    {
      v246 = 0;
      do
      {
        if (*v854 != v245)
        {
          objc_enumerationMutation(v242);
        }

        PBDataWriterWriteSubmessage();
        ++v246;
      }

      while (v244 != v246);
      v244 = [(NSArray *)v242 countByEnumeratingWithState:&v853 objects:v1088 count:16];
    }

    while (v244);
  }

  v852 = 0u;
  v851 = 0u;
  v850 = 0u;
  v849 = 0u;
  v247 = self->_payloadGetSettingResponseDatas;
  v248 = [(NSArray *)v247 countByEnumeratingWithState:&v849 objects:v1087 count:16];
  if (v248)
  {
    v249 = v248;
    v250 = *v850;
    do
    {
      v251 = 0;
      do
      {
        if (*v850 != v250)
        {
          objc_enumerationMutation(v247);
        }

        PBDataWriterWriteSubmessage();
        ++v251;
      }

      while (v249 != v251);
      v249 = [(NSArray *)v247 countByEnumeratingWithState:&v849 objects:v1087 count:16];
    }

    while (v249);
  }

  v848 = 0u;
  v847 = 0u;
  v846 = 0u;
  v845 = 0u;
  v252 = self->_payloadHomeAttributes;
  v253 = [(NSArray *)v252 countByEnumeratingWithState:&v845 objects:v1086 count:16];
  if (v253)
  {
    v254 = v253;
    v255 = *v846;
    do
    {
      v256 = 0;
      do
      {
        if (*v846 != v255)
        {
          objc_enumerationMutation(v252);
        }

        PBDataWriterWriteSubmessage();
        ++v256;
      }

      while (v254 != v256);
      v254 = [(NSArray *)v252 countByEnumeratingWithState:&v845 objects:v1086 count:16];
    }

    while (v254);
  }

  if (self->_payloadHomeAttributeTypes.count)
  {
    v257 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v257;
    }

    while (v257 < self->_payloadHomeAttributeTypes.count);
  }

  v844 = 0u;
  v843 = 0u;
  v842 = 0u;
  v841 = 0u;
  v258 = self->_payloadHomeAttributeValues;
  v259 = [(NSArray *)v258 countByEnumeratingWithState:&v841 objects:v1085 count:16];
  if (v259)
  {
    v260 = v259;
    v261 = *v842;
    do
    {
      v262 = 0;
      do
      {
        if (*v842 != v261)
        {
          objc_enumerationMutation(v258);
        }

        PBDataWriterWriteSubmessage();
        ++v262;
      }

      while (v260 != v262);
      v260 = [(NSArray *)v258 countByEnumeratingWithState:&v841 objects:v1085 count:16];
    }

    while (v260);
  }

  if (self->_payloadHomeAttributeValueTypes.count)
  {
    v263 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v263;
    }

    while (v263 < self->_payloadHomeAttributeValueTypes.count);
  }

  if (self->_payloadHomeDeviceTypes.count)
  {
    v264 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v264;
    }

    while (v264 < self->_payloadHomeDeviceTypes.count);
  }

  v840 = 0u;
  v839 = 0u;
  v838 = 0u;
  v837 = 0u;
  v265 = self->_payloadHomeEntities;
  v266 = [(NSArray *)v265 countByEnumeratingWithState:&v837 objects:v1084 count:16];
  if (v266)
  {
    v267 = v266;
    v268 = *v838;
    do
    {
      v269 = 0;
      do
      {
        if (*v838 != v268)
        {
          objc_enumerationMutation(v265);
        }

        PBDataWriterWriteSubmessage();
        ++v269;
      }

      while (v267 != v269);
      v267 = [(NSArray *)v265 countByEnumeratingWithState:&v837 objects:v1084 count:16];
    }

    while (v267);
  }

  if (self->_payloadHomeEntityTypes.count)
  {
    v270 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v270;
    }

    while (v270 < self->_payloadHomeEntityTypes.count);
  }

  v836 = 0u;
  v835 = 0u;
  v834 = 0u;
  v833 = 0u;
  v271 = self->_payloadHomeFilters;
  v272 = [(NSArray *)v271 countByEnumeratingWithState:&v833 objects:v1083 count:16];
  if (v272)
  {
    v273 = v272;
    v274 = *v834;
    do
    {
      v275 = 0;
      do
      {
        if (*v834 != v274)
        {
          objc_enumerationMutation(v271);
        }

        PBDataWriterWriteSubmessage();
        ++v275;
      }

      while (v273 != v275);
      v273 = [(NSArray *)v271 countByEnumeratingWithState:&v833 objects:v1083 count:16];
    }

    while (v273);
  }

  v832 = 0u;
  v831 = 0u;
  v830 = 0u;
  v829 = 0u;
  v276 = self->_payloadHomeUserTasks;
  v277 = [(NSArray *)v276 countByEnumeratingWithState:&v829 objects:v1082 count:16];
  if (v277)
  {
    v278 = v277;
    v279 = *v830;
    do
    {
      v280 = 0;
      do
      {
        if (*v830 != v279)
        {
          objc_enumerationMutation(v276);
        }

        PBDataWriterWriteSubmessage();
        ++v280;
      }

      while (v278 != v280);
      v278 = [(NSArray *)v276 countByEnumeratingWithState:&v829 objects:v1082 count:16];
    }

    while (v278);
  }

  v828 = 0u;
  v827 = 0u;
  v826 = 0u;
  v825 = 0u;
  v281 = self->_payloadIntegerLists;
  v282 = [(NSArray *)v281 countByEnumeratingWithState:&v825 objects:v1081 count:16];
  if (v282)
  {
    v283 = v282;
    v284 = *v826;
    do
    {
      v285 = 0;
      do
      {
        if (*v826 != v284)
        {
          objc_enumerationMutation(v281);
        }

        PBDataWriterWriteSubmessage();
        ++v285;
      }

      while (v283 != v285);
      v283 = [(NSArray *)v281 countByEnumeratingWithState:&v825 objects:v1081 count:16];
    }

    while (v283);
  }

  v824 = 0u;
  v823 = 0u;
  v822 = 0u;
  v821 = 0u;
  v286 = self->_payloadIntegerValues;
  v287 = [(NSArray *)v286 countByEnumeratingWithState:&v821 objects:v1080 count:16];
  if (v287)
  {
    v288 = v287;
    v289 = *v822;
    do
    {
      v290 = 0;
      do
      {
        if (*v822 != v289)
        {
          objc_enumerationMutation(v286);
        }

        PBDataWriterWriteSubmessage();
        ++v290;
      }

      while (v288 != v290);
      v288 = [(NSArray *)v286 countByEnumeratingWithState:&v821 objects:v1080 count:16];
    }

    while (v288);
  }

  v820 = 0u;
  v819 = 0u;
  v818 = 0u;
  v817 = 0u;
  v291 = self->_payloadIntents;
  v292 = [(NSArray *)v291 countByEnumeratingWithState:&v817 objects:v1079 count:16];
  if (v292)
  {
    v293 = v292;
    v294 = *v818;
    do
    {
      v295 = 0;
      do
      {
        if (*v818 != v294)
        {
          objc_enumerationMutation(v291);
        }

        PBDataWriterWriteSubmessage();
        ++v295;
      }

      while (v293 != v295);
      v293 = [(NSArray *)v291 countByEnumeratingWithState:&v817 objects:v1079 count:16];
    }

    while (v293);
  }

  v816 = 0u;
  v815 = 0u;
  v814 = 0u;
  v813 = 0u;
  v296 = self->_payloadIntentExecutionResults;
  v297 = [(NSArray *)v296 countByEnumeratingWithState:&v813 objects:v1078 count:16];
  if (v297)
  {
    v298 = v297;
    v299 = *v814;
    do
    {
      v300 = 0;
      do
      {
        if (*v814 != v299)
        {
          objc_enumerationMutation(v296);
        }

        PBDataWriterWriteSubmessage();
        ++v300;
      }

      while (v298 != v300);
      v298 = [(NSArray *)v296 countByEnumeratingWithState:&v813 objects:v1078 count:16];
    }

    while (v298);
  }

  v812 = 0u;
  v811 = 0u;
  v810 = 0u;
  v809 = 0u;
  v301 = self->_payloadLocations;
  v302 = [(NSArray *)v301 countByEnumeratingWithState:&v809 objects:v1077 count:16];
  if (v302)
  {
    v303 = v302;
    v304 = *v810;
    do
    {
      v305 = 0;
      do
      {
        if (*v810 != v304)
        {
          objc_enumerationMutation(v301);
        }

        PBDataWriterWriteSubmessage();
        ++v305;
      }

      while (v303 != v305);
      v303 = [(NSArray *)v301 countByEnumeratingWithState:&v809 objects:v1077 count:16];
    }

    while (v303);
  }

  v808 = 0u;
  v807 = 0u;
  v806 = 0u;
  v805 = 0u;
  v306 = self->_payloadLocationLists;
  v307 = [(NSArray *)v306 countByEnumeratingWithState:&v805 objects:v1076 count:16];
  if (v307)
  {
    v308 = v307;
    v309 = *v806;
    do
    {
      v310 = 0;
      do
      {
        if (*v806 != v309)
        {
          objc_enumerationMutation(v306);
        }

        PBDataWriterWriteSubmessage();
        ++v310;
      }

      while (v308 != v310);
      v308 = [(NSArray *)v306 countByEnumeratingWithState:&v805 objects:v1076 count:16];
    }

    while (v308);
  }

  if (self->_payloadLocationSearchTypes.count)
  {
    v311 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v311;
    }

    while (v311 < self->_payloadLocationSearchTypes.count);
  }

  v804 = 0u;
  v803 = 0u;
  v802 = 0u;
  v801 = 0u;
  v312 = self->_payloadLongLists;
  v313 = [(NSArray *)v312 countByEnumeratingWithState:&v801 objects:v1075 count:16];
  if (v313)
  {
    v314 = v313;
    v315 = *v802;
    do
    {
      v316 = 0;
      do
      {
        if (*v802 != v315)
        {
          objc_enumerationMutation(v312);
        }

        PBDataWriterWriteSubmessage();
        ++v316;
      }

      while (v314 != v316);
      v314 = [(NSArray *)v312 countByEnumeratingWithState:&v801 objects:v1075 count:16];
    }

    while (v314);
  }

  v800 = 0u;
  v799 = 0u;
  v798 = 0u;
  v797 = 0u;
  v317 = self->_payloadLongValues;
  v318 = [(NSArray *)v317 countByEnumeratingWithState:&v797 objects:v1074 count:16];
  if (v318)
  {
    v319 = v318;
    v320 = *v798;
    do
    {
      v321 = 0;
      do
      {
        if (*v798 != v320)
        {
          objc_enumerationMutation(v317);
        }

        PBDataWriterWriteSubmessage();
        ++v321;
      }

      while (v319 != v321);
      v319 = [(NSArray *)v317 countByEnumeratingWithState:&v797 objects:v1074 count:16];
    }

    while (v319);
  }

  v796 = 0u;
  v795 = 0u;
  v794 = 0u;
  v793 = 0u;
  v322 = self->_payloadMassValues;
  v323 = [(NSArray *)v322 countByEnumeratingWithState:&v793 objects:v1073 count:16];
  if (v323)
  {
    v324 = v323;
    v325 = *v794;
    do
    {
      v326 = 0;
      do
      {
        if (*v794 != v325)
        {
          objc_enumerationMutation(v322);
        }

        PBDataWriterWriteSubmessage();
        ++v326;
      }

      while (v324 != v326);
      v324 = [(NSArray *)v322 countByEnumeratingWithState:&v793 objects:v1073 count:16];
    }

    while (v324);
  }

  if (self->_payloadMediaAffinityTypes.count)
  {
    v327 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v327;
    }

    while (v327 < self->_payloadMediaAffinityTypes.count);
  }

  v792 = 0u;
  v791 = 0u;
  v790 = 0u;
  v789 = 0u;
  v328 = self->_payloadMediaDestinations;
  v329 = [(NSArray *)v328 countByEnumeratingWithState:&v789 objects:v1072 count:16];
  if (v329)
  {
    v330 = v329;
    v331 = *v790;
    do
    {
      v332 = 0;
      do
      {
        if (*v790 != v331)
        {
          objc_enumerationMutation(v328);
        }

        PBDataWriterWriteSubmessage();
        ++v332;
      }

      while (v330 != v332);
      v330 = [(NSArray *)v328 countByEnumeratingWithState:&v789 objects:v1072 count:16];
    }

    while (v330);
  }

  v788 = 0u;
  v787 = 0u;
  v786 = 0u;
  v785 = 0u;
  v333 = self->_payloadMediaItemGroups;
  v334 = [(NSArray *)v333 countByEnumeratingWithState:&v785 objects:v1071 count:16];
  if (v334)
  {
    v335 = v334;
    v336 = *v786;
    do
    {
      v337 = 0;
      do
      {
        if (*v786 != v336)
        {
          objc_enumerationMutation(v333);
        }

        PBDataWriterWriteSubmessage();
        ++v337;
      }

      while (v335 != v337);
      v335 = [(NSArray *)v333 countByEnumeratingWithState:&v785 objects:v1071 count:16];
    }

    while (v335);
  }

  v784 = 0u;
  v783 = 0u;
  v782 = 0u;
  v781 = 0u;
  v338 = self->_payloadMediaItemValues;
  v339 = [(NSArray *)v338 countByEnumeratingWithState:&v781 objects:v1070 count:16];
  if (v339)
  {
    v340 = v339;
    v341 = *v782;
    do
    {
      v342 = 0;
      do
      {
        if (*v782 != v341)
        {
          objc_enumerationMutation(v338);
        }

        PBDataWriterWriteSubmessage();
        ++v342;
      }

      while (v340 != v342);
      v340 = [(NSArray *)v338 countByEnumeratingWithState:&v781 objects:v1070 count:16];
    }

    while (v340);
  }

  v780 = 0u;
  v779 = 0u;
  v778 = 0u;
  v777 = 0u;
  v343 = self->_payloadMediaSearchs;
  v344 = [(NSArray *)v343 countByEnumeratingWithState:&v777 objects:v1069 count:16];
  if (v344)
  {
    v345 = v344;
    v346 = *v778;
    do
    {
      v347 = 0;
      do
      {
        if (*v778 != v346)
        {
          objc_enumerationMutation(v343);
        }

        PBDataWriterWriteSubmessage();
        ++v347;
      }

      while (v345 != v347);
      v345 = [(NSArray *)v343 countByEnumeratingWithState:&v777 objects:v1069 count:16];
    }

    while (v345);
  }

  if (self->_payloadMessageAttributes.count)
  {
    v348 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v348;
    }

    while (v348 < self->_payloadMessageAttributes.count);
  }

  if (self->_payloadMessageEffects.count)
  {
    v349 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v349;
    }

    while (v349 < self->_payloadMessageEffects.count);
  }

  if (self->_payloadMessageTypes.count)
  {
    v350 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v350;
    }

    while (v350 < self->_payloadMessageTypes.count);
  }

  v776 = 0u;
  v775 = 0u;
  v774 = 0u;
  v773 = 0u;
  v351 = self->_payloadModifyNicknames;
  v352 = [(NSArray *)v351 countByEnumeratingWithState:&v773 objects:v1068 count:16];
  if (v352)
  {
    v353 = v352;
    v354 = *v774;
    do
    {
      v355 = 0;
      do
      {
        if (*v774 != v354)
        {
          objc_enumerationMutation(v351);
        }

        PBDataWriterWriteSubmessage();
        ++v355;
      }

      while (v353 != v355);
      v353 = [(NSArray *)v351 countByEnumeratingWithState:&v773 objects:v1068 count:16];
    }

    while (v353);
  }

  v772 = 0u;
  v771 = 0u;
  v770 = 0u;
  v769 = 0u;
  v356 = self->_payloadModifyRelationships;
  v357 = [(NSArray *)v356 countByEnumeratingWithState:&v769 objects:v1067 count:16];
  if (v357)
  {
    v358 = v357;
    v359 = *v770;
    do
    {
      v360 = 0;
      do
      {
        if (*v770 != v359)
        {
          objc_enumerationMutation(v356);
        }

        PBDataWriterWriteSubmessage();
        ++v360;
      }

      while (v358 != v360);
      v358 = [(NSArray *)v356 countByEnumeratingWithState:&v769 objects:v1067 count:16];
    }

    while (v358);
  }

  v768 = 0u;
  v767 = 0u;
  v766 = 0u;
  v765 = 0u;
  v361 = self->_payloadNotes;
  v362 = [(NSArray *)v361 countByEnumeratingWithState:&v765 objects:v1066 count:16];
  if (v362)
  {
    v363 = v362;
    v364 = *v766;
    do
    {
      v365 = 0;
      do
      {
        if (*v766 != v364)
        {
          objc_enumerationMutation(v361);
        }

        PBDataWriterWriteSubmessage();
        ++v365;
      }

      while (v363 != v365);
      v363 = [(NSArray *)v361 countByEnumeratingWithState:&v765 objects:v1066 count:16];
    }

    while (v363);
  }

  v764 = 0u;
  v763 = 0u;
  v762 = 0u;
  v761 = 0u;
  v366 = self->_payloadNoteContents;
  v367 = [(NSArray *)v366 countByEnumeratingWithState:&v761 objects:v1065 count:16];
  if (v367)
  {
    v368 = v367;
    v369 = *v762;
    do
    {
      v370 = 0;
      do
      {
        if (*v762 != v369)
        {
          objc_enumerationMutation(v366);
        }

        PBDataWriterWriteSubmessage();
        ++v370;
      }

      while (v368 != v370);
      v368 = [(NSArray *)v366 countByEnumeratingWithState:&v761 objects:v1065 count:16];
    }

    while (v368);
  }

  if (self->_payloadNotebookItemTypes.count)
  {
    v371 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v371;
    }

    while (v371 < self->_payloadNotebookItemTypes.count);
  }

  if (self->_payloadNumericSettingUnits.count)
  {
    v372 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v372;
    }

    while (v372 < self->_payloadNumericSettingUnits.count);
  }

  v760 = 0u;
  v759 = 0u;
  v758 = 0u;
  v757 = 0u;
  v373 = self->_payloadNumericSettingValues;
  v374 = [(NSArray *)v373 countByEnumeratingWithState:&v757 objects:v1064 count:16];
  if (v374)
  {
    v375 = v374;
    v376 = *v758;
    do
    {
      v377 = 0;
      do
      {
        if (*v758 != v376)
        {
          objc_enumerationMutation(v373);
        }

        PBDataWriterWriteSubmessage();
        ++v377;
      }

      while (v375 != v377);
      v375 = [(NSArray *)v373 countByEnumeratingWithState:&v757 objects:v1064 count:16];
    }

    while (v375);
  }

  if (self->_payloadOutgoingMessageTypes.count)
  {
    v378 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v378;
    }

    while (v378 < self->_payloadOutgoingMessageTypes.count);
  }

  if (self->_payloadParsecCategories.count)
  {
    v379 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v379;
    }

    while (v379 < self->_payloadParsecCategories.count);
  }

  v756 = 0u;
  v755 = 0u;
  v754 = 0u;
  v753 = 0u;
  v380 = self->_payloadPaymentAmountValues;
  v381 = [(NSArray *)v380 countByEnumeratingWithState:&v753 objects:v1063 count:16];
  if (v381)
  {
    v382 = v381;
    v383 = *v754;
    do
    {
      v384 = 0;
      do
      {
        if (*v754 != v383)
        {
          objc_enumerationMutation(v380);
        }

        PBDataWriterWriteSubmessage();
        ++v384;
      }

      while (v382 != v384);
      v382 = [(NSArray *)v380 countByEnumeratingWithState:&v753 objects:v1063 count:16];
    }

    while (v382);
  }

  v752 = 0u;
  v751 = 0u;
  v750 = 0u;
  v749 = 0u;
  v385 = self->_payloadPaymentMethodLists;
  v386 = [(NSArray *)v385 countByEnumeratingWithState:&v749 objects:v1062 count:16];
  if (v386)
  {
    v387 = v386;
    v388 = *v750;
    do
    {
      v389 = 0;
      do
      {
        if (*v750 != v388)
        {
          objc_enumerationMutation(v385);
        }

        PBDataWriterWriteSubmessage();
        ++v389;
      }

      while (v387 != v389);
      v387 = [(NSArray *)v385 countByEnumeratingWithState:&v749 objects:v1062 count:16];
    }

    while (v387);
  }

  v748 = 0u;
  v747 = 0u;
  v746 = 0u;
  v745 = 0u;
  v390 = self->_payloadPaymentMethodValues;
  v391 = [(NSArray *)v390 countByEnumeratingWithState:&v745 objects:v1061 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v746;
    do
    {
      v394 = 0;
      do
      {
        if (*v746 != v393)
        {
          objc_enumerationMutation(v390);
        }

        PBDataWriterWriteSubmessage();
        ++v394;
      }

      while (v392 != v394);
      v392 = [(NSArray *)v390 countByEnumeratingWithState:&v745 objects:v1061 count:16];
    }

    while (v392);
  }

  if (self->_payloadPaymentStatus.count)
  {
    v395 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v395;
    }

    while (v395 < self->_payloadPaymentStatus.count);
  }

  if (self->_payloadPersonalPlaceTypes.count)
  {
    v396 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v396;
    }

    while (v396 < self->_payloadPersonalPlaceTypes.count);
  }

  if (self->_payloadPhotoAttributes.count)
  {
    v397 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v397;
    }

    while (v397 < self->_payloadPhotoAttributes.count);
  }

  v744 = 0u;
  v743 = 0u;
  v742 = 0u;
  v741 = 0u;
  v398 = self->_payloadPlaces;
  v399 = [(NSArray *)v398 countByEnumeratingWithState:&v741 objects:v1060 count:16];
  if (v399)
  {
    v400 = v399;
    v401 = *v742;
    do
    {
      v402 = 0;
      do
      {
        if (*v742 != v401)
        {
          objc_enumerationMutation(v398);
        }

        PBDataWriterWriteSubmessage();
        ++v402;
      }

      while (v400 != v402);
      v400 = [(NSArray *)v398 countByEnumeratingWithState:&v741 objects:v1060 count:16];
    }

    while (v400);
  }

  v740 = 0u;
  v739 = 0u;
  v738 = 0u;
  v737 = 0u;
  v403 = self->_payloadPlaceLists;
  v404 = [(NSArray *)v403 countByEnumeratingWithState:&v737 objects:v1059 count:16];
  if (v404)
  {
    v405 = v404;
    v406 = *v738;
    do
    {
      v407 = 0;
      do
      {
        if (*v738 != v406)
        {
          objc_enumerationMutation(v403);
        }

        PBDataWriterWriteSubmessage();
        ++v407;
      }

      while (v405 != v407);
      v405 = [(NSArray *)v403 countByEnumeratingWithState:&v737 objects:v1059 count:16];
    }

    while (v405);
  }

  if (self->_payloadPlaybackQueueLocations.count)
  {
    v408 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v408;
    }

    while (v408 < self->_payloadPlaybackQueueLocations.count);
  }

  if (self->_payloadPlaybackRepeatModes.count)
  {
    v409 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v409;
    }

    while (v409 < self->_payloadPlaybackRepeatModes.count);
  }

  if (self->_payloadPreferredCallProviders.count)
  {
    v410 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v410;
    }

    while (v410 < self->_payloadPreferredCallProviders.count);
  }

  v736 = 0u;
  v735 = 0u;
  v734 = 0u;
  v733 = 0u;
  v411 = self->_payloadPrimitiveBools;
  v412 = [(NSArray *)v411 countByEnumeratingWithState:&v733 objects:v1058 count:16];
  if (v412)
  {
    v413 = v412;
    v414 = *v734;
    do
    {
      v415 = 0;
      do
      {
        if (*v734 != v414)
        {
          objc_enumerationMutation(v411);
        }

        [*(*(&v733 + 1) + 8 * v415) BOOLValue];
        PBDataWriterWriteBOOLField();
        ++v415;
      }

      while (v413 != v415);
      v413 = [(NSArray *)v411 countByEnumeratingWithState:&v733 objects:v1058 count:16];
    }

    while (v413);
  }

  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v416 = self->_payloadPrimitiveDoubles;
  v417 = [(NSArray *)v416 countByEnumeratingWithState:&v729 objects:v1057 count:16];
  if (v417)
  {
    v418 = v417;
    v419 = *v730;
    do
    {
      v420 = 0;
      do
      {
        if (*v730 != v419)
        {
          objc_enumerationMutation(v416);
        }

        [*(*(&v729 + 1) + 8 * v420) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v420;
      }

      while (v418 != v420);
      v418 = [(NSArray *)v416 countByEnumeratingWithState:&v729 objects:v1057 count:16];
    }

    while (v418);
  }

  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v421 = self->_payloadPrimitiveInts;
  v422 = [(NSArray *)v421 countByEnumeratingWithState:&v725 objects:v1056 count:16];
  if (v422)
  {
    v423 = v422;
    v424 = *v726;
    do
    {
      v425 = 0;
      do
      {
        if (*v726 != v424)
        {
          objc_enumerationMutation(v421);
        }

        [*(*(&v725 + 1) + 8 * v425) intValue];
        PBDataWriterWriteInt32Field();
        ++v425;
      }

      while (v423 != v425);
      v423 = [(NSArray *)v421 countByEnumeratingWithState:&v725 objects:v1056 count:16];
    }

    while (v423);
  }

  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v426 = self->_payloadPrimitiveLongs;
  v427 = [(NSArray *)v426 countByEnumeratingWithState:&v721 objects:v1055 count:16];
  if (v427)
  {
    v428 = v427;
    v429 = *v722;
    do
    {
      v430 = 0;
      do
      {
        if (*v722 != v429)
        {
          objc_enumerationMutation(v426);
        }

        [*(*(&v721 + 1) + 8 * v430) longLongValue];
        PBDataWriterWriteInt64Field();
        ++v430;
      }

      while (v428 != v430);
      v428 = [(NSArray *)v426 countByEnumeratingWithState:&v721 objects:v1055 count:16];
    }

    while (v428);
  }

  v720 = 0u;
  v719 = 0u;
  v718 = 0u;
  v717 = 0u;
  v431 = self->_payloadPrimitiveStrings;
  v432 = [(NSArray *)v431 countByEnumeratingWithState:&v717 objects:v1054 count:16];
  if (v432)
  {
    v433 = v432;
    v434 = *v718;
    do
    {
      v435 = 0;
      do
      {
        if (*v718 != v434)
        {
          objc_enumerationMutation(v431);
        }

        PBDataWriterWriteStringField();
        ++v435;
      }

      while (v433 != v435);
      v433 = [(NSArray *)v431 countByEnumeratingWithState:&v717 objects:v1054 count:16];
    }

    while (v433);
  }

  v716 = 0u;
  v715 = 0u;
  v714 = 0u;
  v713 = 0u;
  v436 = self->_payloadPrivateAddMediaIntentDatas;
  v437 = [(NSArray *)v436 countByEnumeratingWithState:&v713 objects:v1053 count:16];
  if (v437)
  {
    v438 = v437;
    v439 = *v714;
    do
    {
      v440 = 0;
      do
      {
        if (*v714 != v439)
        {
          objc_enumerationMutation(v436);
        }

        PBDataWriterWriteSubmessage();
        ++v440;
      }

      while (v438 != v440);
      v438 = [(NSArray *)v436 countByEnumeratingWithState:&v713 objects:v1053 count:16];
    }

    while (v438);
  }

  v712 = 0u;
  v711 = 0u;
  v710 = 0u;
  v709 = 0u;
  v441 = self->_payloadPrivatePlayMediaIntentDatas;
  v442 = [(NSArray *)v441 countByEnumeratingWithState:&v709 objects:v1052 count:16];
  if (v442)
  {
    v443 = v442;
    v444 = *v710;
    do
    {
      v445 = 0;
      do
      {
        if (*v710 != v444)
        {
          objc_enumerationMutation(v441);
        }

        PBDataWriterWriteSubmessage();
        ++v445;
      }

      while (v443 != v445);
      v443 = [(NSArray *)v441 countByEnumeratingWithState:&v709 objects:v1052 count:16];
    }

    while (v443);
  }

  v708 = 0u;
  v707 = 0u;
  v706 = 0u;
  v705 = 0u;
  v446 = self->_payloadPrivateSearchForMediaIntentDatas;
  v447 = [(NSArray *)v446 countByEnumeratingWithState:&v705 objects:v1051 count:16];
  if (v447)
  {
    v448 = v447;
    v449 = *v706;
    do
    {
      v450 = 0;
      do
      {
        if (*v706 != v449)
        {
          objc_enumerationMutation(v446);
        }

        PBDataWriterWriteSubmessage();
        ++v450;
      }

      while (v448 != v450);
      v448 = [(NSArray *)v446 countByEnumeratingWithState:&v705 objects:v1051 count:16];
    }

    while (v448);
  }

  v704 = 0u;
  v703 = 0u;
  v702 = 0u;
  v701 = 0u;
  v451 = self->_payloadPrivateUpdateMediaAffinityIntentDatas;
  v452 = [(NSArray *)v451 countByEnumeratingWithState:&v701 objects:v1050 count:16];
  if (v452)
  {
    v453 = v452;
    v454 = *v702;
    do
    {
      v455 = 0;
      do
      {
        if (*v702 != v454)
        {
          objc_enumerationMutation(v451);
        }

        PBDataWriterWriteSubmessage();
        ++v455;
      }

      while (v453 != v455);
      v453 = [(NSArray *)v451 countByEnumeratingWithState:&v701 objects:v1050 count:16];
    }

    while (v453);
  }

  if (self->_payloadRadioTypes.count)
  {
    v456 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v456;
    }

    while (v456 < self->_payloadRadioTypes.count);
  }

  if (self->_payloadReadActionTypes.count)
  {
    v457 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v457;
    }

    while (v457 < self->_payloadReadActionTypes.count);
  }

  if (self->_payloadRelativeReferences.count)
  {
    v458 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v458;
    }

    while (v458 < self->_payloadRelativeReferences.count);
  }

  if (self->_payloadRelativeSettings.count)
  {
    v459 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v459;
    }

    while (v459 < self->_payloadRelativeSettings.count);
  }

  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v697 = 0u;
  v460 = self->_payloadSendMessageAttachments;
  v461 = [(NSArray *)v460 countByEnumeratingWithState:&v697 objects:v1049 count:16];
  if (v461)
  {
    v462 = v461;
    v463 = *v698;
    do
    {
      v464 = 0;
      do
      {
        if (*v698 != v463)
        {
          objc_enumerationMutation(v460);
        }

        PBDataWriterWriteSubmessage();
        ++v464;
      }

      while (v462 != v464);
      v462 = [(NSArray *)v460 countByEnumeratingWithState:&v697 objects:v1049 count:16];
    }

    while (v462);
  }

  if (self->_payloadSettingActions.count)
  {
    v465 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v465;
    }

    while (v465 < self->_payloadSettingActions.count);
  }

  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v693 = 0u;
  v466 = self->_payloadSettingMetadatas;
  v467 = [(NSArray *)v466 countByEnumeratingWithState:&v693 objects:v1048 count:16];
  if (v467)
  {
    v468 = v467;
    v469 = *v694;
    do
    {
      v470 = 0;
      do
      {
        if (*v694 != v469)
        {
          objc_enumerationMutation(v466);
        }

        PBDataWriterWriteSubmessage();
        ++v470;
      }

      while (v468 != v470);
      v468 = [(NSArray *)v466 countByEnumeratingWithState:&v693 objects:v1048 count:16];
    }

    while (v468);
  }

  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v689 = 0u;
  v471 = self->_payloadShareDestinations;
  v472 = [(NSArray *)v471 countByEnumeratingWithState:&v689 objects:v1047 count:16];
  if (v472)
  {
    v473 = v472;
    v474 = *v690;
    do
    {
      v475 = 0;
      do
      {
        if (*v690 != v474)
        {
          objc_enumerationMutation(v471);
        }

        PBDataWriterWriteSubmessage();
        ++v475;
      }

      while (v473 != v475);
      v473 = [(NSArray *)v471 countByEnumeratingWithState:&v689 objects:v1047 count:16];
    }

    while (v473);
  }

  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v685 = 0u;
  v476 = self->_payloadSleepAlarmAttributes;
  v477 = [(NSArray *)v476 countByEnumeratingWithState:&v685 objects:v1046 count:16];
  if (v477)
  {
    v478 = v477;
    v479 = *v686;
    do
    {
      v480 = 0;
      do
      {
        if (*v686 != v479)
        {
          objc_enumerationMutation(v476);
        }

        PBDataWriterWriteSubmessage();
        ++v480;
      }

      while (v478 != v480);
      v478 = [(NSArray *)v476 countByEnumeratingWithState:&v685 objects:v1046 count:16];
    }

    while (v478);
  }

  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v681 = 0u;
  v481 = self->_payloadSpatialEventTriggers;
  v482 = [(NSArray *)v481 countByEnumeratingWithState:&v681 objects:v1045 count:16];
  if (v482)
  {
    v483 = v482;
    v484 = *v682;
    do
    {
      v485 = 0;
      do
      {
        if (*v682 != v484)
        {
          objc_enumerationMutation(v481);
        }

        PBDataWriterWriteSubmessage();
        ++v485;
      }

      while (v483 != v485);
      v483 = [(NSArray *)v481 countByEnumeratingWithState:&v681 objects:v1045 count:16];
    }

    while (v483);
  }

  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v677 = 0u;
  v486 = self->_payloadSpeedValues;
  v487 = [(NSArray *)v486 countByEnumeratingWithState:&v677 objects:v1044 count:16];
  if (v487)
  {
    v488 = v487;
    v489 = *v678;
    do
    {
      v490 = 0;
      do
      {
        if (*v678 != v489)
        {
          objc_enumerationMutation(v486);
        }

        PBDataWriterWriteSubmessage();
        ++v490;
      }

      while (v488 != v490);
      v488 = [(NSArray *)v486 countByEnumeratingWithState:&v677 objects:v1044 count:16];
    }

    while (v488);
  }

  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v673 = 0u;
  v491 = self->_payloadStartCallRequestMetadatas;
  v492 = [(NSArray *)v491 countByEnumeratingWithState:&v673 objects:v1043 count:16];
  if (v492)
  {
    v493 = v492;
    v494 = *v674;
    do
    {
      v495 = 0;
      do
      {
        if (*v674 != v494)
        {
          objc_enumerationMutation(v491);
        }

        PBDataWriterWriteSubmessage();
        ++v495;
      }

      while (v493 != v495);
      v493 = [(NSArray *)v491 countByEnumeratingWithState:&v673 objects:v1043 count:16];
    }

    while (v493);
  }

  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  v496 = self->_payloadStringLists;
  v497 = [(NSArray *)v496 countByEnumeratingWithState:&v669 objects:v1042 count:16];
  if (v497)
  {
    v498 = v497;
    v499 = *v670;
    do
    {
      v500 = 0;
      do
      {
        if (*v670 != v499)
        {
          objc_enumerationMutation(v496);
        }

        PBDataWriterWriteSubmessage();
        ++v500;
      }

      while (v498 != v500);
      v498 = [(NSArray *)v496 countByEnumeratingWithState:&v669 objects:v1042 count:16];
    }

    while (v498);
  }

  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v665 = 0u;
  v501 = self->_payloadStringValues;
  v502 = [(NSArray *)v501 countByEnumeratingWithState:&v665 objects:v1041 count:16];
  if (v502)
  {
    v503 = v502;
    v504 = *v666;
    do
    {
      v505 = 0;
      do
      {
        if (*v666 != v504)
        {
          objc_enumerationMutation(v501);
        }

        PBDataWriterWriteSubmessage();
        ++v505;
      }

      while (v503 != v505);
      v503 = [(NSArray *)v501 countByEnumeratingWithState:&v665 objects:v1041 count:16];
    }

    while (v503);
  }

  v663 = 0u;
  v664 = 0u;
  v661 = 0u;
  v662 = 0u;
  v506 = self->_payloadSupportedTrafficIncidentTypes;
  v507 = [(NSArray *)v506 countByEnumeratingWithState:&v661 objects:v1040 count:16];
  if (v507)
  {
    v508 = v507;
    v509 = *v662;
    do
    {
      v510 = 0;
      do
      {
        if (*v662 != v509)
        {
          objc_enumerationMutation(v506);
        }

        PBDataWriterWriteSubmessage();
        ++v510;
      }

      while (v508 != v510);
      v508 = [(NSArray *)v506 countByEnumeratingWithState:&v661 objects:v1040 count:16];
    }

    while (v508);
  }

  v659 = 0u;
  v660 = 0u;
  v657 = 0u;
  v658 = 0u;
  v511 = self->_payloadTasks;
  v512 = [(NSArray *)v511 countByEnumeratingWithState:&v657 objects:v1039 count:16];
  if (v512)
  {
    v513 = v512;
    v514 = *v658;
    do
    {
      v515 = 0;
      do
      {
        if (*v658 != v514)
        {
          objc_enumerationMutation(v511);
        }

        PBDataWriterWriteSubmessage();
        ++v515;
      }

      while (v513 != v515);
      v513 = [(NSArray *)v511 countByEnumeratingWithState:&v657 objects:v1039 count:16];
    }

    while (v513);
  }

  v655 = 0u;
  v656 = 0u;
  v653 = 0u;
  v654 = 0u;
  v516 = self->_payloadTaskLists;
  v517 = [(NSArray *)v516 countByEnumeratingWithState:&v653 objects:v1038 count:16];
  if (v517)
  {
    v518 = v517;
    v519 = *v654;
    do
    {
      v520 = 0;
      do
      {
        if (*v654 != v519)
        {
          objc_enumerationMutation(v516);
        }

        PBDataWriterWriteSubmessage();
        ++v520;
      }

      while (v518 != v520);
      v518 = [(NSArray *)v516 countByEnumeratingWithState:&v653 objects:v1038 count:16];
    }

    while (v518);
  }

  if (self->_payloadTaskPriorities.count)
  {
    v521 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v521;
    }

    while (v521 < self->_payloadTaskPriorities.count);
  }

  if (self->_payloadTaskReferences.count)
  {
    v522 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v522;
    }

    while (v522 < self->_payloadTaskReferences.count);
  }

  if (self->_payloadTaskStatus.count)
  {
    v523 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v523;
    }

    while (v523 < self->_payloadTaskStatus.count);
  }

  v651 = 0u;
  v652 = 0u;
  v649 = 0u;
  v650 = 0u;
  v524 = self->_payloadTemperatureLists;
  v525 = [(NSArray *)v524 countByEnumeratingWithState:&v649 objects:v1037 count:16];
  if (v525)
  {
    v526 = v525;
    v527 = *v650;
    do
    {
      v528 = 0;
      do
      {
        if (*v650 != v527)
        {
          objc_enumerationMutation(v524);
        }

        PBDataWriterWriteSubmessage();
        ++v528;
      }

      while (v526 != v528);
      v526 = [(NSArray *)v524 countByEnumeratingWithState:&v649 objects:v1037 count:16];
    }

    while (v526);
  }

  v647 = 0u;
  v648 = 0u;
  v645 = 0u;
  v646 = 0u;
  v529 = self->_payloadTemperatureValues;
  v530 = [(NSArray *)v529 countByEnumeratingWithState:&v645 objects:v1036 count:16];
  if (v530)
  {
    v531 = v530;
    v532 = *v646;
    do
    {
      v533 = 0;
      do
      {
        if (*v646 != v532)
        {
          objc_enumerationMutation(v529);
        }

        PBDataWriterWriteSubmessage();
        ++v533;
      }

      while (v531 != v533);
      v531 = [(NSArray *)v529 countByEnumeratingWithState:&v645 objects:v1036 count:16];
    }

    while (v531);
  }

  v643 = 0u;
  v644 = 0u;
  v641 = 0u;
  v642 = 0u;
  v534 = self->_payloadTemporalEventTriggers;
  v535 = [(NSArray *)v534 countByEnumeratingWithState:&v641 objects:v1035 count:16];
  if (v535)
  {
    v536 = v535;
    v537 = *v642;
    do
    {
      v538 = 0;
      do
      {
        if (*v642 != v537)
        {
          objc_enumerationMutation(v534);
        }

        PBDataWriterWriteSubmessage();
        ++v538;
      }

      while (v536 != v538);
      v536 = [(NSArray *)v534 countByEnumeratingWithState:&v641 objects:v1035 count:16];
    }

    while (v536);
  }

  if (self->_payloadTemporalEventTriggerTypes.count)
  {
    v539 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v539;
    }

    while (v539 < self->_payloadTemporalEventTriggerTypes.count);
  }

  v639 = 0u;
  v640 = 0u;
  v637 = 0u;
  v638 = 0u;
  v540 = self->_payloadTimers;
  v541 = [(NSArray *)v540 countByEnumeratingWithState:&v637 objects:v1034 count:16];
  if (v541)
  {
    v542 = v541;
    v543 = *v638;
    do
    {
      v544 = 0;
      do
      {
        if (*v638 != v543)
        {
          objc_enumerationMutation(v540);
        }

        PBDataWriterWriteSubmessage();
        ++v544;
      }

      while (v542 != v544);
      v542 = [(NSArray *)v540 countByEnumeratingWithState:&v637 objects:v1034 count:16];
    }

    while (v542);
  }

  if (self->_payloadTimerStates.count)
  {
    v545 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v545;
    }

    while (v545 < self->_payloadTimerStates.count);
  }

  if (self->_payloadTimerTypes.count)
  {
    v546 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v546;
    }

    while (v546 < self->_payloadTimerTypes.count);
  }

  v635 = 0u;
  v636 = 0u;
  v633 = 0u;
  v634 = 0u;
  v547 = self->_payloadURLValues;
  v548 = [(NSArray *)v547 countByEnumeratingWithState:&v633 objects:v1033 count:16];
  if (v548)
  {
    v549 = v548;
    v550 = *v634;
    do
    {
      v551 = 0;
      do
      {
        if (*v634 != v550)
        {
          objc_enumerationMutation(v547);
        }

        PBDataWriterWriteSubmessage();
        ++v551;
      }

      while (v549 != v551);
      v549 = [(NSArray *)v547 countByEnumeratingWithState:&v633 objects:v1033 count:16];
    }

    while (v549);
  }

  if (self->_payloadUpdateAlarmOperations.count)
  {
    v552 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v552;
    }

    while (v552 < self->_payloadUpdateAlarmOperations.count);
  }

  if (self->_payloadUserNotificationTypes.count)
  {
    v553 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v553;
    }

    while (v553 < self->_payloadUserNotificationTypes.count);
  }

  if (self->_payloadVisualCodeTypes.count)
  {
    v554 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v554;
    }

    while (v554 < self->_payloadVisualCodeTypes.count);
  }

  v631 = 0u;
  v632 = 0u;
  v629 = 0u;
  v630 = 0u;
  v555 = self->_payloadVoiceCommandDeviceInformations;
  v556 = [(NSArray *)v555 countByEnumeratingWithState:&v629 objects:v1032 count:16];
  if (v556)
  {
    v557 = v556;
    v558 = *v630;
    do
    {
      v559 = 0;
      do
      {
        if (*v630 != v558)
        {
          objc_enumerationMutation(v555);
        }

        PBDataWriterWriteSubmessage();
        ++v559;
      }

      while (v557 != v559);
      v557 = [(NSArray *)v555 countByEnumeratingWithState:&v629 objects:v1032 count:16];
    }

    while (v557);
  }

  v627 = 0u;
  v628 = 0u;
  v625 = 0u;
  v626 = 0u;
  v560 = self->_payloadVolumeValues;
  v561 = [(NSArray *)v560 countByEnumeratingWithState:&v625 objects:v1031 count:16];
  if (v561)
  {
    v562 = v561;
    v563 = *v626;
    do
    {
      v564 = 0;
      do
      {
        if (*v626 != v563)
        {
          objc_enumerationMutation(v560);
        }

        PBDataWriterWriteSubmessage();
        ++v564;
      }

      while (v562 != v564);
      v562 = [(NSArray *)v560 countByEnumeratingWithState:&v625 objects:v1031 count:16];
    }

    while (v562);
  }

  v623 = 0u;
  v624 = 0u;
  v621 = 0u;
  v622 = 0u;
  v565 = self->_payloadWellnessMetadataPairs;
  v566 = [(NSArray *)v565 countByEnumeratingWithState:&v621 objects:v1030 count:16];
  if (v566)
  {
    v567 = v566;
    v568 = *v622;
    do
    {
      v569 = 0;
      do
      {
        if (*v622 != v568)
        {
          objc_enumerationMutation(v565);
        }

        PBDataWriterWriteSubmessage();
        ++v569;
      }

      while (v567 != v569);
      v567 = [(NSArray *)v565 countByEnumeratingWithState:&v621 objects:v1030 count:16];
    }

    while (v567);
  }

  v619 = 0u;
  v620 = 0u;
  v617 = 0u;
  v618 = 0u;
  v570 = self->_payloadWellnessObjectResultValues;
  v571 = [(NSArray *)v570 countByEnumeratingWithState:&v617 objects:v1029 count:16];
  if (v571)
  {
    v572 = v571;
    v573 = *v618;
    do
    {
      v574 = 0;
      do
      {
        if (*v618 != v573)
        {
          objc_enumerationMutation(v570);
        }

        PBDataWriterWriteSubmessage();
        ++v574;
      }

      while (v572 != v574);
      v572 = [(NSArray *)v570 countByEnumeratingWithState:&v617 objects:v1029 count:16];
    }

    while (v572);
  }

  if (self->_payloadWellnessObjectTypes.count)
  {
    v575 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v575;
    }

    while (v575 < self->_payloadWellnessObjectTypes.count);
  }

  if (self->_payloadWellnessQueryResultTypes.count)
  {
    v576 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v576;
    }

    while (v576 < self->_payloadWellnessQueryResultTypes.count);
  }

  if (self->_payloadWellnessQuestionTypes.count)
  {
    v577 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v577;
    }

    while (v577 < self->_payloadWellnessQuestionTypes.count);
  }

  v615 = 0u;
  v616 = 0u;
  v613 = 0u;
  v614 = 0u;
  v578 = self->_payloadWellnessUnitTypes;
  v579 = [(NSArray *)v578 countByEnumeratingWithState:&v613 objects:v1028 count:16];
  if (v579)
  {
    v580 = v579;
    v581 = *v614;
    do
    {
      v582 = 0;
      do
      {
        if (*v614 != v581)
        {
          objc_enumerationMutation(v578);
        }

        PBDataWriterWriteSubmessage();
        ++v582;
      }

      while (v580 != v582);
      v580 = [(NSArray *)v578 countByEnumeratingWithState:&v613 objects:v1028 count:16];
    }

    while (v580);
  }

  v611 = 0u;
  v612 = 0u;
  v609 = 0u;
  v610 = 0u;
  v583 = self->_payloadWellnessValues;
  v584 = [(NSArray *)v583 countByEnumeratingWithState:&v609 objects:v1027 count:16];
  if (v584)
  {
    v585 = v584;
    v586 = *v610;
    do
    {
      v587 = 0;
      do
      {
        if (*v610 != v586)
        {
          objc_enumerationMutation(v583);
        }

        PBDataWriterWriteSubmessage();
        ++v587;
      }

      while (v585 != v587);
      v585 = [(NSArray *)v583 countByEnumeratingWithState:&v609 objects:v1027 count:16];
    }

    while (v585);
  }

  v607 = 0u;
  v608 = 0u;
  v605 = 0u;
  v606 = 0u;
  v588 = self->_payloadWorkoutAssociatedItems;
  v589 = [(NSArray *)v588 countByEnumeratingWithState:&v605 objects:v1026 count:16];
  if (v589)
  {
    v590 = v589;
    v591 = *v606;
    do
    {
      v592 = 0;
      do
      {
        if (*v606 != v591)
        {
          objc_enumerationMutation(v588);
        }

        PBDataWriterWriteSubmessage();
        ++v592;
      }

      while (v590 != v592);
      v590 = [(NSArray *)v588 countByEnumeratingWithState:&v605 objects:v1026 count:16];
    }

    while (v590);
  }

  v603 = 0u;
  v604 = 0u;
  v601 = 0u;
  v602 = 0u;
  v593 = self->_payloadWorkoutCustomizations;
  v594 = [(NSArray *)v593 countByEnumeratingWithState:&v601 objects:v1025 count:16];
  if (v594)
  {
    v595 = v594;
    v596 = *v602;
    do
    {
      v597 = 0;
      do
      {
        if (*v602 != v596)
        {
          objc_enumerationMutation(v593);
        }

        PBDataWriterWriteSubmessage();
        ++v597;
      }

      while (v595 != v597);
      v595 = [(NSArray *)v593 countByEnumeratingWithState:&v601 objects:v1025 count:16];
    }

    while (v595);
  }

  if (self->_payloadWorkoutGoalUnitTypes.count)
  {
    v598 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v598;
    }

    while (v598 < self->_payloadWorkoutGoalUnitTypes.count);
  }

  if (self->_payloadWorkoutLocationTypes.count)
  {
    v599 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v599;
    }

    while (v599 < self->_payloadWorkoutLocationTypes.count);
  }

  if (self->_payloadWorkoutSequenceLabels.count)
  {
    v600 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v600;
    }

    while (v600 < self->_payloadWorkoutSequenceLabels.count);
  }

  if ([(_INPBIntentSlotValue *)self hasType:v601])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"String"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Double"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Integer"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Contact"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"DateTimeRange"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Location"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"DataString"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"Long"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"PaymentMethod"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"Temperature"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"Distance"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"FinancialAccount"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"BillType"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"Mass"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"Volume"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"Speed"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"Energy"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"StringList"])
  {
    v4 = 50;
  }

  else if ([typeCopy isEqualToString:@"DoubleList"])
  {
    v4 = 51;
  }

  else if ([typeCopy isEqualToString:@"IntegerList"])
  {
    v4 = 52;
  }

  else if ([typeCopy isEqualToString:@"ContactList"])
  {
    v4 = 53;
  }

  else if ([typeCopy isEqualToString:@"DateTimeRangeList"])
  {
    v4 = 54;
  }

  else if ([typeCopy isEqualToString:@"LocationList"])
  {
    v4 = 55;
  }

  else if ([typeCopy isEqualToString:@"DataStringList"])
  {
    v4 = 56;
  }

  else if ([typeCopy isEqualToString:@"LongList"])
  {
    v4 = 57;
  }

  else if ([typeCopy isEqualToString:@"PaymentMethodList"])
  {
    v4 = 58;
  }

  else if ([typeCopy isEqualToString:@"TemperatureList"])
  {
    v4 = 59;
  }

  else if ([typeCopy isEqualToString:@"DistanceList"])
  {
    v4 = 60;
  }

  else if ([typeCopy isEqualToString:@"PrimitiveBool"])
  {
    v4 = 100;
  }

  else if ([typeCopy isEqualToString:@"PrimitiveInt"])
  {
    v4 = 101;
  }

  else if ([typeCopy isEqualToString:@"PrimitiveLong"])
  {
    v4 = 102;
  }

  else if ([typeCopy isEqualToString:@"PrimitiveDouble"])
  {
    v4 = 103;
  }

  else if ([typeCopy isEqualToString:@"PrimitiveString"])
  {
    v4 = 104;
  }

  else if ([typeCopy isEqualToString:@"DateTime"])
  {
    v4 = 105;
  }

  else if ([typeCopy isEqualToString:@"Intent"])
  {
    v4 = 107;
  }

  else if ([typeCopy isEqualToString:@"ModifyRelationship"])
  {
    v4 = 108;
  }

  else if ([typeCopy isEqualToString:@"ModifyNickname"])
  {
    v4 = 109;
  }

  else if ([typeCopy isEqualToString:@"CalendarEvent"])
  {
    v4 = 110;
  }

  else if ([typeCopy isEqualToString:@"EventParticipant"])
  {
    v4 = 111;
  }

  else if ([typeCopy isEqualToString:@"EventAttribute"])
  {
    v4 = 112;
  }

  else if ([typeCopy isEqualToString:@"Extension"])
  {
    v4 = 1000;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)typeAsString:(int)string
{
  if (string <= 99)
  {
    v4 = @"String";
    switch(string)
    {
      case 1:
        goto LABEL_138;
      case 2:
        v4 = @"Double";

        break;
      case 3:
        v4 = @"Integer";

        break;
      case 4:
        v4 = @"Contact";

        break;
      case 5:
        v4 = @"DateTimeRange";

        break;
      case 6:
        v4 = @"Location";

        break;
      case 7:
        v4 = @"DataString";

        break;
      case 8:
        v4 = @"Long";

        break;
      case 9:
        v4 = @"PaymentMethod";

        break;
      case 10:
        v4 = @"Temperature";

        break;
      case 11:
        v4 = @"Distance";

        break;
      case 12:
        v4 = @"FinancialAccount";

        break;
      case 13:
        v4 = @"BillType";

        break;
      case 14:
        v4 = @"Mass";

        break;
      case 15:
        v4 = @"Volume";

        break;
      case 16:
        v4 = @"Speed";

        break;
      case 17:
        v4 = @"Energy";

        break;
      case 50:
        v4 = @"StringList";

        break;
      case 51:
        v4 = @"DoubleList";

        break;
      case 52:
        v4 = @"IntegerList";

        break;
      case 53:
        v4 = @"ContactList";

        break;
      case 54:
        v4 = @"DateTimeRangeList";

        break;
      case 55:
        v4 = @"LocationList";

        break;
      case 56:
        v4 = @"DataStringList";

        break;
      case 57:
        v4 = @"LongList";

        break;
      case 58:
        v4 = @"PaymentMethodList";

        break;
      case 59:
        v4 = @"TemperatureList";

        break;
      case 60:
        v4 = @"DistanceList";

        break;
      default:
        goto LABEL_137;
    }

    return v4;
  }

  if (string <= 106)
  {
    if (string > 102)
    {
      switch(string)
      {
        case 'g':
          v4 = @"PrimitiveDouble";

          break;
        case 'h':
          v4 = @"PrimitiveString";

          break;
        case 'i':
          v4 = @"DateTime";

          break;
        default:
          goto LABEL_137;
      }
    }

    else if (string == 100)
    {
      v4 = @"PrimitiveBool";
    }

    else if (string == 101)
    {
      v4 = @"PrimitiveInt";
    }

    else
    {
      v4 = @"PrimitiveLong";
    }
  }

  else if (string <= 109)
  {
    if (string == 107)
    {
      v4 = @"Intent";
    }

    else if (string == 108)
    {
      v4 = @"ModifyRelationship";
    }

    else
    {
      v4 = @"ModifyNickname";
    }
  }

  else
  {
    if (string <= 111)
    {
      if (string == 110)
      {
        v4 = @"CalendarEvent";
      }

      else
      {
        v4 = @"EventParticipant";
      }

      return v4;
    }

    if (string != 112)
    {
      if (string == 1000)
      {
        v4 = @"Extension";

        return v4;
      }

LABEL_137:
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
LABEL_138:

      return v4;
    }

    v4 = @"EventAttribute";
  }

  return v4;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = type;
  }
}

- (int)StringAsPayloadWorkoutSequenceLabels:(id)labels
{
  labelsCopy = labels;
  if ([labelsCopy isEqualToString:@"last"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [labelsCopy isEqualToString:@"next"];
  }

  return v4;
}

- (id)payloadWorkoutSequenceLabelsAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"next";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"last";
  }

  return v4;
}

- (void)addPayloadWorkoutSequenceLabel:(int)label
{
  if (label != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadWorkoutLocationTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"OUTDOOR"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typesCopy isEqualToString:@"INDOOR"];
  }

  return v4;
}

- (id)payloadWorkoutLocationTypesAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"INDOOR";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"OUTDOOR";
  }

  return v4;
}

- (void)addPayloadWorkoutLocationType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadWorkoutGoalUnitTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"Inch"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"Meter"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"Foot"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"Mile"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"Yard"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"Second"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"Minute"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"Hour"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"Joule"])
  {
    v4 = 8;
  }

  else if ([typesCopy isEqualToString:@"KiloCalorie"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadWorkoutGoalUnitTypesAsString:(int)string
{
  if (string >= 0xA)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7285198 + string);
  }

  return v4;
}

- (void)addPayloadWorkoutGoalUnitType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadWorkoutCustomization:(id)customization
{
  customizationCopy = customization;
  payloadWorkoutCustomizations = self->_payloadWorkoutCustomizations;
  v8 = customizationCopy;
  if (!payloadWorkoutCustomizations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadWorkoutCustomizations;
    self->_payloadWorkoutCustomizations = array;

    customizationCopy = v8;
    payloadWorkoutCustomizations = self->_payloadWorkoutCustomizations;
  }

  [(NSArray *)payloadWorkoutCustomizations addObject:customizationCopy];
}

- (void)setPayloadWorkoutCustomizations:(id)customizations
{
  v4 = [customizations mutableCopy];
  payloadWorkoutCustomizations = self->_payloadWorkoutCustomizations;
  self->_payloadWorkoutCustomizations = v4;

  MEMORY[0x1EEE66BB8](v4, payloadWorkoutCustomizations);
}

- (void)addPayloadWorkoutAssociatedItem:(id)item
{
  itemCopy = item;
  payloadWorkoutAssociatedItems = self->_payloadWorkoutAssociatedItems;
  v8 = itemCopy;
  if (!payloadWorkoutAssociatedItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadWorkoutAssociatedItems;
    self->_payloadWorkoutAssociatedItems = array;

    itemCopy = v8;
    payloadWorkoutAssociatedItems = self->_payloadWorkoutAssociatedItems;
  }

  [(NSArray *)payloadWorkoutAssociatedItems addObject:itemCopy];
}

- (void)setPayloadWorkoutAssociatedItems:(id)items
{
  v4 = [items mutableCopy];
  payloadWorkoutAssociatedItems = self->_payloadWorkoutAssociatedItems;
  self->_payloadWorkoutAssociatedItems = v4;

  MEMORY[0x1EEE66BB8](v4, payloadWorkoutAssociatedItems);
}

- (void)addPayloadWellnessValue:(id)value
{
  valueCopy = value;
  payloadWellnessValues = self->_payloadWellnessValues;
  v8 = valueCopy;
  if (!payloadWellnessValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadWellnessValues;
    self->_payloadWellnessValues = array;

    valueCopy = v8;
    payloadWellnessValues = self->_payloadWellnessValues;
  }

  [(NSArray *)payloadWellnessValues addObject:valueCopy];
}

- (void)setPayloadWellnessValues:(id)values
{
  v4 = [values mutableCopy];
  payloadWellnessValues = self->_payloadWellnessValues;
  self->_payloadWellnessValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadWellnessValues);
}

- (void)addPayloadWellnessUnitType:(id)type
{
  typeCopy = type;
  payloadWellnessUnitTypes = self->_payloadWellnessUnitTypes;
  v8 = typeCopy;
  if (!payloadWellnessUnitTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadWellnessUnitTypes;
    self->_payloadWellnessUnitTypes = array;

    typeCopy = v8;
    payloadWellnessUnitTypes = self->_payloadWellnessUnitTypes;
  }

  [(NSArray *)payloadWellnessUnitTypes addObject:typeCopy];
}

- (void)setPayloadWellnessUnitTypes:(id)types
{
  v4 = [types mutableCopy];
  payloadWellnessUnitTypes = self->_payloadWellnessUnitTypes;
  self->_payloadWellnessUnitTypes = v4;

  MEMORY[0x1EEE66BB8](v4, payloadWellnessUnitTypes);
}

- (int)StringAsPayloadWellnessQuestionTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN_QUESTION_TYPE"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"VERIFICATION"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"QUANTIFICATION"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"TEMPORAL"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"COMPARISON"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"QUALITY"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"SPEED_RATE"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"INSTANCE_COUNT"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadWellnessQuestionTypesAsString:(int)string
{
  if (string >= 8)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7285158 + string);
  }

  return v4;
}

- (void)addPayloadWellnessQuestionType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadWellnessQueryResultTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN_RESULT_TYPE"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"RAW"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"AVERAGE"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"MINIMUM"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"MAXIMUM"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"SUM"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"FIRST"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"LAST"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"ABOVE"])
  {
    v4 = 8;
  }

  else if ([typesCopy isEqualToString:@"BELOW"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadWellnessQueryResultTypesAsString:(int)string
{
  if (string >= 0xA)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7285108 + string);
  }

  return v4;
}

- (void)addPayloadWellnessQueryResultType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadWellnessObjectTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"BASAL_BODY_TEMPERATURE"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"BIOTIN"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"BLOOD_ALCOHOL_CONTENT"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"BLOOD_GLUCOSE"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"BLOOD_PRESSURE"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"BLOOD_PRESSURE_DIASTOLIC"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"BLOOD_PRESSURE_SYSTOLIC"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"BLOOD_TYPE"])
  {
    v4 = 8;
  }

  else if ([typesCopy isEqualToString:@"BODY_FAT_PERCENTAGE"])
  {
    v4 = 9;
  }

  else if ([typesCopy isEqualToString:@"BODY_MASS_INDEX"])
  {
    v4 = 10;
  }

  else if ([typesCopy isEqualToString:@"BODY_TEMPERATURE"])
  {
    v4 = 11;
  }

  else if ([typesCopy isEqualToString:@"CAFFEINE"])
  {
    v4 = 12;
  }

  else if ([typesCopy isEqualToString:@"CALCIUM"])
  {
    v4 = 13;
  }

  else if ([typesCopy isEqualToString:@"CARBOHYDRATES"])
  {
    v4 = 14;
  }

  else if ([typesCopy isEqualToString:@"CHLORIDE"])
  {
    v4 = 15;
  }

  else if ([typesCopy isEqualToString:@"CHROMIUM"])
  {
    v4 = 16;
  }

  else if ([typesCopy isEqualToString:@"COPPER"])
  {
    v4 = 17;
  }

  else if ([typesCopy isEqualToString:@"DIETARY_CHOLESTEROL"])
  {
    v4 = 18;
  }

  else if ([typesCopy isEqualToString:@"DIETARY_SUGAR"])
  {
    v4 = 19;
  }

  else if ([typesCopy isEqualToString:@"ELECTRODERMAL_ACTIVITY"])
  {
    v4 = 20;
  }

  else if ([typesCopy isEqualToString:@"ENERGY_CONSUMED"])
  {
    v4 = 21;
  }

  else if ([typesCopy isEqualToString:@"FAT_MONOUN_SATURATED"])
  {
    v4 = 22;
  }

  else if ([typesCopy isEqualToString:@"FAT_POLYUN_SATURATED"])
  {
    v4 = 23;
  }

  else if ([typesCopy isEqualToString:@"FAT_SATURATED"])
  {
    v4 = 24;
  }

  else if ([typesCopy isEqualToString:@"FAT_TOTAL"])
  {
    v4 = 25;
  }

  else if ([typesCopy isEqualToString:@"FIBER"])
  {
    v4 = 26;
  }

  else if ([typesCopy isEqualToString:@"FOLATE"])
  {
    v4 = 27;
  }

  else if ([typesCopy isEqualToString:@"FORCED_EXPIRATORY_VOLUME"])
  {
    v4 = 28;
  }

  else if ([typesCopy isEqualToString:@"FORCED_VITAL_CAPACITY"])
  {
    v4 = 29;
  }

  else if ([typesCopy isEqualToString:@"HEART_RATE"])
  {
    v4 = 30;
  }

  else if ([typesCopy isEqualToString:@"HEART_RATE_VARIABILITY_SDNN"])
  {
    v4 = 31;
  }

  else if ([typesCopy isEqualToString:@"HEIGHT"])
  {
    v4 = 32;
  }

  else if ([typesCopy isEqualToString:@"INHALER_USAGE"])
  {
    v4 = 33;
  }

  else if ([typesCopy isEqualToString:@"INSULIN_DELIVERY"])
  {
    v4 = 34;
  }

  else if ([typesCopy isEqualToString:@"IODINE"])
  {
    v4 = 35;
  }

  else if ([typesCopy isEqualToString:@"IRON"])
  {
    v4 = 36;
  }

  else if ([typesCopy isEqualToString:@"LEAN_BODY_MASS"])
  {
    v4 = 37;
  }

  else if ([typesCopy isEqualToString:@"MAGNESIUM"])
  {
    v4 = 38;
  }

  else if ([typesCopy isEqualToString:@"MANGANESE"])
  {
    v4 = 39;
  }

  else if ([typesCopy isEqualToString:@"MOLYBDENUM"])
  {
    v4 = 40;
  }

  else if ([typesCopy isEqualToString:@"NIACIN"])
  {
    v4 = 41;
  }

  else if ([typesCopy isEqualToString:@"NUMBER_OF_TIMES_FALLEN"])
  {
    v4 = 42;
  }

  else if ([typesCopy isEqualToString:@"OXYGEN_SATURATION"])
  {
    v4 = 43;
  }

  else if ([typesCopy isEqualToString:@"PANTOTHENIC_ACID"])
  {
    v4 = 44;
  }

  else if ([typesCopy isEqualToString:@"PEAK_EXPIRATORY_FLOW_RATE"])
  {
    v4 = 45;
  }

  else if ([typesCopy isEqualToString:@"PERIPHERAL_PERFUSION_INDEX"])
  {
    v4 = 46;
  }

  else if ([typesCopy isEqualToString:@"PHOSPHORUS"])
  {
    v4 = 47;
  }

  else if ([typesCopy isEqualToString:@"POTASSIUM"])
  {
    v4 = 48;
  }

  else if ([typesCopy isEqualToString:@"PROTEIN"])
  {
    v4 = 49;
  }

  else if ([typesCopy isEqualToString:@"RESPIRATORY_RATE"])
  {
    v4 = 50;
  }

  else if ([typesCopy isEqualToString:@"RESTINGHEART_RATE"])
  {
    v4 = 51;
  }

  else if ([typesCopy isEqualToString:@"RIBOFLAVIN"])
  {
    v4 = 52;
  }

  else if ([typesCopy isEqualToString:@"SELENIUM"])
  {
    v4 = 53;
  }

  else if ([typesCopy isEqualToString:@"SODIUM"])
  {
    v4 = 54;
  }

  else if ([typesCopy isEqualToString:@"THIAMIN"])
  {
    v4 = 55;
  }

  else if ([typesCopy isEqualToString:@"UV_INDEX"])
  {
    v4 = 56;
  }

  else if ([typesCopy isEqualToString:@"VITAMIN_A"])
  {
    v4 = 57;
  }

  else if ([typesCopy isEqualToString:@"VITAMIN_B12"])
  {
    v4 = 58;
  }

  else if ([typesCopy isEqualToString:@"VITAMIN_B6"])
  {
    v4 = 59;
  }

  else if ([typesCopy isEqualToString:@"VITAMIN_C"])
  {
    v4 = 60;
  }

  else if ([typesCopy isEqualToString:@"VITAMIN_D"])
  {
    v4 = 61;
  }

  else if ([typesCopy isEqualToString:@"VITAMIN_E"])
  {
    v4 = 62;
  }

  else if ([typesCopy isEqualToString:@"VITAMIN_K"])
  {
    v4 = 63;
  }

  else if ([typesCopy isEqualToString:@"WAIST_CIRCUMFERENCE"])
  {
    v4 = 64;
  }

  else if ([typesCopy isEqualToString:@"WALKING_HEART_RATE_AVERAGE"])
  {
    v4 = 65;
  }

  else if ([typesCopy isEqualToString:@"WATER"])
  {
    v4 = 66;
  }

  else if ([typesCopy isEqualToString:@"WEIGHT"])
  {
    v4 = 67;
  }

  else if ([typesCopy isEqualToString:@"ZINC"])
  {
    v4 = 68;
  }

  else if ([typesCopy isEqualToString:@"CERVICAL_MUCUS_QUALITY"])
  {
    v4 = 69;
  }

  else if ([typesCopy isEqualToString:@"OVULATION_TEST_RESULT"])
  {
    v4 = 70;
  }

  else if ([typesCopy isEqualToString:@"MENSTRUAL_FLOW"])
  {
    v4 = 71;
  }

  else if ([typesCopy isEqualToString:@"INTERMENSTRUAL_BLEEDING"])
  {
    v4 = 72;
  }

  else if ([typesCopy isEqualToString:@"SEXUAL_ACTIVITY"])
  {
    v4 = 73;
  }

  else if ([typesCopy isEqualToString:@"MINDFUL_SESSION"])
  {
    v4 = 74;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadWellnessObjectTypesAsString:(int)string
{
  if (string >= 0x4B)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284EB0 + string);
  }

  return v4;
}

- (void)addPayloadWellnessObjectType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadWellnessObjectResultValue:(id)value
{
  valueCopy = value;
  payloadWellnessObjectResultValues = self->_payloadWellnessObjectResultValues;
  v8 = valueCopy;
  if (!payloadWellnessObjectResultValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadWellnessObjectResultValues;
    self->_payloadWellnessObjectResultValues = array;

    valueCopy = v8;
    payloadWellnessObjectResultValues = self->_payloadWellnessObjectResultValues;
  }

  [(NSArray *)payloadWellnessObjectResultValues addObject:valueCopy];
}

- (void)setPayloadWellnessObjectResultValues:(id)values
{
  v4 = [values mutableCopy];
  payloadWellnessObjectResultValues = self->_payloadWellnessObjectResultValues;
  self->_payloadWellnessObjectResultValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadWellnessObjectResultValues);
}

- (void)addPayloadWellnessMetadataPair:(id)pair
{
  pairCopy = pair;
  payloadWellnessMetadataPairs = self->_payloadWellnessMetadataPairs;
  v8 = pairCopy;
  if (!payloadWellnessMetadataPairs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadWellnessMetadataPairs;
    self->_payloadWellnessMetadataPairs = array;

    pairCopy = v8;
    payloadWellnessMetadataPairs = self->_payloadWellnessMetadataPairs;
  }

  [(NSArray *)payloadWellnessMetadataPairs addObject:pairCopy];
}

- (void)setPayloadWellnessMetadataPairs:(id)pairs
{
  v4 = [pairs mutableCopy];
  payloadWellnessMetadataPairs = self->_payloadWellnessMetadataPairs;
  self->_payloadWellnessMetadataPairs = v4;

  MEMORY[0x1EEE66BB8](v4, payloadWellnessMetadataPairs);
}

- (void)addPayloadVolumeValue:(id)value
{
  valueCopy = value;
  payloadVolumeValues = self->_payloadVolumeValues;
  v8 = valueCopy;
  if (!payloadVolumeValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadVolumeValues;
    self->_payloadVolumeValues = array;

    valueCopy = v8;
    payloadVolumeValues = self->_payloadVolumeValues;
  }

  [(NSArray *)payloadVolumeValues addObject:valueCopy];
}

- (void)setPayloadVolumeValues:(id)values
{
  v4 = [values mutableCopy];
  payloadVolumeValues = self->_payloadVolumeValues;
  self->_payloadVolumeValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadVolumeValues);
}

- (void)addPayloadVoiceCommandDeviceInformation:(id)information
{
  informationCopy = information;
  payloadVoiceCommandDeviceInformations = self->_payloadVoiceCommandDeviceInformations;
  v8 = informationCopy;
  if (!payloadVoiceCommandDeviceInformations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadVoiceCommandDeviceInformations;
    self->_payloadVoiceCommandDeviceInformations = array;

    informationCopy = v8;
    payloadVoiceCommandDeviceInformations = self->_payloadVoiceCommandDeviceInformations;
  }

  [(NSArray *)payloadVoiceCommandDeviceInformations addObject:informationCopy];
}

- (void)setPayloadVoiceCommandDeviceInformations:(id)informations
{
  v4 = [informations mutableCopy];
  payloadVoiceCommandDeviceInformations = self->_payloadVoiceCommandDeviceInformations;
  self->_payloadVoiceCommandDeviceInformations = v4;

  MEMORY[0x1EEE66BB8](v4, payloadVoiceCommandDeviceInformations);
}

- (int)StringAsPayloadVisualCodeTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"CONTACT"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"REQUEST_PAYMENT"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"SEND_PAYMENT"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"TRANSIT"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"BUS"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"SUBWAY"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadVisualCodeTypesAsString:(int)string
{
  if (string >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284E78 + string);
  }

  return v4;
}

- (void)addPayloadVisualCodeType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadUserNotificationTypes:(id)types
{
  typesCopy = types;
  v4 = 1;
  if (([typesCopy isEqualToString:@"ANNOUNCEMENT"] & 1) == 0)
  {
    if ([typesCopy isEqualToString:@"DELIVERY_FAILURE"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)payloadUserNotificationTypesAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"ANNOUNCEMENT";
  }

  else if (string == 2)
  {
    v4 = @"DELIVERY_FAILURE";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addPayloadUserNotificationType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadUpdateAlarmOperations:(id)operations
{
  operationsCopy = operations;
  v4 = 1;
  if (([operationsCopy isEqualToString:@"UPDATE_LABEL"] & 1) == 0)
  {
    if ([operationsCopy isEqualToString:@"UPDATE_TIME"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)payloadUpdateAlarmOperationsAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"UPDATE_LABEL";
  }

  else if (string == 2)
  {
    v4 = @"UPDATE_TIME";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addPayloadUpdateAlarmOperation:(int)operation
{
  if (operation != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadURLValue:(id)value
{
  valueCopy = value;
  payloadURLValues = self->_payloadURLValues;
  v8 = valueCopy;
  if (!payloadURLValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadURLValues;
    self->_payloadURLValues = array;

    valueCopy = v8;
    payloadURLValues = self->_payloadURLValues;
  }

  [(NSArray *)payloadURLValues addObject:valueCopy];
}

- (void)setPayloadURLValues:(id)values
{
  v4 = [values mutableCopy];
  payloadURLValues = self->_payloadURLValues;
  self->_payloadURLValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadURLValues);
}

- (int)StringAsPayloadTimerTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"DEFAULT_TYPE"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"SLEEP_TIMER"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadTimerTypesAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284E60 + string);
  }

  return v4;
}

- (void)addPayloadTimerType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadTimerStates:(id)states
{
  statesCopy = states;
  if ([statesCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([statesCopy isEqualToString:@"TIMER_RUNNING"])
  {
    v4 = 1;
  }

  else if ([statesCopy isEqualToString:@"TIMER_PAUSED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadTimerStatesAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284E48 + string);
  }

  return v4;
}

- (void)addPayloadTimerState:(int)state
{
  if (state != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadTimer:(id)timer
{
  timerCopy = timer;
  payloadTimers = self->_payloadTimers;
  v8 = timerCopy;
  if (!payloadTimers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadTimers;
    self->_payloadTimers = array;

    timerCopy = v8;
    payloadTimers = self->_payloadTimers;
  }

  [(NSArray *)payloadTimers addObject:timerCopy];
}

- (void)setPayloadTimers:(id)timers
{
  v4 = [timers mutableCopy];
  payloadTimers = self->_payloadTimers;
  self->_payloadTimers = v4;

  MEMORY[0x1EEE66BB8](v4, payloadTimers);
}

- (int)StringAsPayloadTemporalEventTriggerTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN_TEMPORAL_TRIGGER_TYPE"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"NOT_SCHEDULED"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"SCHEDULED_NON_RECURRING"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"SCHEDULED_RECURRING"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadTemporalEventTriggerTypesAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284E28 + string);
  }

  return v4;
}

- (void)addPayloadTemporalEventTriggerType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadTemporalEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  payloadTemporalEventTriggers = self->_payloadTemporalEventTriggers;
  v8 = triggerCopy;
  if (!payloadTemporalEventTriggers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadTemporalEventTriggers;
    self->_payloadTemporalEventTriggers = array;

    triggerCopy = v8;
    payloadTemporalEventTriggers = self->_payloadTemporalEventTriggers;
  }

  [(NSArray *)payloadTemporalEventTriggers addObject:triggerCopy];
}

- (void)setPayloadTemporalEventTriggers:(id)triggers
{
  v4 = [triggers mutableCopy];
  payloadTemporalEventTriggers = self->_payloadTemporalEventTriggers;
  self->_payloadTemporalEventTriggers = v4;

  MEMORY[0x1EEE66BB8](v4, payloadTemporalEventTriggers);
}

- (void)addPayloadTemperatureValue:(id)value
{
  valueCopy = value;
  payloadTemperatureValues = self->_payloadTemperatureValues;
  v8 = valueCopy;
  if (!payloadTemperatureValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadTemperatureValues;
    self->_payloadTemperatureValues = array;

    valueCopy = v8;
    payloadTemperatureValues = self->_payloadTemperatureValues;
  }

  [(NSArray *)payloadTemperatureValues addObject:valueCopy];
}

- (void)setPayloadTemperatureValues:(id)values
{
  v4 = [values mutableCopy];
  payloadTemperatureValues = self->_payloadTemperatureValues;
  self->_payloadTemperatureValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadTemperatureValues);
}

- (void)addPayloadTemperatureList:(id)list
{
  listCopy = list;
  payloadTemperatureLists = self->_payloadTemperatureLists;
  v8 = listCopy;
  if (!payloadTemperatureLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadTemperatureLists;
    self->_payloadTemperatureLists = array;

    listCopy = v8;
    payloadTemperatureLists = self->_payloadTemperatureLists;
  }

  [(NSArray *)payloadTemperatureLists addObject:listCopy];
}

- (void)setPayloadTemperatureLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadTemperatureLists = self->_payloadTemperatureLists;
  self->_payloadTemperatureLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadTemperatureLists);
}

- (int)StringAsPayloadTaskStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"UNKNOWN_STATUS"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"NOT_COMPLETED"])
  {
    v4 = 10;
  }

  else if ([statusCopy isEqualToString:@"COMPLETED"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadTaskStatusAsString:(int)string
{
  if (string)
  {
    if (string == 20)
    {
      v4 = @"COMPLETED";
    }

    else if (string == 10)
    {
      v4 = @"NOT_COMPLETED";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"UNKNOWN_STATUS";
  }

  return v4;
}

- (void)addPayloadTaskStatus:(int)status
{
  if (status != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (id)payloadTaskReferencesAsString:(int)string
{
  if (string)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = @"CURRENT_ACTIVITY";
  }

  return v4;
}

- (void)addPayloadTaskReference:(int)reference
{
  if (reference != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadTaskPriorities:(id)priorities
{
  prioritiesCopy = priorities;
  if ([prioritiesCopy isEqualToString:@"UNKNOWN_PRIORITY"])
  {
    v4 = 0;
  }

  else if ([prioritiesCopy isEqualToString:@"NOT_FLAGGED"])
  {
    v4 = 1;
  }

  else if ([prioritiesCopy isEqualToString:@"FLAGGED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadTaskPrioritiesAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284E10 + string);
  }

  return v4;
}

- (void)addPayloadTaskPriority:(int)priority
{
  if (priority != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadTaskList:(id)list
{
  listCopy = list;
  payloadTaskLists = self->_payloadTaskLists;
  v8 = listCopy;
  if (!payloadTaskLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadTaskLists;
    self->_payloadTaskLists = array;

    listCopy = v8;
    payloadTaskLists = self->_payloadTaskLists;
  }

  [(NSArray *)payloadTaskLists addObject:listCopy];
}

- (void)setPayloadTaskLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadTaskLists = self->_payloadTaskLists;
  self->_payloadTaskLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadTaskLists);
}

- (void)addPayloadTask:(id)task
{
  taskCopy = task;
  payloadTasks = self->_payloadTasks;
  v8 = taskCopy;
  if (!payloadTasks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadTasks;
    self->_payloadTasks = array;

    taskCopy = v8;
    payloadTasks = self->_payloadTasks;
  }

  [(NSArray *)payloadTasks addObject:taskCopy];
}

- (void)setPayloadTasks:(id)tasks
{
  v4 = [tasks mutableCopy];
  payloadTasks = self->_payloadTasks;
  self->_payloadTasks = v4;

  MEMORY[0x1EEE66BB8](v4, payloadTasks);
}

- (void)addPayloadSupportedTrafficIncidentType:(id)type
{
  typeCopy = type;
  payloadSupportedTrafficIncidentTypes = self->_payloadSupportedTrafficIncidentTypes;
  v8 = typeCopy;
  if (!payloadSupportedTrafficIncidentTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadSupportedTrafficIncidentTypes;
    self->_payloadSupportedTrafficIncidentTypes = array;

    typeCopy = v8;
    payloadSupportedTrafficIncidentTypes = self->_payloadSupportedTrafficIncidentTypes;
  }

  [(NSArray *)payloadSupportedTrafficIncidentTypes addObject:typeCopy];
}

- (void)setPayloadSupportedTrafficIncidentTypes:(id)types
{
  v4 = [types mutableCopy];
  payloadSupportedTrafficIncidentTypes = self->_payloadSupportedTrafficIncidentTypes;
  self->_payloadSupportedTrafficIncidentTypes = v4;

  MEMORY[0x1EEE66BB8](v4, payloadSupportedTrafficIncidentTypes);
}

- (void)addPayloadStringValue:(id)value
{
  valueCopy = value;
  payloadStringValues = self->_payloadStringValues;
  v8 = valueCopy;
  if (!payloadStringValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadStringValues;
    self->_payloadStringValues = array;

    valueCopy = v8;
    payloadStringValues = self->_payloadStringValues;
  }

  [(NSArray *)payloadStringValues addObject:valueCopy];
}

- (void)setPayloadStringValues:(id)values
{
  v4 = [values mutableCopy];
  payloadStringValues = self->_payloadStringValues;
  self->_payloadStringValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadStringValues);
}

- (void)addPayloadStringList:(id)list
{
  listCopy = list;
  payloadStringLists = self->_payloadStringLists;
  v8 = listCopy;
  if (!payloadStringLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadStringLists;
    self->_payloadStringLists = array;

    listCopy = v8;
    payloadStringLists = self->_payloadStringLists;
  }

  [(NSArray *)payloadStringLists addObject:listCopy];
}

- (void)setPayloadStringLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadStringLists = self->_payloadStringLists;
  self->_payloadStringLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadStringLists);
}

- (void)addPayloadStartCallRequestMetadata:(id)metadata
{
  metadataCopy = metadata;
  payloadStartCallRequestMetadatas = self->_payloadStartCallRequestMetadatas;
  v8 = metadataCopy;
  if (!payloadStartCallRequestMetadatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadStartCallRequestMetadatas;
    self->_payloadStartCallRequestMetadatas = array;

    metadataCopy = v8;
    payloadStartCallRequestMetadatas = self->_payloadStartCallRequestMetadatas;
  }

  [(NSArray *)payloadStartCallRequestMetadatas addObject:metadataCopy];
}

- (void)setPayloadStartCallRequestMetadatas:(id)metadatas
{
  v4 = [metadatas mutableCopy];
  payloadStartCallRequestMetadatas = self->_payloadStartCallRequestMetadatas;
  self->_payloadStartCallRequestMetadatas = v4;

  MEMORY[0x1EEE66BB8](v4, payloadStartCallRequestMetadatas);
}

- (void)addPayloadSpeedValue:(id)value
{
  valueCopy = value;
  payloadSpeedValues = self->_payloadSpeedValues;
  v8 = valueCopy;
  if (!payloadSpeedValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadSpeedValues;
    self->_payloadSpeedValues = array;

    valueCopy = v8;
    payloadSpeedValues = self->_payloadSpeedValues;
  }

  [(NSArray *)payloadSpeedValues addObject:valueCopy];
}

- (void)setPayloadSpeedValues:(id)values
{
  v4 = [values mutableCopy];
  payloadSpeedValues = self->_payloadSpeedValues;
  self->_payloadSpeedValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadSpeedValues);
}

- (void)addPayloadSpatialEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  payloadSpatialEventTriggers = self->_payloadSpatialEventTriggers;
  v8 = triggerCopy;
  if (!payloadSpatialEventTriggers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadSpatialEventTriggers;
    self->_payloadSpatialEventTriggers = array;

    triggerCopy = v8;
    payloadSpatialEventTriggers = self->_payloadSpatialEventTriggers;
  }

  [(NSArray *)payloadSpatialEventTriggers addObject:triggerCopy];
}

- (void)setPayloadSpatialEventTriggers:(id)triggers
{
  v4 = [triggers mutableCopy];
  payloadSpatialEventTriggers = self->_payloadSpatialEventTriggers;
  self->_payloadSpatialEventTriggers = v4;

  MEMORY[0x1EEE66BB8](v4, payloadSpatialEventTriggers);
}

- (void)addPayloadSleepAlarmAttribute:(id)attribute
{
  attributeCopy = attribute;
  payloadSleepAlarmAttributes = self->_payloadSleepAlarmAttributes;
  v8 = attributeCopy;
  if (!payloadSleepAlarmAttributes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadSleepAlarmAttributes;
    self->_payloadSleepAlarmAttributes = array;

    attributeCopy = v8;
    payloadSleepAlarmAttributes = self->_payloadSleepAlarmAttributes;
  }

  [(NSArray *)payloadSleepAlarmAttributes addObject:attributeCopy];
}

- (void)setPayloadSleepAlarmAttributes:(id)attributes
{
  v4 = [attributes mutableCopy];
  payloadSleepAlarmAttributes = self->_payloadSleepAlarmAttributes;
  self->_payloadSleepAlarmAttributes = v4;

  MEMORY[0x1EEE66BB8](v4, payloadSleepAlarmAttributes);
}

- (void)addPayloadShareDestination:(id)destination
{
  destinationCopy = destination;
  payloadShareDestinations = self->_payloadShareDestinations;
  v8 = destinationCopy;
  if (!payloadShareDestinations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadShareDestinations;
    self->_payloadShareDestinations = array;

    destinationCopy = v8;
    payloadShareDestinations = self->_payloadShareDestinations;
  }

  [(NSArray *)payloadShareDestinations addObject:destinationCopy];
}

- (void)setPayloadShareDestinations:(id)destinations
{
  v4 = [destinations mutableCopy];
  payloadShareDestinations = self->_payloadShareDestinations;
  self->_payloadShareDestinations = v4;

  MEMORY[0x1EEE66BB8](v4, payloadShareDestinations);
}

- (void)addPayloadSettingMetadata:(id)metadata
{
  metadataCopy = metadata;
  payloadSettingMetadatas = self->_payloadSettingMetadatas;
  v8 = metadataCopy;
  if (!payloadSettingMetadatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadSettingMetadatas;
    self->_payloadSettingMetadatas = array;

    metadataCopy = v8;
    payloadSettingMetadatas = self->_payloadSettingMetadatas;
  }

  [(NSArray *)payloadSettingMetadatas addObject:metadataCopy];
}

- (void)setPayloadSettingMetadatas:(id)metadatas
{
  v4 = [metadatas mutableCopy];
  payloadSettingMetadatas = self->_payloadSettingMetadatas;
  self->_payloadSettingMetadatas = v4;

  MEMORY[0x1EEE66BB8](v4, payloadSettingMetadatas);
}

- (int)StringAsPayloadSettingActions:(id)actions
{
  actionsCopy = actions;
  if ([actionsCopy isEqualToString:@"SET"])
  {
    v4 = 1;
  }

  else if ([actionsCopy isEqualToString:@"INCREASE"])
  {
    v4 = 2;
  }

  else if ([actionsCopy isEqualToString:@"DECREASE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadSettingActionsAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284DF8 + (string - 1));
  }

  return v4;
}

- (void)addPayloadSettingAction:(int)action
{
  if (action != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadSendMessageAttachment:(id)attachment
{
  attachmentCopy = attachment;
  payloadSendMessageAttachments = self->_payloadSendMessageAttachments;
  v8 = attachmentCopy;
  if (!payloadSendMessageAttachments)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadSendMessageAttachments;
    self->_payloadSendMessageAttachments = array;

    attachmentCopy = v8;
    payloadSendMessageAttachments = self->_payloadSendMessageAttachments;
  }

  [(NSArray *)payloadSendMessageAttachments addObject:attachmentCopy];
}

- (void)setPayloadSendMessageAttachments:(id)attachments
{
  v4 = [attachments mutableCopy];
  payloadSendMessageAttachments = self->_payloadSendMessageAttachments;
  self->_payloadSendMessageAttachments = v4;

  MEMORY[0x1EEE66BB8](v4, payloadSendMessageAttachments);
}

- (int)StringAsPayloadRelativeSettings:(id)settings
{
  settingsCopy = settings;
  if ([settingsCopy isEqualToString:@"LOWEST"])
  {
    v4 = 1;
  }

  else if ([settingsCopy isEqualToString:@"LOWER"])
  {
    v4 = 2;
  }

  else if ([settingsCopy isEqualToString:@"HIGHER"])
  {
    v4 = 3;
  }

  else if ([settingsCopy isEqualToString:@"HIGHEST"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadRelativeSettingsAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284DD8 + (string - 1));
  }

  return v4;
}

- (void)addPayloadRelativeSetting:(int)setting
{
  if (setting != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadRelativeReferences:(id)references
{
  referencesCopy = references;
  v4 = 1;
  if (([referencesCopy isEqualToString:@"NEXT"] & 1) == 0)
  {
    if ([referencesCopy isEqualToString:@"PREVIOUS"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)payloadRelativeReferencesAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"NEXT";
  }

  else if (string == 2)
  {
    v4 = @"PREVIOUS";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addPayloadRelativeReference:(int)reference
{
  if (reference != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadReadActionTypes:(id)types
{
  typesCopy = types;
  v4 = 1;
  if (([typesCopy isEqualToString:@"READ"] & 1) == 0)
  {
    if ([typesCopy isEqualToString:@"REPEAT"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)payloadReadActionTypesAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"READ";
  }

  else if (string == 2)
  {
    v4 = @"REPEAT";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addPayloadReadActionType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadRadioTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"AM"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"FM"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"HD"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"SATELLITE"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"DAB"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadRadioTypesAsString:(int)string
{
  if ((string - 1) >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284DB0 + (string - 1));
  }

  return v4;
}

- (void)addPayloadRadioType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadPrivateUpdateMediaAffinityIntentData:(id)data
{
  dataCopy = data;
  payloadPrivateUpdateMediaAffinityIntentDatas = self->_payloadPrivateUpdateMediaAffinityIntentDatas;
  v8 = dataCopy;
  if (!payloadPrivateUpdateMediaAffinityIntentDatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPrivateUpdateMediaAffinityIntentDatas;
    self->_payloadPrivateUpdateMediaAffinityIntentDatas = array;

    dataCopy = v8;
    payloadPrivateUpdateMediaAffinityIntentDatas = self->_payloadPrivateUpdateMediaAffinityIntentDatas;
  }

  [(NSArray *)payloadPrivateUpdateMediaAffinityIntentDatas addObject:dataCopy];
}

- (void)setPayloadPrivateUpdateMediaAffinityIntentDatas:(id)datas
{
  v4 = [datas mutableCopy];
  payloadPrivateUpdateMediaAffinityIntentDatas = self->_payloadPrivateUpdateMediaAffinityIntentDatas;
  self->_payloadPrivateUpdateMediaAffinityIntentDatas = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPrivateUpdateMediaAffinityIntentDatas);
}

- (void)addPayloadPrivateSearchForMediaIntentData:(id)data
{
  dataCopy = data;
  payloadPrivateSearchForMediaIntentDatas = self->_payloadPrivateSearchForMediaIntentDatas;
  v8 = dataCopy;
  if (!payloadPrivateSearchForMediaIntentDatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPrivateSearchForMediaIntentDatas;
    self->_payloadPrivateSearchForMediaIntentDatas = array;

    dataCopy = v8;
    payloadPrivateSearchForMediaIntentDatas = self->_payloadPrivateSearchForMediaIntentDatas;
  }

  [(NSArray *)payloadPrivateSearchForMediaIntentDatas addObject:dataCopy];
}

- (void)setPayloadPrivateSearchForMediaIntentDatas:(id)datas
{
  v4 = [datas mutableCopy];
  payloadPrivateSearchForMediaIntentDatas = self->_payloadPrivateSearchForMediaIntentDatas;
  self->_payloadPrivateSearchForMediaIntentDatas = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPrivateSearchForMediaIntentDatas);
}

- (void)addPayloadPrivatePlayMediaIntentData:(id)data
{
  dataCopy = data;
  payloadPrivatePlayMediaIntentDatas = self->_payloadPrivatePlayMediaIntentDatas;
  v8 = dataCopy;
  if (!payloadPrivatePlayMediaIntentDatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPrivatePlayMediaIntentDatas;
    self->_payloadPrivatePlayMediaIntentDatas = array;

    dataCopy = v8;
    payloadPrivatePlayMediaIntentDatas = self->_payloadPrivatePlayMediaIntentDatas;
  }

  [(NSArray *)payloadPrivatePlayMediaIntentDatas addObject:dataCopy];
}

- (void)setPayloadPrivatePlayMediaIntentDatas:(id)datas
{
  v4 = [datas mutableCopy];
  payloadPrivatePlayMediaIntentDatas = self->_payloadPrivatePlayMediaIntentDatas;
  self->_payloadPrivatePlayMediaIntentDatas = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPrivatePlayMediaIntentDatas);
}

- (void)addPayloadPrivateAddMediaIntentData:(id)data
{
  dataCopy = data;
  payloadPrivateAddMediaIntentDatas = self->_payloadPrivateAddMediaIntentDatas;
  v8 = dataCopy;
  if (!payloadPrivateAddMediaIntentDatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPrivateAddMediaIntentDatas;
    self->_payloadPrivateAddMediaIntentDatas = array;

    dataCopy = v8;
    payloadPrivateAddMediaIntentDatas = self->_payloadPrivateAddMediaIntentDatas;
  }

  [(NSArray *)payloadPrivateAddMediaIntentDatas addObject:dataCopy];
}

- (void)setPayloadPrivateAddMediaIntentDatas:(id)datas
{
  v4 = [datas mutableCopy];
  payloadPrivateAddMediaIntentDatas = self->_payloadPrivateAddMediaIntentDatas;
  self->_payloadPrivateAddMediaIntentDatas = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPrivateAddMediaIntentDatas);
}

- (void)addPayloadPrimitiveString:(id)string
{
  stringCopy = string;
  payloadPrimitiveStrings = self->_payloadPrimitiveStrings;
  v8 = stringCopy;
  if (!payloadPrimitiveStrings)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPrimitiveStrings;
    self->_payloadPrimitiveStrings = array;

    stringCopy = v8;
    payloadPrimitiveStrings = self->_payloadPrimitiveStrings;
  }

  [(NSArray *)payloadPrimitiveStrings addObject:stringCopy];
}

- (void)setPayloadPrimitiveStrings:(id)strings
{
  v4 = [strings mutableCopy];
  payloadPrimitiveStrings = self->_payloadPrimitiveStrings;
  self->_payloadPrimitiveStrings = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPrimitiveStrings);
}

- (int64_t)payloadPrimitiveLongAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_payloadPrimitiveLongs objectAtIndexedSubscript:index];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (void)addPayloadPrimitiveLong:(int64_t)long
{
  payloadPrimitiveLongs = self->_payloadPrimitiveLongs;
  if (!payloadPrimitiveLongs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPrimitiveLongs;
    self->_payloadPrimitiveLongs = array;

    payloadPrimitiveLongs = self->_payloadPrimitiveLongs;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:long];
  [(NSArray *)payloadPrimitiveLongs addObject:v8];
}

- (void)setPayloadPrimitiveLongs:(id)longs
{
  v4 = [longs mutableCopy];
  payloadPrimitiveLongs = self->_payloadPrimitiveLongs;
  self->_payloadPrimitiveLongs = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPrimitiveLongs);
}

- (int)payloadPrimitiveIntAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_payloadPrimitiveInts objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addPayloadPrimitiveInt:(int)int
{
  v3 = *&int;
  payloadPrimitiveInts = self->_payloadPrimitiveInts;
  if (!payloadPrimitiveInts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPrimitiveInts;
    self->_payloadPrimitiveInts = array;

    payloadPrimitiveInts = self->_payloadPrimitiveInts;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)payloadPrimitiveInts addObject:v8];
}

- (void)setPayloadPrimitiveInts:(id)ints
{
  v4 = [ints mutableCopy];
  payloadPrimitiveInts = self->_payloadPrimitiveInts;
  self->_payloadPrimitiveInts = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPrimitiveInts);
}

- (double)payloadPrimitiveDoubleAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_payloadPrimitiveDoubles objectAtIndexedSubscript:index];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)addPayloadPrimitiveDouble:(double)double
{
  payloadPrimitiveDoubles = self->_payloadPrimitiveDoubles;
  if (!payloadPrimitiveDoubles)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPrimitiveDoubles;
    self->_payloadPrimitiveDoubles = array;

    payloadPrimitiveDoubles = self->_payloadPrimitiveDoubles;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:double];
  [(NSArray *)payloadPrimitiveDoubles addObject:v8];
}

- (void)setPayloadPrimitiveDoubles:(id)doubles
{
  v4 = [doubles mutableCopy];
  payloadPrimitiveDoubles = self->_payloadPrimitiveDoubles;
  self->_payloadPrimitiveDoubles = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPrimitiveDoubles);
}

- (BOOL)payloadPrimitiveBoolAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_payloadPrimitiveBools objectAtIndexedSubscript:index];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)addPayloadPrimitiveBool:(BOOL)bool
{
  boolCopy = bool;
  payloadPrimitiveBools = self->_payloadPrimitiveBools;
  if (!payloadPrimitiveBools)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPrimitiveBools;
    self->_payloadPrimitiveBools = array;

    payloadPrimitiveBools = self->_payloadPrimitiveBools;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:boolCopy];
  [(NSArray *)payloadPrimitiveBools addObject:v8];
}

- (void)setPayloadPrimitiveBools:(id)bools
{
  v4 = [bools mutableCopy];
  payloadPrimitiveBools = self->_payloadPrimitiveBools;
  self->_payloadPrimitiveBools = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPrimitiveBools);
}

- (int)StringAsPayloadPreferredCallProviders:(id)providers
{
  providersCopy = providers;
  if ([providersCopy isEqualToString:@"TELEPHONY_PROVIDER"])
  {
    v4 = 2;
  }

  else if ([providersCopy isEqualToString:@"FACETIME_PROVIDER"])
  {
    v4 = 3;
  }

  else if ([providersCopy isEqualToString:@"THIRD_PARTY_PROVIDER"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (id)payloadPreferredCallProvidersAsString:(int)string
{
  if ((string - 2) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284D98 + (string - 2));
  }

  return v4;
}

- (void)addPayloadPreferredCallProvider:(int)provider
{
  if (provider != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadPlaybackRepeatModes:(id)modes
{
  modesCopy = modes;
  if ([modesCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([modesCopy isEqualToString:@"ALL"])
  {
    v4 = 1;
  }

  else if ([modesCopy isEqualToString:@"ONE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadPlaybackRepeatModesAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284D80 + string);
  }

  return v4;
}

- (void)addPayloadPlaybackRepeatMode:(int)mode
{
  if (mode != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadPlaybackQueueLocations:(id)locations
{
  locationsCopy = locations;
  if ([locationsCopy isEqualToString:@"UNKNOWN_PLAYBACK_QUEUE_LOCATION"])
  {
    v4 = 0;
  }

  else if ([locationsCopy isEqualToString:@"NOW"])
  {
    v4 = 1;
  }

  else if ([locationsCopy isEqualToString:@"NEXT"])
  {
    v4 = 2;
  }

  else if ([locationsCopy isEqualToString:@"LATER"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadPlaybackQueueLocationsAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284D60 + string);
  }

  return v4;
}

- (void)addPayloadPlaybackQueueLocation:(int)location
{
  if (location != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadPlaceList:(id)list
{
  listCopy = list;
  payloadPlaceLists = self->_payloadPlaceLists;
  v8 = listCopy;
  if (!payloadPlaceLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPlaceLists;
    self->_payloadPlaceLists = array;

    listCopy = v8;
    payloadPlaceLists = self->_payloadPlaceLists;
  }

  [(NSArray *)payloadPlaceLists addObject:listCopy];
}

- (void)setPayloadPlaceLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadPlaceLists = self->_payloadPlaceLists;
  self->_payloadPlaceLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPlaceLists);
}

- (void)addPayloadPlace:(id)place
{
  placeCopy = place;
  payloadPlaces = self->_payloadPlaces;
  v8 = placeCopy;
  if (!payloadPlaces)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPlaces;
    self->_payloadPlaces = array;

    placeCopy = v8;
    payloadPlaces = self->_payloadPlaces;
  }

  [(NSArray *)payloadPlaces addObject:placeCopy];
}

- (void)setPayloadPlaces:(id)places
{
  v4 = [places mutableCopy];
  payloadPlaces = self->_payloadPlaces;
  self->_payloadPlaces = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPlaces);
}

- (int)StringAsPayloadPhotoAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([attributesCopy isEqualToString:@"PHOTO"])
  {
    v4 = 2;
  }

  else if ([attributesCopy isEqualToString:@"VIDEO"])
  {
    v4 = 3;
  }

  else if ([attributesCopy isEqualToString:@"GIF"])
  {
    v4 = 4;
  }

  else if ([attributesCopy isEqualToString:@"FLASH"])
  {
    v4 = 10;
  }

  else if ([attributesCopy isEqualToString:@"LANDSCAPE_ORIENTATION"])
  {
    v4 = 11;
  }

  else if ([attributesCopy isEqualToString:@"PORTRAIT_ORIENTATION"])
  {
    v4 = 12;
  }

  else if ([attributesCopy isEqualToString:@"FAVORITE"])
  {
    v4 = 13;
  }

  else if ([attributesCopy isEqualToString:@"SELFIE"])
  {
    v4 = 14;
  }

  else if ([attributesCopy isEqualToString:@"FRONT_FACING_CAMERA"])
  {
    v4 = 15;
  }

  else if ([attributesCopy isEqualToString:@"SCREENSHOT"])
  {
    v4 = 16;
  }

  else if ([attributesCopy isEqualToString:@"BURST_PHOTO"])
  {
    v4 = 50;
  }

  else if ([attributesCopy isEqualToString:@"HDR_PHOTO"])
  {
    v4 = 51;
  }

  else if ([attributesCopy isEqualToString:@"SQUARE_PHOTO"])
  {
    v4 = 52;
  }

  else if ([attributesCopy isEqualToString:@"PANORAMA_PHOTO"])
  {
    v4 = 53;
  }

  else if ([attributesCopy isEqualToString:@"TIME_LAPSE_VIDEO"])
  {
    v4 = 80;
  }

  else if ([attributesCopy isEqualToString:@"SLOW_MOTION_VIDEO"])
  {
    v4 = 81;
  }

  else if ([attributesCopy isEqualToString:@"NOIR_FILTER"])
  {
    v4 = 300;
  }

  else if ([attributesCopy isEqualToString:@"CHROME_FILTER"])
  {
    v4 = 301;
  }

  else if ([attributesCopy isEqualToString:@"INSTANT_FILTER"])
  {
    v4 = 302;
  }

  else if ([attributesCopy isEqualToString:@"TONAL_FILTER"])
  {
    v4 = 303;
  }

  else if ([attributesCopy isEqualToString:@"TRANSFER_FILTER"])
  {
    v4 = 304;
  }

  else if ([attributesCopy isEqualToString:@"MONO_FILTER"])
  {
    v4 = 305;
  }

  else if ([attributesCopy isEqualToString:@"FADE_FILTER"])
  {
    v4 = 306;
  }

  else if ([attributesCopy isEqualToString:@"PROCESS_FILTER"])
  {
    v4 = 307;
  }

  else if ([attributesCopy isEqualToString:@"PORTRAIT_PHOTO"])
  {
    v4 = 54;
  }

  else if ([attributesCopy isEqualToString:@"LIVE_PHOTO"])
  {
    v4 = 55;
  }

  else if ([attributesCopy isEqualToString:@"LOOP_PHOTO"])
  {
    v4 = 56;
  }

  else if ([attributesCopy isEqualToString:@"BOUNCE_PHOTO"])
  {
    v4 = 57;
  }

  else if ([attributesCopy isEqualToString:@"LONG_EXPOSURE_PHOTO"])
  {
    v4 = 58;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (id)payloadPhotoAttributesAsString:(int)string
{
  if (string <= 53)
  {
    if (string > 13)
    {
      if (string > 49)
      {
        if (string > 51)
        {
          if (string == 52)
          {
            v4 = @"SQUARE_PHOTO";
          }

          else
          {
            v4 = @"PANORAMA_PHOTO";
          }
        }

        else if (string == 50)
        {
          v4 = @"BURST_PHOTO";
        }

        else
        {
          v4 = @"HDR_PHOTO";
        }

        return v4;
      }

      switch(string)
      {
        case 14:
          v4 = @"SELFIE";

          return v4;
        case 15:
          v4 = @"FRONT_FACING_CAMERA";

          return v4;
        case 16:
          v4 = @"SCREENSHOT";

          return v4;
      }
    }

    else
    {
      if (string > 9)
      {
        if (string > 11)
        {
          if (string == 12)
          {
            v4 = @"PORTRAIT_ORIENTATION";
          }

          else
          {
            v4 = @"FAVORITE";
          }
        }

        else if (string == 10)
        {
          v4 = @"FLASH";
        }

        else
        {
          v4 = @"LANDSCAPE_ORIENTATION";
        }

        return v4;
      }

      switch(string)
      {
        case 2:
          v4 = @"PHOTO";

          return v4;
        case 3:
          v4 = @"VIDEO";

          return v4;
        case 4:
          v4 = @"GIF";

          return v4;
      }
    }

LABEL_121:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];

    return v4;
  }

  if (string <= 299)
  {
    if (string <= 56)
    {
      if (string == 54)
      {
        v4 = @"PORTRAIT_PHOTO";
      }

      else if (string == 55)
      {
        v4 = @"LIVE_PHOTO";
      }

      else
      {
        v4 = @"LOOP_PHOTO";
      }

      return v4;
    }

    if (string > 79)
    {
      if (string == 80)
      {
        v4 = @"TIME_LAPSE_VIDEO";

        return v4;
      }

      if (string == 81)
      {
        v4 = @"SLOW_MOTION_VIDEO";

        return v4;
      }
    }

    else
    {
      if (string == 57)
      {
        v4 = @"BOUNCE_PHOTO";

        return v4;
      }

      if (string == 58)
      {
        v4 = @"LONG_EXPOSURE_PHOTO";

        return v4;
      }
    }

    goto LABEL_121;
  }

  if (string <= 303)
  {
    if (string > 301)
    {
      if (string == 302)
      {
        v4 = @"INSTANT_FILTER";
      }

      else
      {
        v4 = @"TONAL_FILTER";
      }
    }

    else if (string == 300)
    {
      v4 = @"NOIR_FILTER";
    }

    else
    {
      v4 = @"CHROME_FILTER";
    }

    return v4;
  }

  if (string <= 305)
  {
    if (string == 304)
    {
      v4 = @"TRANSFER_FILTER";
    }

    else
    {
      v4 = @"MONO_FILTER";
    }

    return v4;
  }

  if (string != 306)
  {
    if (string == 307)
    {
      v4 = @"PROCESS_FILTER";

      return v4;
    }

    goto LABEL_121;
  }

  v4 = @"FADE_FILTER";

  return v4;
}

- (void)addPayloadPhotoAttribute:(int)attribute
{
  if (attribute != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadPersonalPlaceTypes:(id)types
{
  typesCopy = types;
  v4 = 2;
  if (([typesCopy isEqualToString:@"HOME"] & 1) == 0)
  {
    if ([typesCopy isEqualToString:@"WORK"])
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

- (id)payloadPersonalPlaceTypesAsString:(int)string
{
  if (string == 2)
  {
    v4 = @"HOME";
  }

  else if (string == 3)
  {
    v4 = @"WORK";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addPayloadPersonalPlaceType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadPaymentStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"PENDING"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"COMPLETED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"CANCELED"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"FAILED"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"UNPAID"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadPaymentStatusAsString:(int)string
{
  if ((string - 1) >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284D38 + (string - 1));
  }

  return v4;
}

- (void)addPayloadPaymentStatus:(int)status
{
  if (status != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadPaymentMethodValue:(id)value
{
  valueCopy = value;
  payloadPaymentMethodValues = self->_payloadPaymentMethodValues;
  v8 = valueCopy;
  if (!payloadPaymentMethodValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPaymentMethodValues;
    self->_payloadPaymentMethodValues = array;

    valueCopy = v8;
    payloadPaymentMethodValues = self->_payloadPaymentMethodValues;
  }

  [(NSArray *)payloadPaymentMethodValues addObject:valueCopy];
}

- (void)setPayloadPaymentMethodValues:(id)values
{
  v4 = [values mutableCopy];
  payloadPaymentMethodValues = self->_payloadPaymentMethodValues;
  self->_payloadPaymentMethodValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPaymentMethodValues);
}

- (void)addPayloadPaymentMethodList:(id)list
{
  listCopy = list;
  payloadPaymentMethodLists = self->_payloadPaymentMethodLists;
  v8 = listCopy;
  if (!payloadPaymentMethodLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPaymentMethodLists;
    self->_payloadPaymentMethodLists = array;

    listCopy = v8;
    payloadPaymentMethodLists = self->_payloadPaymentMethodLists;
  }

  [(NSArray *)payloadPaymentMethodLists addObject:listCopy];
}

- (void)setPayloadPaymentMethodLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadPaymentMethodLists = self->_payloadPaymentMethodLists;
  self->_payloadPaymentMethodLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPaymentMethodLists);
}

- (void)addPayloadPaymentAmountValue:(id)value
{
  valueCopy = value;
  payloadPaymentAmountValues = self->_payloadPaymentAmountValues;
  v8 = valueCopy;
  if (!payloadPaymentAmountValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadPaymentAmountValues;
    self->_payloadPaymentAmountValues = array;

    valueCopy = v8;
    payloadPaymentAmountValues = self->_payloadPaymentAmountValues;
  }

  [(NSArray *)payloadPaymentAmountValues addObject:valueCopy];
}

- (void)setPayloadPaymentAmountValues:(id)values
{
  v4 = [values mutableCopy];
  payloadPaymentAmountValues = self->_payloadPaymentAmountValues;
  self->_payloadPaymentAmountValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadPaymentAmountValues);
}

- (int)StringAsPayloadParsecCategories:(id)categories
{
  categoriesCopy = categories;
  if ([categoriesCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([categoriesCopy isEqualToString:@"MOVIE"])
  {
    v4 = 1;
  }

  else if ([categoriesCopy isEqualToString:@"TV"])
  {
    v4 = 2;
  }

  else if ([categoriesCopy isEqualToString:@"WEB_VIDEO"])
  {
    v4 = 3;
  }

  else if ([categoriesCopy isEqualToString:@"MUSIC"])
  {
    v4 = 4;
  }

  else if ([categoriesCopy isEqualToString:@"PODCAST"])
  {
    v4 = 5;
  }

  else if ([categoriesCopy isEqualToString:@"APP"])
  {
    v4 = 6;
  }

  else if ([categoriesCopy isEqualToString:@"BOOK"])
  {
    v4 = 7;
  }

  else if ([categoriesCopy isEqualToString:@"OTHER"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadParsecCategoriesAsString:(int)string
{
  if (string >= 9)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284CF0 + string);
  }

  return v4;
}

- (void)addPayloadParsecCategory:(int)category
{
  if (category != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadOutgoingMessageTypes:(id)types
{
  typesCopy = types;
  v4 = 1;
  if (([typesCopy isEqualToString:@"OUTGOING_MESSAGE_TEXT"] & 1) == 0)
  {
    if ([typesCopy isEqualToString:@"OUTGOING_MESSAGE_AUDIO"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)payloadOutgoingMessageTypesAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"OUTGOING_MESSAGE_TEXT";
  }

  else if (string == 2)
  {
    v4 = @"OUTGOING_MESSAGE_AUDIO";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addPayloadOutgoingMessageType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadNumericSettingValue:(id)value
{
  valueCopy = value;
  payloadNumericSettingValues = self->_payloadNumericSettingValues;
  v8 = valueCopy;
  if (!payloadNumericSettingValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadNumericSettingValues;
    self->_payloadNumericSettingValues = array;

    valueCopy = v8;
    payloadNumericSettingValues = self->_payloadNumericSettingValues;
  }

  [(NSArray *)payloadNumericSettingValues addObject:valueCopy];
}

- (void)setPayloadNumericSettingValues:(id)values
{
  v4 = [values mutableCopy];
  payloadNumericSettingValues = self->_payloadNumericSettingValues;
  self->_payloadNumericSettingValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadNumericSettingValues);
}

- (id)payloadNumericSettingUnitsAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"PERCENTAGE";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addPayloadNumericSettingUnit:(int)unit
{
  if (unit != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadNotebookItemTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN_NOTE_TYPE"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"NOTE"])
  {
    v4 = 10;
  }

  else if ([typesCopy isEqualToString:@"TASK_LIST"])
  {
    v4 = 20;
  }

  else if ([typesCopy isEqualToString:@"TASK"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadNotebookItemTypesAsString:(int)string
{
  if (string > 19)
  {
    if (string == 20)
    {
      v4 = @"TASK_LIST";
    }

    else
    {
      if (string != 30)
      {
LABEL_12:
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];

        return v4;
      }

      v4 = @"TASK";
    }
  }

  else
  {
    if (string)
    {
      if (string == 10)
      {
        v4 = @"NOTE";

        return v4;
      }

      goto LABEL_12;
    }

    v4 = @"UNKNOWN_NOTE_TYPE";
  }

  return v4;
}

- (void)addPayloadNotebookItemType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadNoteContent:(id)content
{
  contentCopy = content;
  payloadNoteContents = self->_payloadNoteContents;
  v8 = contentCopy;
  if (!payloadNoteContents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadNoteContents;
    self->_payloadNoteContents = array;

    contentCopy = v8;
    payloadNoteContents = self->_payloadNoteContents;
  }

  [(NSArray *)payloadNoteContents addObject:contentCopy];
}

- (void)setPayloadNoteContents:(id)contents
{
  v4 = [contents mutableCopy];
  payloadNoteContents = self->_payloadNoteContents;
  self->_payloadNoteContents = v4;

  MEMORY[0x1EEE66BB8](v4, payloadNoteContents);
}

- (void)addPayloadNote:(id)note
{
  noteCopy = note;
  payloadNotes = self->_payloadNotes;
  v8 = noteCopy;
  if (!payloadNotes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadNotes;
    self->_payloadNotes = array;

    noteCopy = v8;
    payloadNotes = self->_payloadNotes;
  }

  [(NSArray *)payloadNotes addObject:noteCopy];
}

- (void)setPayloadNotes:(id)notes
{
  v4 = [notes mutableCopy];
  payloadNotes = self->_payloadNotes;
  self->_payloadNotes = v4;

  MEMORY[0x1EEE66BB8](v4, payloadNotes);
}

- (void)addPayloadModifyRelationship:(id)relationship
{
  relationshipCopy = relationship;
  payloadModifyRelationships = self->_payloadModifyRelationships;
  v8 = relationshipCopy;
  if (!payloadModifyRelationships)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadModifyRelationships;
    self->_payloadModifyRelationships = array;

    relationshipCopy = v8;
    payloadModifyRelationships = self->_payloadModifyRelationships;
  }

  [(NSArray *)payloadModifyRelationships addObject:relationshipCopy];
}

- (void)setPayloadModifyRelationships:(id)relationships
{
  v4 = [relationships mutableCopy];
  payloadModifyRelationships = self->_payloadModifyRelationships;
  self->_payloadModifyRelationships = v4;

  MEMORY[0x1EEE66BB8](v4, payloadModifyRelationships);
}

- (void)addPayloadModifyNickname:(id)nickname
{
  nicknameCopy = nickname;
  payloadModifyNicknames = self->_payloadModifyNicknames;
  v8 = nicknameCopy;
  if (!payloadModifyNicknames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadModifyNicknames;
    self->_payloadModifyNicknames = array;

    nicknameCopy = v8;
    payloadModifyNicknames = self->_payloadModifyNicknames;
  }

  [(NSArray *)payloadModifyNicknames addObject:nicknameCopy];
}

- (void)setPayloadModifyNicknames:(id)nicknames
{
  v4 = [nicknames mutableCopy];
  payloadModifyNicknames = self->_payloadModifyNicknames;
  self->_payloadModifyNicknames = v4;

  MEMORY[0x1EEE66BB8](v4, payloadModifyNicknames);
}

- (int)StringAsPayloadMessageTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"TEXT"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"AUDIO"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"DIGITAL_TOUCH"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"HANDWRITING"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"STICKER"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"TAPBACK_LIKED"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"TAPBACK_DISLIKED"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"TAPBACK_EMPHASIZED"])
  {
    v4 = 8;
  }

  else if ([typesCopy isEqualToString:@"TAPBACK_LOVED"])
  {
    v4 = 9;
  }

  else if ([typesCopy isEqualToString:@"TAPBACK_QUESTIONED"])
  {
    v4 = 10;
  }

  else if ([typesCopy isEqualToString:@"TAPBACK_LAUGHED"])
  {
    v4 = 11;
  }

  else if ([typesCopy isEqualToString:@"MEDIA_TYPE_CALENDAR"])
  {
    v4 = 12;
  }

  else if ([typesCopy isEqualToString:@"MEDIA_TYPE_LOCATION"])
  {
    v4 = 13;
  }

  else if ([typesCopy isEqualToString:@"MEDIA_TYPE_ADDRESS_CARD"])
  {
    v4 = 14;
  }

  else if ([typesCopy isEqualToString:@"MEDIA_TYPE_IMAGE"])
  {
    v4 = 15;
  }

  else if ([typesCopy isEqualToString:@"MEDIA_TYPE_VIDEO"])
  {
    v4 = 16;
  }

  else if ([typesCopy isEqualToString:@"MEDIA_TYPE_PASS"])
  {
    v4 = 17;
  }

  else if ([typesCopy isEqualToString:@"MEDIA_TYPE_AUDIO"])
  {
    v4 = 18;
  }

  else if ([typesCopy isEqualToString:@"PAYMENT_SENT"])
  {
    v4 = 19;
  }

  else if ([typesCopy isEqualToString:@"PAYMENT_REQUEST"])
  {
    v4 = 20;
  }

  else if ([typesCopy isEqualToString:@"PAYMENT_NOTE"])
  {
    v4 = 21;
  }

  else if ([typesCopy isEqualToString:@"ANIMOJI"])
  {
    v4 = 22;
  }

  else if ([typesCopy isEqualToString:@"ACTIVITY_SNIPPET"])
  {
    v4 = 23;
  }

  else if ([typesCopy isEqualToString:@"FILE"])
  {
    v4 = 24;
  }

  else if ([typesCopy isEqualToString:@"LINK"])
  {
    v4 = 25;
  }

  else if ([typesCopy isEqualToString:@"MESSAGE_REACTION"])
  {
    v4 = 26;
  }

  else if ([typesCopy isEqualToString:@"SAFETY_MONITOR"])
  {
    v4 = 27;
  }

  else if ([typesCopy isEqualToString:@"LOCATION_REQUEST"])
  {
    v4 = 28;
  }

  else if ([typesCopy isEqualToString:@"SHARED_LOCATION"])
  {
    v4 = 29;
  }

  else if ([typesCopy isEqualToString:@"FIND_MY"])
  {
    v4 = 30;
  }

  else if ([typesCopy isEqualToString:@"SCREEN_TIME_REQUEST"])
  {
    v4 = 31;
  }

  else if ([typesCopy isEqualToString:@"ASK_TO"])
  {
    v4 = 32;
  }

  else if ([typesCopy isEqualToString:@"MEDIA_TYPE_ANIMATED_IMAGE"])
  {
    v4 = 33;
  }

  else if ([typesCopy isEqualToString:@"THIRD_PARTY_ATTACHMENT"])
  {
    v4 = 34;
  }

  else if ([typesCopy isEqualToString:@"POLL"])
  {
    v4 = 35;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadMessageTypesAsString:(int)string
{
  if ((string - 1) >= 0x23)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284BD8 + (string - 1));
  }

  return v4;
}

- (void)addPayloadMessageType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadMessageEffects:(id)effects
{
  effectsCopy = effects;
  if ([effectsCopy isEqualToString:@"HAPPY_BIRTHDAY"])
  {
    v4 = 1;
  }

  else if ([effectsCopy isEqualToString:@"CONFETTI"])
  {
    v4 = 2;
  }

  else if ([effectsCopy isEqualToString:@"LASERS"])
  {
    v4 = 3;
  }

  else if ([effectsCopy isEqualToString:@"FIREWORKS"])
  {
    v4 = 4;
  }

  else if ([effectsCopy isEqualToString:@"SHOOTING_STAR"])
  {
    v4 = 5;
  }

  else if ([effectsCopy isEqualToString:@"INVISBLE_INK"])
  {
    v4 = 6;
  }

  else if ([effectsCopy isEqualToString:@"GENTLE"])
  {
    v4 = 7;
  }

  else if ([effectsCopy isEqualToString:@"LOUD"])
  {
    v4 = 8;
  }

  else if ([effectsCopy isEqualToString:@"IMPACT"])
  {
    v4 = 9;
  }

  else if ([effectsCopy isEqualToString:@"SPARKLES"])
  {
    v4 = 10;
  }

  else if ([effectsCopy isEqualToString:@"HEART"])
  {
    v4 = 11;
  }

  else if ([effectsCopy isEqualToString:@"ECHO"])
  {
    v4 = 12;
  }

  else if ([effectsCopy isEqualToString:@"SPOTLIGHT"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadMessageEffectsAsString:(int)string
{
  if ((string - 1) >= 0xD)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284B70 + (string - 1));
  }

  return v4;
}

- (void)addPayloadMessageEffect:(int)effect
{
  if (effect != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadMessageAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([attributesCopy isEqualToString:@"READ"])
  {
    v4 = 1;
  }

  else if ([attributesCopy isEqualToString:@"UNREAD"])
  {
    v4 = 2;
  }

  else if ([attributesCopy isEqualToString:@"FLAGGED"])
  {
    v4 = 3;
  }

  else if ([attributesCopy isEqualToString:@"UNFLAGGED"])
  {
    v4 = 4;
  }

  else if ([attributesCopy isEqualToString:@"PLAYED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadMessageAttributesAsString:(int)string
{
  if ((string - 1) >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284B48 + (string - 1));
  }

  return v4;
}

- (void)addPayloadMessageAttribute:(int)attribute
{
  if (attribute != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadMediaSearch:(id)search
{
  searchCopy = search;
  payloadMediaSearchs = self->_payloadMediaSearchs;
  v8 = searchCopy;
  if (!payloadMediaSearchs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadMediaSearchs;
    self->_payloadMediaSearchs = array;

    searchCopy = v8;
    payloadMediaSearchs = self->_payloadMediaSearchs;
  }

  [(NSArray *)payloadMediaSearchs addObject:searchCopy];
}

- (void)setPayloadMediaSearchs:(id)searchs
{
  v4 = [searchs mutableCopy];
  payloadMediaSearchs = self->_payloadMediaSearchs;
  self->_payloadMediaSearchs = v4;

  MEMORY[0x1EEE66BB8](v4, payloadMediaSearchs);
}

- (void)addPayloadMediaItemValue:(id)value
{
  valueCopy = value;
  payloadMediaItemValues = self->_payloadMediaItemValues;
  v8 = valueCopy;
  if (!payloadMediaItemValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadMediaItemValues;
    self->_payloadMediaItemValues = array;

    valueCopy = v8;
    payloadMediaItemValues = self->_payloadMediaItemValues;
  }

  [(NSArray *)payloadMediaItemValues addObject:valueCopy];
}

- (void)setPayloadMediaItemValues:(id)values
{
  v4 = [values mutableCopy];
  payloadMediaItemValues = self->_payloadMediaItemValues;
  self->_payloadMediaItemValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadMediaItemValues);
}

- (void)addPayloadMediaItemGroup:(id)group
{
  groupCopy = group;
  payloadMediaItemGroups = self->_payloadMediaItemGroups;
  v8 = groupCopy;
  if (!payloadMediaItemGroups)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadMediaItemGroups;
    self->_payloadMediaItemGroups = array;

    groupCopy = v8;
    payloadMediaItemGroups = self->_payloadMediaItemGroups;
  }

  [(NSArray *)payloadMediaItemGroups addObject:groupCopy];
}

- (void)setPayloadMediaItemGroups:(id)groups
{
  v4 = [groups mutableCopy];
  payloadMediaItemGroups = self->_payloadMediaItemGroups;
  self->_payloadMediaItemGroups = v4;

  MEMORY[0x1EEE66BB8](v4, payloadMediaItemGroups);
}

- (void)addPayloadMediaDestination:(id)destination
{
  destinationCopy = destination;
  payloadMediaDestinations = self->_payloadMediaDestinations;
  v8 = destinationCopy;
  if (!payloadMediaDestinations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadMediaDestinations;
    self->_payloadMediaDestinations = array;

    destinationCopy = v8;
    payloadMediaDestinations = self->_payloadMediaDestinations;
  }

  [(NSArray *)payloadMediaDestinations addObject:destinationCopy];
}

- (void)setPayloadMediaDestinations:(id)destinations
{
  v4 = [destinations mutableCopy];
  payloadMediaDestinations = self->_payloadMediaDestinations;
  self->_payloadMediaDestinations = v4;

  MEMORY[0x1EEE66BB8](v4, payloadMediaDestinations);
}

- (int)StringAsPayloadMediaAffinityTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN_AFFINITY_TYPE"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"LIKE"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"DISLIKE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadMediaAffinityTypesAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284B30 + string);
  }

  return v4;
}

- (void)addPayloadMediaAffinityType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadMassValue:(id)value
{
  valueCopy = value;
  payloadMassValues = self->_payloadMassValues;
  v8 = valueCopy;
  if (!payloadMassValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadMassValues;
    self->_payloadMassValues = array;

    valueCopy = v8;
    payloadMassValues = self->_payloadMassValues;
  }

  [(NSArray *)payloadMassValues addObject:valueCopy];
}

- (void)setPayloadMassValues:(id)values
{
  v4 = [values mutableCopy];
  payloadMassValues = self->_payloadMassValues;
  self->_payloadMassValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadMassValues);
}

- (void)addPayloadLongValue:(id)value
{
  valueCopy = value;
  payloadLongValues = self->_payloadLongValues;
  v8 = valueCopy;
  if (!payloadLongValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadLongValues;
    self->_payloadLongValues = array;

    valueCopy = v8;
    payloadLongValues = self->_payloadLongValues;
  }

  [(NSArray *)payloadLongValues addObject:valueCopy];
}

- (void)setPayloadLongValues:(id)values
{
  v4 = [values mutableCopy];
  payloadLongValues = self->_payloadLongValues;
  self->_payloadLongValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadLongValues);
}

- (void)addPayloadLongList:(id)list
{
  listCopy = list;
  payloadLongLists = self->_payloadLongLists;
  v8 = listCopy;
  if (!payloadLongLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadLongLists;
    self->_payloadLongLists = array;

    listCopy = v8;
    payloadLongLists = self->_payloadLongLists;
  }

  [(NSArray *)payloadLongLists addObject:listCopy];
}

- (void)setPayloadLongLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadLongLists = self->_payloadLongLists;
  self->_payloadLongLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadLongLists);
}

- (int)StringAsPayloadLocationSearchTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN_LOCATION_SEARCH_TYPE"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"BY_LOCATION_TRIGGER"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadLocationSearchTypesAsString:(int)string
{
  if (string)
  {
    if (string == 10)
    {
      v4 = @"BY_LOCATION_TRIGGER";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"UNKNOWN_LOCATION_SEARCH_TYPE";
  }

  return v4;
}

- (void)addPayloadLocationSearchType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadLocationList:(id)list
{
  listCopy = list;
  payloadLocationLists = self->_payloadLocationLists;
  v8 = listCopy;
  if (!payloadLocationLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadLocationLists;
    self->_payloadLocationLists = array;

    listCopy = v8;
    payloadLocationLists = self->_payloadLocationLists;
  }

  [(NSArray *)payloadLocationLists addObject:listCopy];
}

- (void)setPayloadLocationLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadLocationLists = self->_payloadLocationLists;
  self->_payloadLocationLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadLocationLists);
}

- (void)addPayloadLocation:(id)location
{
  locationCopy = location;
  payloadLocations = self->_payloadLocations;
  v8 = locationCopy;
  if (!payloadLocations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadLocations;
    self->_payloadLocations = array;

    locationCopy = v8;
    payloadLocations = self->_payloadLocations;
  }

  [(NSArray *)payloadLocations addObject:locationCopy];
}

- (void)setPayloadLocations:(id)locations
{
  v4 = [locations mutableCopy];
  payloadLocations = self->_payloadLocations;
  self->_payloadLocations = v4;

  MEMORY[0x1EEE66BB8](v4, payloadLocations);
}

- (void)addPayloadIntentExecutionResult:(id)result
{
  resultCopy = result;
  payloadIntentExecutionResults = self->_payloadIntentExecutionResults;
  v8 = resultCopy;
  if (!payloadIntentExecutionResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadIntentExecutionResults;
    self->_payloadIntentExecutionResults = array;

    resultCopy = v8;
    payloadIntentExecutionResults = self->_payloadIntentExecutionResults;
  }

  [(NSArray *)payloadIntentExecutionResults addObject:resultCopy];
}

- (void)setPayloadIntentExecutionResults:(id)results
{
  v4 = [results mutableCopy];
  payloadIntentExecutionResults = self->_payloadIntentExecutionResults;
  self->_payloadIntentExecutionResults = v4;

  MEMORY[0x1EEE66BB8](v4, payloadIntentExecutionResults);
}

- (void)addPayloadIntent:(id)intent
{
  intentCopy = intent;
  payloadIntents = self->_payloadIntents;
  v8 = intentCopy;
  if (!payloadIntents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadIntents;
    self->_payloadIntents = array;

    intentCopy = v8;
    payloadIntents = self->_payloadIntents;
  }

  [(NSArray *)payloadIntents addObject:intentCopy];
}

- (void)setPayloadIntents:(id)intents
{
  v4 = [intents mutableCopy];
  payloadIntents = self->_payloadIntents;
  self->_payloadIntents = v4;

  MEMORY[0x1EEE66BB8](v4, payloadIntents);
}

- (void)addPayloadIntegerValue:(id)value
{
  valueCopy = value;
  payloadIntegerValues = self->_payloadIntegerValues;
  v8 = valueCopy;
  if (!payloadIntegerValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadIntegerValues;
    self->_payloadIntegerValues = array;

    valueCopy = v8;
    payloadIntegerValues = self->_payloadIntegerValues;
  }

  [(NSArray *)payloadIntegerValues addObject:valueCopy];
}

- (void)setPayloadIntegerValues:(id)values
{
  v4 = [values mutableCopy];
  payloadIntegerValues = self->_payloadIntegerValues;
  self->_payloadIntegerValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadIntegerValues);
}

- (void)addPayloadIntegerList:(id)list
{
  listCopy = list;
  payloadIntegerLists = self->_payloadIntegerLists;
  v8 = listCopy;
  if (!payloadIntegerLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadIntegerLists;
    self->_payloadIntegerLists = array;

    listCopy = v8;
    payloadIntegerLists = self->_payloadIntegerLists;
  }

  [(NSArray *)payloadIntegerLists addObject:listCopy];
}

- (void)setPayloadIntegerLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadIntegerLists = self->_payloadIntegerLists;
  self->_payloadIntegerLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadIntegerLists);
}

- (void)addPayloadHomeUserTask:(id)task
{
  taskCopy = task;
  payloadHomeUserTasks = self->_payloadHomeUserTasks;
  v8 = taskCopy;
  if (!payloadHomeUserTasks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadHomeUserTasks;
    self->_payloadHomeUserTasks = array;

    taskCopy = v8;
    payloadHomeUserTasks = self->_payloadHomeUserTasks;
  }

  [(NSArray *)payloadHomeUserTasks addObject:taskCopy];
}

- (void)setPayloadHomeUserTasks:(id)tasks
{
  v4 = [tasks mutableCopy];
  payloadHomeUserTasks = self->_payloadHomeUserTasks;
  self->_payloadHomeUserTasks = v4;

  MEMORY[0x1EEE66BB8](v4, payloadHomeUserTasks);
}

- (void)addPayloadHomeFilter:(id)filter
{
  filterCopy = filter;
  payloadHomeFilters = self->_payloadHomeFilters;
  v8 = filterCopy;
  if (!payloadHomeFilters)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadHomeFilters;
    self->_payloadHomeFilters = array;

    filterCopy = v8;
    payloadHomeFilters = self->_payloadHomeFilters;
  }

  [(NSArray *)payloadHomeFilters addObject:filterCopy];
}

- (void)setPayloadHomeFilters:(id)filters
{
  v4 = [filters mutableCopy];
  payloadHomeFilters = self->_payloadHomeFilters;
  self->_payloadHomeFilters = v4;

  MEMORY[0x1EEE66BB8](v4, payloadHomeFilters);
}

- (int)StringAsPayloadHomeEntityTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"HOME"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"ZONE"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"ROOM"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"GROUP"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"SCENE"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"TRIGGER"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"DEVICE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadHomeEntityTypesAsString:(int)string
{
  if (string >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284AF8 + string);
  }

  return v4;
}

- (void)addPayloadHomeEntityType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadHomeEntity:(id)entity
{
  entityCopy = entity;
  payloadHomeEntities = self->_payloadHomeEntities;
  v8 = entityCopy;
  if (!payloadHomeEntities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadHomeEntities;
    self->_payloadHomeEntities = array;

    entityCopy = v8;
    payloadHomeEntities = self->_payloadHomeEntities;
  }

  [(NSArray *)payloadHomeEntities addObject:entityCopy];
}

- (void)setPayloadHomeEntities:(id)entities
{
  v4 = [entities mutableCopy];
  payloadHomeEntities = self->_payloadHomeEntities;
  self->_payloadHomeEntities = v4;

  MEMORY[0x1EEE66BB8](v4, payloadHomeEntities);
}

- (int)StringAsPayloadHomeDeviceTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"LIGHTBULB"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"SWITCH"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"THERMOSTAT"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"GARAGE_DOOR_OPENER"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"FAN"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"OUTLET"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"DOOR_LOCK"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"AIR_QUALITY_SENSOR"])
  {
    v4 = 9;
  }

  else if ([typesCopy isEqualToString:@"BATTERY"])
  {
    v4 = 10;
  }

  else if ([typesCopy isEqualToString:@"CARBON_DIOXIDE_SENSOR"])
  {
    v4 = 11;
  }

  else if ([typesCopy isEqualToString:@"CARBON_MONOXIDE_SENSOR"])
  {
    v4 = 12;
  }

  else if ([typesCopy isEqualToString:@"CONTACT_SENSOR"])
  {
    v4 = 13;
  }

  else if ([typesCopy isEqualToString:@"DOOR"])
  {
    v4 = 14;
  }

  else if ([typesCopy isEqualToString:@"HUMIDITY_SENSOR"])
  {
    v4 = 15;
  }

  else if ([typesCopy isEqualToString:@"LEAK_SENSOR"])
  {
    v4 = 16;
  }

  else if ([typesCopy isEqualToString:@"LIGHT_SENSOR"])
  {
    v4 = 17;
  }

  else if ([typesCopy isEqualToString:@"MOTION_SENSOR"])
  {
    v4 = 18;
  }

  else if ([typesCopy isEqualToString:@"OCCUPANCY_SENSOR"])
  {
    v4 = 19;
  }

  else if ([typesCopy isEqualToString:@"SECURITY_SYSTEM"])
  {
    v4 = 20;
  }

  else if ([typesCopy isEqualToString:@"SMOKE_SENSOR"])
  {
    v4 = 23;
  }

  else if ([typesCopy isEqualToString:@"TEMPERATURE_SENSOR"])
  {
    v4 = 24;
  }

  else if ([typesCopy isEqualToString:@"WINDOW"])
  {
    v4 = 25;
  }

  else if ([typesCopy isEqualToString:@"SHADES"])
  {
    v4 = 26;
  }

  else if ([typesCopy isEqualToString:@"IP_CAMERA"])
  {
    v4 = 28;
  }

  else if ([typesCopy isEqualToString:@"MICROPHONE"])
  {
    v4 = 29;
  }

  else if ([typesCopy isEqualToString:@"SPEAKER"])
  {
    v4 = 30;
  }

  else if ([typesCopy isEqualToString:@"MOTORIZED_DOOR"])
  {
    v4 = 31;
  }

  else if ([typesCopy isEqualToString:@"MOTORIZED_WINDOW"])
  {
    v4 = 32;
  }

  else if ([typesCopy isEqualToString:@"HEATER_COOLER"])
  {
    v4 = 33;
  }

  else if ([typesCopy isEqualToString:@"HUMIDIFIER_DEHUMIDIFIER"])
  {
    v4 = 34;
  }

  else if ([typesCopy isEqualToString:@"SLAT"])
  {
    v4 = 35;
  }

  else if ([typesCopy isEqualToString:@"SPRINKLER"])
  {
    v4 = 36;
  }

  else if ([typesCopy isEqualToString:@"VALVE"])
  {
    v4 = 37;
  }

  else if ([typesCopy isEqualToString:@"FAUCET"])
  {
    v4 = 38;
  }

  else if ([typesCopy isEqualToString:@"SHOWER"])
  {
    v4 = 39;
  }

  else if ([typesCopy isEqualToString:@"TELEVISION"])
  {
    v4 = 40;
  }

  else if ([typesCopy isEqualToString:@"CUSTOM"])
  {
    v4 = 41;
  }

  else if ([typesCopy isEqualToString:@"DOOR_BELL"])
  {
    v4 = 42;
  }

  else if ([typesCopy isEqualToString:@"AIR_PURIFIER"])
  {
    v4 = 43;
  }

  else if ([typesCopy isEqualToString:@"FILTER"])
  {
    v4 = 44;
  }

  else if ([typesCopy isEqualToString:@"APPLE_TV"])
  {
    v4 = 45;
  }

  else if ([typesCopy isEqualToString:@"CAMERA_RECORDING"])
  {
    v4 = 46;
  }

  else if ([typesCopy isEqualToString:@"SENSOR"])
  {
    v4 = 47;
  }

  else if ([typesCopy isEqualToString:@"AIRPORT_EXPRESS"])
  {
    v4 = 48;
  }

  else if ([typesCopy isEqualToString:@"SINK"])
  {
    v4 = 49;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadHomeDeviceTypesAsString:(int)string
{
  if (string < 0x32 && ((0x3FFFFF79FFEEFuLL >> string) & 1) != 0)
  {
    v4 = *(&off_1E7284968 + string);
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addPayloadHomeDeviceType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadHomeAttributeValueTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"BOOLEAN"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"DOUBLE"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"STRING"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"INTEGER"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"LIMIT"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"RANGE"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadHomeAttributeValueTypesAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284938 + string);
  }

  return v4;
}

- (void)addPayloadHomeAttributeValueType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadHomeAttributeValue:(id)value
{
  valueCopy = value;
  payloadHomeAttributeValues = self->_payloadHomeAttributeValues;
  v8 = valueCopy;
  if (!payloadHomeAttributeValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadHomeAttributeValues;
    self->_payloadHomeAttributeValues = array;

    valueCopy = v8;
    payloadHomeAttributeValues = self->_payloadHomeAttributeValues;
  }

  [(NSArray *)payloadHomeAttributeValues addObject:valueCopy];
}

- (void)setPayloadHomeAttributeValues:(id)values
{
  v4 = [values mutableCopy];
  payloadHomeAttributeValues = self->_payloadHomeAttributeValues;
  self->_payloadHomeAttributeValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadHomeAttributeValues);
}

- (int)StringAsPayloadHomeAttributeTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"ENABLED"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"BRIGHTNESS"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"HUE"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"SATURATION"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"COLOR_VALUE"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"TEMPERATURE"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"HUMIDITY"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"LOCK"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"POSITION"])
  {
    v4 = 8;
  }

  else if ([typesCopy isEqualToString:@"RAISE"])
  {
    v4 = 9;
  }

  else if ([typesCopy isEqualToString:@"ROTATION_SPEED"])
  {
    v4 = 10;
  }

  else if ([typesCopy isEqualToString:@"ROTATION_DIRECTION"])
  {
    v4 = 11;
  }

  else if ([typesCopy isEqualToString:@"SECURITY_SYSTEM_STATE"])
  {
    v4 = 12;
  }

  else if ([typesCopy isEqualToString:@"HEATING_COOLING_MODE"])
  {
    v4 = 13;
  }

  else if ([typesCopy isEqualToString:@"HEATER_COOLER_MODE"])
  {
    v4 = 14;
  }

  else if ([typesCopy isEqualToString:@"CONTROL_LOCK"])
  {
    v4 = 15;
  }

  else if ([typesCopy isEqualToString:@"COOLING_THRESHOLD"])
  {
    v4 = 16;
  }

  else if ([typesCopy isEqualToString:@"FAN_OPERATING_MODE"])
  {
    v4 = 17;
  }

  else if ([typesCopy isEqualToString:@"HEATING_THRESHOLD"])
  {
    v4 = 18;
  }

  else if ([typesCopy isEqualToString:@"HUMIDIFIER_DEHUMIDIFIER_MODE"])
  {
    v4 = 19;
  }

  else if ([typesCopy isEqualToString:@"SLAT_OPERATING_MODE"])
  {
    v4 = 20;
  }

  else if ([typesCopy isEqualToString:@"SWING_MODE"])
  {
    v4 = 21;
  }

  else if ([typesCopy isEqualToString:@"HUMIDIFIER_THRESHOLD"])
  {
    v4 = 22;
  }

  else if ([typesCopy isEqualToString:@"DEHUMIDIFIER_THRESHOLD"])
  {
    v4 = 23;
  }

  else if ([typesCopy isEqualToString:@"PROGRAM_MODE"])
  {
    v4 = 24;
  }

  else if ([typesCopy isEqualToString:@"DURATION"])
  {
    v4 = 25;
  }

  else if ([typesCopy isEqualToString:@"POWER"])
  {
    v4 = 26;
  }

  else if ([typesCopy isEqualToString:@"AIR_QUALITY_RATING"])
  {
    v4 = 27;
  }

  else if ([typesCopy isEqualToString:@"AIR_PARTICULATE_DENSITY"])
  {
    v4 = 28;
  }

  else if ([typesCopy isEqualToString:@"AIR_PARTICULATE_SIZE"])
  {
    v4 = 29;
  }

  else if ([typesCopy isEqualToString:@"SMOKE_DETECTED"])
  {
    v4 = 30;
  }

  else if ([typesCopy isEqualToString:@"CARBON_MONOXIDE_DETECTED"])
  {
    v4 = 31;
  }

  else if ([typesCopy isEqualToString:@"CARBON_MONOXIDE_LEVEL"])
  {
    v4 = 32;
  }

  else if ([typesCopy isEqualToString:@"CARBON_MONOXIDE_PEAK_LEVEL"])
  {
    v4 = 33;
  }

  else if ([typesCopy isEqualToString:@"CARBON_DIOXIDE_DETECTED"])
  {
    v4 = 34;
  }

  else if ([typesCopy isEqualToString:@"CARBON_DIOXIDE_LEVEL"])
  {
    v4 = 35;
  }

  else if ([typesCopy isEqualToString:@"CARBON_DIOXIDE_PEAK_LEVEL"])
  {
    v4 = 36;
  }

  else if ([typesCopy isEqualToString:@"CONTACT_DETECTED"])
  {
    v4 = 37;
  }

  else if ([typesCopy isEqualToString:@"OCCUPANCY_DETECTED"])
  {
    v4 = 38;
  }

  else if ([typesCopy isEqualToString:@"LEAK_DETECTED"])
  {
    v4 = 39;
  }

  else if ([typesCopy isEqualToString:@"MOTION_DETECTED"])
  {
    v4 = 40;
  }

  else if ([typesCopy isEqualToString:@"AMBIENT_LIGHT_LEVEL"])
  {
    v4 = 41;
  }

  else if ([typesCopy isEqualToString:@"BATTERY_LEVEL"])
  {
    v4 = 42;
  }

  else if ([typesCopy isEqualToString:@"CHARGING_STATE"])
  {
    v4 = 43;
  }

  else if ([typesCopy isEqualToString:@"LOW_BATTERY"])
  {
    v4 = 44;
  }

  else if ([typesCopy isEqualToString:@"IN_USE"])
  {
    v4 = 45;
  }

  else if ([typesCopy isEqualToString:@"AIR_PURIFIER_OPERATING_MODE"])
  {
    v4 = 46;
  }

  else if ([typesCopy isEqualToString:@"FILTER_CHANGE"])
  {
    v4 = 47;
  }

  else if ([typesCopy isEqualToString:@"FILTER_LIFE"])
  {
    v4 = 48;
  }

  else if ([typesCopy isEqualToString:@"WATER_LEVEL"])
  {
    v4 = 49;
  }

  else if ([typesCopy isEqualToString:@"REMAINING_DURATION"])
  {
    v4 = 50;
  }

  else if ([typesCopy isEqualToString:@"STATUS_FAULT"])
  {
    v4 = 51;
  }

  else if ([typesCopy isEqualToString:@"SULPHUR_DIOXIDE_DENSITY"])
  {
    v4 = 52;
  }

  else if ([typesCopy isEqualToString:@"NITROGEN_DIOXIDE_DENSITY"])
  {
    v4 = 53;
  }

  else if ([typesCopy isEqualToString:@"PARTICULATE_MATTER_2_5_DENSITY"])
  {
    v4 = 54;
  }

  else if ([typesCopy isEqualToString:@"PARTICULATE_MATTER_10_DENSITY"])
  {
    v4 = 55;
  }

  else if ([typesCopy isEqualToString:@"VOLATILE_ORGANIC_COMPOUND_DENSITY"])
  {
    v4 = 56;
  }

  else if ([typesCopy isEqualToString:@"OZONE_DENSITY"])
  {
    v4 = 57;
  }

  else if ([typesCopy isEqualToString:@"COLOR_TEMPERATURE"])
  {
    v4 = 58;
  }

  else if ([typesCopy isEqualToString:@"COUNT"])
  {
    v4 = 59;
  }

  else if ([typesCopy isEqualToString:@"LOCATION"])
  {
    v4 = 60;
  }

  else if ([typesCopy isEqualToString:@"INVENTORY"])
  {
    v4 = 61;
  }

  else if ([typesCopy isEqualToString:@"CAPABILITIES"])
  {
    v4 = 62;
  }

  else if ([typesCopy isEqualToString:@"OPEN"])
  {
    v4 = 63;
  }

  else if ([typesCopy isEqualToString:@"MEDIA"])
  {
    v4 = 64;
  }

  else if ([typesCopy isEqualToString:@"ADAPTIVE_LIGHTING"])
  {
    v4 = 65;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadHomeAttributeTypesAsString:(int)string
{
  if (string >= 0x42)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284728 + string);
  }

  return v4;
}

- (void)addPayloadHomeAttributeType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadHomeAttribute:(id)attribute
{
  attributeCopy = attribute;
  payloadHomeAttributes = self->_payloadHomeAttributes;
  v8 = attributeCopy;
  if (!payloadHomeAttributes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadHomeAttributes;
    self->_payloadHomeAttributes = array;

    attributeCopy = v8;
    payloadHomeAttributes = self->_payloadHomeAttributes;
  }

  [(NSArray *)payloadHomeAttributes addObject:attributeCopy];
}

- (void)setPayloadHomeAttributes:(id)attributes
{
  v4 = [attributes mutableCopy];
  payloadHomeAttributes = self->_payloadHomeAttributes;
  self->_payloadHomeAttributes = v4;

  MEMORY[0x1EEE66BB8](v4, payloadHomeAttributes);
}

- (void)addPayloadGetSettingResponseData:(id)data
{
  dataCopy = data;
  payloadGetSettingResponseDatas = self->_payloadGetSettingResponseDatas;
  v8 = dataCopy;
  if (!payloadGetSettingResponseDatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadGetSettingResponseDatas;
    self->_payloadGetSettingResponseDatas = array;

    dataCopy = v8;
    payloadGetSettingResponseDatas = self->_payloadGetSettingResponseDatas;
  }

  [(NSArray *)payloadGetSettingResponseDatas addObject:dataCopy];
}

- (void)setPayloadGetSettingResponseDatas:(id)datas
{
  v4 = [datas mutableCopy];
  payloadGetSettingResponseDatas = self->_payloadGetSettingResponseDatas;
  self->_payloadGetSettingResponseDatas = v4;

  MEMORY[0x1EEE66BB8](v4, payloadGetSettingResponseDatas);
}

- (void)addPayloadGeographicalFeatureList:(id)list
{
  listCopy = list;
  payloadGeographicalFeatureLists = self->_payloadGeographicalFeatureLists;
  v8 = listCopy;
  if (!payloadGeographicalFeatureLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadGeographicalFeatureLists;
    self->_payloadGeographicalFeatureLists = array;

    listCopy = v8;
    payloadGeographicalFeatureLists = self->_payloadGeographicalFeatureLists;
  }

  [(NSArray *)payloadGeographicalFeatureLists addObject:listCopy];
}

- (void)setPayloadGeographicalFeatureLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadGeographicalFeatureLists = self->_payloadGeographicalFeatureLists;
  self->_payloadGeographicalFeatureLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadGeographicalFeatureLists);
}

- (void)addPayloadGeographicalFeature:(id)feature
{
  featureCopy = feature;
  payloadGeographicalFeatures = self->_payloadGeographicalFeatures;
  v8 = featureCopy;
  if (!payloadGeographicalFeatures)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadGeographicalFeatures;
    self->_payloadGeographicalFeatures = array;

    featureCopy = v8;
    payloadGeographicalFeatures = self->_payloadGeographicalFeatures;
  }

  [(NSArray *)payloadGeographicalFeatures addObject:featureCopy];
}

- (void)setPayloadGeographicalFeatures:(id)features
{
  v4 = [features mutableCopy];
  payloadGeographicalFeatures = self->_payloadGeographicalFeatures;
  self->_payloadGeographicalFeatures = v4;

  MEMORY[0x1EEE66BB8](v4, payloadGeographicalFeatures);
}

- (void)addPayloadFinancialAccountValue:(id)value
{
  valueCopy = value;
  payloadFinancialAccountValues = self->_payloadFinancialAccountValues;
  v8 = valueCopy;
  if (!payloadFinancialAccountValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadFinancialAccountValues;
    self->_payloadFinancialAccountValues = array;

    valueCopy = v8;
    payloadFinancialAccountValues = self->_payloadFinancialAccountValues;
  }

  [(NSArray *)payloadFinancialAccountValues addObject:valueCopy];
}

- (void)setPayloadFinancialAccountValues:(id)values
{
  v4 = [values mutableCopy];
  payloadFinancialAccountValues = self->_payloadFinancialAccountValues;
  self->_payloadFinancialAccountValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadFinancialAccountValues);
}

- (int)StringAsPayloadFileTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"OTHER"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"APPLICATION"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"DOCUMENT"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"MUSIC"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"MOVIE"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"PDF"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"PRESENTATION"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"IMAGE"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"SOURCE"])
  {
    v4 = 8;
  }

  else if ([typesCopy isEqualToString:@"SPREADSHEET"])
  {
    v4 = 9;
  }

  else if ([typesCopy isEqualToString:@"TEXT"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadFileTypesAsString:(int)string
{
  if (string >= 0xB)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72846D0 + string);
  }

  return v4;
}

- (void)addPayloadFileType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadFileShareModes:(id)modes
{
  modesCopy = modes;
  if ([modesCopy isEqualToString:@"AIRDROP"])
  {
    v4 = 0;
  }

  else if ([modesCopy isEqualToString:@"MESSAGE"])
  {
    v4 = 1;
  }

  else if ([modesCopy isEqualToString:@"MAIL"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadFileShareModesAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72846B8 + string);
  }

  return v4;
}

- (void)addPayloadFileShareMode:(int)mode
{
  if (mode != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadFileSearchScopes:(id)scopes
{
  scopesCopy = scopes;
  if ([scopesCopy isEqualToString:@"DIRECTORY"])
  {
    v4 = 0;
  }

  else if ([scopesCopy isEqualToString:@"VOLUME"])
  {
    v4 = 1;
  }

  else if ([scopesCopy isEqualToString:@"COMPUTER"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadFileSearchScopesAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72846A0 + string);
  }

  return v4;
}

- (void)addPayloadFileSearchScope:(int)scope
{
  if (scope != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadFilePropertyValue:(id)value
{
  valueCopy = value;
  payloadFilePropertyValues = self->_payloadFilePropertyValues;
  v8 = valueCopy;
  if (!payloadFilePropertyValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadFilePropertyValues;
    self->_payloadFilePropertyValues = array;

    valueCopy = v8;
    payloadFilePropertyValues = self->_payloadFilePropertyValues;
  }

  [(NSArray *)payloadFilePropertyValues addObject:valueCopy];
}

- (void)setPayloadFilePropertyValues:(id)values
{
  v4 = [values mutableCopy];
  payloadFilePropertyValues = self->_payloadFilePropertyValues;
  self->_payloadFilePropertyValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadFilePropertyValues);
}

- (int)StringAsPayloadFilePropertyQualifiers:(id)qualifiers
{
  qualifiersCopy = qualifiers;
  if ([qualifiersCopy isEqualToString:@"EQUAL"])
  {
    v4 = 0;
  }

  else if ([qualifiersCopy isEqualToString:@"AT_LEAST"])
  {
    v4 = 1;
  }

  else if ([qualifiersCopy isEqualToString:@"AT_MOST"])
  {
    v4 = 2;
  }

  else if ([qualifiersCopy isEqualToString:@"MIN"])
  {
    v4 = 3;
  }

  else if ([qualifiersCopy isEqualToString:@"MAX"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadFilePropertyQualifiersAsString:(int)string
{
  if (string >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284678 + string);
  }

  return v4;
}

- (void)addPayloadFilePropertyQualifier:(int)qualifier
{
  if (qualifier != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadFilePropertyNames:(id)names
{
  namesCopy = names;
  if ([namesCopy isEqualToString:@"SIZE"])
  {
    v4 = 0;
  }

  else if ([namesCopy isEqualToString:@"CONTENTS"])
  {
    v4 = 1;
  }

  else if ([namesCopy isEqualToString:@"AUTHOR"])
  {
    v4 = 2;
  }

  else if ([namesCopy isEqualToString:@"CREATION_TIME"])
  {
    v4 = 3;
  }

  else if ([namesCopy isEqualToString:@"ACCESSED_TIME"])
  {
    v4 = 4;
  }

  else if ([namesCopy isEqualToString:@"MODIFIED_TIME"])
  {
    v4 = 5;
  }

  else if ([namesCopy isEqualToString:@"PRINTED_TIME"])
  {
    v4 = 6;
  }

  else if ([namesCopy isEqualToString:@"SENDER"])
  {
    v4 = 7;
  }

  else if ([namesCopy isEqualToString:@"RECIPIENT"])
  {
    v4 = 8;
  }

  else if ([namesCopy isEqualToString:@"PAGE_COUNT"])
  {
    v4 = 9;
  }

  else if ([namesCopy isEqualToString:@"TAG"])
  {
    v4 = 10;
  }

  else if ([namesCopy isEqualToString:@"FILE_TYPE"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadFilePropertyNamesAsString:(int)string
{
  if (string >= 0xC)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284618 + string);
  }

  return v4;
}

- (void)addPayloadFilePropertyName:(int)name
{
  if (name != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadFileProperty:(id)property
{
  propertyCopy = property;
  payloadFileProperties = self->_payloadFileProperties;
  v8 = propertyCopy;
  if (!payloadFileProperties)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadFileProperties;
    self->_payloadFileProperties = array;

    propertyCopy = v8;
    payloadFileProperties = self->_payloadFileProperties;
  }

  [(NSArray *)payloadFileProperties addObject:propertyCopy];
}

- (void)setPayloadFileProperties:(id)properties
{
  v4 = [properties mutableCopy];
  payloadFileProperties = self->_payloadFileProperties;
  self->_payloadFileProperties = v4;

  MEMORY[0x1EEE66BB8](v4, payloadFileProperties);
}

- (int)StringAsPayloadFileEntityTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"FILE"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"FOLDER"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"REFERENCE"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"URL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadFileEntityTypesAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72845F8 + string);
  }

  return v4;
}

- (void)addPayloadFileEntityType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadFile:(id)file
{
  fileCopy = file;
  payloadFiles = self->_payloadFiles;
  v8 = fileCopy;
  if (!payloadFiles)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadFiles;
    self->_payloadFiles = array;

    fileCopy = v8;
    payloadFiles = self->_payloadFiles;
  }

  [(NSArray *)payloadFiles addObject:fileCopy];
}

- (void)setPayloadFiles:(id)files
{
  v4 = [files mutableCopy];
  payloadFiles = self->_payloadFiles;
  self->_payloadFiles = v4;

  MEMORY[0x1EEE66BB8](v4, payloadFiles);
}

- (void)addPayloadEventParticipant:(id)participant
{
  participantCopy = participant;
  payloadEventParticipants = self->_payloadEventParticipants;
  v8 = participantCopy;
  if (!payloadEventParticipants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadEventParticipants;
    self->_payloadEventParticipants = array;

    participantCopy = v8;
    payloadEventParticipants = self->_payloadEventParticipants;
  }

  [(NSArray *)payloadEventParticipants addObject:participantCopy];
}

- (void)setPayloadEventParticipants:(id)participants
{
  v4 = [participants mutableCopy];
  payloadEventParticipants = self->_payloadEventParticipants;
  self->_payloadEventParticipants = v4;

  MEMORY[0x1EEE66BB8](v4, payloadEventParticipants);
}

- (void)addPayloadEventList:(id)list
{
  listCopy = list;
  payloadEventLists = self->_payloadEventLists;
  v8 = listCopy;
  if (!payloadEventLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadEventLists;
    self->_payloadEventLists = array;

    listCopy = v8;
    payloadEventLists = self->_payloadEventLists;
  }

  [(NSArray *)payloadEventLists addObject:listCopy];
}

- (void)setPayloadEventLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadEventLists = self->_payloadEventLists;
  self->_payloadEventLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadEventLists);
}

- (int)StringAsPayloadEventAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([attributesCopy isEqualToString:@"EVENT_LOCATION"])
  {
    v4 = 1;
  }

  else if ([attributesCopy isEqualToString:@"PARTICIPANTS"])
  {
    v4 = 2;
  }

  else if ([attributesCopy isEqualToString:@"DATETIME"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadEventAttributesAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72845E0 + (string - 1));
  }

  return v4;
}

- (void)addPayloadEventAttribute:(int)attribute
{
  if (attribute != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadEvent:(id)event
{
  eventCopy = event;
  payloadEvents = self->_payloadEvents;
  v8 = eventCopy;
  if (!payloadEvents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadEvents;
    self->_payloadEvents = array;

    eventCopy = v8;
    payloadEvents = self->_payloadEvents;
  }

  [(NSArray *)payloadEvents addObject:eventCopy];
}

- (void)setPayloadEvents:(id)events
{
  v4 = [events mutableCopy];
  payloadEvents = self->_payloadEvents;
  self->_payloadEvents = v4;

  MEMORY[0x1EEE66BB8](v4, payloadEvents);
}

- (int64_t)payloadEnumerationAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_payloadEnumerations objectAtIndexedSubscript:index];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (void)addPayloadEnumeration:(int64_t)enumeration
{
  payloadEnumerations = self->_payloadEnumerations;
  if (!payloadEnumerations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadEnumerations;
    self->_payloadEnumerations = array;

    payloadEnumerations = self->_payloadEnumerations;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:enumeration];
  [(NSArray *)payloadEnumerations addObject:v8];
}

- (void)setPayloadEnumerations:(id)enumerations
{
  v4 = [enumerations mutableCopy];
  payloadEnumerations = self->_payloadEnumerations;
  self->_payloadEnumerations = v4;

  MEMORY[0x1EEE66BB8](v4, payloadEnumerations);
}

- (void)addPayloadEnergyValue:(id)value
{
  valueCopy = value;
  payloadEnergyValues = self->_payloadEnergyValues;
  v8 = valueCopy;
  if (!payloadEnergyValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadEnergyValues;
    self->_payloadEnergyValues = array;

    valueCopy = v8;
    payloadEnergyValues = self->_payloadEnergyValues;
  }

  [(NSArray *)payloadEnergyValues addObject:valueCopy];
}

- (void)setPayloadEnergyValues:(id)values
{
  v4 = [values mutableCopy];
  payloadEnergyValues = self->_payloadEnergyValues;
  self->_payloadEnergyValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadEnergyValues);
}

- (void)addPayloadDoubleValue:(id)value
{
  valueCopy = value;
  payloadDoubleValues = self->_payloadDoubleValues;
  v8 = valueCopy;
  if (!payloadDoubleValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDoubleValues;
    self->_payloadDoubleValues = array;

    valueCopy = v8;
    payloadDoubleValues = self->_payloadDoubleValues;
  }

  [(NSArray *)payloadDoubleValues addObject:valueCopy];
}

- (void)setPayloadDoubleValues:(id)values
{
  v4 = [values mutableCopy];
  payloadDoubleValues = self->_payloadDoubleValues;
  self->_payloadDoubleValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDoubleValues);
}

- (void)addPayloadDoubleList:(id)list
{
  listCopy = list;
  payloadDoubleLists = self->_payloadDoubleLists;
  v8 = listCopy;
  if (!payloadDoubleLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDoubleLists;
    self->_payloadDoubleLists = array;

    listCopy = v8;
    payloadDoubleLists = self->_payloadDoubleLists;
  }

  [(NSArray *)payloadDoubleLists addObject:listCopy];
}

- (void)setPayloadDoubleLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadDoubleLists = self->_payloadDoubleLists;
  self->_payloadDoubleLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDoubleLists);
}

- (void)addPayloadDistanceValue:(id)value
{
  valueCopy = value;
  payloadDistanceValues = self->_payloadDistanceValues;
  v8 = valueCopy;
  if (!payloadDistanceValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDistanceValues;
    self->_payloadDistanceValues = array;

    valueCopy = v8;
    payloadDistanceValues = self->_payloadDistanceValues;
  }

  [(NSArray *)payloadDistanceValues addObject:valueCopy];
}

- (void)setPayloadDistanceValues:(id)values
{
  v4 = [values mutableCopy];
  payloadDistanceValues = self->_payloadDistanceValues;
  self->_payloadDistanceValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDistanceValues);
}

- (void)addPayloadDistanceList:(id)list
{
  listCopy = list;
  payloadDistanceLists = self->_payloadDistanceLists;
  v8 = listCopy;
  if (!payloadDistanceLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDistanceLists;
    self->_payloadDistanceLists = array;

    listCopy = v8;
    payloadDistanceLists = self->_payloadDistanceLists;
  }

  [(NSArray *)payloadDistanceLists addObject:listCopy];
}

- (void)setPayloadDistanceLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadDistanceLists = self->_payloadDistanceLists;
  self->_payloadDistanceLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDistanceLists);
}

- (void)addPayloadDialingContact:(id)contact
{
  contactCopy = contact;
  payloadDialingContacts = self->_payloadDialingContacts;
  v8 = contactCopy;
  if (!payloadDialingContacts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDialingContacts;
    self->_payloadDialingContacts = array;

    contactCopy = v8;
    payloadDialingContacts = self->_payloadDialingContacts;
  }

  [(NSArray *)payloadDialingContacts addObject:contactCopy];
}

- (void)setPayloadDialingContacts:(id)contacts
{
  v4 = [contacts mutableCopy];
  payloadDialingContacts = self->_payloadDialingContacts;
  self->_payloadDialingContacts = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDialingContacts);
}

- (int)StringAsPayloadDeviceTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"APPLE_TV"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"APPLE_WATCH"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"IPHONE"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"IPAD"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"IPOD"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"IMAC"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"MAC"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"MACBOOK"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"MACBOOK_AIR"])
  {
    v4 = 8;
  }

  else if ([typesCopy isEqualToString:@"MACBOOK_PRO"])
  {
    v4 = 9;
  }

  else if ([typesCopy isEqualToString:@"MAC_MINI"])
  {
    v4 = 10;
  }

  else if ([typesCopy isEqualToString:@"MAC_PRO"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadDeviceTypesAsString:(int)string
{
  if (string >= 0xC)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284580 + string);
  }

  return v4;
}

- (void)addPayloadDeviceType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadDeviceDetail:(id)detail
{
  detailCopy = detail;
  payloadDeviceDetails = self->_payloadDeviceDetails;
  v8 = detailCopy;
  if (!payloadDeviceDetails)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDeviceDetails;
    self->_payloadDeviceDetails = array;

    detailCopy = v8;
    payloadDeviceDetails = self->_payloadDeviceDetails;
  }

  [(NSArray *)payloadDeviceDetails addObject:detailCopy];
}

- (void)setPayloadDeviceDetails:(id)details
{
  v4 = [details mutableCopy];
  payloadDeviceDetails = self->_payloadDeviceDetails;
  self->_payloadDeviceDetails = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDeviceDetails);
}

- (void)addPayloadDevice:(id)device
{
  deviceCopy = device;
  payloadDevices = self->_payloadDevices;
  v8 = deviceCopy;
  if (!payloadDevices)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDevices;
    self->_payloadDevices = array;

    deviceCopy = v8;
    payloadDevices = self->_payloadDevices;
  }

  [(NSArray *)payloadDevices addObject:deviceCopy];
}

- (void)setPayloadDevices:(id)devices
{
  v4 = [devices mutableCopy];
  payloadDevices = self->_payloadDevices;
  self->_payloadDevices = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDevices);
}

- (void)addPayloadDateTimeValue:(id)value
{
  valueCopy = value;
  payloadDateTimeValues = self->_payloadDateTimeValues;
  v8 = valueCopy;
  if (!payloadDateTimeValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDateTimeValues;
    self->_payloadDateTimeValues = array;

    valueCopy = v8;
    payloadDateTimeValues = self->_payloadDateTimeValues;
  }

  [(NSArray *)payloadDateTimeValues addObject:valueCopy];
}

- (void)setPayloadDateTimeValues:(id)values
{
  v4 = [values mutableCopy];
  payloadDateTimeValues = self->_payloadDateTimeValues;
  self->_payloadDateTimeValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDateTimeValues);
}

- (void)addPayloadDateTimeRangeValue:(id)value
{
  valueCopy = value;
  payloadDateTimeRangeValues = self->_payloadDateTimeRangeValues;
  v8 = valueCopy;
  if (!payloadDateTimeRangeValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDateTimeRangeValues;
    self->_payloadDateTimeRangeValues = array;

    valueCopy = v8;
    payloadDateTimeRangeValues = self->_payloadDateTimeRangeValues;
  }

  [(NSArray *)payloadDateTimeRangeValues addObject:valueCopy];
}

- (void)setPayloadDateTimeRangeValues:(id)values
{
  v4 = [values mutableCopy];
  payloadDateTimeRangeValues = self->_payloadDateTimeRangeValues;
  self->_payloadDateTimeRangeValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDateTimeRangeValues);
}

- (void)addPayloadDateTimeRangeList:(id)list
{
  listCopy = list;
  payloadDateTimeRangeLists = self->_payloadDateTimeRangeLists;
  v8 = listCopy;
  if (!payloadDateTimeRangeLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDateTimeRangeLists;
    self->_payloadDateTimeRangeLists = array;

    listCopy = v8;
    payloadDateTimeRangeLists = self->_payloadDateTimeRangeLists;
  }

  [(NSArray *)payloadDateTimeRangeLists addObject:listCopy];
}

- (void)setPayloadDateTimeRangeLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadDateTimeRangeLists = self->_payloadDateTimeRangeLists;
  self->_payloadDateTimeRangeLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDateTimeRangeLists);
}

- (int)StringAsPayloadDateSearchTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN_DATE_SEARCH_TYPE"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"BY_DUE_DATE"])
  {
    v4 = 10;
  }

  else if ([typesCopy isEqualToString:@"BY_MODIFIED_DATE"])
  {
    v4 = 20;
  }

  else if ([typesCopy isEqualToString:@"BY_CREATED_DATE"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadDateSearchTypesAsString:(int)string
{
  if (string > 19)
  {
    if (string == 20)
    {
      v4 = @"BY_MODIFIED_DATE";
    }

    else
    {
      if (string != 30)
      {
LABEL_12:
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];

        return v4;
      }

      v4 = @"BY_CREATED_DATE";
    }
  }

  else
  {
    if (string)
    {
      if (string == 10)
      {
        v4 = @"BY_DUE_DATE";

        return v4;
      }

      goto LABEL_12;
    }

    v4 = @"UNKNOWN_DATE_SEARCH_TYPE";
  }

  return v4;
}

- (void)addPayloadDateSearchType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadDataStringList:(id)list
{
  listCopy = list;
  payloadDataStringLists = self->_payloadDataStringLists;
  v8 = listCopy;
  if (!payloadDataStringLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDataStringLists;
    self->_payloadDataStringLists = array;

    listCopy = v8;
    payloadDataStringLists = self->_payloadDataStringLists;
  }

  [(NSArray *)payloadDataStringLists addObject:listCopy];
}

- (void)setPayloadDataStringLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadDataStringLists = self->_payloadDataStringLists;
  self->_payloadDataStringLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDataStringLists);
}

- (void)addPayloadDataString:(id)string
{
  stringCopy = string;
  payloadDataStrings = self->_payloadDataStrings;
  v8 = stringCopy;
  if (!payloadDataStrings)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadDataStrings;
    self->_payloadDataStrings = array;

    stringCopy = v8;
    payloadDataStrings = self->_payloadDataStrings;
  }

  [(NSArray *)payloadDataStrings addObject:stringCopy];
}

- (void)setPayloadDataStrings:(id)strings
{
  v4 = [strings mutableCopy];
  payloadDataStrings = self->_payloadDataStrings;
  self->_payloadDataStrings = v4;

  MEMORY[0x1EEE66BB8](v4, payloadDataStrings);
}

- (void)addPayloadCustomObject:(id)object
{
  objectCopy = object;
  payloadCustomObjects = self->_payloadCustomObjects;
  v8 = objectCopy;
  if (!payloadCustomObjects)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadCustomObjects;
    self->_payloadCustomObjects = array;

    objectCopy = v8;
    payloadCustomObjects = self->_payloadCustomObjects;
  }

  [(NSArray *)payloadCustomObjects addObject:objectCopy];
}

- (void)setPayloadCustomObjects:(id)objects
{
  v4 = [objects mutableCopy];
  payloadCustomObjects = self->_payloadCustomObjects;
  self->_payloadCustomObjects = v4;

  MEMORY[0x1EEE66BB8](v4, payloadCustomObjects);
}

- (void)addPayloadCurrencyAmount:(id)amount
{
  amountCopy = amount;
  payloadCurrencyAmounts = self->_payloadCurrencyAmounts;
  v8 = amountCopy;
  if (!payloadCurrencyAmounts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadCurrencyAmounts;
    self->_payloadCurrencyAmounts = array;

    amountCopy = v8;
    payloadCurrencyAmounts = self->_payloadCurrencyAmounts;
  }

  [(NSArray *)payloadCurrencyAmounts addObject:amountCopy];
}

- (void)setPayloadCurrencyAmounts:(id)amounts
{
  v4 = [amounts mutableCopy];
  payloadCurrencyAmounts = self->_payloadCurrencyAmounts;
  self->_payloadCurrencyAmounts = v4;

  MEMORY[0x1EEE66BB8](v4, payloadCurrencyAmounts);
}

- (void)addPayloadContactValue:(id)value
{
  valueCopy = value;
  payloadContactValues = self->_payloadContactValues;
  v8 = valueCopy;
  if (!payloadContactValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadContactValues;
    self->_payloadContactValues = array;

    valueCopy = v8;
    payloadContactValues = self->_payloadContactValues;
  }

  [(NSArray *)payloadContactValues addObject:valueCopy];
}

- (void)setPayloadContactValues:(id)values
{
  v4 = [values mutableCopy];
  payloadContactValues = self->_payloadContactValues;
  self->_payloadContactValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadContactValues);
}

- (void)addPayloadContactList:(id)list
{
  listCopy = list;
  payloadContactLists = self->_payloadContactLists;
  v8 = listCopy;
  if (!payloadContactLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadContactLists;
    self->_payloadContactLists = array;

    listCopy = v8;
    payloadContactLists = self->_payloadContactLists;
  }

  [(NSArray *)payloadContactLists addObject:listCopy];
}

- (void)setPayloadContactLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadContactLists = self->_payloadContactLists;
  self->_payloadContactLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadContactLists);
}

- (void)addPayloadContactEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  payloadContactEventTriggers = self->_payloadContactEventTriggers;
  v8 = triggerCopy;
  if (!payloadContactEventTriggers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadContactEventTriggers;
    self->_payloadContactEventTriggers = array;

    triggerCopy = v8;
    payloadContactEventTriggers = self->_payloadContactEventTriggers;
  }

  [(NSArray *)payloadContactEventTriggers addObject:triggerCopy];
}

- (void)setPayloadContactEventTriggers:(id)triggers
{
  v4 = [triggers mutableCopy];
  payloadContactEventTriggers = self->_payloadContactEventTriggers;
  self->_payloadContactEventTriggers = v4;

  MEMORY[0x1EEE66BB8](v4, payloadContactEventTriggers);
}

- (void)addPayloadChargingConnectorType:(id)type
{
  typeCopy = type;
  payloadChargingConnectorTypes = self->_payloadChargingConnectorTypes;
  v8 = typeCopy;
  if (!payloadChargingConnectorTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadChargingConnectorTypes;
    self->_payloadChargingConnectorTypes = array;

    typeCopy = v8;
    payloadChargingConnectorTypes = self->_payloadChargingConnectorTypes;
  }

  [(NSArray *)payloadChargingConnectorTypes addObject:typeCopy];
}

- (void)setPayloadChargingConnectorTypes:(id)types
{
  v4 = [types mutableCopy];
  payloadChargingConnectorTypes = self->_payloadChargingConnectorTypes;
  self->_payloadChargingConnectorTypes = v4;

  MEMORY[0x1EEE66BB8](v4, payloadChargingConnectorTypes);
}

- (int)StringAsPayloadChangeAlarmStatusOperations:(id)operations
{
  operationsCopy = operations;
  if ([operationsCopy isEqualToString:@"ENABLE"])
  {
    v4 = 1;
  }

  else if ([operationsCopy isEqualToString:@"DISABLE"])
  {
    v4 = 2;
  }

  else if ([operationsCopy isEqualToString:@"DISMISS"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadChangeAlarmStatusOperationsAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284568 + (string - 1));
  }

  return v4;
}

- (void)addPayloadChangeAlarmStatusOperation:(int)operation
{
  if (operation != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadCarSignalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = 1;
  if (([identifiersCopy isEqualToString:@"AUDIBLE"] & 1) == 0)
  {
    if ([identifiersCopy isEqualToString:@"VISIBLE"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)payloadCarSignalIdentifiersAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"AUDIBLE";
  }

  else if (string == 2)
  {
    v4 = @"VISIBLE";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addPayloadCarSignalIdentifier:(int)identifier
{
  if (identifier != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadCarSeats:(id)seats
{
  seatsCopy = seats;
  if ([seatsCopy isEqualToString:@"DRIVER"])
  {
    v4 = 1;
  }

  else if ([seatsCopy isEqualToString:@"PASSENGER"])
  {
    v4 = 2;
  }

  else if ([seatsCopy isEqualToString:@"FRONT_LEFT"])
  {
    v4 = 8;
  }

  else if ([seatsCopy isEqualToString:@"FRONT_RIGHT"])
  {
    v4 = 9;
  }

  else if ([seatsCopy isEqualToString:@"FRONT"])
  {
    v4 = 10;
  }

  else if ([seatsCopy isEqualToString:@"REAR_LEFT"])
  {
    v4 = 16;
  }

  else if ([seatsCopy isEqualToString:@"REAR_RIGHT"])
  {
    v4 = 17;
  }

  else if ([seatsCopy isEqualToString:@"REAR"])
  {
    v4 = 18;
  }

  else if ([seatsCopy isEqualToString:@"THIRD_ROW_LEFT"])
  {
    v4 = 19;
  }

  else if ([seatsCopy isEqualToString:@"THIRD_ROW_RIGHT"])
  {
    v4 = 20;
  }

  else if ([seatsCopy isEqualToString:@"THIRD_ROW"])
  {
    v4 = 21;
  }

  else if ([seatsCopy isEqualToString:@"ALL"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadCarSeatsAsString:(int)string
{
  v4 = string - 1;
  if (string - 1) < 0x16 && ((0x3F8383u >> v4))
  {
    v5 = *(&off_1E72844B8 + v4);
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v5;
}

- (void)addPayloadCarSeat:(int)seat
{
  if (seat != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadCarDefrosters:(id)defrosters
{
  defrostersCopy = defrosters;
  if ([defrostersCopy isEqualToString:@"FRONT"])
  {
    v4 = 1;
  }

  else if ([defrostersCopy isEqualToString:@"REAR"])
  {
    v4 = 2;
  }

  else if ([defrostersCopy isEqualToString:@"ALL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadCarDefrostersAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72844A0 + (string - 1));
  }

  return v4;
}

- (void)addPayloadCarDefroster:(int)defroster
{
  if (defroster != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadCarAudioSources:(id)sources
{
  sourcesCopy = sources;
  if ([sourcesCopy isEqualToString:@"CARPLAY"])
  {
    v4 = 1;
  }

  else if ([sourcesCopy isEqualToString:@"IPOD"])
  {
    v4 = 2;
  }

  else if ([sourcesCopy isEqualToString:@"RADIO"])
  {
    v4 = 3;
  }

  else if ([sourcesCopy isEqualToString:@"BLUETOOTH"])
  {
    v4 = 4;
  }

  else if ([sourcesCopy isEqualToString:@"AUX"])
  {
    v4 = 5;
  }

  else if ([sourcesCopy isEqualToString:@"USB"])
  {
    v4 = 6;
  }

  else if ([sourcesCopy isEqualToString:@"MEMORY_CARD"])
  {
    v4 = 7;
  }

  else if ([sourcesCopy isEqualToString:@"OPTICAL_DRIVE"])
  {
    v4 = 8;
  }

  else if ([sourcesCopy isEqualToString:@"HARD_DRIVE"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadCarAudioSourcesAsString:(int)string
{
  if ((string - 1) >= 9)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284458 + (string - 1));
  }

  return v4;
}

- (void)addPayloadCarAudioSource:(int)source
{
  if (source != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadCarAirCirculationModes:(id)modes
{
  modesCopy = modes;
  v4 = 1;
  if (([modesCopy isEqualToString:@"FRESH_AIR"] & 1) == 0)
  {
    if ([modesCopy isEqualToString:@"RECIRCULATE_AIR"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)payloadCarAirCirculationModesAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"FRESH_AIR";
  }

  else if (string == 2)
  {
    v4 = @"RECIRCULATE_AIR";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addPayloadCarAirCirculationMode:(int)mode
{
  if (mode != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadCallRecordValue:(id)value
{
  valueCopy = value;
  payloadCallRecordValues = self->_payloadCallRecordValues;
  v8 = valueCopy;
  if (!payloadCallRecordValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadCallRecordValues;
    self->_payloadCallRecordValues = array;

    valueCopy = v8;
    payloadCallRecordValues = self->_payloadCallRecordValues;
  }

  [(NSArray *)payloadCallRecordValues addObject:valueCopy];
}

- (void)setPayloadCallRecordValues:(id)values
{
  v4 = [values mutableCopy];
  payloadCallRecordValues = self->_payloadCallRecordValues;
  self->_payloadCallRecordValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadCallRecordValues);
}

- (int)StringAsPayloadCallRecordTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"OUTGOING"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"MISSED"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"RECEIVED"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"LATEST"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"VOICEMAIL"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"RINGING"])
  {
    v4 = 8;
  }

  else if ([typesCopy isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 9;
  }

  else if ([typesCopy isEqualToString:@"ON_HOLD"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (id)payloadCallRecordTypesAsString:(int)string
{
  v4 = string - 2;
  if (string - 2) < 9 && ((0x1EFu >> v4))
  {
    v5 = *(&off_1E7284410 + v4);
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v5;
}

- (void)addPayloadCallRecordType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadCallRecordFilter:(id)filter
{
  filterCopy = filter;
  payloadCallRecordFilters = self->_payloadCallRecordFilters;
  v8 = filterCopy;
  if (!payloadCallRecordFilters)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadCallRecordFilters;
    self->_payloadCallRecordFilters = array;

    filterCopy = v8;
    payloadCallRecordFilters = self->_payloadCallRecordFilters;
  }

  [(NSArray *)payloadCallRecordFilters addObject:filterCopy];
}

- (void)setPayloadCallRecordFilters:(id)filters
{
  v4 = [filters mutableCopy];
  payloadCallRecordFilters = self->_payloadCallRecordFilters;
  self->_payloadCallRecordFilters = v4;

  MEMORY[0x1EEE66BB8](v4, payloadCallRecordFilters);
}

- (void)addPayloadCallGroupConversation:(id)conversation
{
  conversationCopy = conversation;
  payloadCallGroupConversations = self->_payloadCallGroupConversations;
  v8 = conversationCopy;
  if (!payloadCallGroupConversations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadCallGroupConversations;
    self->_payloadCallGroupConversations = array;

    conversationCopy = v8;
    payloadCallGroupConversations = self->_payloadCallGroupConversations;
  }

  [(NSArray *)payloadCallGroupConversations addObject:conversationCopy];
}

- (void)setPayloadCallGroupConversations:(id)conversations
{
  v4 = [conversations mutableCopy];
  payloadCallGroupConversations = self->_payloadCallGroupConversations;
  self->_payloadCallGroupConversations = v4;

  MEMORY[0x1EEE66BB8](v4, payloadCallGroupConversations);
}

- (void)addPayloadCallGroup:(id)group
{
  groupCopy = group;
  payloadCallGroups = self->_payloadCallGroups;
  v8 = groupCopy;
  if (!payloadCallGroups)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadCallGroups;
    self->_payloadCallGroups = array;

    groupCopy = v8;
    payloadCallGroups = self->_payloadCallGroups;
  }

  [(NSArray *)payloadCallGroups addObject:groupCopy];
}

- (void)setPayloadCallGroups:(id)groups
{
  v4 = [groups mutableCopy];
  payloadCallGroups = self->_payloadCallGroups;
  self->_payloadCallGroups = v4;

  MEMORY[0x1EEE66BB8](v4, payloadCallGroups);
}

- (int)StringAsPayloadCallDestinationTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"NORMAL_DESTINATION"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"EMERGENCY_DESTINATION"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"VOICEMAIL_DESTINATION"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"REDIAL_DESTINATION"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"CALL_BACK_DESTINATION"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadCallDestinationTypesAsString:(int)string
{
  if ((string - 1) >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72843E8 + (string - 1));
  }

  return v4;
}

- (void)addPayloadCallDestinationType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadCallCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v4 = 1;
  if (([capabilitiesCopy isEqualToString:@"AUDIO_CALL"] & 1) == 0)
  {
    if ([capabilitiesCopy isEqualToString:@"VIDEO_CALL"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)payloadCallCapabilitiesAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"AUDIO_CALL";
  }

  else if (string == 2)
  {
    v4 = @"VIDEO_CALL";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addPayloadCallCapability:(int)capability
{
  if (capability != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadCallAudioRoutes:(id)routes
{
  routesCopy = routes;
  if ([routesCopy isEqualToString:@"SPEAKERPHONE_AUDIO_ROUTE"])
  {
    v4 = 2;
  }

  else if ([routesCopy isEqualToString:@"BLUETOOTH_AUDIO_ROUTE"])
  {
    v4 = 3;
  }

  else if ([routesCopy isEqualToString:@"HEY_SIRI_AUDIO_ROUTE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (id)payloadCallAudioRoutesAsString:(int)string
{
  if ((string - 2) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72843D0 + (string - 2));
  }

  return v4;
}

- (void)addPayloadCallAudioRoute:(int)route
{
  if (route != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadCalendarEvent:(id)event
{
  eventCopy = event;
  payloadCalendarEvents = self->_payloadCalendarEvents;
  v8 = eventCopy;
  if (!payloadCalendarEvents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadCalendarEvents;
    self->_payloadCalendarEvents = array;

    eventCopy = v8;
    payloadCalendarEvents = self->_payloadCalendarEvents;
  }

  [(NSArray *)payloadCalendarEvents addObject:eventCopy];
}

- (void)setPayloadCalendarEvents:(id)events
{
  v4 = [events mutableCopy];
  payloadCalendarEvents = self->_payloadCalendarEvents;
  self->_payloadCalendarEvents = v4;

  MEMORY[0x1EEE66BB8](v4, payloadCalendarEvents);
}

- (int)StringAsPayloadBoundedSettingValues:(id)values
{
  valuesCopy = values;
  if ([valuesCopy isEqualToString:@"MIN"])
  {
    v4 = 1;
  }

  else if ([valuesCopy isEqualToString:@"MEDIAN"])
  {
    v4 = 2;
  }

  else if ([valuesCopy isEqualToString:@"MAX"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadBoundedSettingValuesAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72843B8 + (string - 1));
  }

  return v4;
}

- (void)addPayloadBoundedSettingValue:(int)value
{
  if (value != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadBinarySettingValues:(id)values
{
  valuesCopy = values;
  if ([valuesCopy isEqualToString:@"ON"])
  {
    v4 = 1;
  }

  else if ([valuesCopy isEqualToString:@"OFF"])
  {
    v4 = 2;
  }

  else if ([valuesCopy isEqualToString:@"TOGGLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadBinarySettingValuesAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72843A0 + (string - 1));
  }

  return v4;
}

- (void)addPayloadBinarySettingValue:(int)value
{
  if (value != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadBillTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"AUTO_INSURANCE"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"CABLE"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"CAR_LEASE"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"CAR_LOAN"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"CREDIT_CARD"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"ELECTRICITY"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"GAS"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"GARBAGE_AND_RECYCLING"])
  {
    v4 = 8;
  }

  else if ([typesCopy isEqualToString:@"HEALTH_INSURANCE"])
  {
    v4 = 9;
  }

  else if ([typesCopy isEqualToString:@"HOME_INSURANCE"])
  {
    v4 = 10;
  }

  else if ([typesCopy isEqualToString:@"INTERNET"])
  {
    v4 = 11;
  }

  else if ([typesCopy isEqualToString:@"LIFE_INSURANCE"])
  {
    v4 = 12;
  }

  else if ([typesCopy isEqualToString:@"MORTGAGE"])
  {
    v4 = 13;
  }

  else if ([typesCopy isEqualToString:@"MUSIC_STREAMING"])
  {
    v4 = 14;
  }

  else if ([typesCopy isEqualToString:@"PHONE"])
  {
    v4 = 15;
  }

  else if ([typesCopy isEqualToString:@"RENT"])
  {
    v4 = 16;
  }

  else if ([typesCopy isEqualToString:@"SEWER"])
  {
    v4 = 17;
  }

  else if ([typesCopy isEqualToString:@"STUDENT_LOAN"])
  {
    v4 = 18;
  }

  else if ([typesCopy isEqualToString:@"TRAFFIC_TICKET"])
  {
    v4 = 19;
  }

  else if ([typesCopy isEqualToString:@"TUITION"])
  {
    v4 = 20;
  }

  else if ([typesCopy isEqualToString:@"UTILITIES"])
  {
    v4 = 21;
  }

  else if ([typesCopy isEqualToString:@"WATER"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadBillTypesAsString:(int)string
{
  if ((string - 1) >= 0x16)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72842F0 + (string - 1));
  }

  return v4;
}

- (void)addPayloadBillType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadBillPayeeValue:(id)value
{
  valueCopy = value;
  payloadBillPayeeValues = self->_payloadBillPayeeValues;
  v8 = valueCopy;
  if (!payloadBillPayeeValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadBillPayeeValues;
    self->_payloadBillPayeeValues = array;

    valueCopy = v8;
    payloadBillPayeeValues = self->_payloadBillPayeeValues;
  }

  [(NSArray *)payloadBillPayeeValues addObject:valueCopy];
}

- (void)setPayloadBillPayeeValues:(id)values
{
  v4 = [values mutableCopy];
  payloadBillPayeeValues = self->_payloadBillPayeeValues;
  self->_payloadBillPayeeValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadBillPayeeValues);
}

- (void)addPayloadBillDetailsValue:(id)value
{
  valueCopy = value;
  payloadBillDetailsValues = self->_payloadBillDetailsValues;
  v8 = valueCopy;
  if (!payloadBillDetailsValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadBillDetailsValues;
    self->_payloadBillDetailsValues = array;

    valueCopy = v8;
    payloadBillDetailsValues = self->_payloadBillDetailsValues;
  }

  [(NSArray *)payloadBillDetailsValues addObject:valueCopy];
}

- (void)setPayloadBillDetailsValues:(id)values
{
  v4 = [values mutableCopy];
  payloadBillDetailsValues = self->_payloadBillDetailsValues;
  self->_payloadBillDetailsValues = v4;

  MEMORY[0x1EEE66BB8](v4, payloadBillDetailsValues);
}

- (int)StringAsPayloadBalanceTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"MONEY"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"POINTS"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"MILES"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadBalanceTypesAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72842D8 + (string - 1));
  }

  return v4;
}

- (void)addPayloadBalanceType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadArchivedObject:(id)object
{
  objectCopy = object;
  payloadArchivedObjects = self->_payloadArchivedObjects;
  v8 = objectCopy;
  if (!payloadArchivedObjects)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadArchivedObjects;
    self->_payloadArchivedObjects = array;

    objectCopy = v8;
    payloadArchivedObjects = self->_payloadArchivedObjects;
  }

  [(NSArray *)payloadArchivedObjects addObject:objectCopy];
}

- (void)setPayloadArchivedObjects:(id)objects
{
  v4 = [objects mutableCopy];
  payloadArchivedObjects = self->_payloadArchivedObjects;
  self->_payloadArchivedObjects = v4;

  MEMORY[0x1EEE66BB8](v4, payloadArchivedObjects);
}

- (void)addPayloadAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  payloadAppIdentifiers = self->_payloadAppIdentifiers;
  v8 = identifierCopy;
  if (!payloadAppIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadAppIdentifiers;
    self->_payloadAppIdentifiers = array;

    identifierCopy = v8;
    payloadAppIdentifiers = self->_payloadAppIdentifiers;
  }

  [(NSArray *)payloadAppIdentifiers addObject:identifierCopy];
}

- (void)setPayloadAppIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  payloadAppIdentifiers = self->_payloadAppIdentifiers;
  self->_payloadAppIdentifiers = v4;

  MEMORY[0x1EEE66BB8](v4, payloadAppIdentifiers);
}

- (void)addPayloadAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  payloadAnnouncements = self->_payloadAnnouncements;
  v8 = announcementCopy;
  if (!payloadAnnouncements)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadAnnouncements;
    self->_payloadAnnouncements = array;

    announcementCopy = v8;
    payloadAnnouncements = self->_payloadAnnouncements;
  }

  [(NSArray *)payloadAnnouncements addObject:announcementCopy];
}

- (void)setPayloadAnnouncements:(id)announcements
{
  v4 = [announcements mutableCopy];
  payloadAnnouncements = self->_payloadAnnouncements;
  self->_payloadAnnouncements = v4;

  MEMORY[0x1EEE66BB8](v4, payloadAnnouncements);
}

- (int)StringAsPayloadAlarmSearchTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"FIND"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"WHEN_IS"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"HOW_LONG_UNTIL"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"READ"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"HOW_MANY"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadAlarmSearchTypesAsString:(int)string
{
  if (string >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72842B0 + string);
  }

  return v4;
}

- (void)addPayloadAlarmSearchType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadAlarmSearch:(id)search
{
  searchCopy = search;
  payloadAlarmSearchs = self->_payloadAlarmSearchs;
  v8 = searchCopy;
  if (!payloadAlarmSearchs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadAlarmSearchs;
    self->_payloadAlarmSearchs = array;

    searchCopy = v8;
    payloadAlarmSearchs = self->_payloadAlarmSearchs;
  }

  [(NSArray *)payloadAlarmSearchs addObject:searchCopy];
}

- (void)setPayloadAlarmSearchs:(id)searchs
{
  v4 = [searchs mutableCopy];
  payloadAlarmSearchs = self->_payloadAlarmSearchs;
  self->_payloadAlarmSearchs = v4;

  MEMORY[0x1EEE66BB8](v4, payloadAlarmSearchs);
}

- (int)StringAsPayloadAlarmRepeatSchedules:(id)schedules
{
  schedulesCopy = schedules;
  if ([schedulesCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([schedulesCopy isEqualToString:@"MONDAY"])
  {
    v4 = 1;
  }

  else if ([schedulesCopy isEqualToString:@"TUESDAY"])
  {
    v4 = 2;
  }

  else if ([schedulesCopy isEqualToString:@"WEDNESDAY"])
  {
    v4 = 3;
  }

  else if ([schedulesCopy isEqualToString:@"THURSDAY"])
  {
    v4 = 4;
  }

  else if ([schedulesCopy isEqualToString:@"FRIDAY"])
  {
    v4 = 5;
  }

  else if ([schedulesCopy isEqualToString:@"SATURDAY"])
  {
    v4 = 6;
  }

  else if ([schedulesCopy isEqualToString:@"SUNDAY"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadAlarmRepeatSchedulesAsString:(int)string
{
  if (string >= 8)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284270 + string);
  }

  return v4;
}

- (void)addPayloadAlarmRepeatSchedule:(int)schedule
{
  if (schedule != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsPayloadAlarmPeriods:(id)periods
{
  periodsCopy = periods;
  if ([periodsCopy isEqualToString:@"UNKNOWN_PERIOD"])
  {
    v4 = 0;
  }

  else if ([periodsCopy isEqualToString:@"MORNING"])
  {
    v4 = 1;
  }

  else if ([periodsCopy isEqualToString:@"AFTERNOON"])
  {
    v4 = 2;
  }

  else if ([periodsCopy isEqualToString:@"EVENING"])
  {
    v4 = 3;
  }

  else if ([periodsCopy isEqualToString:@"NIGHT"])
  {
    v4 = 4;
  }

  else if ([periodsCopy isEqualToString:@"NOON"])
  {
    v4 = 5;
  }

  else if ([periodsCopy isEqualToString:@"MIDNIGHT"])
  {
    v4 = 6;
  }

  else if ([periodsCopy isEqualToString:@"TODAY"])
  {
    v4 = 7;
  }

  else if ([periodsCopy isEqualToString:@"TOMORROW"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)payloadAlarmPeriodsAsString:(int)string
{
  if (string >= 9)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E7284228 + string);
  }

  return v4;
}

- (void)addPayloadAlarmPeriod:(int)period
{
  if (period != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addPayloadAlarm:(id)alarm
{
  alarmCopy = alarm;
  payloadAlarms = self->_payloadAlarms;
  v8 = alarmCopy;
  if (!payloadAlarms)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadAlarms;
    self->_payloadAlarms = array;

    alarmCopy = v8;
    payloadAlarms = self->_payloadAlarms;
  }

  [(NSArray *)payloadAlarms addObject:alarmCopy];
}

- (void)setPayloadAlarms:(id)alarms
{
  v4 = [alarms mutableCopy];
  payloadAlarms = self->_payloadAlarms;
  self->_payloadAlarms = v4;

  MEMORY[0x1EEE66BB8](v4, payloadAlarms);
}

- (void)addPayloadActivityList:(id)list
{
  listCopy = list;
  payloadActivityLists = self->_payloadActivityLists;
  v8 = listCopy;
  if (!payloadActivityLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadActivityLists;
    self->_payloadActivityLists = array;

    listCopy = v8;
    payloadActivityLists = self->_payloadActivityLists;
  }

  [(NSArray *)payloadActivityLists addObject:listCopy];
}

- (void)setPayloadActivityLists:(id)lists
{
  v4 = [lists mutableCopy];
  payloadActivityLists = self->_payloadActivityLists;
  self->_payloadActivityLists = v4;

  MEMORY[0x1EEE66BB8](v4, payloadActivityLists);
}

- (void)addPayloadActivity:(id)activity
{
  activityCopy = activity;
  payloadActivities = self->_payloadActivities;
  v8 = activityCopy;
  if (!payloadActivities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_payloadActivities;
    self->_payloadActivities = array;

    activityCopy = v8;
    payloadActivities = self->_payloadActivities;
  }

  [(NSArray *)payloadActivities addObject:activityCopy];
}

- (void)setPayloadActivities:(id)activities
{
  v4 = [activities mutableCopy];
  payloadActivities = self->_payloadActivities;
  self->_payloadActivities = v4;

  MEMORY[0x1EEE66BB8](v4, payloadActivities);
}

- (int)StringAsPayloadAccountTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"CHECKING"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"CREDIT"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"DEBIT"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"INVESTMENT"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"MORTGAGE"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"PREPAID"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"SAVING"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)payloadAccountTypesAsString:(int)string
{
  if ((string - 1) >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_1E72841F0 + (string - 1));
  }

  return v4;
}

- (void)addPayloadAccountType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end