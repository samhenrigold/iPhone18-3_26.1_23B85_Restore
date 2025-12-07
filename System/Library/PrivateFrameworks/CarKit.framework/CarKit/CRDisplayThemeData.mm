@interface CRDisplayThemeData
- (BOOL)isEqual:(id)equal;
- (CRDisplayThemeData)initWithCoder:(id)coder;
- (CRDisplayThemeData)initWithCurrentLayoutID:(id)d paletteIDForLayout:(id)layout wallpaperForLayout:(id)forLayout homeScreenStyleForLayout:(id)styleForLayout;
- (CRDisplayThemeData)initWithDictionary:(id)dictionary;
- (CRDisplayThemeData)themeDataWithCurrentHomeScreenStyle:(id)style;
- (CRDisplayThemeData)themeDataWithCurrentLayoutID:(id)d;
- (CRDisplayThemeData)themeDataWithCurrentPaletteID:(id)d;
- (CRDisplayThemeData)themeDataWithCurrentWallpaper:(id)wallpaper;
- (CRHomeScreenStyleData)currentHomeScreenStyle;
- (CRWallpaperData)currentWallpaper;
- (NSString)currentPaletteID;
- (id)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRDisplayThemeData

- (CRDisplayThemeData)initWithCurrentLayoutID:(id)d paletteIDForLayout:(id)layout wallpaperForLayout:(id)forLayout homeScreenStyleForLayout:(id)styleForLayout
{
  dCopy = d;
  layoutCopy = layout;
  forLayoutCopy = forLayout;
  styleForLayoutCopy = styleForLayout;
  v27.receiver = self;
  v27.super_class = CRDisplayThemeData;
  v14 = [(CRDisplayThemeData *)&v27 init];
  if (v14)
  {
    v15 = [dCopy copy];
    currentLayoutID = v14->_currentLayoutID;
    v14->_currentLayoutID = v15;

    v17 = [layoutCopy copy];
    paletteIDForLayout = v14->_paletteIDForLayout;
    v14->_paletteIDForLayout = v17;

    v19 = [forLayoutCopy copy];
    wallpaperForLayout = v14->_wallpaperForLayout;
    v14->_wallpaperForLayout = v19;

    v21 = [styleForLayoutCopy copy];
    homeScreenStyleForLayout = v14->_homeScreenStyleForLayout;
    v14->_homeScreenStyleForLayout = v21;

    v23 = [forLayoutCopy objectForKeyedSubscript:dCopy];

    if (!v23)
    {
      v25 = CarGeneralLogging(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [CRDisplayThemeData initWithCurrentLayoutID:dCopy paletteIDForLayout:forLayoutCopy wallpaperForLayout:v25 homeScreenStyleForLayout:?];
      }
    }
  }

  return v14;
}

- (CRDisplayThemeData)initWithDictionary:(id)dictionary
{
  v102 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v5 = [dictionaryCopy objectForKey:@"currentLayoutID"];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v77 = v5;
  }

  else
  {
    v77 = 0;
  }

  objc_opt_class();
  v6 = [dictionaryCopy objectForKey:@"paletteIDForLayout"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  v8 = [dictionaryCopy objectForKey:@"wallpaperForLayout"];
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v82 = v8;
  }

  else
  {
    v82 = 0;
  }

  objc_opt_class();
  v9 = [dictionaryCopy objectForKey:@"homeScreenStyleForLayout"];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v80 = v9;
  }

  else
  {
    v80 = 0;
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v92;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v92 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v91 + 1) + 8 * i);
        objc_opt_class();
        v16 = v15;
        if (!v16 || (objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_72:
          v20 = CarGeneralLogging(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v52 = v77;
            if (v16)
            {
              v59 = objc_opt_class();
              v57 = NSStringFromClass(v59);
              v60 = objc_opt_class();
              v58 = NSStringFromClass(v60);
            }

            else
            {
              v57 = @"nil";
              v58 = @"nil";
            }

            *buf = 138412546;
            v98 = v57;
            v99 = 2112;
            v100 = v58;
            _os_log_error_impl(&dword_1C81FC000, v20, OS_LOG_TYPE_ERROR, "Invalid palette ID, expected strings, found: %@:%@", buf, 0x16u);
            if (v16)
            {
            }

            selfCopy3 = 0;
            v53 = v10;
          }

          else
          {
            selfCopy3 = 0;
            v53 = v10;
            v52 = v77;
          }

          goto LABEL_91;
        }

        objc_opt_class();
        v17 = [v10 objectForKey:v16];
        if (v17 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        if (!v18)
        {
          goto LABEL_72;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v91 objects:v101 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v81 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v20 = v82;
  v75 = [v20 countByEnumeratingWithState:&v87 objects:v96 count:16];
  if (v75)
  {
    obj = *v88;
    v72 = dictionaryCopy;
    v74 = v20;
    selfCopy = self;
    while (2)
    {
      for (j = 0; j != v75; ++j)
      {
        if (*v88 != obj)
        {
          objc_enumerationMutation(v20);
        }

        v22 = *(*(&v87 + 1) + 8 * j);
        v23 = [v20 objectForKey:v22];
        objc_opt_class();
        v24 = v22;
        if (!v24 || (objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_75:
          v29 = CarGeneralLogging(v27);
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v52 = v77;
            goto LABEL_80;
          }

          v52 = v77;
          v53 = v81;
          if (v24)
          {
            v64 = objc_opt_class();
            v62 = NSStringFromClass(v64);
          }

          else
          {
            v62 = @"nil";
          }

          if (v23)
          {
            v66 = objc_opt_class();
            v65 = NSStringFromClass(v66);
          }

          else
          {
            v65 = @"nil";
          }

          *buf = 138412546;
          v98 = v62;
          v99 = 2112;
          v100 = v65;
          _os_log_error_impl(&dword_1C81FC000, v29, OS_LOG_TYPE_ERROR, "Invalid palette ID, expected string:dictionary, found: %@:%@", buf, 0x16u);
          if (v23)
          {
          }

          if (v24)
          {
          }

LABEL_81:

          selfCopy3 = 0;
          self = selfCopy;
          dictionaryCopy = v72;
          goto LABEL_91;
        }

        objc_opt_class();
        v25 = v23;
        if (v25 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        if (!v26)
        {
          goto LABEL_75;
        }

        objc_opt_class();
        v28 = [v25 objectForKey:@"type"];
        if (v28 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        objc_opt_class();
        v30 = [v25 objectForKey:@"data"];
        if (v30 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        v32 = off_1E82FB708;
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = [v29 isEqualToString:v34];

        if ((v35 & 1) == 0 && (v32 = off_1E82FB770, v36 = objc_opt_class(), NSStringFromClass(v36), v37 = objc_claimAutoreleasedReturnValue(), v38 = -[NSObject isEqualToString:](v29, "isEqualToString:", v37), v37, !v38) || (v39 = [objc_alloc(*v32) initWithDictionary:v31]) == 0)
        {
          v55 = CarGeneralLogging(v39);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            [(CRDisplayThemeData *)v24 initWithDictionary:v31, v55];
          }

          v52 = v77;
          v20 = v74;
LABEL_80:
          v53 = v81;
          goto LABEL_81;
        }

        v40 = v39;
        [v81 setObject:v39 forKey:v24];

        v20 = v74;
      }

      self = selfCopy;
      dictionaryCopy = v72;
      v75 = [v74 countByEnumeratingWithState:&v87 objects:v96 count:16];
      if (v75)
      {
        continue;
      }

      break;
    }
  }

  v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v80, "count")}];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obja = v80;
  v41 = [obja countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (v41)
  {
    v42 = v41;
    v76 = *v84;
    selfCopy2 = self;
    v73 = dictionaryCopy;
    while (2)
    {
      for (k = 0; k != v42; ++k)
      {
        v44 = v20;
        if (*v84 != v76)
        {
          objc_enumerationMutation(obja);
        }

        v45 = *(*(&v83 + 1) + 8 * k);
        v46 = [obja objectForKey:v45];
        objc_opt_class();
        v47 = v45;
        if (!v47 || (objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_83:
          v56 = CarGeneralLogging(v50);
          self = selfCopy2;
          dictionaryCopy = v73;
          v52 = v77;
          v53 = v81;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            if (v47)
            {
              v67 = objc_opt_class();
              v63 = NSStringFromClass(v67);
            }

            else
            {
              v63 = @"nil";
            }

            if (v46)
            {
              v69 = objc_opt_class();
              v68 = NSStringFromClass(v69);
            }

            else
            {
              v68 = @"nil";
            }

            *buf = 138412546;
            v98 = v63;
            v99 = 2112;
            v100 = v68;
            _os_log_error_impl(&dword_1C81FC000, v56, OS_LOG_TYPE_ERROR, "Invalid palette ID, expected string:data, found: %@:%@", buf, 0x16u);
            if (v46)
            {
            }

            if (v47)
            {
            }

            self = selfCopy2;
            dictionaryCopy = v73;
          }

          selfCopy3 = 0;
          v20 = v44;
          goto LABEL_91;
        }

        objc_opt_class();
        v48 = v46;
        if (v48 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v49 = v48;
        }

        else
        {
          v49 = 0;
        }

        if (!v49)
        {
          goto LABEL_83;
        }

        v51 = [[CRHomeScreenStyleData alloc] initWithDictionary:v48];
        v20 = v44;
        [v44 setObject:v51 forKey:v47];
      }

      v42 = [obja countByEnumeratingWithState:&v83 objects:v95 count:16];
      self = selfCopy2;
      dictionaryCopy = v73;
      if (v42)
      {
        continue;
      }

      break;
    }
  }

  v52 = v77;
  v53 = v81;
  self = [(CRDisplayThemeData *)self initWithCurrentLayoutID:v77 paletteIDForLayout:v10 wallpaperForLayout:v81 homeScreenStyleForLayout:v20];
  selfCopy3 = self;
LABEL_91:

  return selfCopy3;
}

- (id)asDictionary
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  currentLayoutID = [(CRDisplayThemeData *)self currentLayoutID];
  if (currentLayoutID && (v5 = currentLayoutID, [(CRDisplayThemeData *)self paletteIDForLayout], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    currentLayoutID2 = [(CRDisplayThemeData *)self currentLayoutID];
    [v3 setObject:currentLayoutID2 forKey:@"currentLayoutID"];

    paletteIDForLayout = [(CRDisplayThemeData *)self paletteIDForLayout];
    v33 = v3;
    [v3 setObject:paletteIDForLayout forKey:@"paletteIDForLayout"];

    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [(CRDisplayThemeData *)self wallpaperForLayout];
    v9 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          wallpaperForLayout = [(CRDisplayThemeData *)self wallpaperForLayout];
          v15 = [wallpaperForLayout objectForKey:v13];

          asDictionary = [v15 asDictionary];
          if (!asDictionary)
          {

LABEL_23:
            v31 = 0;
            v3 = v33;
            goto LABEL_24;
          }

          v17 = asDictionary;
          v45[0] = @"type";
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v45[1] = @"data";
          v46[0] = v19;
          v46[1] = v17;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
          [v35 setObject:v20 forKeyedSubscript:v13];
        }

        v10 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    [v33 setObject:v35 forKey:@"wallpaperForLayout"];
    obj = objc_alloc_init(MEMORY[0x1E695DF90]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    homeScreenStyleForLayout = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
    v22 = [homeScreenStyleForLayout countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      while (2)
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(homeScreenStyleForLayout);
          }

          v26 = *(*(&v36 + 1) + 8 * j);
          homeScreenStyleForLayout2 = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
          v28 = [homeScreenStyleForLayout2 objectForKey:v26];

          asDictionary2 = [v28 asDictionary];
          if (!asDictionary2)
          {

            goto LABEL_23;
          }

          v30 = asDictionary2;
          [obj setObject:asDictionary2 forKeyedSubscript:v26];
        }

        v23 = [homeScreenStyleForLayout countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v3 = v33;
    [v33 setObject:obj forKey:@"homeScreenStyleForLayout"];
    v31 = [v33 copy];
LABEL_24:
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (CRDisplayThemeData)themeDataWithCurrentLayoutID:(id)d
{
  dCopy = d;
  v5 = [CRDisplayThemeData alloc];
  paletteIDForLayout = [(CRDisplayThemeData *)self paletteIDForLayout];
  wallpaperForLayout = [(CRDisplayThemeData *)self wallpaperForLayout];
  homeScreenStyleForLayout = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  v9 = [(CRDisplayThemeData *)v5 initWithCurrentLayoutID:dCopy paletteIDForLayout:paletteIDForLayout wallpaperForLayout:wallpaperForLayout homeScreenStyleForLayout:homeScreenStyleForLayout];

  return v9;
}

- (CRDisplayThemeData)themeDataWithCurrentPaletteID:(id)d
{
  dCopy = d;
  paletteIDForLayout = [(CRDisplayThemeData *)self paletteIDForLayout];
  v6 = [paletteIDForLayout mutableCopy];

  currentLayoutID = [(CRDisplayThemeData *)self currentLayoutID];
  [v6 setObject:dCopy forKeyedSubscript:currentLayoutID];

  v8 = [CRDisplayThemeData alloc];
  currentLayoutID2 = [(CRDisplayThemeData *)self currentLayoutID];
  wallpaperForLayout = [(CRDisplayThemeData *)self wallpaperForLayout];
  homeScreenStyleForLayout = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  v12 = [(CRDisplayThemeData *)v8 initWithCurrentLayoutID:currentLayoutID2 paletteIDForLayout:v6 wallpaperForLayout:wallpaperForLayout homeScreenStyleForLayout:homeScreenStyleForLayout];

  return v12;
}

- (CRDisplayThemeData)themeDataWithCurrentWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  wallpaperForLayout = [(CRDisplayThemeData *)self wallpaperForLayout];
  v6 = [wallpaperForLayout mutableCopy];

  currentLayoutID = [(CRDisplayThemeData *)self currentLayoutID];
  [v6 setObject:wallpaperCopy forKeyedSubscript:currentLayoutID];

  v8 = [CRDisplayThemeData alloc];
  currentLayoutID2 = [(CRDisplayThemeData *)self currentLayoutID];
  paletteIDForLayout = [(CRDisplayThemeData *)self paletteIDForLayout];
  homeScreenStyleForLayout = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  v12 = [(CRDisplayThemeData *)v8 initWithCurrentLayoutID:currentLayoutID2 paletteIDForLayout:paletteIDForLayout wallpaperForLayout:v6 homeScreenStyleForLayout:homeScreenStyleForLayout];

  return v12;
}

- (CRDisplayThemeData)themeDataWithCurrentHomeScreenStyle:(id)style
{
  styleCopy = style;
  homeScreenStyleForLayout = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  v6 = [homeScreenStyleForLayout mutableCopy];

  currentLayoutID = [(CRDisplayThemeData *)self currentLayoutID];
  [v6 setObject:styleCopy forKeyedSubscript:currentLayoutID];

  v8 = [CRDisplayThemeData alloc];
  currentLayoutID2 = [(CRDisplayThemeData *)self currentLayoutID];
  paletteIDForLayout = [(CRDisplayThemeData *)self paletteIDForLayout];
  wallpaperForLayout = [(CRDisplayThemeData *)self wallpaperForLayout];
  v12 = [(CRDisplayThemeData *)v8 initWithCurrentLayoutID:currentLayoutID2 paletteIDForLayout:paletteIDForLayout wallpaperForLayout:wallpaperForLayout homeScreenStyleForLayout:v6];

  return v12;
}

- (NSString)currentPaletteID
{
  paletteIDForLayout = [(CRDisplayThemeData *)self paletteIDForLayout];
  currentLayoutID = [(CRDisplayThemeData *)self currentLayoutID];
  v5 = [paletteIDForLayout objectForKeyedSubscript:currentLayoutID];

  if (!v5)
  {
    [CRDisplayThemeData currentPaletteID];
  }

  return v5;
}

- (CRWallpaperData)currentWallpaper
{
  wallpaperForLayout = [(CRDisplayThemeData *)self wallpaperForLayout];
  currentLayoutID = [(CRDisplayThemeData *)self currentLayoutID];
  v5 = [wallpaperForLayout objectForKeyedSubscript:currentLayoutID];

  if (!v5)
  {
    [CRDisplayThemeData currentWallpaper];
  }

  return v5;
}

- (CRHomeScreenStyleData)currentHomeScreenStyle
{
  homeScreenStyleForLayout = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  currentLayoutID = [(CRDisplayThemeData *)self currentLayoutID];
  v5 = [homeScreenStyleForLayout objectForKeyedSubscript:currentLayoutID];

  if (!v5)
  {
    [CRDisplayThemeData currentHomeScreenStyle];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    currentLayoutID = [(CRDisplayThemeData *)self currentLayoutID];
    currentLayoutID2 = [v5 currentLayoutID];
    if ([currentLayoutID isEqualToString:currentLayoutID2])
    {
      paletteIDForLayout = [(CRDisplayThemeData *)self paletteIDForLayout];
      paletteIDForLayout2 = [v5 paletteIDForLayout];
      if ([paletteIDForLayout isEqualToDictionary:paletteIDForLayout2])
      {
        wallpaperForLayout = [(CRDisplayThemeData *)self wallpaperForLayout];
        wallpaperForLayout2 = [v5 wallpaperForLayout];
        if ([wallpaperForLayout isEqualToDictionary:wallpaperForLayout2])
        {
          homeScreenStyleForLayout = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
          homeScreenStyleForLayout2 = [v5 homeScreenStyleForLayout];
          v14 = [homeScreenStyleForLayout isEqualToDictionary:homeScreenStyleForLayout2];
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

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CRDisplayThemeData;
  v4 = [(CRDisplayThemeData *)&v11 description];
  currentLayoutID = [(CRDisplayThemeData *)self currentLayoutID];
  paletteIDForLayout = [(CRDisplayThemeData *)self paletteIDForLayout];
  wallpaperForLayout = [(CRDisplayThemeData *)self wallpaperForLayout];
  homeScreenStyleForLayout = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  v9 = [v3 stringWithFormat:@"%@ {currentLayoutID: %@ paletteIDForLayout: %@ wallpaperForLayout: %@ homeScreenStyleForLayout: %@}", v4, currentLayoutID, paletteIDForLayout, wallpaperForLayout, homeScreenStyleForLayout];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  currentLayoutID = [(CRDisplayThemeData *)self currentLayoutID];
  [coderCopy encodeObject:currentLayoutID forKey:@"currentLayoutID"];

  paletteIDForLayout = [(CRDisplayThemeData *)self paletteIDForLayout];
  [coderCopy encodeObject:paletteIDForLayout forKey:@"paletteIDForLayout"];

  wallpaperForLayout = [(CRDisplayThemeData *)self wallpaperForLayout];
  [coderCopy encodeObject:wallpaperForLayout forKey:@"wallpaperForLayout"];

  homeScreenStyleForLayout = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  [coderCopy encodeObject:homeScreenStyleForLayout forKey:@"homeScreenStyleForLayout"];
}

- (CRDisplayThemeData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentLayoutID"];
  v6 = objc_opt_class();
  v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"paletteIDForLayout"];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v11 forKey:@"wallpaperForLayout"];

  v13 = objc_opt_class();
  v14 = [coderCopy decodeDictionaryWithKeysOfClass:v13 objectsOfClass:objc_opt_class() forKey:@"homeScreenStyleForLayout"];

  selfCopy = 0;
  if (v5 && v7 && v12)
  {
    self = [(CRDisplayThemeData *)self initWithCurrentLayoutID:v5 paletteIDForLayout:v7 wallpaperForLayout:v12 homeScreenStyleForLayout:v14];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initWithCurrentLayoutID:(NSObject *)a3 paletteIDForLayout:wallpaperForLayout:homeScreenStyleForLayout:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 allKeys];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_fault_impl(&dword_1C81FC000, a3, OS_LOG_TYPE_FAULT, "Unknown wallpaper for layout: %@. Wallpapers are available for layouts: %@", &v6, 0x16u);
}

- (void)initWithDictionary:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1C81FC000, log, OS_LOG_TYPE_ERROR, "Failed to initialize wallpaper, %@, from data: %@", &v3, 0x16u);
}

@end