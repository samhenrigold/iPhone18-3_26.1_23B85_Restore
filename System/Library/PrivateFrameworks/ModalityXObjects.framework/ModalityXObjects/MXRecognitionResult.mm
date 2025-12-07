@interface MXRecognitionResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addChoiceAlignments:(id)alignments;
- (void)addPostItnNbestChoices:(id)choices;
- (void)addPreItnNbestChoices:(id)choices;
- (void)addPreItnTokenToPostItnCharAlignment:(id)alignment;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXRecognitionResult

- (void)addPreItnNbestChoices:(id)choices
{
  choicesCopy = choices;
  preItnNbestChoices = self->_preItnNbestChoices;
  v8 = choicesCopy;
  if (!preItnNbestChoices)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_preItnNbestChoices;
    self->_preItnNbestChoices = v6;

    choicesCopy = v8;
    preItnNbestChoices = self->_preItnNbestChoices;
  }

  [(NSMutableArray *)preItnNbestChoices addObject:choicesCopy];
}

- (void)addPostItnNbestChoices:(id)choices
{
  choicesCopy = choices;
  postItnNbestChoices = self->_postItnNbestChoices;
  v8 = choicesCopy;
  if (!postItnNbestChoices)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_postItnNbestChoices;
    self->_postItnNbestChoices = v6;

    choicesCopy = v8;
    postItnNbestChoices = self->_postItnNbestChoices;
  }

  [(NSMutableArray *)postItnNbestChoices addObject:choicesCopy];
}

- (void)addPreItnTokenToPostItnCharAlignment:(id)alignment
{
  alignmentCopy = alignment;
  preItnTokenToPostItnCharAlignments = self->_preItnTokenToPostItnCharAlignments;
  v8 = alignmentCopy;
  if (!preItnTokenToPostItnCharAlignments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_preItnTokenToPostItnCharAlignments;
    self->_preItnTokenToPostItnCharAlignments = v6;

    alignmentCopy = v8;
    preItnTokenToPostItnCharAlignments = self->_preItnTokenToPostItnCharAlignments;
  }

  [(NSMutableArray *)preItnTokenToPostItnCharAlignments addObject:alignmentCopy];
}

- (void)addChoiceAlignments:(id)alignments
{
  alignmentsCopy = alignments;
  choiceAlignments = self->_choiceAlignments;
  v8 = alignmentsCopy;
  if (!choiceAlignments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_choiceAlignments;
    self->_choiceAlignments = v6;

    alignmentsCopy = v8;
    choiceAlignments = self->_choiceAlignments;
  }

  [(NSMutableArray *)choiceAlignments addObject:alignmentsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXRecognitionResult;
  v4 = [(MXRecognitionResult *)&v8 description];
  dictionaryRepresentation = [(MXRecognitionResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v57 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  preItn = self->_preItn;
  if (preItn)
  {
    dictionaryRepresentation = [(MXRecognitionSausage *)preItn dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"pre_itn"];
  }

  postItn = self->_postItn;
  if (postItn)
  {
    dictionaryRepresentation2 = [(MXRecognitionSausage *)postItn dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"post_itn"];
  }

  if ([(NSMutableArray *)self->_preItnNbestChoices count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_preItnNbestChoices, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v9 = self->_preItnNbestChoices;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v50;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v50 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation3 = [*(*(&v49 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation3];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v11);
    }

    [dictionary setObject:v8 forKey:@"pre_itn_nbest_choices"];
  }

  if ([(NSMutableArray *)self->_postItnNbestChoices count])
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_postItnNbestChoices, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = self->_postItnNbestChoices;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation4 = [*(*(&v45 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation4];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"post_itn_nbest_choices"];
  }

  if ([(NSMutableArray *)self->_preItnTokenToPostItnCharAlignments count])
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_preItnTokenToPostItnCharAlignments, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v23 = self->_preItnTokenToPostItnCharAlignments;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v42;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation5 = [*(*(&v41 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation5];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v25);
    }

    [dictionary setObject:v22 forKey:@"pre_itn_token_to_post_itn_char_alignment"];
  }

  if ([(NSMutableArray *)self->_choiceAlignments count])
  {
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_choiceAlignments, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = self->_choiceAlignments;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v53 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v38;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v38 != v33)
          {
            objc_enumerationMutation(v30);
          }

          dictionaryRepresentation6 = [*(*(&v37 + 1) + 8 * m) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation6];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v53 count:16];
      }

      while (v32);
    }

    [dictionary setObject:v29 forKey:@"choice_alignments"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_preItn)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_postItn)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_preItnNbestChoices;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_postItnNbestChoices;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_preItnTokenToPostItnCharAlignments;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_choiceAlignments;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_preItn)
  {
    [toCopy setPreItn:?];
  }

  if (self->_postItn)
  {
    [toCopy setPostItn:?];
  }

  if ([(MXRecognitionResult *)self preItnNbestChoicesCount])
  {
    [toCopy clearPreItnNbestChoices];
    preItnNbestChoicesCount = [(MXRecognitionResult *)self preItnNbestChoicesCount];
    if (preItnNbestChoicesCount)
    {
      v5 = preItnNbestChoicesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MXRecognitionResult *)self preItnNbestChoicesAtIndex:i];
        [toCopy addPreItnNbestChoices:v7];
      }
    }
  }

  if ([(MXRecognitionResult *)self postItnNbestChoicesCount])
  {
    [toCopy clearPostItnNbestChoices];
    postItnNbestChoicesCount = [(MXRecognitionResult *)self postItnNbestChoicesCount];
    if (postItnNbestChoicesCount)
    {
      v9 = postItnNbestChoicesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(MXRecognitionResult *)self postItnNbestChoicesAtIndex:j];
        [toCopy addPostItnNbestChoices:v11];
      }
    }
  }

  if ([(MXRecognitionResult *)self preItnTokenToPostItnCharAlignmentsCount])
  {
    [toCopy clearPreItnTokenToPostItnCharAlignments];
    preItnTokenToPostItnCharAlignmentsCount = [(MXRecognitionResult *)self preItnTokenToPostItnCharAlignmentsCount];
    if (preItnTokenToPostItnCharAlignmentsCount)
    {
      v13 = preItnTokenToPostItnCharAlignmentsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(MXRecognitionResult *)self preItnTokenToPostItnCharAlignmentAtIndex:k];
        [toCopy addPreItnTokenToPostItnCharAlignment:v15];
      }
    }
  }

  if ([(MXRecognitionResult *)self choiceAlignmentsCount])
  {
    [toCopy clearChoiceAlignments];
    choiceAlignmentsCount = [(MXRecognitionResult *)self choiceAlignmentsCount];
    if (choiceAlignmentsCount)
    {
      v17 = choiceAlignmentsCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(MXRecognitionResult *)self choiceAlignmentsAtIndex:m];
        [toCopy addChoiceAlignments:v19];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MXRecognitionSausage *)self->_preItn copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(MXRecognitionSausage *)self->_postItn copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = self->_preItnNbestChoices;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      v14 = 0;
      do
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v47 + 1) + 8 * v14) copyWithZone:zone];
        [v5 addPreItnNbestChoices:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = self->_postItnNbestChoices;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      v20 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v43 + 1) + 8 * v20) copyWithZone:zone];
        [v5 addPostItnNbestChoices:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v18);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = self->_preItnTokenToPostItnCharAlignments;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      v26 = 0;
      do
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v39 + 1) + 8 * v26) copyWithZone:zone];
        [v5 addPreItnTokenToPostItnCharAlignment:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v24);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = self->_choiceAlignments;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v35 + 1) + 8 * v32) copyWithZone:{zone, v35}];
        [v5 addChoiceAlignments:v33];

        ++v32;
      }

      while (v30 != v32);
      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v30);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((preItn = self->_preItn, !(preItn | equalCopy[4])) || -[MXRecognitionSausage isEqual:](preItn, "isEqual:")) && ((postItn = self->_postItn, !(postItn | equalCopy[2])) || -[MXRecognitionSausage isEqual:](postItn, "isEqual:")) && ((preItnNbestChoices = self->_preItnNbestChoices, !(preItnNbestChoices | equalCopy[5])) || -[NSMutableArray isEqual:](preItnNbestChoices, "isEqual:")) && ((postItnNbestChoices = self->_postItnNbestChoices, !(postItnNbestChoices | equalCopy[3])) || -[NSMutableArray isEqual:](postItnNbestChoices, "isEqual:")) && ((preItnTokenToPostItnCharAlignments = self->_preItnTokenToPostItnCharAlignments, !(preItnTokenToPostItnCharAlignments | equalCopy[6])) || -[NSMutableArray isEqual:](preItnTokenToPostItnCharAlignments, "isEqual:")))
  {
    choiceAlignments = self->_choiceAlignments;
    if (choiceAlignments | equalCopy[1])
    {
      v11 = [(NSMutableArray *)choiceAlignments isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(MXRecognitionSausage *)self->_preItn hash];
  v4 = [(MXRecognitionSausage *)self->_postItn hash]^ v3;
  v5 = [(NSMutableArray *)self->_preItnNbestChoices hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_postItnNbestChoices hash];
  v7 = [(NSMutableArray *)self->_preItnTokenToPostItnCharAlignments hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_choiceAlignments hash];
}

- (void)mergeFrom:(id)from
{
  v49 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  preItn = self->_preItn;
  v6 = *(fromCopy + 4);
  if (preItn)
  {
    if (v6)
    {
      [(MXRecognitionSausage *)preItn mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MXRecognitionResult *)self setPreItn:?];
  }

  postItn = self->_postItn;
  v8 = *(fromCopy + 2);
  if (postItn)
  {
    if (v8)
    {
      [(MXRecognitionSausage *)postItn mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(MXRecognitionResult *)self setPostItn:?];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = *(fromCopy + 5);
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(MXRecognitionResult *)self addPreItnNbestChoices:*(*(&v41 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v11);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = *(fromCopy + 3);
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(MXRecognitionResult *)self addPostItnNbestChoices:*(*(&v37 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v16);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = *(fromCopy + 6);
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(MXRecognitionResult *)self addPreItnTokenToPostItnCharAlignment:*(*(&v33 + 1) + 8 * k)];
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v21);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = *(fromCopy + 1);
  v25 = [v24 countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v30;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(MXRecognitionResult *)self addChoiceAlignments:*(*(&v29 + 1) + 8 * m), v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v26);
  }
}

@end