@interface HDSPSGHelper
- (HDSPSGHelper)initWithHome:(id)home;
- (id)allPSGsInRoom:(id)room;
- (id)fetchPSG:(id)g;
- (id)roomForStereoPair:(id)pair;
- (id)roomsForPSG:(id)g;
@end

@implementation HDSPSGHelper

- (HDSPSGHelper)initWithHome:(id)home
{
  v76 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v72.receiver = self;
  v72.super_class = HDSPSGHelper;
  v6 = [(HDSPSGHelper *)&v72 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentHome, home);
    accessories = [(HMHome *)v7->_currentHome accessories];
    v9 = [accessories copy];
    allHomePods = v7->_allHomePods;
    p_allHomePods = &v7->_allHomePods;
    v7->_allHomePods = v9;

    mediaSystems = [(HMHome *)v7->_currentHome mediaSystems];
    v12 = [mediaSystems copy];
    allStereoPairs = v7->_allStereoPairs;
    p_allStereoPairs = &v7->_allStereoPairs;
    v7->_allStereoPairs = v12;

    if (gLogCategory_HDSPSGHelper <= 30)
    {
      if (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize())
      {
        [HDSPSGHelper initWithHome:];
      }

      if (gLogCategory_HDSPSGHelper <= 30)
      {
        if (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize())
        {
          [HDSPSGHelper initWithHome:];
        }

        if (gLogCategory_HDSPSGHelper <= 30)
        {
          if (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize())
          {
            [HDSPSGHelper initWithHome:];
          }

          if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
          {
            [HDSPSGHelper initWithHome:];
          }
        }
      }
    }

    v49 = homeCopy;
    v14 = objc_opt_new();
    psgStereoPairMap = v7->_psgStereoPairMap;
    p_psgStereoPairMap = &v7->_psgStereoPairMap;
    v7->_psgStereoPairMap = v14;

    v16 = objc_opt_new();
    v48 = v7;
    psgHomePodMap = v7->_psgHomePodMap;
    p_psgHomePodMap = &v7->_psgHomePodMap;
    *p_psgHomePodMap = v16;

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v55 = p_psgHomePodMap;
    obj = *(p_psgHomePodMap - 3);
    v56 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v56)
    {
      v51 = *v69;
      do
      {
        v19 = 0;
        do
        {
          if (*v69 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v57 = v19;
          v20 = *(*(&v68 + 1) + 8 * v19);
          identifier = [v20 identifier];
          destinationIdentifiers = [v20 destinationIdentifiers];
          v58 = objc_opt_new();
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v22 = *p_allHomePods;
          v23 = [v22 countByEnumeratingWithState:&v64 objects:v74 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v65;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v65 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v64 + 1) + 8 * i);
                audioDestinationIdentifier = [v27 audioDestinationIdentifier];
                if (audioDestinationIdentifier)
                {
                  v29 = audioDestinationIdentifier;
                  audioDestinationIdentifier2 = [v27 audioDestinationIdentifier];
                  v31 = [destinationIdentifiers containsObject:audioDestinationIdentifier2];

                  if (v31)
                  {
                    if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                      [v58 addObject:{v27, identifier, v27}];
                    }

                    else
                    {
                      [v58 addObject:{v27, v46, v47}];
                    }
                  }
                }

                if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                {
                  v46 = identifier;
                  v47 = v58;
                  LogPrintF();
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v64 objects:v74 count:16];
            }

            while (v24);
          }

          v32 = [v58 copy];
          [*v55 setObject:v32 forKeyedSubscript:identifier];

          v33 = objc_opt_new();
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v34 = *p_allStereoPairs;
          v35 = [v34 countByEnumeratingWithState:&v60 objects:v73 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v61;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v61 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v60 + 1) + 8 * j);
                audioDestinationIdentifier3 = [v39 audioDestinationIdentifier];
                if (audioDestinationIdentifier3)
                {
                  v41 = audioDestinationIdentifier3;
                  audioDestinationIdentifier4 = [v39 audioDestinationIdentifier];
                  v43 = [destinationIdentifiers containsObject:audioDestinationIdentifier4];

                  if (v43)
                  {
                    if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                      [v33 addObject:{v39, identifier, v39}];
                    }

                    else
                    {
                      [v33 addObject:{v39, v46, v47}];
                    }
                  }
                }

                if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                {
                  v46 = identifier;
                  v47 = v33;
                  LogPrintF();
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v60 objects:v73 count:16];
            }

            while (v36);
          }

          v44 = [v33 copy];
          [*p_psgStereoPairMap setObject:v44 forKeyedSubscript:identifier];

          v19 = v57 + 1;
        }

        while (v57 + 1 != v56);
        v56 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v56);
    }

    v7 = v48;
    homeCopy = v49;
    if (gLogCategory_HDSPSGHelper <= 30)
    {
      if (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize())
      {
        [HDSPSGHelper initWithHome:];
      }

      if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
      {
        [HDSPSGHelper initWithHome:];
      }
    }
  }

  return v7;
}

- (id)allPSGsInRoom:(id)room
{
  v56 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  v5 = objc_opt_new();
  v6 = v5;
  if (roomCopy)
  {
    v33 = roomCopy;
    uniqueIdentifier = [roomCopy uniqueIdentifier];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [(NSMutableDictionary *)self->_psgHomePodMap allKeys];
    v37 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v37)
    {
      v36 = *v50;
      v34 = v6;
      do
      {
        for (i = 0; i != v37; i = v27 + 1)
        {
          if (*v50 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v39 = i;
          v9 = *(*(&v49 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_psgHomePodMap objectForKeyedSubscript:v9];
          v38 = v9;
          v40 = [(NSMutableDictionary *)self->_psgStereoPairMap objectForKeyedSubscript:v9];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v45 objects:v54 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v46;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v46 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                room = [*(*(&v45 + 1) + 8 * j) room];
                uniqueIdentifier2 = [room uniqueIdentifier];
                v18 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];

                if (v18)
                {
                  v24 = [(HDSPSGHelper *)self fetchPSG:v38];
                  if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                  {
                    v31 = uniqueIdentifier;
                    v32 = v24;
                    LogPrintF();
                  }

                  [v6 addObject:{v24, v31, v32}];
                  v19 = v11;
LABEL_35:
                  v27 = v39;

                  goto LABEL_36;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v45 objects:v54 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v19 = v40;
          v20 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v42;
            while (2)
            {
              for (k = 0; k != v21; ++k)
              {
                if (*v42 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = [(HDSPSGHelper *)self roomForStereoPair:*(*(&v41 + 1) + 8 * k)];
                uniqueIdentifier3 = [v24 uniqueIdentifier];
                v26 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier3];

                if (v26)
                {
                  v28 = [(HDSPSGHelper *)self fetchPSG:v38];
                  if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                  {
                    v31 = uniqueIdentifier;
                    v32 = v28;
                    LogPrintF();
                  }

                  v6 = v34;
                  [v34 addObject:{v28, v31, v32}];

                  goto LABEL_35;
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }

            v6 = v34;
          }

          v27 = v39;
LABEL_36:
        }

        v37 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v37);
    }

    if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
    {
      v31 = v33;
      v32 = v6;
      LogPrintF();
    }

    v29 = [v6 copy];

    roomCopy = v33;
  }

  else
  {
    v29 = v5;
  }

  return v29;
}

- (id)roomsForPSG:(id)g
{
  v40 = *MEMORY[0x277D85DE8];
  gCopy = g;
  v5 = objc_opt_new();
  v6 = v5;
  if (gCopy)
  {
    v29 = gCopy;
    identifier = [gCopy identifier];
    v8 = [(NSMutableDictionary *)self->_psgHomePodMap objectForKeyedSubscript:identifier];
    v28 = identifier;
    v9 = [(NSMutableDictionary *)self->_psgStereoPairMap objectForKeyedSubscript:identifier];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        v14 = 0;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v34 + 1) + 8 * v14);
          if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
          {
            [HDSPSGHelper roomsForPSG:v15];
          }

          room = [v15 room];
          [v6 addObject:room];

          ++v14;
        }

        while (v12 != v14);
        v17 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
        v12 = v17;
      }

      while (v17);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(HDSPSGHelper *)self roomForStereoPair:*(*(&v30 + 1) + 8 * i)];
          if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
          {
            v26 = v29;
            v27 = v23;
            LogPrintF();
          }

          [v6 addObject:{v23, v26, v27}];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v20);
    }

    gCopy = v29;
    if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
    {
      v26 = v29;
      v27 = v6;
      LogPrintF();
    }

    v24 = [v6 copy];
  }

  else
  {
    v24 = v5;
  }

  return v24;
}

- (id)roomForStereoPair:(id)pair
{
  components = [pair components];
  firstObject = [components firstObject];
  mediaProfile = [firstObject mediaProfile];
  accessory = [mediaProfile accessory];
  room = [accessory room];

  return room;
}

- (id)fetchPSG:(id)g
{
  v20 = *MEMORY[0x277D85DE8];
  gCopy = g;
  if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
  {
    v13 = gCopy;
    allPSGs = self->_allPSGs;
    LogPrintF();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_allPSGs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [gCopy hmf_isEqualToUUID:identifier];

        if (v11)
        {
          v6 = [v9 copy];
          goto LABEL_15;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v6;
}

- (void)roomsForPSG:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 room];
  LogPrintF();
}

@end