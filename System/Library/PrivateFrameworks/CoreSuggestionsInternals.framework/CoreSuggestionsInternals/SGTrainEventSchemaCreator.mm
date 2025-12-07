@interface SGTrainEventSchemaCreator
- (BOOL)checkCompletenessOfSchema:(id)schema;
- (BOOL)reservationIDPresentInEventSchema:(id)schema;
- (id)processDURawEvent:(id)event;
@end

@implementation SGTrainEventSchemaCreator

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
  v4 = [schemaCopy objectForKeyedSubscript:@"reservationId"];
  v5 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v6 = [v5 objectForKeyedSubscript:@"provider"];
  v38 = [v6 objectForKeyedSubscript:@"name"];

  v7 = [schemaCopy objectForKeyedSubscript:@"reservationStatus"];
  v36 = [v7 isEqualToString:@"http://schema.org/ReservationCancelled"];
  v37 = v7;
  v35 = [v7 isEqualToString:@"http://schema.org/ReservationConfirmed"];
  v8 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v9 = [v8 objectForKeyedSubscript:@"departureStation"];
  v10 = [v9 objectForKeyedSubscript:@"name"];

  v11 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v12 = [v11 objectForKeyedSubscript:@"departureStation"];
  v13 = [v12 objectForKeyedSubscript:@"address"];

  v14 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v15 = [v14 objectForKeyedSubscript:@"arrivalStation"];
  v16 = [v15 objectForKeyedSubscript:@"name"];

  v17 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];

  v18 = [v17 objectForKeyedSubscript:@"arrivalStation"];
  v19 = [v18 objectForKeyedSubscript:@"address"];

  if (v10)
  {
    null = [MEMORY[0x277CBEB68] null];
    HIDWORD(v34) = v10 != null;

    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    HIDWORD(v34) = 0;
    if (v13)
    {
LABEL_3:
      null2 = [MEMORY[0x277CBEB68] null];
      LODWORD(v34) = v13 != null2;

      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  LODWORD(v34) = 0;
  if (v16)
  {
LABEL_4:
    null3 = [MEMORY[0x277CBEB68] null];
    v23 = v16 != null3;

    if (v19)
    {
      goto LABEL_5;
    }

LABEL_10:
    v25 = 0;
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v23 = 0;
  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_5:
  null4 = [MEMORY[0x277CBEB68] null];
  v25 = v19 != null4;

  if (v4)
  {
LABEL_6:
    null5 = [MEMORY[0x277CBEB68] null];
    v27 = v4;
    LOBYTE(v4) = v4 != null5;

    goto LABEL_12;
  }

LABEL_11:
  v27 = v4;
LABEL_12:
  if (v38)
  {
    null6 = [MEMORY[0x277CBEB68] null];
    v29 = v38 != null6;
  }

  else
  {
    v29 = 0;
  }

  v30 = BYTE4(v34) | v34;
  v31 = v36;
  if (!(v4 & 1 | ((v36 & 1) == 0)))
  {
    v31 = v29 & v30;
  }

  v32 = (v30 & (v23 || v25) | v31) & (v36 | v35 | v4);

  return v32 & 1;
}

- (id)processDURawEvent:(id)event
{
  v85[10] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066B8]];
  v5 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D064B8]];
  v6 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066A8]];
  v7 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D067B0]];
  v8 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06780]];
  v71 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06778]];
  v58 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06760]];
  v57 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06748]];
  v56 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06758]];
  v55 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06750]];
  v54 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06768]];
  v9 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06770]];
  v70 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065C0]];
  v69 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065B8]];
  v53 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065A0]];
  v52 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06588]];
  v51 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06598]];
  v50 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06590]];
  v49 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065A8]];
  v68 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065B0]];
  v67 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06798]];
  v10 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065F8]];
  v48 = v10;
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    capitalizedString = [v11 capitalizedString];
    v66 = [v12 initWithFormat:@"http://schema.org/Reservation%@", capitalizedString];
  }

  else
  {
    v66 = 0;
  }

  null13 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06578]];
  v15 = [SGEventSchemaCreator isTimePresentInDURawDateTime:v9];
  v16 = &unk_2847492C0;
  if (v15)
  {
    v16 = &unk_2847492A8;
  }

  v63 = v16;
  v84[0] = @"@context";
  v84[1] = @"@type";
  v85[0] = @"http://schema.org";
  v85[1] = @"http://schema.org/TrainReservation";
  v84[2] = @"reservationId";
  null = v4;
  if (!v4)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v65 = v9;
  v43 = null;
  v85[2] = null;
  v84[3] = @"reservationStatus";
  null2 = v66;
  if (!v66)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v64 = null13;
  v42 = null2;
  v85[3] = null2;
  v84[4] = @"underName";
  v83[0] = @"http://schema.org/Person";
  v82[0] = @"@type";
  v82[1] = @"name";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v41 = null3;
  v83[1] = null3;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
  v85[4] = v47;
  v84[5] = @"reservationFor";
  v81[0] = @"http://schema.org/TrainTrip";
  v80[0] = @"@type";
  v80[1] = @"departureStation";
  v79[0] = @"http://schema.org/TrainStation";
  null4 = v8;
  v78[0] = @"@type";
  v78[1] = @"name";
  if (!v8)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v40 = null4;
  v79[1] = null4;
  v78[2] = @"address";
  null5 = v71;
  if (!v71)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v39 = null5;
  v79[2] = null5;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];
  v81[1] = v46;
  v80[2] = @"departureTime";
  null6 = v9;
  if (!v9)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v38 = null6;
  v81[2] = null6;
  v80[3] = @"arrivalStation";
  v77[0] = @"http://schema.org/TrainStation";
  v76[0] = @"@type";
  v76[1] = @"name";
  null7 = v70;
  if (!v70)
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v37 = null7;
  v77[1] = null7;
  v76[2] = @"address";
  null8 = v69;
  if (!v69)
  {
    null8 = [MEMORY[0x277CBEB68] null];
  }

  v59 = v8;
  v60 = v7;
  v36 = null8;
  v77[2] = null8;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v81[3] = v45;
  v80[4] = @"arrivalTime";
  null9 = v68;
  if (!v68)
  {
    null9 = [MEMORY[0x277CBEB68] null];
  }

  v61 = v6;
  v62 = v4;
  v35 = null9;
  v81[4] = null9;
  v80[5] = @"provider";
  v74[1] = @"name";
  v75[0] = @"http://schema.org/Organization";
  v74[0] = @"@type";
  null10 = v6;
  if (!v6)
  {
    null10 = [MEMORY[0x277CBEB68] null];
  }

  v75[1] = null10;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
  v81[5] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:6];
  v85[5] = v28;
  v84[6] = @"broker";
  v72[1] = @"name";
  v73[0] = @"http://schema.org/Organization";
  v72[0] = @"@type";
  null11 = v5;
  v30 = v5;
  if (!v5)
  {
    null11 = [MEMORY[0x277CBEB68] null];
  }

  v73[1] = null11;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
  v85[6] = v31;
  v84[7] = @"totalPrice";
  null12 = v67;
  if (!v67)
  {
    null12 = [MEMORY[0x277CBEB68] null];
  }

  v85[7] = null12;
  v84[8] = @"DetailedEventStatus";
  v33 = null13;
  if (!null13)
  {
    null13 = [MEMORY[0x277CBEB68] null];
  }

  v84[9] = @"startTimeIsUnknown";
  v85[8] = null13;
  v85[9] = v63;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:10];
  if (!v33)
  {
  }

  if (!v67)
  {
  }

  if (!v30)
  {
  }

  if (!v61)
  {
  }

  if (!v68)
  {
  }

  if (!v69)
  {
  }

  if (v70)
  {
    if (v65)
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (v65)
    {
      goto LABEL_46;
    }
  }

LABEL_46:
  if (v71)
  {
    if (v59)
    {
      goto LABEL_48;
    }
  }

  else
  {

    if (v59)
    {
      goto LABEL_48;
    }
  }

LABEL_48:
  if (!v60)
  {
  }

  if (v66)
  {
    if (v62)
    {
      goto LABEL_52;
    }
  }

  else
  {

    if (v62)
    {
      goto LABEL_52;
    }
  }

LABEL_52:

  return v44;
}

@end