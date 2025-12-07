@interface BMUAFAsset
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUAFAsset)initWithAssetName:(id)name assetSpecifier:(id)specifier assetVersion:(id)version assetLocale:(id)locale assetSource:(int)source isAssetPathValid:(id)valid assetPath:(id)path assetDownloadSizeInBytes:(id)self0 assetUnarchivedSizeInBytes:(id)self1;
- (BMUAFAsset)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUAFAsset

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    assetName = [(BMUAFAsset *)self assetName];
    assetName2 = [v5 assetName];
    v8 = assetName2;
    if (assetName == assetName2)
    {
    }

    else
    {
      assetName3 = [(BMUAFAsset *)self assetName];
      assetName4 = [v5 assetName];
      v11 = [assetName3 isEqual:assetName4];

      if (!v11)
      {
        goto LABEL_39;
      }
    }

    assetSpecifier = [(BMUAFAsset *)self assetSpecifier];
    assetSpecifier2 = [v5 assetSpecifier];
    v15 = assetSpecifier2;
    if (assetSpecifier == assetSpecifier2)
    {
    }

    else
    {
      assetSpecifier3 = [(BMUAFAsset *)self assetSpecifier];
      assetSpecifier4 = [v5 assetSpecifier];
      v18 = [assetSpecifier3 isEqual:assetSpecifier4];

      if (!v18)
      {
        goto LABEL_39;
      }
    }

    assetVersion = [(BMUAFAsset *)self assetVersion];
    assetVersion2 = [v5 assetVersion];
    v21 = assetVersion2;
    if (assetVersion == assetVersion2)
    {
    }

    else
    {
      assetVersion3 = [(BMUAFAsset *)self assetVersion];
      assetVersion4 = [v5 assetVersion];
      v24 = [assetVersion3 isEqual:assetVersion4];

      if (!v24)
      {
        goto LABEL_39;
      }
    }

    assetLocale = [(BMUAFAsset *)self assetLocale];
    assetLocale2 = [v5 assetLocale];
    v27 = assetLocale2;
    if (assetLocale == assetLocale2)
    {
    }

    else
    {
      assetLocale3 = [(BMUAFAsset *)self assetLocale];
      assetLocale4 = [v5 assetLocale];
      v30 = [assetLocale3 isEqual:assetLocale4];

      if (!v30)
      {
        goto LABEL_39;
      }
    }

    assetSource = [(BMUAFAsset *)self assetSource];
    if (assetSource != [v5 assetSource])
    {
      goto LABEL_39;
    }

    if (-[BMUAFAsset hasIsAssetPathValid](self, "hasIsAssetPathValid") || [v5 hasIsAssetPathValid])
    {
      if (![(BMUAFAsset *)self hasIsAssetPathValid])
      {
        goto LABEL_39;
      }

      if (![v5 hasIsAssetPathValid])
      {
        goto LABEL_39;
      }

      isAssetPathValid = [(BMUAFAsset *)self isAssetPathValid];
      if (isAssetPathValid != [v5 isAssetPathValid])
      {
        goto LABEL_39;
      }
    }

    assetPath = [(BMUAFAsset *)self assetPath];
    assetPath2 = [v5 assetPath];
    v35 = assetPath2;
    if (assetPath == assetPath2)
    {
    }

    else
    {
      assetPath3 = [(BMUAFAsset *)self assetPath];
      assetPath4 = [v5 assetPath];
      v38 = [assetPath3 isEqual:assetPath4];

      if (!v38)
      {
        goto LABEL_39;
      }
    }

    if (!-[BMUAFAsset hasAssetDownloadSizeInBytes](self, "hasAssetDownloadSizeInBytes") && ![v5 hasAssetDownloadSizeInBytes] || -[BMUAFAsset hasAssetDownloadSizeInBytes](self, "hasAssetDownloadSizeInBytes") && objc_msgSend(v5, "hasAssetDownloadSizeInBytes") && (v39 = -[BMUAFAsset assetDownloadSizeInBytes](self, "assetDownloadSizeInBytes"), v39 == objc_msgSend(v5, "assetDownloadSizeInBytes")))
    {
      if (!-[BMUAFAsset hasAssetUnarchivedSizeInBytes](self, "hasAssetUnarchivedSizeInBytes") && ![v5 hasAssetUnarchivedSizeInBytes])
      {
        v12 = 1;
        goto LABEL_40;
      }

      if (-[BMUAFAsset hasAssetUnarchivedSizeInBytes](self, "hasAssetUnarchivedSizeInBytes") && [v5 hasAssetUnarchivedSizeInBytes])
      {
        assetUnarchivedSizeInBytes = [(BMUAFAsset *)self assetUnarchivedSizeInBytes];
        v12 = assetUnarchivedSizeInBytes == [v5 assetUnarchivedSizeInBytes];
LABEL_40:

        goto LABEL_41;
      }
    }

LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  v12 = 0;
LABEL_41:

  return v12;
}

- (id)jsonDictionary
{
  v33[9] = *MEMORY[0x1E69E9840];
  assetName = [(BMUAFAsset *)self assetName];
  assetSpecifier = [(BMUAFAsset *)self assetSpecifier];
  assetVersion = [(BMUAFAsset *)self assetVersion];
  assetLocale = [(BMUAFAsset *)self assetLocale];
  jsonDictionary = [assetLocale jsonDictionary];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUAFAsset assetSource](self, "assetSource")}];
  if ([(BMUAFAsset *)self hasIsAssetPathValid])
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUAFAsset isAssetPathValid](self, "isAssetPathValid")}];
  }

  else
  {
    v31 = 0;
  }

  assetPath = [(BMUAFAsset *)self assetPath];
  if ([(BMUAFAsset *)self hasAssetDownloadSizeInBytes])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFAsset assetDownloadSizeInBytes](self, "assetDownloadSizeInBytes")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMUAFAsset *)self hasAssetUnarchivedSizeInBytes])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFAsset assetUnarchivedSizeInBytes](self, "assetUnarchivedSizeInBytes")}];
  }

  else
  {
    v10 = 0;
  }

  v32[0] = @"assetName";
  null = assetName;
  if (!assetName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null;
  v33[0] = null;
  v32[1] = @"assetSpecifier";
  null2 = assetSpecifier;
  if (!assetSpecifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null2;
  v33[1] = null2;
  v32[2] = @"assetVersion";
  null3 = assetVersion;
  if (!assetVersion)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = assetName;
  v24 = null3;
  v33[2] = null3;
  v32[3] = @"assetLocale";
  null4 = jsonDictionary;
  if (!jsonDictionary)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = assetSpecifier;
  v23 = null4;
  v33[3] = null4;
  v32[4] = @"assetSource";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = assetVersion;
  v33[4] = null5;
  v32[5] = @"isAssetPathValid";
  null6 = v31;
  if (!v31)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v33[5] = null6;
  v32[6] = @"assetPath";
  null7 = assetPath;
  if (!assetPath)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v8;
  v33[6] = null7;
  v32[7] = @"assetDownloadSizeInBytes";
  null8 = v9;
  if (!v9)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v33[7] = null8;
  v32[8] = @"assetUnarchivedSizeInBytes";
  null9 = v10;
  if (!v10)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v33[8] = null9;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:9];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_30;
    }
  }

LABEL_30:
  if (!assetPath)
  {
  }

  if (!v31)
  {
  }

  if (!v18)
  {
  }

  if (!jsonDictionary)
  {
  }

  if (v27)
  {
    if (v28)
    {
      goto LABEL_40;
    }

LABEL_47:

    if (v29)
    {
      goto LABEL_41;
    }

    goto LABEL_48;
  }

  if (!v28)
  {
    goto LABEL_47;
  }

LABEL_40:
  if (v29)
  {
    goto LABEL_41;
  }

LABEL_48:

LABEL_41:

  return v21;
}

- (BMUAFAsset)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v107[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"assetName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"assetSpecifier"];
    v87 = v9;
    if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
LABEL_7:
      v12 = [dictionaryCopy objectForKeyedSubscript:@"assetVersion"];
      v85 = v12;
      v86 = v8;
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        errorCopy = 0;
        goto LABEL_10;
      }

      errorCopy = error;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy = v12;
LABEL_10:
        v14 = [dictionaryCopy objectForKeyedSubscript:@"assetLocale"];
        v88 = dictionaryCopy;
        v84 = v14;
        if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          selfCopy3 = self;
          v17 = v7;
          v83 = 0;
          goto LABEL_13;
        }

        selfCopy2 = self;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v15;
          v89 = 0;
          v83 = [[BMUAFISOLocale alloc] initWithJSONDictionary:v23 error:&v89];
          v24 = v89;
          if (v24)
          {
            if (error)
            {
              v24 = v24;
              *error = v24;
            }

            v25 = 0;
            v12 = v85;
            v26 = v83;
            goto LABEL_83;
          }

          v17 = v7;

          selfCopy3 = self;
          v12 = v85;
LABEL_13:
          v18 = [v88 objectForKeyedSubscript:@"assetSource"];
          v76 = v18;
          v77 = errorCopy;
          if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v81 = v19;
              v12 = v85;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v81 = 0;
                  v25 = 0;
                  v26 = v83;
                  v7 = v17;
                  self = selfCopy3;
                  v33 = v84;
                  v12 = v85;
                  dictionaryCopy = v88;
                  goto LABEL_82;
                }

                v72 = objc_alloc(MEMORY[0x1E696ABC0]);
                v73 = *MEMORY[0x1E698F240];
                v98 = *MEMORY[0x1E696A578];
                v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"assetSource"];
                v99 = v79;
                v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
                v81 = 0;
                v25 = 0;
                *error = [v72 initWithDomain:v73 code:2 userInfo:?];
                v26 = v83;
                v7 = v17;
                self = selfCopy3;
                v33 = v84;
                v12 = v85;
                goto LABEL_93;
              }

              v81 = [MEMORY[0x1E696AD98] numberWithInt:BMUAFAssetUAFAssetSourceFromString(v19)];
              v12 = v85;
            }
          }

          else
          {
            v81 = 0;
          }

          v20 = [v88 objectForKeyedSubscript:@"isAssetPathValid"];
          v82 = v11;
          v75 = v20;
          if (!v20)
          {
            v79 = 0;
            self = selfCopy3;
            goto LABEL_33;
          }

          v21 = v20;
          objc_opt_class();
          self = selfCopy3;
          if (objc_opt_isKindOfClass())
          {
            v79 = 0;
LABEL_33:
            v33 = v84;
            goto LABEL_34;
          }

          objc_opt_class();
          v33 = v84;
          if (objc_opt_isKindOfClass())
          {
            v79 = v21;
LABEL_34:
            v34 = [v88 objectForKeyedSubscript:@"assetPath"];
            v7 = v17;
            selfCopy4 = self;
            if (v34)
            {
              objc_opt_class();
              dictionaryCopy = v88;
              if (objc_opt_isKindOfClass())
              {
                v35 = 0;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!error)
                  {
                    v58 = 0;
                    v25 = 0;
                    v12 = v85;
                    v26 = v83;
                    goto LABEL_80;
                  }

                  errorCopy2 = error;
                  v61 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v62 = *MEMORY[0x1E698F240];
                  v94 = *MEMORY[0x1E696A578];
                  v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetPath"];
                  v95 = v49;
                  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
                  v63 = [v61 initWithDomain:v62 code:2 userInfo:v47];
                  v58 = 0;
                  v25 = 0;
                  *errorCopy2 = v63;
                  errorCopy = v77;
                  goto LABEL_78;
                }

                v35 = v34;
              }
            }

            else
            {
              v35 = 0;
              dictionaryCopy = v88;
            }

            v47 = [dictionaryCopy objectForKeyedSubscript:@"assetDownloadSizeInBytes"];
            if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v58 = v35;
                  v49 = 0;
                  v25 = 0;
                  goto LABEL_77;
                }

                v64 = objc_alloc(MEMORY[0x1E696ABC0]);
                v65 = *MEMORY[0x1E698F240];
                v92 = *MEMORY[0x1E696A578];
                errorCopy3 = error;
                v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"assetDownloadSizeInBytes"];
                v93 = v51;
                v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
                v67 = [v64 initWithDomain:v65 code:2 userInfo:v50];
                v49 = 0;
                v25 = 0;
                *errorCopy3 = v67;
                goto LABEL_75;
              }

              errorCopy5 = error;
              v49 = v47;
            }

            else
            {
              errorCopy5 = error;
              v49 = 0;
            }

            v50 = [v88 objectForKeyedSubscript:@"assetUnarchivedSizeInBytes"];
            if (!v50 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v51 = 0;
LABEL_54:
              errorCopy = v77;
              v25 = -[BMUAFAsset initWithAssetName:assetSpecifier:assetVersion:assetLocale:assetSource:isAssetPathValid:assetPath:assetDownloadSizeInBytes:assetUnarchivedSizeInBytes:](selfCopy4, "initWithAssetName:assetSpecifier:assetVersion:assetLocale:assetSource:isAssetPathValid:assetPath:assetDownloadSizeInBytes:assetUnarchivedSizeInBytes:", v86, v11, v77, v83, [v81 intValue], v79, v35, v49, v51);
              selfCopy4 = v25;
LABEL_76:
              v58 = v35;

LABEL_77:
              v33 = v84;
LABEL_78:

              self = selfCopy4;
              v12 = v85;
              v26 = v83;
              goto LABEL_79;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v51 = v50;
              goto LABEL_54;
            }

            if (errorCopy5)
            {
              v68 = objc_alloc(MEMORY[0x1E696ABC0]);
              v74 = *MEMORY[0x1E698F240];
              v90 = *MEMORY[0x1E696A578];
              v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"assetUnarchivedSizeInBytes"];
              v91 = v69;
              v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
              *errorCopy5 = [v68 initWithDomain:v74 code:2 userInfo:v70];
            }

            v51 = 0;
            v25 = 0;
LABEL_75:
            errorCopy = v77;
            goto LABEL_76;
          }

          if (error)
          {
            v56 = objc_alloc(MEMORY[0x1E696ABC0]);
            v57 = *MEMORY[0x1E698F240];
            v96 = *MEMORY[0x1E696A578];
            v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isAssetPathValid"];
            v97 = v58;
            v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
            v59 = v56;
            v12 = v85;
            v79 = 0;
            v25 = 0;
            *error = [v59 initWithDomain:v57 code:2 userInfo:v34];
            v26 = v83;
            v7 = v17;
LABEL_79:
            dictionaryCopy = v88;
LABEL_80:

            v11 = v82;
LABEL_81:

LABEL_82:
            v23 = v33;
            goto LABEL_83;
          }

          v79 = 0;
          v25 = 0;
          v26 = v83;
          v7 = v17;
LABEL_93:
          dictionaryCopy = v88;
          goto LABEL_81;
        }

        if (!error)
        {
          v25 = 0;
          v12 = v85;
          goto LABEL_84;
        }

        v52 = objc_alloc(MEMORY[0x1E696ABC0]);
        v53 = *MEMORY[0x1E698F240];
        v100 = *MEMORY[0x1E696A578];
        v78 = errorCopy;
        errorCopy6 = error;
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assetLocale"];
        v101 = v26;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
        *errorCopy6 = [v52 initWithDomain:v53 code:2 userInfo:v55];
        errorCopy = v78;

        v25 = 0;
        v23 = v15;
        self = selfCopy2;
        v12 = v85;
LABEL_83:

        v15 = v23;
LABEL_84:

        v8 = v86;
        goto LABEL_85;
      }

      if (error)
      {
        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = v11;
        v44 = *MEMORY[0x1E698F240];
        v102 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetVersion"];
        v103 = v23;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        v45 = v42;
        v12 = v85;
        v46 = v44;
        v11 = v43;
        v25 = 0;
        *errorCopy = [v45 initWithDomain:v46 code:2 userInfo:v26];
        errorCopy = 0;
        goto LABEL_83;
      }

      v25 = 0;
LABEL_85:

      v10 = v87;
      goto LABEL_86;
    }

    if (error)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v37 = *MEMORY[0x1E698F240];
      v104 = *MEMORY[0x1E696A578];
      v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetSpecifier"];
      v105 = v38;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      v40 = v36;
      v12 = v39;
      v41 = [v40 initWithDomain:v37 code:2 userInfo:v39];
      v11 = 0;
      v25 = 0;
      *error = v41;
      errorCopy = v38;
      goto LABEL_85;
    }

    v11 = 0;
    v25 = 0;
LABEL_86:

    goto LABEL_87;
  }

  if (error)
  {
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E698F240];
    v106 = *MEMORY[0x1E696A578];
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetName"];
    v107[0] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:&v106 count:1];
    v31 = v27;
    v10 = v30;
    v32 = v28;
    v11 = v29;
    v8 = 0;
    v25 = 0;
    *error = [v31 initWithDomain:v32 code:2 userInfo:v30];
    goto LABEL_86;
  }

  v8 = 0;
  v25 = 0;
LABEL_87:

  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUAFAsset *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_assetName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetSpecifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetLocale)
  {
    PBDataWriterPlaceMark();
    [(BMUAFISOLocale *)self->_assetLocale writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasIsAssetPathValid)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_assetPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasAssetDownloadSizeInBytes)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasAssetUnarchivedSizeInBytes)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v52.receiver = self;
  v52.super_class = BMUAFAsset;
  v5 = [(BMEventBase *)&v52 init];
  if (!v5)
  {
    goto LABEL_94;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v53[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v53 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v53[0] & 0x7F) << v7;
        if ((v53[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            v23 = PBReaderReadString();
            v24 = 32;
          }

          else
          {
            if (v15 != 2)
            {
              goto LABEL_74;
            }

            v23 = PBReaderReadString();
            v24 = 40;
          }

          goto LABEL_55;
        }

        if (v15 == 3)
        {
          v23 = PBReaderReadString();
          v24 = 48;
LABEL_55:
          v34 = *(&v5->super.super.isa + v24);
          *(&v5->super.super.isa + v24) = v23;

          goto LABEL_91;
        }

        if (v15 != 4)
        {
          goto LABEL_74;
        }

        v53[0] = 0;
        v53[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_93;
        }

        v25 = [[BMUAFISOLocale alloc] initByReadFrom:fromCopy];
        if (!v25)
        {
          goto LABEL_93;
        }

        assetLocale = v5->_assetLocale;
        v5->_assetLocale = v25;

        PBReaderRecallMark();
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          while (1)
          {
            LOBYTE(v53[0]) = 0;
            v38 = [fromCopy position] + 1;
            if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v53 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v37 |= (v53[0] & 0x7F) << v35;
            if ((v53[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            if (v36++ > 8)
            {
              goto LABEL_80;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v37 > 4)
          {
LABEL_80:
            LODWORD(v37) = 0;
          }

          v5->_assetSource = v37;
        }

        else
        {
          if (v15 != 6)
          {
LABEL_74:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_93;
            }

            goto LABEL_91;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          v5->_hasIsAssetPathValid = 1;
          while (1)
          {
            LOBYTE(v53[0]) = 0;
            v30 = [fromCopy position] + 1;
            if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v53 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v29 |= (v53[0] & 0x7F) << v27;
            if ((v53[0] & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v13 = v28++ >= 9;
            if (v13)
            {
              LOBYTE(v33) = 0;
              goto LABEL_77;
            }
          }

          v33 = (v29 != 0) & ~[fromCopy hasError];
LABEL_77:
          v5->_isAssetPathValid = v33;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v23 = PBReaderReadString();
            v24 = 64;
            goto LABEL_55;
          case 8:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v5->_hasAssetDownloadSizeInBytes = 1;
            while (1)
            {
              LOBYTE(v53[0]) = 0;
              v45 = [fromCopy position] + 1;
              if (v45 >= [fromCopy position] && (v46 = objc_msgSend(fromCopy, "position") + 1, v46 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:v53 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v44 = (((v53[0] & 0x7F) << v42) | v44);
              if ((v53[0] & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v13 = v43++ >= 9;
              if (v13)
              {
                v22 = 0;
                goto LABEL_89;
              }
            }

            if ([fromCopy hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v44;
            }

LABEL_89:
            v48 = 72;
            break;
          case 9:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasAssetUnarchivedSizeInBytes = 1;
            while (1)
            {
              LOBYTE(v53[0]) = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:v53 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v53[0] & 0x7F) << v16) | v18);
              if ((v53[0] & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v13 = v17++ >= 9;
              if (v13)
              {
                v22 = 0;
                goto LABEL_85;
              }
            }

            if ([fromCopy hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_85:
            v48 = 80;
            break;
          default:
            goto LABEL_74;
        }

        *(&v5->super.super.isa + v48) = v22;
      }

LABEL_91:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_93:
    v50 = 0;
  }

  else
  {
LABEL_94:
    v50 = v5;
  }

  return v50;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  assetName = [(BMUAFAsset *)self assetName];
  assetSpecifier = [(BMUAFAsset *)self assetSpecifier];
  assetVersion = [(BMUAFAsset *)self assetVersion];
  assetLocale = [(BMUAFAsset *)self assetLocale];
  v7 = BMUAFAssetUAFAssetSourceAsString([(BMUAFAsset *)self assetSource]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUAFAsset isAssetPathValid](self, "isAssetPathValid")}];
  assetPath = [(BMUAFAsset *)self assetPath];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFAsset assetDownloadSizeInBytes](self, "assetDownloadSizeInBytes")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFAsset assetUnarchivedSizeInBytes](self, "assetUnarchivedSizeInBytes")}];
  v12 = [v14 initWithFormat:@"BMUAFAsset with assetName: %@, assetSpecifier: %@, assetVersion: %@, assetLocale: %@, assetSource: %@, isAssetPathValid: %@, assetPath: %@, assetDownloadSizeInBytes: %@, assetUnarchivedSizeInBytes: %@", assetName, assetSpecifier, assetVersion, assetLocale, v7, v8, assetPath, v10, v11];

  return v12;
}

- (BMUAFAsset)initWithAssetName:(id)name assetSpecifier:(id)specifier assetVersion:(id)version assetLocale:(id)locale assetSource:(int)source isAssetPathValid:(id)valid assetPath:(id)path assetDownloadSizeInBytes:(id)self0 assetUnarchivedSizeInBytes:(id)self1
{
  nameCopy = name;
  specifierCopy = specifier;
  versionCopy = version;
  localeCopy = locale;
  validCopy = valid;
  pathCopy = path;
  bytesCopy = bytes;
  inBytesCopy = inBytes;
  v30.receiver = self;
  v30.super_class = BMUAFAsset;
  v21 = [(BMEventBase *)&v30 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_assetName, name);
    objc_storeStrong(&v21->_assetSpecifier, specifier);
    objc_storeStrong(&v21->_assetVersion, version);
    objc_storeStrong(&v21->_assetLocale, locale);
    v21->_assetSource = source;
    if (validCopy)
    {
      v21->_hasIsAssetPathValid = 1;
      v21->_isAssetPathValid = [validCopy BOOLValue];
    }

    else
    {
      v21->_hasIsAssetPathValid = 0;
      v21->_isAssetPathValid = 0;
    }

    objc_storeStrong(&v21->_assetPath, path);
    if (bytesCopy)
    {
      v21->_hasAssetDownloadSizeInBytes = 1;
      unsignedLongLongValue = [bytesCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v21->_hasAssetDownloadSizeInBytes = 0;
    }

    v21->_assetDownloadSizeInBytes = unsignedLongLongValue;
    if (inBytesCopy)
    {
      v21->_hasAssetUnarchivedSizeInBytes = 1;
      unsignedLongLongValue2 = [inBytesCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = 0;
      v21->_hasAssetUnarchivedSizeInBytes = 0;
    }

    v21->_assetUnarchivedSizeInBytes = unsignedLongLongValue2;
  }

  return v21;
}

+ (id)protoFields
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetName" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetSpecifier" number:2 type:13 subMessageClass:{0, v2}];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetVersion" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetLocale" number:4 type:14 subMessageClass:objc_opt_class()];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetSource" number:5 type:4 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAssetPathValid" number:6 type:12 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetPath" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetDownloadSizeInBytes" number:8 type:5 subMessageClass:0];
  v13[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetUnarchivedSizeInBytes" number:9 type:5 subMessageClass:0];
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

+ (id)columns
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetSpecifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetVersion" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assetLocale_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_575_103303];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetSource" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAssetPathValid" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetPath" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetDownloadSizeInBytes" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:5 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetUnarchivedSizeInBytes" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:5 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

id __21__BMUAFAsset_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 assetLocale];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMUAFAsset alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end