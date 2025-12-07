@interface SREQueryIntent
+ (id)queryIntentWithGenres:(id)genres;
- (SREQueryIntent)init;
@end

@implementation SREQueryIntent

+ (id)queryIntentWithGenres:(id)genres
{
  v17 = *MEMORY[0x277D85DE8];
  genresCopy = genres;
  v4 = objc_alloc_init(SREQueryIntent);
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(genresCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = genresCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(SREQueryIntent *)v4 setGenres:v5];

  return v4;
}

- (SREQueryIntent)init
{
  v3.receiver = self;
  v3.super_class = SREQueryIntent;
  return [(SREQueryIntent *)&v3 init];
}

@end