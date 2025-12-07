@interface SREMusicRetrieval
- (BOOL)isMusicRecEligible:(id)eligible;
- (SREMusicRetrieval)initWithLocale:(id)locale queue:(id)queue error:(id *)error;
- (id)_parseQueryString:(id)string;
- (id)_removeRecentlyPlayedCandidateAdamIDs:(id)ds recentPlayed:(id)played;
- (void)_callCompletionHandler:(id)handler;
- (void)_callMetadataEndpointWithAdamIDs:(id)ds queryIntent:(id)intent;
- (void)retrieveMusicWithQuery:(id)query queryID:(unint64_t)d;
@end

@implementation SREMusicRetrieval

- (SREMusicRetrieval)initWithLocale:(id)locale queue:(id)queue error:(id *)error
{
  localeCopy = locale;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = SREMusicRetrieval;
  v10 = [(SREMusicRetrieval *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_locale, locale);
    objc_storeStrong(&v11->_queue, queue);
  }

  return v11;
}

- (BOOL)isMusicRecEligible:(id)eligible
{
  v4 = [(SREMusicRetrieval *)self _parseQueryString:eligible];
  if (v4)
  {
    locale = [(SREMusicRetrieval *)self locale];
    localeIdentifier = [locale localeIdentifier];
    v7 = [localeIdentifier isEqualToString:@"en_US"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)retrieveMusicWithQuery:(id)query queryID:(unint64_t)d
{
  v52 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  locale = [(SREMusicRetrieval *)self locale];
  localeIdentifier = [locale localeIdentifier];
  v9 = [localeIdentifier isEqualToString:@"en_US"];

  if (v9)
  {
    v10 = [(SREMusicRetrieval *)self _parseQueryString:queryCopy];
    v11 = logForCSLogCategoryRecs();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [SREMusicRetrieval retrieveMusicWithQuery:queryID:];
      }

      v13 = objc_alloc_init(SREMusicFeatureExtraction);
      v14 = logForCSLogCategoryRecs();
      v15 = v14;
      v16 = d - 1;
      if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26B806000, v15, OS_SIGNPOST_INTERVAL_BEGIN, d, "SREFeatureExtractionLatency", &unk_26B818409, buf, 2u);
      }

      v48 = 0;
      v17 = [(SREMusicFeatureExtraction *)v13 retrieveNowPlayingHistoryWithLength:10 error:&v48];
      v18 = v48;
      v19 = logForCSLogCategoryRecs();
      v20 = v19;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26B806000, v20, OS_SIGNPOST_INTERVAL_END, d, "SREFeatureExtractionLatency", &unk_26B818409, buf, 2u);
      }

      v21 = logForCSLogCategoryRecs();
      v22 = v21;
      if (!v17 || v18)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [SREMusicRetrieval retrieveMusicWithQuery:queryID:];
        }

        [(SREMusicRetrieval *)self _callCompletionHandler:v18];
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [SREMusicRetrieval retrieveMusicWithQuery:queryID:];
        }

        v23 = +[SREMusicRetrievalModel sharedInstance];
        if (v23)
        {
          v46 = v13;
          genres = [v10 genres];
          v25 = [genres count];

          if (v25)
          {
            memset(v47, 0, sizeof(v47));
            genres2 = [v10 genres];
            if ([genres2 countByEnumeratingWithState:v47 objects:v49 count:16])
            {
              v27 = **(&v47[0] + 1);
            }

            else
            {
              v27 = &stru_287C42A38;
            }
          }

          else
          {
            v27 = &stru_287C42A38;
          }

          v32 = logForCSLogCategoryRecs();
          v33 = v32;
          if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_26B806000, v33, OS_SIGNPOST_INTERVAL_BEGIN, d, "SREModelInferrenceLatency", &unk_26B818409, buf, 2u);
          }

          v45 = v27;
          v44 = [[SREMusicModelQuery alloc] initWithGenreID:v27];
          v34 = [v23 inferenceWithSequence:v17 query:? error:?];
          v18 = 0;
          v35 = logForCSLogCategoryRecs();
          v36 = v35;
          if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_26B806000, v36, OS_SIGNPOST_INTERVAL_END, d, "SREModelInferrenceLatency", &unk_26B818409, buf, 2u);
          }

          v37 = logForCSLogCategoryRecs();
          v38 = v37;
          if (v34)
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [SREMusicRetrieval retrieveMusicWithQuery:queryID:];
            }

            v39 = [(SREMusicRetrieval *)self _removeRecentlyPlayedCandidateAdamIDs:v34 recentPlayed:v17];

            v40 = logForCSLogCategoryRecs();
            v41 = v40;
            if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_26B806000, v41, OS_SIGNPOST_INTERVAL_BEGIN, d, "SREMedaDataFetchingLatency", &unk_26B818409, buf, 2u);
            }

            [(SREMusicRetrieval *)self _callMetadataEndpointWithAdamIDs:v39 queryIntent:v10];
            v42 = logForCSLogCategoryRecs();
            v43 = v42;
            if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_26B806000, v43, OS_SIGNPOST_INTERVAL_END, d, "SREMedaDataFetchingLatency", &unk_26B818409, buf, 2u);
            }
          }

          else
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [SREMusicRetrieval retrieveMusicWithQuery:v18 queryID:v38];
            }

            [(SREMusicRetrieval *)self _callCompletionHandler:v18];
          }

          v13 = v46;
        }

        else
        {
          v31 = logForCSLogCategoryRecs();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [SREMusicRetrieval retrieveMusicWithQuery:queryID:];
          }

          v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SREMusicRetrieval" code:-1 userInfo:0];
          [(SREMusicRetrieval *)self _callCompletionHandler:v18];
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B806000, v12, OS_LOG_TYPE_DEFAULT, "Music recommendation skipped because of no music intent.", buf, 2u);
      }

      [(SREMusicRetrieval *)self _callCompletionHandler:0];
    }
  }

  else
  {
    v28 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      locale2 = [(SREMusicRetrieval *)self locale];
      localeIdentifier2 = [locale2 localeIdentifier];
      *buf = 138412290;
      v51 = localeIdentifier2;
      _os_log_impl(&dword_26B806000, v28, OS_LOG_TYPE_DEFAULT, "Music recommendation skipped for locale: %@", buf, 0xCu);
    }

    [(SREMusicRetrieval *)self _callCompletionHandler:0];
  }
}

- (void)_callMetadataEndpointWithAdamIDs:(id)ds queryIntent:(id)intent
{
  v71 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  intentCopy = intent;
  if ([dsCopy count])
  {
    genres = [intentCopy genres];
    v9 = [genres count];

    if (v9)
    {
      v10 = 200;
    }

    else
    {
      v10 = 25;
    }

    v11 = dsCopy;
    selfCopy = self;
    v48 = dsCopy;
    if ([v11 count] > v10)
    {
      v12 = [v11 subarrayWithRange:{0, v10}];

      v11 = v12;
    }

    v60 = 0;
    v45 = objc_alloc_init(SREMusicMetadataRetrieval);
    v46 = v11;
    v13 = [(SREMusicMetadataRetrieval *)v45 retrieveMusicMetadata:v11 error:&v60];
    v44 = v60;
    array = [MEMORY[0x277CBEB18] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (v14)
    {
      v15 = v14;
      v51 = *v57;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v57 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v56 + 1) + 8 * i);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          genreIDs = [v17 genreIDs];
          v19 = [genreIDs countByEnumeratingWithState:&v52 objects:v69 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v53;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v53 != v21)
                {
                  objc_enumerationMutation(genreIDs);
                }

                v23 = *(*(&v52 + 1) + 8 * j);
                genres2 = [intentCopy genres];
                LOBYTE(v23) = [genres2 containsObject:v23];

                if (v23)
                {
                  v25 = 0;
                  goto LABEL_22;
                }
              }

              v20 = [genreIDs countByEnumeratingWithState:&v52 objects:v69 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          v25 = 1;
LABEL_22:

          genres3 = [intentCopy genres];
          v27 = [genres3 count];

          if (v25 && v27)
          {
            v28 = logForCSLogCategoryRecs();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              trackId = [v17 trackId];
              trackName = [v17 trackName];
              genresDebugString = [v17 genresDebugString];
              *buf = 134218498;
              v62 = trackId;
              v63 = 2112;
              v64 = trackName;
              v65 = 2112;
              v66 = genresDebugString;
              _os_log_impl(&dword_26B806000, v28, OS_LOG_TYPE_DEFAULT, "Recommendation candidate got filtered by genre mismatch. ADAM ID: %ld  name:%@  genre:%@", buf, 0x20u);
            }

LABEL_33:

            continue;
          }

          artworkURL = [v17 artworkURL];
          v33 = [artworkURL length];

          v28 = logForCSLogCategoryRecs();
          v34 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
          if (!v33)
          {
            if (v34)
            {
              trackId2 = [v17 trackId];
              artworkURL2 = [v17 artworkURL];
              *buf = 134218242;
              v62 = trackId2;
              v63 = 2112;
              v64 = artworkURL2;
              _os_log_impl(&dword_26B806000, v28, OS_LOG_TYPE_DEFAULT, "Skipped recommendation candidate %lu with invalid artworkURL: %@", buf, 0x16u);
            }

            goto LABEL_33;
          }

          if (v34)
          {
            trackId3 = [v17 trackId];
            trackName2 = [v17 trackName];
            genresDebugString2 = [v17 genresDebugString];
            artistName = [v17 artistName];
            *buf = 134218754;
            v62 = trackId3;
            v63 = 2112;
            v64 = trackName2;
            v65 = 2112;
            v66 = genresDebugString2;
            v67 = 2112;
            v68 = artistName;
            _os_log_impl(&dword_26B806000, v28, OS_LOG_TYPE_DEFAULT, "Music Recs Result: %ld %@ Genre=%@ ARTIST_NAME=%@", buf, 0x2Au);
          }

          [array addObject:v17];
          if ([array count] > 2)
          {
            goto LABEL_36;
          }
        }

        v15 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
      }

      while (v15);
    }

LABEL_36:

    v41 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      [SREMusicRetrieval _callMetadataEndpointWithAdamIDs:queryIntent:];
    }

    dsCopy = v48;
    if ([array count])
    {
      candidatesHandler = [(SREMusicRetrieval *)selfCopy candidatesHandler];
      (candidatesHandler)[2](candidatesHandler, array);
    }

    [(SREMusicRetrieval *)selfCopy _callCompletionHandler:0];
  }

  else
  {
    v43 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B806000, v43, OS_LOG_TYPE_DEFAULT, "Music recommendation metadata call skipped due to no candidates.", buf, 2u);
    }

    [(SREMusicRetrieval *)self _callCompletionHandler:0];
  }
}

- (id)_parseQueryString:(id)string
{
  v24[164] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v3 = [SREQueryIntent queryIntentWithGenres:MEMORY[0x277CBEBF8]];
  v4 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E08];
  v5 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E20];
  v6 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E38];
  v19 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E50];
  v7 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E68];
  v20 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E80];
  v8 = [SREQueryIntent queryIntentWithGenres:&unk_287C44E98];
  v21 = [SREQueryIntent queryIntentWithGenres:&unk_287C44EB0];
  v22 = [SREQueryIntent queryIntentWithGenres:&unk_287C44EC8];
  v9 = [SREQueryIntent queryIntentWithGenres:&unk_287C44EE0];
  v10 = [SREQueryIntent queryIntentWithGenres:&unk_287C44EF8];
  v11 = [SREQueryIntent queryIntentWithGenres:&unk_287C44F10];
  v23[0] = @"music";
  v23[1] = @"musi";
  v24[0] = v3;
  v24[1] = v3;
  v23[2] = @"play music";
  v23[3] = @"play musi";
  v24[2] = v3;
  v24[3] = v3;
  v23[4] = @"song";
  v23[5] = @"play song";
  v24[4] = v3;
  v24[5] = v3;
  v23[6] = @"play a song";
  v23[7] = @"songs";
  v24[6] = v3;
  v24[7] = v3;
  v23[8] = @"play songs";
  v23[9] = @"hiphop";
  v24[8] = v3;
  v24[9] = v4;
  v23[10] = @"hip hop";
  v23[11] = @"hip-hop";
  v24[10] = v4;
  v24[11] = v4;
  v23[12] = @"hiphop music";
  v23[13] = @"hip hop music";
  v24[12] = v4;
  v24[13] = v4;
  v23[14] = @"hip-hop music";
  v23[15] = @"hiphop musi";
  v24[14] = v4;
  v24[15] = v4;
  v23[16] = @"hip hop musi";
  v23[17] = @"hip-hop musi";
  v24[16] = v4;
  v24[17] = v4;
  v23[18] = @"hiphop song";
  v23[19] = @"hip hop song";
  v24[18] = v4;
  v24[19] = v4;
  v23[20] = @"hip-hop song";
  v23[21] = @"hiphop songs";
  v24[20] = v4;
  v24[21] = v4;
  v23[22] = @"hip hop songs";
  v23[23] = @"hip-hop songs";
  v24[22] = v4;
  v24[23] = v4;
  v23[24] = @"play hiphop";
  v23[25] = @"play hip hop";
  v24[24] = v4;
  v24[25] = v4;
  v23[26] = @"play hip-hop";
  v23[27] = @"play hiphop music";
  v24[26] = v4;
  v24[27] = v4;
  v23[28] = @"play hip hop music";
  v23[29] = @"play hip-hop music";
  v24[28] = v4;
  v24[29] = v4;
  v23[30] = @"play hiphop musi";
  v23[31] = @"play hip hop musi";
  v24[30] = v4;
  v24[31] = v4;
  v23[32] = @"play hip-hop musi";
  v23[33] = @"play hiphop song";
  v24[32] = v4;
  v24[33] = v4;
  v23[34] = @"play hip hop song";
  v23[35] = @"play hip-hop song";
  v24[34] = v4;
  v24[35] = v4;
  v23[36] = @"play hiphop songs";
  v23[37] = @"play hip hop songs";
  v24[36] = v4;
  v24[37] = v4;
  v23[38] = @"play hip-hop songs";
  v23[39] = @"rap";
  v24[38] = v4;
  v24[39] = v4;
  v23[40] = @"rap music";
  v23[41] = @"rap musi";
  v24[40] = v4;
  v24[41] = v4;
  v23[42] = @"rap song";
  v23[43] = @"rap songs";
  v24[42] = v4;
  v24[43] = v4;
  v23[44] = @"play rap";
  v23[45] = @"play rap music";
  v24[44] = v4;
  v24[45] = v4;
  v23[46] = @"play rap song";
  v23[47] = @"play rap songs";
  v24[46] = v4;
  v24[47] = v4;
  v23[48] = @"pop music";
  v23[49] = @"pop musi";
  v24[48] = v5;
  v24[49] = v5;
  v23[50] = @"play pop music";
  v23[51] = @"pop song";
  v24[50] = v5;
  v24[51] = v5;
  v23[52] = @"play pop song";
  v23[53] = @"pop songs";
  v24[52] = v5;
  v24[53] = v5;
  v17 = v5;
  v23[54] = @"play pop songs";
  v23[55] = @"rock music";
  v24[54] = v5;
  v24[55] = v6;
  v23[56] = @"rock musi";
  v23[57] = @"play rock";
  v24[56] = v6;
  v24[57] = v6;
  v23[58] = @"play rock music";
  v23[59] = @"rock song";
  v24[58] = v6;
  v24[59] = v6;
  v23[60] = @"play rock song";
  v23[61] = @"rock songs";
  v24[60] = v6;
  v24[61] = v6;
  v16 = v6;
  v23[62] = @"play rock songs";
  v23[63] = @"alternative music";
  v24[62] = v6;
  v24[63] = v19;
  v23[64] = @"alternative musi";
  v24[64] = v19;
  v23[65] = @"play alternative music";
  v24[65] = v19;
  v23[66] = @"alternative song";
  v24[66] = v19;
  v23[67] = @"play alternative song";
  v24[67] = v19;
  v23[68] = @"alternative songs";
  v24[68] = v19;
  v23[69] = @"play alternative songs";
  v24[69] = v19;
  v23[70] = @"r&b";
  v24[70] = v7;
  v23[71] = @"rhythm and blues";
  v24[71] = v7;
  v23[72] = @"r&b music";
  v24[72] = v7;
  v23[73] = @"r&b musi";
  v24[73] = v7;
  v23[74] = @"play r&b music";
  v24[74] = v7;
  v23[75] = @"r&b song";
  v24[75] = v7;
  v23[76] = @"play r&b song";
  v24[76] = v7;
  v23[77] = @"r&b songs";
  v24[77] = v7;
  v23[78] = @"play r&b songs";
  v24[78] = v7;
  v23[79] = @"soul music";
  v24[79] = v7;
  v23[80] = @"soul musi";
  v24[80] = v7;
  v23[81] = @"play soul music";
  v24[81] = v7;
  v23[82] = @"soul song";
  v24[82] = v7;
  v23[83] = @"play soul song";
  v24[83] = v7;
  v23[84] = @"soul songs";
  v24[84] = v7;
  v23[85] = @"play soul songs";
  v24[85] = v7;
  v23[86] = @"country music";
  v24[86] = v20;
  v23[87] = @"country musi";
  v24[87] = v20;
  v23[88] = @"play country music";
  v24[88] = v20;
  v23[89] = @"country song";
  v24[89] = v20;
  v23[90] = @"play country song";
  v24[90] = v20;
  v23[91] = @"country songs";
  v24[91] = v20;
  v23[92] = @"play country songs";
  v24[92] = v20;
  v23[93] = @"soundtrack";
  v24[93] = v8;
  v23[94] = @"soundtracks";
  v24[94] = v8;
  v23[95] = @"soundtrack music";
  v24[95] = v8;
  v23[96] = @"soundtrack musi";
  v24[96] = v8;
  v23[97] = @"play soundtrack";
  v24[97] = v8;
  v23[98] = @"play soundtracks";
  v24[98] = v8;
  v23[99] = @"play soundtrack music";
  v24[99] = v8;
  v23[100] = @"soundtrack song";
  v24[100] = v8;
  v23[101] = @"play soundtrack song";
  v24[101] = v8;
  v23[102] = @"soundtrack songs";
  v24[102] = v8;
  v23[103] = @"play soundtrack songs";
  v24[103] = v8;
  v23[104] = @"dance music";
  v24[104] = v21;
  v23[105] = @"dance musi";
  v24[105] = v21;
  v23[106] = @"play dance music";
  v24[106] = v21;
  v23[107] = @"dance song";
  v24[107] = v21;
  v23[108] = @"play dance song";
  v24[108] = v21;
  v23[109] = @"dance songs";
  v24[109] = v21;
  v23[110] = @"play dance songs";
  v24[110] = v21;
  v23[111] = @"electronic music";
  v24[111] = v22;
  v23[112] = @"electronic musi";
  v24[112] = v22;
  v23[113] = @"play electronic music";
  v24[113] = v22;
  v23[114] = @"electronic song";
  v24[114] = v22;
  v23[115] = @"play electronic song";
  v24[115] = v22;
  v23[116] = @"electronic songs";
  v24[116] = v22;
  v23[117] = @"play electronic songs";
  v24[117] = v22;
  v23[118] = @"children music";
  v24[118] = v9;
  v23[119] = @"child music";
  v24[119] = v9;
  v23[120] = @"children's music";
  v24[120] = v9;
  v23[121] = @"play children music";
  v24[121] = v9;
  v23[122] = @"play child music";
  v24[122] = v9;
  v23[123] = @"play children's music";
  v24[123] = v9;
  v23[124] = @"children song";
  v24[124] = v9;
  v23[125] = @"child song";
  v24[125] = v9;
  v23[126] = @"children's song";
  v24[126] = v9;
  v23[127] = @"play children song";
  v24[127] = v9;
  v23[128] = @"play child song";
  v24[128] = v9;
  v23[129] = @"play children's song";
  v24[129] = v9;
  v23[130] = @"children songs";
  v24[130] = v9;
  v23[131] = @"child songs";
  v24[131] = v9;
  v23[132] = @"children's songs";
  v24[132] = v9;
  v23[133] = @"play children songs";
  v24[133] = v9;
  v23[134] = @"play child songs";
  v24[134] = v9;
  v23[135] = @"play children's songs";
  v24[135] = v9;
  v23[136] = @"kids music";
  v24[136] = v9;
  v23[137] = @"play kids music";
  v24[137] = v9;
  v23[138] = @"kid's music";
  v24[138] = v9;
  v23[139] = @"play kid's music";
  v24[139] = v9;
  v23[140] = @"kids song";
  v24[140] = v9;
  v23[141] = @"play kids song";
  v24[141] = v9;
  v23[142] = @"kid's song";
  v24[142] = v9;
  v23[143] = @"play kid's song";
  v24[143] = v9;
  v23[144] = @"kids songs";
  v24[144] = v9;
  v23[145] = @"play kids songs";
  v24[145] = v9;
  v23[146] = @"kid's songs";
  v24[146] = v9;
  v23[147] = @"play kid's songs";
  v24[147] = v9;
  v23[148] = @"jazz";
  v24[148] = v10;
  v23[149] = @"jazz music";
  v24[149] = v10;
  v23[150] = @"jazz musi";
  v24[150] = v10;
  v23[151] = @"play jazz";
  v24[151] = v10;
  v23[152] = @"play jazz music";
  v24[152] = v10;
  v23[153] = @"jazz song";
  v24[153] = v10;
  v23[154] = @"play jazz song";
  v24[154] = v10;
  v23[155] = @"jazz songs";
  v24[155] = v10;
  v23[156] = @"play jazz songs";
  v24[156] = v10;
  v23[157] = @"classical music";
  v24[157] = v11;
  v23[158] = @"classical musi";
  v23[159] = @"play classical music";
  v23[160] = @"classical song";
  v23[161] = @"play classical song";
  v23[162] = @"classical songs";
  v23[163] = @"play classical songs";
  v24[158] = v11;
  v24[159] = v11;
  v24[160] = v11;
  v24[161] = v11;
  v24[162] = v11;
  v24[163] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:164];
  lowercaseString = [stringCopy lowercaseString];

  v14 = [v12 objectForKey:lowercaseString];

  return v14;
}

- (id)_removeRecentlyPlayedCandidateAdamIDs:(id)ds recentPlayed:(id)played
{
  v36 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  playedCopy = played;
  if ([playedCopy count])
  {
    v7 = [MEMORY[0x277CBEB58] setWithCapacity:10];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = playedCopy;
    v8 = playedCopy;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v28 + 1) + 8 * v12), "adamID", v23)}];
        [v7 addObject:v13];

        if ([v7 count] > 9)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v28 objects:v35 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = dsCopy;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          if ([v7 containsObject:{v20, v23}])
          {
            v21 = logForCSLogCategoryRecs();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v33 = v20;
              _os_log_impl(&dword_26B806000, v21, OS_LOG_TYPE_DEFAULT, "Music recommendation candidate got removed due to recently played. AdamID=%@", buf, 0xCu);
            }
          }

          else
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v17);
    }

    playedCopy = v23;
  }

  else
  {
    v14 = dsCopy;
  }

  return v14;
}

- (void)_callCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SREMusicRetrieval__callCompletionHandler___block_invoke;
  v7[3] = &unk_279D04298;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __44__SREMusicRetrieval__callCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)retrieveMusicWithQuery:(uint64_t)a1 queryID:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B806000, a2, OS_LOG_TYPE_ERROR, "Music recommendation dropped because of model inference error: %@", &v2, 0xCu);
}

@end