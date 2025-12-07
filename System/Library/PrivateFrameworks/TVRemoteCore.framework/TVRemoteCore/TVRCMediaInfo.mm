@interface TVRCMediaInfo
+ (id)imageTemplateFromDict:(id)dict;
+ (id)mediaInfoWithDictionary:(id)dictionary;
+ (unint64_t)kindForMediaType:(id)type;
- (BOOL)isEqualToMediaInfo:(id)info;
- (NSArray)roleCategories;
- (NSString)primaryTitle;
- (TVRCMediaInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCMediaInfo

+ (id)mediaInfoWithDictionary:(id)dictionary
{
  v47 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(self);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"content"];
  if (!v6)
  {
    v6 = dictionaryCopy;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"roles"];
  if (!v7)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"roles"];
  }

  v8 = [v6 objectForKeyedSubscript:@"id"];
  [v5 setIdentifier:v8];

  v9 = [v6 objectForKeyedSubscript:@"title"];
  [v5 setTitle:v9];

  v10 = [v6 objectForKeyedSubscript:@"type"];
  [v5 setKind:{objc_msgSend(self, "kindForMediaType:", v10)}];

  v11 = [v6 objectForKeyedSubscript:@"description"];
  [v5 setExtendedDescription:v11];

  v12 = [v6 objectForKeyedSubscript:@"genres"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v12 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [firstObject objectForKeyedSubscript:@"name"];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  [v5 setGenre:v14];
  v15 = [self imageTemplateFromDict:v6];
  [v5 setImageURLTemplate:v15];

  v16 = [v6 objectForKeyedSubscript:@"rating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 objectForKeyedSubscript:@"displayName"];
  }

  else
  {
    v17 = 0;
  }

  [v5 setRatingDescription:v17];
  v18 = [v6 objectForKeyedSubscript:@"duration"];
  [v5 setDuration:v18];

  v19 = [v6 objectForKeyedSubscript:@"showTitle"];
  [v5 setShowTitle:v19];

  v20 = [v6 objectForKeyedSubscript:@"seasonNumber"];
  [v5 setSeasonNumber:v20];

  v21 = [v6 objectForKeyedSubscript:@"episodeNumber"];
  [v5 setEpisodeNumber:v21];

  v23 = __41__TVRCMediaInfo_mediaInfoWithDictionary___block_invoke(v22, v6);
  [v5 setProductURL:v23];

  v25 = __41__TVRCMediaInfo_mediaInfoWithDictionary___block_invoke(v24, v6);
  [v5 setShowURL:v25];

  v26 = [v6 objectForKeyedSubscript:@"showId"];
  [v5 setShowIdentifier:v26];

  v27 = [v6 objectForKeyedSubscript:@"isAppleOriginal"];
  [v5 setIsAppleOriginal:{objc_msgSend(v27, "BOOLValue")}];

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v29 = v7;
  v30 = [v29 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v43;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [TVRCMediaInfoRole roleWithDictionary:*(*(&v42 + 1) + 8 * i), v42];
        [v28 addObject:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v31);
  }

  [v5 setRoles:v28];
  v35 = [v6 objectForKeyedSubscript:@"releaseDate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 doubleValue], v36 > 0.0))
  {
    v37 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v36 / 1000.0];
  }

  else
  {
    v37 = 0;
  }

  [v5 setReleaseDate:v37];
  v38 = [v6 objectForKeyedSubscript:@"rottenTomatoesReviews"];
  if (v38)
  {
    v39 = [TVRCRottenTomatoesReview rottenTomatoesReviewWithDictionary:v38];
  }

  else
  {
    v39 = [TVRCRottenTomatoesReview rottenTomatoesReviewWithDictionary:v6];
    percentage = [v39 percentage];

    if (!percentage)
    {

      v39 = 0;
    }
  }

  [v5 setRottenTomatoesReview:v39];

  return v5;
}

id __41__TVRCMediaInfo_mediaInfoWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:?];
  if ([v2 length])
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  identifier = [(TVRCMediaInfo *)self identifier];
  [v4 setIdentifier:identifier];

  title = [(TVRCMediaInfo *)self title];
  [v4 setTitle:title];

  [v4 setKind:{-[TVRCMediaInfo kind](self, "kind")}];
  extendedDescription = [(TVRCMediaInfo *)self extendedDescription];
  [v4 setExtendedDescription:extendedDescription];

  genre = [(TVRCMediaInfo *)self genre];
  [v4 setGenre:genre];

  imageURLTemplate = [(TVRCMediaInfo *)self imageURLTemplate];
  [v4 setImageURLTemplate:imageURLTemplate];

  channelImageURLTemplate = [(TVRCMediaInfo *)self channelImageURLTemplate];
  [v4 setChannelImageURLTemplate:channelImageURLTemplate];

  ratingDescription = [(TVRCMediaInfo *)self ratingDescription];
  [v4 setRatingDescription:ratingDescription];

  duration = [(TVRCMediaInfo *)self duration];
  [v4 setDuration:duration];

  showTitle = [(TVRCMediaInfo *)self showTitle];
  [v4 setShowTitle:showTitle];

  seasonNumber = [(TVRCMediaInfo *)self seasonNumber];
  [v4 setSeasonNumber:seasonNumber];

  episodeNumber = [(TVRCMediaInfo *)self episodeNumber];
  [v4 setEpisodeNumber:episodeNumber];

  productURL = [(TVRCMediaInfo *)self productURL];
  [v4 setProductURL:productURL];

  showURL = [(TVRCMediaInfo *)self showURL];
  [v4 setShowURL:showURL];

  showIdentifier = [(TVRCMediaInfo *)self showIdentifier];
  [v4 setShowIdentifier:showIdentifier];

  [v4 setIsAppleOriginal:{-[TVRCMediaInfo isAppleOriginal](self, "isAppleOriginal")}];
  roles = [(TVRCMediaInfo *)self roles];
  [v4 setRoles:roles];

  releaseDate = [(TVRCMediaInfo *)self releaseDate];
  [v4 setReleaseDate:releaseDate];

  rottenTomatoesReview = [(TVRCMediaInfo *)self rottenTomatoesReview];
  v22 = [rottenTomatoesReview copy];
  [v4 setRottenTomatoesReview:v22];

  return v4;
}

- (BOOL)isEqualToMediaInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy
    || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)
    || (-[TVRCMediaInfo extendedDescription](self, "extendedDescription"), v5 = objc_claimAutoreleasedReturnValue(), [infoCopy extendedDescription], v6 = objc_claimAutoreleasedReturnValue(), v7 = (v5 == 0) ^ (v6 == 0), v6, v5, (v7 & 1) != 0)
    || (-[TVRCMediaInfo genre](self, "genre"), v8 = objc_claimAutoreleasedReturnValue(), [infoCopy genre], v9 = objc_claimAutoreleasedReturnValue(), v10 = (v8 == 0) ^ (v9 == 0), v9, v8, (v10 & 1) != 0)
    || (-[TVRCMediaInfo imageURLTemplate](self, "imageURLTemplate"), v11 = objc_claimAutoreleasedReturnValue(), [infoCopy imageURLTemplate], v12 = objc_claimAutoreleasedReturnValue(), v13 = (v11 == 0) ^ (v12 == 0), v12, v11, (v13 & 1) != 0)
    || (-[TVRCMediaInfo channelImageURLTemplate](self, "channelImageURLTemplate"), v14 = objc_claimAutoreleasedReturnValue(), [infoCopy channelImageURLTemplate], v15 = objc_claimAutoreleasedReturnValue(), v16 = (v14 == 0) ^ (v15 == 0), v15, v14, (v16 & 1) != 0)
    || (-[TVRCMediaInfo ratingDescription](self, "ratingDescription"), v17 = objc_claimAutoreleasedReturnValue(), [infoCopy ratingDescription], v18 = objc_claimAutoreleasedReturnValue(), v19 = (v17 == 0) ^ (v18 == 0), v18, v17, (v19 & 1) != 0)
    || (-[TVRCMediaInfo showTitle](self, "showTitle"), v20 = objc_claimAutoreleasedReturnValue(), [infoCopy showTitle], v21 = objc_claimAutoreleasedReturnValue(), v22 = (v20 == 0) ^ (v21 == 0), v21, v20, (v22 & 1) != 0)
    || (-[TVRCMediaInfo seasonNumber](self, "seasonNumber"), v23 = objc_claimAutoreleasedReturnValue(), [infoCopy seasonNumber], v24 = objc_claimAutoreleasedReturnValue(), v25 = (v23 == 0) ^ (v24 == 0), v24, v23, (v25 & 1) != 0)
    || (-[TVRCMediaInfo episodeNumber](self, "episodeNumber"), v26 = objc_claimAutoreleasedReturnValue(), [infoCopy episodeNumber], v27 = objc_claimAutoreleasedReturnValue(), v28 = (v26 == 0) ^ (v27 == 0), v27, v26, (v28 & 1) != 0)
    || (-[TVRCMediaInfo showURL](self, "showURL"), v29 = objc_claimAutoreleasedReturnValue(), [infoCopy showURL], v30 = objc_claimAutoreleasedReturnValue(), v31 = (v29 == 0) ^ (v30 == 0), v30, v29, (v31 & 1) != 0)
    || (-[TVRCMediaInfo showIdentifier](self, "showIdentifier"), v32 = objc_claimAutoreleasedReturnValue(), [infoCopy showIdentifier], v33 = objc_claimAutoreleasedReturnValue(), v34 = (v32 == 0) ^ (v33 == 0), v33, v32, (v34 & 1) != 0)
    || (-[TVRCMediaInfo releaseDate](self, "releaseDate"), v35 = objc_claimAutoreleasedReturnValue(), [infoCopy releaseDate], v36 = objc_claimAutoreleasedReturnValue(), v37 = (v35 == 0) ^ (v36 == 0), v36, v35, (v37 & 1) != 0)
    || (-[TVRCMediaInfo rottenTomatoesReview](self, "rottenTomatoesReview"), v38 = objc_claimAutoreleasedReturnValue(), [infoCopy rottenTomatoesReview], v39 = objc_claimAutoreleasedReturnValue(), v40 = (v38 == 0) ^ (v39 == 0), v39, v38, (v40 & 1) != 0)
    || (-[TVRCMediaInfo identifier](self, "identifier"), v41 = objc_claimAutoreleasedReturnValue(), [infoCopy identifier], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v41, "isEqualToString:", v42), v42, v41, !v43)
    || (-[TVRCMediaInfo title](self, "title"), v44 = objc_claimAutoreleasedReturnValue(), [infoCopy title], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v44, "isEqualToString:", v45), v45, v44, !v46)
    || (v47 = -[TVRCMediaInfo kind](self, "kind"), v47 != [infoCopy kind])
    || (-[TVRCMediaInfo extendedDescription](self, "extendedDescription"), (v48 = objc_claimAutoreleasedReturnValue()) != 0) && (v49 = v48, -[TVRCMediaInfo extendedDescription](self, "extendedDescription"), v50 = objc_claimAutoreleasedReturnValue(), [infoCopy extendedDescription], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v50, "isEqualToString:", v51), v51, v50, v49, !v52)
    || (-[TVRCMediaInfo genre](self, "genre"), (v53 = objc_claimAutoreleasedReturnValue()) != 0) && (v54 = v53, -[TVRCMediaInfo genre](self, "genre"), v55 = objc_claimAutoreleasedReturnValue(), [infoCopy genre], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v55, "isEqualToString:", v56), v56, v55, v54, !v57)
    || (-[TVRCMediaInfo imageURLTemplate](self, "imageURLTemplate"), (v58 = objc_claimAutoreleasedReturnValue()) != 0) && (v59 = v58, -[TVRCMediaInfo imageURLTemplate](self, "imageURLTemplate"), v60 = objc_claimAutoreleasedReturnValue(), [infoCopy imageURLTemplate], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v60, "isEqual:", v61), v61, v60, v59, !v62)
    || (-[TVRCMediaInfo channelImageURLTemplate](self, "channelImageURLTemplate"), (v63 = objc_claimAutoreleasedReturnValue()) != 0) && (v64 = v63, -[TVRCMediaInfo channelImageURLTemplate](self, "channelImageURLTemplate"), v65 = objc_claimAutoreleasedReturnValue(), [infoCopy channelImageURLTemplate], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v65, "isEqual:", v66), v66, v65, v64, !v67)
    || (-[TVRCMediaInfo ratingDescription](self, "ratingDescription"), (v68 = objc_claimAutoreleasedReturnValue()) != 0) && (v69 = v68, -[TVRCMediaInfo ratingDescription](self, "ratingDescription"), v70 = objc_claimAutoreleasedReturnValue(), [infoCopy ratingDescription], v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(v70, "isEqualToString:", v71), v71, v70, v69, !v72)
    || (-[TVRCMediaInfo duration](self, "duration"), v73 = objc_claimAutoreleasedReturnValue(), [infoCopy duration], v74 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend(v73, "isEqualToNumber:", v74), v74, v73, !v75)
    || (-[TVRCMediaInfo showTitle](self, "showTitle"), (v76 = objc_claimAutoreleasedReturnValue()) != 0) && (v77 = v76, -[TVRCMediaInfo showTitle](self, "showTitle"), v78 = objc_claimAutoreleasedReturnValue(), [infoCopy showTitle], v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v78, "isEqualToString:", v79), v79, v78, v77, !v80)
    || (-[TVRCMediaInfo seasonNumber](self, "seasonNumber"), (v81 = objc_claimAutoreleasedReturnValue()) != 0) && (v82 = v81, -[TVRCMediaInfo seasonNumber](self, "seasonNumber"), v83 = objc_claimAutoreleasedReturnValue(), [infoCopy seasonNumber], v84 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend(v83, "isEqualToNumber:", v84), v84, v83, v82, !v85)
    || (-[TVRCMediaInfo episodeNumber](self, "episodeNumber"), (v86 = objc_claimAutoreleasedReturnValue()) != 0) && (v87 = v86, -[TVRCMediaInfo episodeNumber](self, "episodeNumber"), v88 = objc_claimAutoreleasedReturnValue(), [infoCopy episodeNumber], v89 = objc_claimAutoreleasedReturnValue(), v90 = objc_msgSend(v88, "isEqualToNumber:", v89), v89, v88, v87, !v90)
    || (-[TVRCMediaInfo productURL](self, "productURL"), v91 = objc_claimAutoreleasedReturnValue(), [infoCopy productURL], v92 = objc_claimAutoreleasedReturnValue(), v93 = objc_msgSend(v91, "isEqual:", v92), v92, v91, !v93)
    || (-[TVRCMediaInfo showURL](self, "showURL"), (v94 = objc_claimAutoreleasedReturnValue()) != 0) && (v95 = v94, -[TVRCMediaInfo showURL](self, "showURL"), v96 = objc_claimAutoreleasedReturnValue(), [infoCopy showURL], v97 = objc_claimAutoreleasedReturnValue(), v98 = objc_msgSend(v96, "isEqual:", v97), v97, v96, v95, !v98)
    || (-[TVRCMediaInfo showIdentifier](self, "showIdentifier"), (v99 = objc_claimAutoreleasedReturnValue()) != 0) && (v100 = v99, -[TVRCMediaInfo showIdentifier](self, "showIdentifier"), v101 = objc_claimAutoreleasedReturnValue(), [infoCopy showIdentifier], v102 = objc_claimAutoreleasedReturnValue(), v103 = objc_msgSend(v101, "isEqualToString:", v102), v102, v101, v100, !v103)
    || (v104 = -[TVRCMediaInfo isAppleOriginal](self, "isAppleOriginal"), v104 != [infoCopy isAppleOriginal])
    || (-[TVRCMediaInfo roles](self, "roles"), v105 = objc_claimAutoreleasedReturnValue(), [infoCopy roles], v106 = objc_claimAutoreleasedReturnValue(), v107 = objc_msgSend(v105, "isEqualToArray:", v106), v106, v105, !v107)
    || (-[TVRCMediaInfo releaseDate](self, "releaseDate"), (v108 = objc_claimAutoreleasedReturnValue()) != 0) && (v109 = v108, -[TVRCMediaInfo releaseDate](self, "releaseDate"), v110 = objc_claimAutoreleasedReturnValue(), [infoCopy releaseDate], v111 = objc_claimAutoreleasedReturnValue(), v112 = objc_msgSend(v110, "isEqualToDate:", v111), v111, v110, v109, !v112))
  {
    v117 = 0;
  }

  else
  {
    rottenTomatoesReview = [(TVRCMediaInfo *)self rottenTomatoesReview];
    if (rottenTomatoesReview)
    {
      v114 = rottenTomatoesReview;
      rottenTomatoesReview2 = [(TVRCMediaInfo *)self rottenTomatoesReview];
      rottenTomatoesReview3 = [infoCopy rottenTomatoesReview];
      v117 = [rottenTomatoesReview2 isEqualToRottenTomatoesReview:rottenTomatoesReview3];
    }

    else
    {
      v117 = 1;
    }
  }

  return v117 & 1;
}

- (NSArray)roleCategories
{
  v37 = *MEMORY[0x277D85DE8];
  roleCategories = self->_roleCategories;
  if (!roleCategories)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    selfCopy = self;
    roles = [(TVRCMediaInfo *)self roles];
    v7 = [roles countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(roles);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          roleDescription = [v11 roleDescription];
          if ([roleDescription length])
          {
            roleDescription2 = [v11 roleDescription];
            v14 = [v5 objectForKeyedSubscript:roleDescription2];

            if (!v14)
            {
              [v4 addObject:roleDescription];
              v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v5 setObject:v14 forKeyedSubscript:roleDescription];
            }

            [v14 addObject:v11];
          }
        }

        v8 = [roles countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v4;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * j);
          v22 = [v5 objectForKeyedSubscript:v21];
          if (v22)
          {
            v23 = [TVRCMediaInfoRoleCategory roleCategoryWithRoleDescription:v21 roles:v22];
            [(NSArray *)v15 addObject:v23];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    v24 = selfCopy->_roleCategories;
    selfCopy->_roleCategories = v15;

    roleCategories = selfCopy->_roleCategories;
  }

  return roleCategories;
}

- (NSString)primaryTitle
{
  showTitle = [(TVRCMediaInfo *)self showTitle];
  v4 = [showTitle length];

  if (v4)
  {
    [(TVRCMediaInfo *)self showTitle];
  }

  else
  {
    [(TVRCMediaInfo *)self title];
  }
  v5 = ;

  return v5;
}

- (TVRCMediaInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = TVRCMediaInfo;
  v5 = [(TVRCMediaInfo *)&v41 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_kind = [coderCopy decodeIntegerForKey:@"kind"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extendedDescription"];
    extendedDescription = v5->_extendedDescription;
    v5->_extendedDescription = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v5->_genre;
    v5->_genre = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURLTemplate"];
    imageURLTemplate = v5->_imageURLTemplate;
    v5->_imageURLTemplate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"channelImageURLTemplate"];
    channelImageURLTemplate = v5->_channelImageURLTemplate;
    v5->_channelImageURLTemplate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ratingDescription"];
    ratingDescription = v5->_ratingDescription;
    v5->_ratingDescription = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    duration = v5->_duration;
    v5->_duration = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showTitle"];
    showTitle = v5->_showTitle;
    v5->_showTitle = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seasonNumber"];
    seasonNumber = v5->_seasonNumber;
    v5->_seasonNumber = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"episodeNumber"];
    episodeNumber = v5->_episodeNumber;
    v5->_episodeNumber = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productURL"];
    productURL = v5->_productURL;
    v5->_productURL = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showURL"];
    showURL = v5->_showURL;
    v5->_showURL = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showIdentifier"];
    showIdentifier = v5->_showIdentifier;
    v5->_showIdentifier = v32;

    v5->_isAppleOriginal = [coderCopy decodeBoolForKey:@"isAppleOriginal"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roles"];
    roles = v5->_roles;
    v5->_roles = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rottenTomatoesReview"];
    rottenTomatoesReview = v5->_rottenTomatoesReview;
    v5->_rottenTomatoesReview = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeInteger:self->_kind forKey:@"kind"];
  [coderCopy encodeObject:self->_extendedDescription forKey:@"extendedDescription"];
  [coderCopy encodeObject:self->_genre forKey:@"genre"];
  [coderCopy encodeObject:self->_imageURLTemplate forKey:@"imageURLTemplate"];
  [coderCopy encodeObject:self->_channelImageURLTemplate forKey:@"channelImageURLTemplate"];
  [coderCopy encodeObject:self->_ratingDescription forKey:@"ratingDescription"];
  [coderCopy encodeObject:self->_duration forKey:@"duration"];
  [coderCopy encodeObject:self->_showTitle forKey:@"showTitle"];
  [coderCopy encodeObject:self->_seasonNumber forKey:@"seasonNumber"];
  [coderCopy encodeObject:self->_episodeNumber forKey:@"episodeNumber"];
  [coderCopy encodeObject:self->_productURL forKey:@"productURL"];
  [coderCopy encodeObject:self->_showURL forKey:@"showURL"];
  [coderCopy encodeObject:self->_showIdentifier forKey:@"showIdentifier"];
  [coderCopy encodeBool:self->_isAppleOriginal forKey:@"isAppleOriginal"];
  [coderCopy encodeObject:self->_roles forKey:@"roles"];
  [coderCopy encodeObject:self->_releaseDate forKey:@"releaseDate"];
  [coderCopy encodeObject:self->_rottenTomatoesReview forKey:@"rottenTomatoesReview"];
}

+ (unint64_t)kindForMediaType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Episode"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Movie"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Show"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SportingEvent"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)imageTemplateFromDict:(id)dict
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [dict objectForKeyedSubscript:@"images"];
  if (v3 && (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, (v4 = [&unk_287E66CA0 countByEnumeratingWithState:&v12 objects:v16 count:16]) != 0))
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(&unk_287E66CA0);
        }

        v8 = [v3 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if (v8)
        {
          v10 = v8;
          v9 = [v8 objectForKeyedSubscript:@"url"];

          goto LABEL_13;
        }
      }

      v5 = [&unk_287E66CA0 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

@end