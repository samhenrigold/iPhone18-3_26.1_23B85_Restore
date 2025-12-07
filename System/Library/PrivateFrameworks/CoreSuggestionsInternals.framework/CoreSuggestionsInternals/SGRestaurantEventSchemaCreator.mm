@interface SGRestaurantEventSchemaCreator
- (BOOL)checkCompletenessOfSchema:(id)schema;
- (BOOL)reservationIDPresentInEventSchema:(id)schema;
- (id)processDURawEvent:(id)event;
@end

@implementation SGRestaurantEventSchemaCreator

- (BOOL)reservationIDPresentInEventSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"reservationId"];
  if (v3)
  {
    null = [MEMORY[0x277CBEB68] null];
    v5 = v3 != null;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)checkCompletenessOfSchema:(id)schema
{
  schemaCopy = schema;
  v4 = [schemaCopy objectForKeyedSubscript:@"reservationStatus"];
  v5 = [schemaCopy objectForKeyedSubscript:@"reservationId"];
  v6 = [schemaCopy objectForKeyedSubscript:@"startTime"];
  v7 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];

  v8 = [v7 objectForKeyedSubscript:@"name"];

  v9 = [v4 isEqualToString:@"http://schema.org/ReservationCancelled"];
  v10 = [v4 isEqualToString:@"http://schema.org/ReservationConfirmed"];
  if (v5)
  {
    null = [MEMORY[0x277CBEB68] null];
    v12 = v5 != null;

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  null2 = [MEMORY[0x277CBEB68] null];
  v14 = v6 != null2;

  if (v8)
  {
LABEL_4:
    null3 = [MEMORY[0x277CBEB68] null];
    v16 = v8 != null3;

    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  if (v14 || (v9 & 1) == 0)
  {
    if (v12 || !v14 || !v16)
    {
      v17 = v14 && v16;
    }

    else
    {
      v17 = v10 | v9;
    }
  }

  else
  {
    v17 = v12 && v16;
  }

  return v17 & 1;
}

- (id)processDURawEvent:(id)event
{
  v55[11] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v47 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D064B8]];
  v4 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066A8]];
  v5 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066B8]];
  v6 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D067B0]];
  v7 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06678]];
  v46 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066A0]];
  v8 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06770]];
  v45 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066B0]];
  v9 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065F8]];
  v37 = v9;
  if (v9)
  {
    v10 = v9;
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    capitalizedString = [v10 capitalizedString];
    v44 = [v11 initWithFormat:@"http://schema.org/Reservation%@", capitalizedString];
  }

  else
  {
    v44 = 0;
  }

  v13 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06578]];
  v14 = [SGEventSchemaCreator isTimePresentInDURawDateTime:v8];
  v15 = &unk_284749AD0;
  if (v14)
  {
    v15 = &unk_284749AB8;
  }

  v42 = v15;
  v54[0] = @"@context";
  v54[1] = @"@type";
  v55[0] = @"http://schema.org";
  v55[1] = @"http://schema.org/FoodEstablishmentReservation";
  v54[2] = @"reservationId";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v35 = null;
  v55[2] = null;
  v54[3] = @"reservationStatus";
  null2 = v44;
  if (!v44)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v34 = null2;
  v55[3] = null2;
  v54[4] = @"underName";
  v52[0] = @"@type";
  v52[1] = @"name";
  v53[0] = @"http://schema.org/Person";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v33 = null3;
  v53[1] = null3;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v55[4] = v36;
  v54[5] = @"startTime";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v40 = v5;
  v32 = null4;
  v55[5] = null4;
  v54[6] = @"partySize";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v31 = null5;
  v55[6] = null5;
  v54[7] = @"reservationFor";
  v51[0] = @"http://schema.org/FoodEstablishment";
  v50[0] = @"@type";
  v50[1] = @"name";
  null6 = v4;
  v41 = v4;
  if (!v4)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v39 = v6;
  v30 = null6;
  v51[1] = null6;
  v50[2] = @"address";
  null7 = v46;
  if (!v46)
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v43 = v13;
  v38 = v7;
  v51[2] = null7;
  v50[3] = @"telephone";
  null8 = v45;
  if (!v45)
  {
    null8 = [MEMORY[0x277CBEB68] null];
  }

  v51[3] = null8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:4];
  v55[7] = v24;
  v54[8] = @"broker";
  v48[1] = @"name";
  v49[0] = @"http://schema.org/Organization";
  v48[0] = @"@type";
  null9 = v47;
  if (!v47)
  {
    null9 = [MEMORY[0x277CBEB68] null];
  }

  v49[1] = null9;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v55[8] = v26;
  v54[9] = @"DetailedEventStatus";
  null10 = v43;
  if (!v43)
  {
    null10 = [MEMORY[0x277CBEB68] null];
  }

  v54[10] = @"startTimeIsUnknown";
  v55[9] = null10;
  v55[10] = v42;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:11];
  if (!v43)
  {
  }

  if (!v47)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  if (v41)
  {
    if (v38)
    {
      goto LABEL_36;
    }
  }

  else
  {

    if (v38)
    {
      goto LABEL_36;
    }
  }

LABEL_36:
  if (!v8)
  {
  }

  if (!v39)
  {
  }

  if (v44)
  {
    if (v40)
    {
      goto LABEL_42;
    }
  }

  else
  {

    if (v40)
    {
      goto LABEL_42;
    }
  }

LABEL_42:

  return v28;
}

@end