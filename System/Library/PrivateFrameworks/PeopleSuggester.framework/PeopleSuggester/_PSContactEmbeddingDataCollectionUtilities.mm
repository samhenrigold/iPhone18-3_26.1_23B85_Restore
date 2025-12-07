@interface _PSContactEmbeddingDataCollectionUtilities
+ (id)prepareAllEventsFromContactEmbeddingsDict:(id)dict;
+ (id)prepareEventArrayFromEmbeddingDict:(id)dict forUser:(id)user sessionId:(id)id;
+ (id)prepareEventFromContactEmbedding:(id)embedding contactId:(id)id;
@end

@implementation _PSContactEmbeddingDataCollectionUtilities

+ (id)prepareEventFromContactEmbedding:(id)embedding contactId:(id)id
{
  v45 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  idCopy = id;
  v34 = objc_alloc_init(ContactEmbeddingAnalysisPETNeuralNetEmbedding);
  v6 = [embeddingCopy objectForKey:@"last_layer_before_activation"];
  v7 = [v6 count];
  v31 = &v31;
  v8 = &v31 - ((4 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v39 + 1) + 8 * i) floatValue];
        *&v8[4 * v12++] = v15;
      }

      v11 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v11);
  }

  [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)v34 setEmbeddings:v8 count:v7];
  v16 = objc_alloc_init(ContactEmbeddingAnalysisPETNeuralNetEmbedding);
  v33 = embeddingCopy;
  v17 = [embeddingCopy objectForKey:@"last_layer_after_activation"];
  v18 = [v17 count];
  v19 = &v31 - ((4 * v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v17;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v36;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v35 + 1) + 8 * j) floatValue];
        *&v19[4 * v23++] = v26;
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v22);
  }

  [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)v16 setEmbeddings:v19 count:v18];
  v27 = objc_alloc_init(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent);
  v28 = idCopy;
  [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)v27 setContactId:idCopy];
  v29 = v34;
  [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)v27 setEmbeddingsBeforeActivation:v34];
  [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)v27 setEmbeddingsAfterActivation:v16];

  return v27;
}

+ (id)prepareAllEventsFromContactEmbeddingsDict:(id)dict
{
  v21 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = dictCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v6 objectForKey:{v11, v16}];
        v13 = [self prepareEventFromContactEmbedding:v12 contactId:v11];
        [v5 setObject:v13 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

+ (id)prepareEventArrayFromEmbeddingDict:(id)dict forUser:(id)user sessionId:(id)id
{
  v24 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  userCopy = user;
  idCopy = id;
  v10 = objc_alloc_init(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = dictCopy;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v12 objectForKey:{*(*(&v19 + 1) + 8 * i), v19}];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)v10 setContactEmbeddings:v11];
  [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)v10 setUserId:userCopy];
  [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)v10 setSessinobd:idCopy];

  return v10;
}

@end