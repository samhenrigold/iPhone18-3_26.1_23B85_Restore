@interface ATXHeuristicEventTimeUtilities
- (ATXHeuristicEventTimeUtilities)init;
- (id)travelTimeToEvent:(id)event destination:(id)destination transportType:(id)type heuristicDevice:(id)device;
@end

@implementation ATXHeuristicEventTimeUtilities

- (ATXHeuristicEventTimeUtilities)init
{
  v3.receiver = self;
  v3.super_class = ATXHeuristicEventTimeUtilities;
  return [(ATXHeuristicEventTimeUtilities *)&v3 init];
}

- (id)travelTimeToEvent:(id)event destination:(id)destination transportType:(id)type heuristicDevice:(id)device
{
  v60 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  destinationCopy = destination;
  typeCopy = type;
  deviceCopy = device;
  v13 = deviceCopy;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__17;
  v54 = __Block_byref_object_dispose__17;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__17;
  v48 = __Block_byref_object_dispose__17;
  v49 = 0;
  if (eventCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startDate = [eventCopy startDate];
    v16 = [date compare:startDate] == 1;

    if (v16)
    {
      v18 = __atxlog_handle_context_heuristic(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ATXHeuristicEventTimeUtilities travelTimeToEvent:destination:transportType:heuristicDevice:];
      }
    }

    startDate2 = [eventCopy startDate];
    v20 = [startDate2 dateByAddingTimeInterval:-600.0];

LABEL_12:
    v27 = [[ATXEventTravelTimeDataSource alloc] initWithDevice:v13];
    objc_storeStrong(&self->_event, event);
    objc_storeStrong(&self->_dataSource, v27);
    objc_storeStrong(&self->_destination, destination);
    objc_storeStrong(&self->_transportType, type);
    v28 = dispatch_semaphore_create(0);
    semaphore = self->_semaphore;
    self->_semaphore = v28;

    v31 = __atxlog_handle_context_heuristic(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      eventIdentifier = [eventCopy eventIdentifier];
      name = [(CLPlacemark *)self->_destination name];
      *buf = 138412546;
      v57 = eventIdentifier;
      v58 = 2112;
      v59 = name;
      _os_log_impl(&dword_23E3EA000, v31, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEventTimeUtilities: Calling datasource for time (Eid: %@), D:(%@)", buf, 0x16u);
    }

    eventIdentifier2 = [(EKEvent *)self->_event eventIdentifier];
    location = [(CLPlacemark *)self->_destination location];
    transportType = self->_transportType;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __94__ATXHeuristicEventTimeUtilities_travelTimeToEvent_destination_transportType_heuristicDevice___block_invoke;
    v43[3] = &unk_278C3D5B8;
    v43[5] = &v50;
    v43[6] = &v44;
    v43[4] = self;
    [(ATXEventTravelTimeDataSource *)v27 travelTimeInfoForEventID:eventIdentifier2 location:location expectedArrivalDate:v20 transportType:transportType localOnlyAfterFirstUpdate:1 callback:v43];

    v37 = [MEMORY[0x277D425A0] waitForSemaphore:self->_semaphore timeoutSeconds:1.0];
    if (v45[5])
    {
      v38 = __atxlog_handle_context_heuristic(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [ATXHeuristicEventTimeUtilities travelTimeToEvent:destination:transportType:heuristicDevice:];
      }
    }

    v39 = v51[5];
    goto LABEL_19;
  }

  v21 = __atxlog_handle_context_heuristic(deviceCopy);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEventTimeUtilities: Event is nil, setting destination expiry time to an hour from now", buf, 2u);
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  v20 = [date2 dateByAddingTimeInterval:3600.0];

  v24 = __atxlog_handle_context_heuristic(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [destinationCopy name];
    *buf = 138412290;
    v57 = name2;
    _os_log_impl(&dword_23E3EA000, v24, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEventTimeUtilities: Determining travel time: (event is nil), D:(%@)", buf, 0xCu);
  }

  if (destinationCopy)
  {
    goto LABEL_12;
  }

  v27 = __atxlog_handle_context_heuristic(v26);
  if (os_log_type_enabled(&v27->super, OS_LOG_TYPE_ERROR))
  {
    [ATXHeuristicEventTimeUtilities travelTimeToEvent:destination:transportType:heuristicDevice:];
  }

  v39 = 0;
LABEL_19:

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  return v39;
}

void __94__ATXHeuristicEventTimeUtilities_travelTimeToEvent_destination_transportType_heuristicDevice___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1[4] + 40));
}

@end