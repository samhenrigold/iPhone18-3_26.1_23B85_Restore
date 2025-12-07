@interface _INPBWholeHouseAudioMetadata
- (BOOL)isEqual:(id)equal;
- (_INPBWholeHouseAudioMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIntentDestinationSpeakers:(id)speakers;
- (void)addIntentPermanentNames:(id)names;
- (void)addIntentSpeakerNames:(id)names;
- (void)addIntentSpeakerRooms:(id)rooms;
- (void)addPermanentNames:(id)names;
- (void)addSpeakerNames:(id)names;
- (void)addSpeakerRooms:(id)rooms;
- (void)addSpokenEntityName:(id)name;
- (void)addSpokenEntityType:(id)type;
- (void)encodeWithCoder:(id)coder;
- (void)setHasIsAllSpeakers:(BOOL)speakers;
- (void)setHasIsInHere:(BOOL)here;
- (void)setHasIsParticipatingSpeaker:(BOOL)speaker;
- (void)setHasIsPauseOrStop:(BOOL)stop;
- (void)setHasIsWholeHouseAudioCommand:(BOOL)command;
- (void)setHasNumberOfHomeAutomationWords:(BOOL)words;
- (void)setIntentDestinationSpeakers:(id)speakers;
- (void)setIntentPermanentNames:(id)names;
- (void)setIntentSpeakerNames:(id)names;
- (void)setIntentSpeakerRooms:(id)rooms;
- (void)setPermanentNames:(id)names;
- (void)setSpeakerNames:(id)names;
- (void)setSpeakerRooms:(id)rooms;
- (void)setSpokenEntityNames:(id)names;
- (void)setSpokenEntityTypes:(id)types;
- (void)writeTo:(id)to;
@end

@implementation _INPBWholeHouseAudioMetadata

- (id)dictionaryRepresentation
{
  v120 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata hasExcept](self, "hasExcept")}];
    [dictionary setObject:v4 forKeyedSubscript:@"hasExcept"];
  }

  if ([(NSArray *)self->_intentDestinationSpeakers count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v6 = self->_intentDestinationSpeakers;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v107 objects:v119 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v108;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v108 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v107 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v107 objects:v119 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"intentDestinationSpeakers"];
  }

  if ([(NSArray *)self->_intentPermanentNames count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v13 = self->_intentPermanentNames;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v103 objects:v118 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v104;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v104 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v103 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v103 objects:v118 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"intentPermanentNames"];
  }

  if ([(NSArray *)self->_intentSpeakerNames count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v20 = self->_intentSpeakerNames;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v99 objects:v117 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v100;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v100 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v99 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation3];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v99 objects:v117 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"intentSpeakerNames"];
  }

  if ([(NSArray *)self->_intentSpeakerRooms count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v27 = self->_intentSpeakerRooms;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v95 objects:v116 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v96;
      do
      {
        for (m = 0; m != v29; ++m)
        {
          if (*v96 != v30)
          {
            objc_enumerationMutation(v27);
          }

          dictionaryRepresentation4 = [*(*(&v95 + 1) + 8 * m) dictionaryRepresentation];
          [array4 addObject:dictionaryRepresentation4];
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v95 objects:v116 count:16];
      }

      while (v29);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"intentSpeakerRooms"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isAllSpeakers](self, "isAllSpeakers")}];
    [dictionary setObject:v33 forKeyedSubscript:@"isAllSpeakers"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isInHere](self, "isInHere")}];
    [dictionary setObject:v34 forKeyedSubscript:@"isInHere"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isParticipatingSpeaker](self, "isParticipatingSpeaker")}];
    [dictionary setObject:v35 forKeyedSubscript:@"isParticipatingSpeaker"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isPauseOrStop](self, "isPauseOrStop")}];
    [dictionary setObject:v36 forKeyedSubscript:@"isPauseOrStop"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isWholeHouseAudioCommand](self, "isWholeHouseAudioCommand")}];
    [dictionary setObject:v37 forKeyedSubscript:@"isWholeHouseAudioCommand"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBWholeHouseAudioMetadata numberOfHomeAutomationWords](self, "numberOfHomeAutomationWords")}];
    [dictionary setObject:v38 forKeyedSubscript:@"numberOfHomeAutomationWords"];
  }

  if ([(NSArray *)self->_permanentNames count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v40 = self->_permanentNames;
    v41 = [(NSArray *)v40 countByEnumeratingWithState:&v91 objects:v115 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v92;
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v92 != v43)
          {
            objc_enumerationMutation(v40);
          }

          dictionaryRepresentation5 = [*(*(&v91 + 1) + 8 * n) dictionaryRepresentation];
          [array5 addObject:dictionaryRepresentation5];
        }

        v42 = [(NSArray *)v40 countByEnumeratingWithState:&v91 objects:v115 count:16];
      }

      while (v42);
    }

    [dictionary setObject:array5 forKeyedSubscript:@"permanentNames"];
  }

  if ([(NSArray *)self->_speakerNames count])
  {
    array6 = [MEMORY[0x1E695DF70] array];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v47 = self->_speakerNames;
    v48 = [(NSArray *)v47 countByEnumeratingWithState:&v87 objects:v114 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v88;
      do
      {
        for (ii = 0; ii != v49; ++ii)
        {
          if (*v88 != v50)
          {
            objc_enumerationMutation(v47);
          }

          dictionaryRepresentation6 = [*(*(&v87 + 1) + 8 * ii) dictionaryRepresentation];
          [array6 addObject:dictionaryRepresentation6];
        }

        v49 = [(NSArray *)v47 countByEnumeratingWithState:&v87 objects:v114 count:16];
      }

      while (v49);
    }

    [dictionary setObject:array6 forKeyedSubscript:@"speakerNames"];
  }

  if ([(NSArray *)self->_speakerRooms count])
  {
    array7 = [MEMORY[0x1E695DF70] array];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v54 = self->_speakerRooms;
    v55 = [(NSArray *)v54 countByEnumeratingWithState:&v83 objects:v113 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v84;
      do
      {
        for (jj = 0; jj != v56; ++jj)
        {
          if (*v84 != v57)
          {
            objc_enumerationMutation(v54);
          }

          dictionaryRepresentation7 = [*(*(&v83 + 1) + 8 * jj) dictionaryRepresentation];
          [array7 addObject:dictionaryRepresentation7];
        }

        v56 = [(NSArray *)v54 countByEnumeratingWithState:&v83 objects:v113 count:16];
      }

      while (v56);
    }

    [dictionary setObject:array7 forKeyedSubscript:@"speakerRooms"];
  }

  if ([(NSArray *)self->_spokenEntityNames count])
  {
    array8 = [MEMORY[0x1E695DF70] array];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v61 = self->_spokenEntityNames;
    v62 = [(NSArray *)v61 countByEnumeratingWithState:&v79 objects:v112 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v80;
      do
      {
        for (kk = 0; kk != v63; ++kk)
        {
          if (*v80 != v64)
          {
            objc_enumerationMutation(v61);
          }

          dictionaryRepresentation8 = [*(*(&v79 + 1) + 8 * kk) dictionaryRepresentation];
          [array8 addObject:dictionaryRepresentation8];
        }

        v63 = [(NSArray *)v61 countByEnumeratingWithState:&v79 objects:v112 count:16];
      }

      while (v63);
    }

    [dictionary setObject:array8 forKeyedSubscript:@"spokenEntityName"];
  }

  if ([(NSArray *)self->_spokenEntityTypes count])
  {
    array9 = [MEMORY[0x1E695DF70] array];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v68 = self->_spokenEntityTypes;
    v69 = [(NSArray *)v68 countByEnumeratingWithState:&v75 objects:v111 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v76;
      do
      {
        for (mm = 0; mm != v70; ++mm)
        {
          if (*v76 != v71)
          {
            objc_enumerationMutation(v68);
          }

          dictionaryRepresentation9 = [*(*(&v75 + 1) + 8 * mm) dictionaryRepresentation];
          [array9 addObject:dictionaryRepresentation9];
        }

        v70 = [(NSArray *)v68 countByEnumeratingWithState:&v75 objects:v111 count:16];
      }

      while (v70);
    }

    [dictionary setObject:array9 forKeyedSubscript:@"spokenEntityType"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    v19 = 2654435761 * self->_hasExcept;
  }

  else
  {
    v19 = 0;
  }

  v18 = [(NSArray *)self->_intentDestinationSpeakers hash];
  v3 = [(NSArray *)self->_intentPermanentNames hash];
  v4 = [(NSArray *)self->_intentSpeakerNames hash];
  v5 = [(NSArray *)self->_intentSpeakerRooms hash];
  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    v6 = 2654435761 * self->_isAllSpeakers;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    v7 = 2654435761 * self->_isInHere;
  }

  else
  {
    v7 = 0;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    v8 = 2654435761 * self->_isParticipatingSpeaker;
  }

  else
  {
    v8 = 0;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    v9 = 2654435761 * self->_isPauseOrStop;
  }

  else
  {
    v9 = 0;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    v10 = 2654435761 * self->_isWholeHouseAudioCommand;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    v11 = 2654435761 * self->_numberOfHomeAutomationWords;
  }

  else
  {
    v11 = 0;
  }

  v12 = v18 ^ v19 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
  v13 = v8 ^ v9 ^ v10 ^ v11 ^ [(NSArray *)self->_permanentNames hash];
  v14 = v13 ^ [(NSArray *)self->_speakerNames hash];
  v15 = v12 ^ v14 ^ [(NSArray *)self->_speakerRooms hash];
  v16 = [(NSArray *)self->_spokenEntityNames hash];
  return v15 ^ v16 ^ [(NSArray *)self->_spokenEntityTypes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_75;
  }

  hasHasExcept = [(_INPBWholeHouseAudioMetadata *)self hasHasExcept];
  if (hasHasExcept != [equalCopy hasHasExcept])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    if ([equalCopy hasHasExcept])
    {
      hasExcept = self->_hasExcept;
      if (hasExcept != [equalCopy hasExcept])
      {
        goto LABEL_75;
      }
    }
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self intentDestinationSpeakers];
  intentDestinationSpeakers2 = [equalCopy intentDestinationSpeakers];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  intentDestinationSpeakers3 = [(_INPBWholeHouseAudioMetadata *)self intentDestinationSpeakers];
  if (intentDestinationSpeakers3)
  {
    v10 = intentDestinationSpeakers3;
    intentDestinationSpeakers4 = [(_INPBWholeHouseAudioMetadata *)self intentDestinationSpeakers];
    intentDestinationSpeakers5 = [equalCopy intentDestinationSpeakers];
    v13 = [intentDestinationSpeakers4 isEqual:intentDestinationSpeakers5];

    if (!v13)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self intentPermanentNames];
  intentDestinationSpeakers2 = [equalCopy intentPermanentNames];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  intentPermanentNames = [(_INPBWholeHouseAudioMetadata *)self intentPermanentNames];
  if (intentPermanentNames)
  {
    v15 = intentPermanentNames;
    intentPermanentNames2 = [(_INPBWholeHouseAudioMetadata *)self intentPermanentNames];
    intentPermanentNames3 = [equalCopy intentPermanentNames];
    v18 = [intentPermanentNames2 isEqual:intentPermanentNames3];

    if (!v18)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerNames];
  intentDestinationSpeakers2 = [equalCopy intentSpeakerNames];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  intentSpeakerNames = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerNames];
  if (intentSpeakerNames)
  {
    v20 = intentSpeakerNames;
    intentSpeakerNames2 = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerNames];
    intentSpeakerNames3 = [equalCopy intentSpeakerNames];
    v23 = [intentSpeakerNames2 isEqual:intentSpeakerNames3];

    if (!v23)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerRooms];
  intentDestinationSpeakers2 = [equalCopy intentSpeakerRooms];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  intentSpeakerRooms = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerRooms];
  if (intentSpeakerRooms)
  {
    v25 = intentSpeakerRooms;
    intentSpeakerRooms2 = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerRooms];
    intentSpeakerRooms3 = [equalCopy intentSpeakerRooms];
    v28 = [intentSpeakerRooms2 isEqual:intentSpeakerRooms3];

    if (!v28)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  hasIsAllSpeakers = [(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers];
  if (hasIsAllSpeakers != [equalCopy hasIsAllSpeakers])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    if ([equalCopy hasIsAllSpeakers])
    {
      isAllSpeakers = self->_isAllSpeakers;
      if (isAllSpeakers != [equalCopy isAllSpeakers])
      {
        goto LABEL_75;
      }
    }
  }

  hasIsInHere = [(_INPBWholeHouseAudioMetadata *)self hasIsInHere];
  if (hasIsInHere != [equalCopy hasIsInHere])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    if ([equalCopy hasIsInHere])
    {
      isInHere = self->_isInHere;
      if (isInHere != [equalCopy isInHere])
      {
        goto LABEL_75;
      }
    }
  }

  hasIsParticipatingSpeaker = [(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker];
  if (hasIsParticipatingSpeaker != [equalCopy hasIsParticipatingSpeaker])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    if ([equalCopy hasIsParticipatingSpeaker])
    {
      isParticipatingSpeaker = self->_isParticipatingSpeaker;
      if (isParticipatingSpeaker != [equalCopy isParticipatingSpeaker])
      {
        goto LABEL_75;
      }
    }
  }

  hasIsPauseOrStop = [(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop];
  if (hasIsPauseOrStop != [equalCopy hasIsPauseOrStop])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    if ([equalCopy hasIsPauseOrStop])
    {
      isPauseOrStop = self->_isPauseOrStop;
      if (isPauseOrStop != [equalCopy isPauseOrStop])
      {
        goto LABEL_75;
      }
    }
  }

  hasIsWholeHouseAudioCommand = [(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand];
  if (hasIsWholeHouseAudioCommand != [equalCopy hasIsWholeHouseAudioCommand])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    if ([equalCopy hasIsWholeHouseAudioCommand])
    {
      isWholeHouseAudioCommand = self->_isWholeHouseAudioCommand;
      if (isWholeHouseAudioCommand != [equalCopy isWholeHouseAudioCommand])
      {
        goto LABEL_75;
      }
    }
  }

  hasNumberOfHomeAutomationWords = [(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords];
  if (hasNumberOfHomeAutomationWords != [equalCopy hasNumberOfHomeAutomationWords])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    if ([equalCopy hasNumberOfHomeAutomationWords])
    {
      numberOfHomeAutomationWords = self->_numberOfHomeAutomationWords;
      if (numberOfHomeAutomationWords != [equalCopy numberOfHomeAutomationWords])
      {
        goto LABEL_75;
      }
    }
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self permanentNames];
  intentDestinationSpeakers2 = [equalCopy permanentNames];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  permanentNames = [(_INPBWholeHouseAudioMetadata *)self permanentNames];
  if (permanentNames)
  {
    v42 = permanentNames;
    permanentNames2 = [(_INPBWholeHouseAudioMetadata *)self permanentNames];
    permanentNames3 = [equalCopy permanentNames];
    v45 = [permanentNames2 isEqual:permanentNames3];

    if (!v45)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self speakerNames];
  intentDestinationSpeakers2 = [equalCopy speakerNames];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  speakerNames = [(_INPBWholeHouseAudioMetadata *)self speakerNames];
  if (speakerNames)
  {
    v47 = speakerNames;
    speakerNames2 = [(_INPBWholeHouseAudioMetadata *)self speakerNames];
    speakerNames3 = [equalCopy speakerNames];
    v50 = [speakerNames2 isEqual:speakerNames3];

    if (!v50)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self speakerRooms];
  intentDestinationSpeakers2 = [equalCopy speakerRooms];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  speakerRooms = [(_INPBWholeHouseAudioMetadata *)self speakerRooms];
  if (speakerRooms)
  {
    v52 = speakerRooms;
    speakerRooms2 = [(_INPBWholeHouseAudioMetadata *)self speakerRooms];
    speakerRooms3 = [equalCopy speakerRooms];
    v55 = [speakerRooms2 isEqual:speakerRooms3];

    if (!v55)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self spokenEntityNames];
  intentDestinationSpeakers2 = [equalCopy spokenEntityNames];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  spokenEntityNames = [(_INPBWholeHouseAudioMetadata *)self spokenEntityNames];
  if (spokenEntityNames)
  {
    v57 = spokenEntityNames;
    spokenEntityNames2 = [(_INPBWholeHouseAudioMetadata *)self spokenEntityNames];
    spokenEntityNames3 = [equalCopy spokenEntityNames];
    v60 = [spokenEntityNames2 isEqual:spokenEntityNames3];

    if (!v60)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self spokenEntityTypes];
  intentDestinationSpeakers2 = [equalCopy spokenEntityTypes];
  if ((intentDestinationSpeakers != 0) != (intentDestinationSpeakers2 == 0))
  {
    spokenEntityTypes = [(_INPBWholeHouseAudioMetadata *)self spokenEntityTypes];
    if (!spokenEntityTypes)
    {

LABEL_78:
      v66 = 1;
      goto LABEL_76;
    }

    v62 = spokenEntityTypes;
    spokenEntityTypes2 = [(_INPBWholeHouseAudioMetadata *)self spokenEntityTypes];
    spokenEntityTypes3 = [equalCopy spokenEntityTypes];
    v65 = [spokenEntityTypes2 isEqual:spokenEntityTypes3];

    if (v65)
    {
      goto LABEL_78;
    }
  }

  else
  {
LABEL_74:
  }

LABEL_75:
  v66 = 0;
LABEL_76:

  return v66;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBWholeHouseAudioMetadata allocWithZone:](_INPBWholeHouseAudioMetadata init];
  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setHasExcept:[(_INPBWholeHouseAudioMetadata *)self hasExcept]];
  }

  v6 = [(NSArray *)self->_intentDestinationSpeakers copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setIntentDestinationSpeakers:v6];

  v7 = [(NSArray *)self->_intentPermanentNames copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setIntentPermanentNames:v7];

  v8 = [(NSArray *)self->_intentSpeakerNames copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setIntentSpeakerNames:v8];

  v9 = [(NSArray *)self->_intentSpeakerRooms copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setIntentSpeakerRooms:v9];

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setIsAllSpeakers:[(_INPBWholeHouseAudioMetadata *)self isAllSpeakers]];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setIsInHere:[(_INPBWholeHouseAudioMetadata *)self isInHere]];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setIsParticipatingSpeaker:[(_INPBWholeHouseAudioMetadata *)self isParticipatingSpeaker]];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setIsPauseOrStop:[(_INPBWholeHouseAudioMetadata *)self isPauseOrStop]];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setIsWholeHouseAudioCommand:[(_INPBWholeHouseAudioMetadata *)self isWholeHouseAudioCommand]];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setNumberOfHomeAutomationWords:[(_INPBWholeHouseAudioMetadata *)self numberOfHomeAutomationWords]];
  }

  v10 = [(NSArray *)self->_permanentNames copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setPermanentNames:v10];

  v11 = [(NSArray *)self->_speakerNames copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpeakerNames:v11];

  v12 = [(NSArray *)self->_speakerRooms copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpeakerRooms:v12];

  v13 = [(NSArray *)self->_spokenEntityNames copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpokenEntityNames:v13];

  v14 = [(NSArray *)self->_spokenEntityTypes copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpokenEntityTypes:v14];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBWholeHouseAudioMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBWholeHouseAudioMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBWholeHouseAudioMetadata *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v95 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    PBDataWriterWriteBOOLField();
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v5 = self->_intentDestinationSpeakers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v83;
    do
    {
      v9 = 0;
      do
      {
        if (*v83 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v82 objects:v94 count:16];
    }

    while (v7);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v10 = self->_intentPermanentNames;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v78 objects:v93 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v79;
    do
    {
      v14 = 0;
      do
      {
        if (*v79 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v78 objects:v93 count:16];
    }

    while (v12);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v15 = self->_intentSpeakerNames;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v74 objects:v92 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v75;
    do
    {
      v19 = 0;
      do
      {
        if (*v75 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v74 objects:v92 count:16];
    }

    while (v17);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v20 = self->_intentSpeakerRooms;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v70 objects:v91 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v71;
    do
    {
      v24 = 0;
      do
      {
        if (*v71 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v70 objects:v91 count:16];
    }

    while (v22);
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    PBDataWriterWriteInt32Field();
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v25 = self->_permanentNames;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v66 objects:v90 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v67;
    do
    {
      v29 = 0;
      do
      {
        if (*v67 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v66 objects:v90 count:16];
    }

    while (v27);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v30 = self->_speakerNames;
  v31 = [(NSArray *)v30 countByEnumeratingWithState:&v62 objects:v89 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v63;
    do
    {
      v34 = 0;
      do
      {
        if (*v63 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSArray *)v30 countByEnumeratingWithState:&v62 objects:v89 count:16];
    }

    while (v32);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v35 = self->_speakerRooms;
  v36 = [(NSArray *)v35 countByEnumeratingWithState:&v58 objects:v88 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v59;
    do
    {
      v39 = 0;
      do
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(v35);
        }

        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSArray *)v35 countByEnumeratingWithState:&v58 objects:v88 count:16];
    }

    while (v37);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v40 = self->_spokenEntityNames;
  v41 = [(NSArray *)v40 countByEnumeratingWithState:&v54 objects:v87 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v55;
    do
    {
      v44 = 0;
      do
      {
        if (*v55 != v43)
        {
          objc_enumerationMutation(v40);
        }

        PBDataWriterWriteSubmessage();
        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSArray *)v40 countByEnumeratingWithState:&v54 objects:v87 count:16];
    }

    while (v42);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v45 = self->_spokenEntityTypes;
  v46 = [(NSArray *)v45 countByEnumeratingWithState:&v50 objects:v86 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v51;
    do
    {
      v49 = 0;
      do
      {
        if (*v51 != v48)
        {
          objc_enumerationMutation(v45);
        }

        PBDataWriterWriteSubmessage();
        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSArray *)v45 countByEnumeratingWithState:&v50 objects:v86 count:16];
    }

    while (v47);
  }
}

- (void)addSpokenEntityType:(id)type
{
  typeCopy = type;
  spokenEntityTypes = self->_spokenEntityTypes;
  v8 = typeCopy;
  if (!spokenEntityTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_spokenEntityTypes;
    self->_spokenEntityTypes = array;

    typeCopy = v8;
    spokenEntityTypes = self->_spokenEntityTypes;
  }

  [(NSArray *)spokenEntityTypes addObject:typeCopy];
}

- (void)setSpokenEntityTypes:(id)types
{
  v4 = [types mutableCopy];
  spokenEntityTypes = self->_spokenEntityTypes;
  self->_spokenEntityTypes = v4;

  MEMORY[0x1EEE66BB8](v4, spokenEntityTypes);
}

- (void)addSpokenEntityName:(id)name
{
  nameCopy = name;
  spokenEntityNames = self->_spokenEntityNames;
  v8 = nameCopy;
  if (!spokenEntityNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_spokenEntityNames;
    self->_spokenEntityNames = array;

    nameCopy = v8;
    spokenEntityNames = self->_spokenEntityNames;
  }

  [(NSArray *)spokenEntityNames addObject:nameCopy];
}

- (void)setSpokenEntityNames:(id)names
{
  v4 = [names mutableCopy];
  spokenEntityNames = self->_spokenEntityNames;
  self->_spokenEntityNames = v4;

  MEMORY[0x1EEE66BB8](v4, spokenEntityNames);
}

- (void)addSpeakerRooms:(id)rooms
{
  roomsCopy = rooms;
  speakerRooms = self->_speakerRooms;
  v8 = roomsCopy;
  if (!speakerRooms)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_speakerRooms;
    self->_speakerRooms = array;

    roomsCopy = v8;
    speakerRooms = self->_speakerRooms;
  }

  [(NSArray *)speakerRooms addObject:roomsCopy];
}

- (void)setSpeakerRooms:(id)rooms
{
  v4 = [rooms mutableCopy];
  speakerRooms = self->_speakerRooms;
  self->_speakerRooms = v4;

  MEMORY[0x1EEE66BB8](v4, speakerRooms);
}

- (void)addSpeakerNames:(id)names
{
  namesCopy = names;
  speakerNames = self->_speakerNames;
  v8 = namesCopy;
  if (!speakerNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_speakerNames;
    self->_speakerNames = array;

    namesCopy = v8;
    speakerNames = self->_speakerNames;
  }

  [(NSArray *)speakerNames addObject:namesCopy];
}

- (void)setSpeakerNames:(id)names
{
  v4 = [names mutableCopy];
  speakerNames = self->_speakerNames;
  self->_speakerNames = v4;

  MEMORY[0x1EEE66BB8](v4, speakerNames);
}

- (void)addPermanentNames:(id)names
{
  namesCopy = names;
  permanentNames = self->_permanentNames;
  v8 = namesCopy;
  if (!permanentNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_permanentNames;
    self->_permanentNames = array;

    namesCopy = v8;
    permanentNames = self->_permanentNames;
  }

  [(NSArray *)permanentNames addObject:namesCopy];
}

- (void)setPermanentNames:(id)names
{
  v4 = [names mutableCopy];
  permanentNames = self->_permanentNames;
  self->_permanentNames = v4;

  MEMORY[0x1EEE66BB8](v4, permanentNames);
}

- (void)setHasNumberOfHomeAutomationWords:(BOOL)words
{
  if (words)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsWholeHouseAudioCommand:(BOOL)command
{
  if (command)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsPauseOrStop:(BOOL)stop
{
  if (stop)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsParticipatingSpeaker:(BOOL)speaker
{
  if (speaker)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsInHere:(BOOL)here
{
  if (here)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsAllSpeakers:(BOOL)speakers
{
  if (speakers)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addIntentSpeakerRooms:(id)rooms
{
  roomsCopy = rooms;
  intentSpeakerRooms = self->_intentSpeakerRooms;
  v8 = roomsCopy;
  if (!intentSpeakerRooms)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSpeakerRooms;
    self->_intentSpeakerRooms = array;

    roomsCopy = v8;
    intentSpeakerRooms = self->_intentSpeakerRooms;
  }

  [(NSArray *)intentSpeakerRooms addObject:roomsCopy];
}

- (void)setIntentSpeakerRooms:(id)rooms
{
  v4 = [rooms mutableCopy];
  intentSpeakerRooms = self->_intentSpeakerRooms;
  self->_intentSpeakerRooms = v4;

  MEMORY[0x1EEE66BB8](v4, intentSpeakerRooms);
}

- (void)addIntentSpeakerNames:(id)names
{
  namesCopy = names;
  intentSpeakerNames = self->_intentSpeakerNames;
  v8 = namesCopy;
  if (!intentSpeakerNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSpeakerNames;
    self->_intentSpeakerNames = array;

    namesCopy = v8;
    intentSpeakerNames = self->_intentSpeakerNames;
  }

  [(NSArray *)intentSpeakerNames addObject:namesCopy];
}

- (void)setIntentSpeakerNames:(id)names
{
  v4 = [names mutableCopy];
  intentSpeakerNames = self->_intentSpeakerNames;
  self->_intentSpeakerNames = v4;

  MEMORY[0x1EEE66BB8](v4, intentSpeakerNames);
}

- (void)addIntentPermanentNames:(id)names
{
  namesCopy = names;
  intentPermanentNames = self->_intentPermanentNames;
  v8 = namesCopy;
  if (!intentPermanentNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentPermanentNames;
    self->_intentPermanentNames = array;

    namesCopy = v8;
    intentPermanentNames = self->_intentPermanentNames;
  }

  [(NSArray *)intentPermanentNames addObject:namesCopy];
}

- (void)setIntentPermanentNames:(id)names
{
  v4 = [names mutableCopy];
  intentPermanentNames = self->_intentPermanentNames;
  self->_intentPermanentNames = v4;

  MEMORY[0x1EEE66BB8](v4, intentPermanentNames);
}

- (void)addIntentDestinationSpeakers:(id)speakers
{
  speakersCopy = speakers;
  intentDestinationSpeakers = self->_intentDestinationSpeakers;
  v8 = speakersCopy;
  if (!intentDestinationSpeakers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentDestinationSpeakers;
    self->_intentDestinationSpeakers = array;

    speakersCopy = v8;
    intentDestinationSpeakers = self->_intentDestinationSpeakers;
  }

  [(NSArray *)intentDestinationSpeakers addObject:speakersCopy];
}

- (void)setIntentDestinationSpeakers:(id)speakers
{
  v4 = [speakers mutableCopy];
  intentDestinationSpeakers = self->_intentDestinationSpeakers;
  self->_intentDestinationSpeakers = v4;

  MEMORY[0x1EEE66BB8](v4, intentDestinationSpeakers);
}

@end