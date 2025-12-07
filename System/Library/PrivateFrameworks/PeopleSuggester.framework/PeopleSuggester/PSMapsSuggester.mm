@interface PSMapsSuggester
@end

@implementation PSMapsSuggester

uint64_t __99___PSMapsSuggester_deleteMapsFeedbackEventsMatchingHandle_contactId_startLocationId_endLocationId___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = a1[4] == 0;
    v6 = [v4 handle];
    if (v5 != (v6 != 0))
    {
      v7 = a1[5] == 0;
      v8 = [v4 startLocationId];
      if ((v7 ^ (v8 != 0)))
      {
        v9 = a1[6] == 0;
        v10 = [v4 endLocationId];
        v11 = v10;
        if ((v9 ^ (v10 != 0)))
        {
          v12 = a1[7] == 0;
          v13 = [v4 contactId];
          v14 = v12 ^ (v13 == 0);

          if ((v14 & 1) != 0 || (v15 = a1[4]) != 0 && ([v4 handle], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, !v17) || (v18 = a1[5]) != 0 && (objc_msgSend(v4, "startLocationId"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToString:", v19), v19, !v20) || (v21 = a1[6]) != 0 && (objc_msgSend(v4, "endLocationId"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isEqualToString:", v22), v22, !v23))
          {
            v25 = 0;
            goto LABEL_19;
          }

          v24 = a1[7];
          if (!v24)
          {
            v25 = 1;
            goto LABEL_19;
          }

          v6 = [v4 contactId];
          v25 = [v24 isEqualToString:v6];
LABEL_18:

LABEL_19:
          goto LABEL_20;
        }
      }
    }

    v25 = 0;
    goto LABEL_18;
  }

  v25 = 0;
LABEL_20:

  return v25 & 1;
}

@end