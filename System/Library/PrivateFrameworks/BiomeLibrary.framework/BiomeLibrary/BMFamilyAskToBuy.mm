@interface BMFamilyAskToBuy
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMFamilyAskToBuy)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMFamilyAskToBuy)initWithRequestID:(id)d eventTime:(id)time userID:(id)iD actionUserID:(id)userID status:(int)status itemTitle:(id)title itemDescription:(id)description itemLocalizedPrice:(id)self0 thumbnailPath:(id)self1 ageRating:(id)self2 starRating:(id)self3 productType:(id)self4 isActionUserDevice:(id)self5 storeLink:(id)self6;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMFamilyAskToBuy

+ (id)columns
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventTime" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionUserID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"status" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemTitle" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemDescription" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemLocalizedPrice" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"thumbnailPath" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ageRating" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starRating" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:1 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productType" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActionUserDevice" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"storeLink" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v18[0] = v17;
  v18[1] = v16;
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = v2;
  v18[5] = v3;
  v18[6] = v4;
  v18[7] = v5;
  v18[8] = v6;
  v18[9] = v13;
  v18[10] = v7;
  v18[11] = v12;
  v18[12] = v8;
  v18[13] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    requestID = [(BMFamilyAskToBuy *)self requestID];
    requestID2 = [v5 requestID];
    v8 = requestID2;
    if (requestID == requestID2)
    {
    }

    else
    {
      requestID3 = [(BMFamilyAskToBuy *)self requestID];
      requestID4 = [v5 requestID];
      v11 = [requestID3 isEqual:requestID4];

      if (!v11)
      {
        goto LABEL_55;
      }
    }

    if (-[BMFamilyAskToBuy hasEventTime](self, "hasEventTime") || [v5 hasEventTime])
    {
      if (![(BMFamilyAskToBuy *)self hasEventTime])
      {
        goto LABEL_55;
      }

      if (![v5 hasEventTime])
      {
        goto LABEL_55;
      }

      [(BMFamilyAskToBuy *)self eventTime];
      v14 = v13;
      [v5 eventTime];
      if (v14 != v15)
      {
        goto LABEL_55;
      }
    }

    userID = [(BMFamilyAskToBuy *)self userID];
    userID2 = [v5 userID];
    v18 = userID2;
    if (userID == userID2)
    {
    }

    else
    {
      userID3 = [(BMFamilyAskToBuy *)self userID];
      userID4 = [v5 userID];
      v21 = [userID3 isEqual:userID4];

      if (!v21)
      {
        goto LABEL_55;
      }
    }

    actionUserID = [(BMFamilyAskToBuy *)self actionUserID];
    actionUserID2 = [v5 actionUserID];
    v24 = actionUserID2;
    if (actionUserID == actionUserID2)
    {
    }

    else
    {
      actionUserID3 = [(BMFamilyAskToBuy *)self actionUserID];
      actionUserID4 = [v5 actionUserID];
      v27 = [actionUserID3 isEqual:actionUserID4];

      if (!v27)
      {
        goto LABEL_55;
      }
    }

    status = [(BMFamilyAskToBuy *)self status];
    if (status == [v5 status])
    {
      itemTitle = [(BMFamilyAskToBuy *)self itemTitle];
      itemTitle2 = [v5 itemTitle];
      v31 = itemTitle2;
      if (itemTitle == itemTitle2)
      {
      }

      else
      {
        itemTitle3 = [(BMFamilyAskToBuy *)self itemTitle];
        itemTitle4 = [v5 itemTitle];
        v34 = [itemTitle3 isEqual:itemTitle4];

        if (!v34)
        {
          goto LABEL_55;
        }
      }

      itemDescription = [(BMFamilyAskToBuy *)self itemDescription];
      itemDescription2 = [v5 itemDescription];
      v37 = itemDescription2;
      if (itemDescription == itemDescription2)
      {
      }

      else
      {
        itemDescription3 = [(BMFamilyAskToBuy *)self itemDescription];
        itemDescription4 = [v5 itemDescription];
        v40 = [itemDescription3 isEqual:itemDescription4];

        if (!v40)
        {
          goto LABEL_55;
        }
      }

      itemLocalizedPrice = [(BMFamilyAskToBuy *)self itemLocalizedPrice];
      itemLocalizedPrice2 = [v5 itemLocalizedPrice];
      v43 = itemLocalizedPrice2;
      if (itemLocalizedPrice == itemLocalizedPrice2)
      {
      }

      else
      {
        itemLocalizedPrice3 = [(BMFamilyAskToBuy *)self itemLocalizedPrice];
        itemLocalizedPrice4 = [v5 itemLocalizedPrice];
        v46 = [itemLocalizedPrice3 isEqual:itemLocalizedPrice4];

        if (!v46)
        {
          goto LABEL_55;
        }
      }

      thumbnailPath = [(BMFamilyAskToBuy *)self thumbnailPath];
      thumbnailPath2 = [v5 thumbnailPath];
      v49 = thumbnailPath2;
      if (thumbnailPath == thumbnailPath2)
      {
      }

      else
      {
        thumbnailPath3 = [(BMFamilyAskToBuy *)self thumbnailPath];
        thumbnailPath4 = [v5 thumbnailPath];
        v52 = [thumbnailPath3 isEqual:thumbnailPath4];

        if (!v52)
        {
          goto LABEL_55;
        }
      }

      ageRating = [(BMFamilyAskToBuy *)self ageRating];
      ageRating2 = [v5 ageRating];
      v55 = ageRating2;
      if (ageRating == ageRating2)
      {
      }

      else
      {
        ageRating3 = [(BMFamilyAskToBuy *)self ageRating];
        ageRating4 = [v5 ageRating];
        v58 = [ageRating3 isEqual:ageRating4];

        if (!v58)
        {
          goto LABEL_55;
        }
      }

      if (-[BMFamilyAskToBuy hasStarRating](self, "hasStarRating") || [v5 hasStarRating])
      {
        if (![(BMFamilyAskToBuy *)self hasStarRating])
        {
          goto LABEL_55;
        }

        if (![v5 hasStarRating])
        {
          goto LABEL_55;
        }

        [(BMFamilyAskToBuy *)self starRating];
        v60 = v59;
        [v5 starRating];
        if (v60 != v61)
        {
          goto LABEL_55;
        }
      }

      productType = [(BMFamilyAskToBuy *)self productType];
      productType2 = [v5 productType];
      v64 = productType2;
      if (productType == productType2)
      {
      }

      else
      {
        productType3 = [(BMFamilyAskToBuy *)self productType];
        productType4 = [v5 productType];
        v67 = [productType3 isEqual:productType4];

        if (!v67)
        {
          goto LABEL_55;
        }
      }

      if (!-[BMFamilyAskToBuy hasIsActionUserDevice](self, "hasIsActionUserDevice") && ![v5 hasIsActionUserDevice] || -[BMFamilyAskToBuy hasIsActionUserDevice](self, "hasIsActionUserDevice") && objc_msgSend(v5, "hasIsActionUserDevice") && (v68 = -[BMFamilyAskToBuy isActionUserDevice](self, "isActionUserDevice"), v68 == objc_msgSend(v5, "isActionUserDevice")))
      {
        storeLink = [(BMFamilyAskToBuy *)self storeLink];
        storeLink2 = [v5 storeLink];
        if (storeLink == storeLink2)
        {
          v12 = 1;
        }

        else
        {
          storeLink3 = [(BMFamilyAskToBuy *)self storeLink];
          storeLink4 = [v5 storeLink];
          v12 = [storeLink3 isEqual:storeLink4];
        }

        goto LABEL_56;
      }
    }

LABEL_55:
    v12 = 0;
LABEL_56:

    goto LABEL_57;
  }

  v12 = 0;
LABEL_57:

  return v12;
}

- (id)jsonDictionary
{
  v53[14] = *MEMORY[0x1E69E9840];
  requestID = [(BMFamilyAskToBuy *)self requestID];
  if (![(BMFamilyAskToBuy *)self hasEventTime]|| ([(BMFamilyAskToBuy *)self eventTime], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMFamilyAskToBuy *)self eventTime];
    v5 = MEMORY[0x1E696AD98];
    [(BMFamilyAskToBuy *)self eventTime];
    v6 = [v5 numberWithDouble:?];
  }

  userID = [(BMFamilyAskToBuy *)self userID];
  actionUserID = [(BMFamilyAskToBuy *)self actionUserID];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFamilyAskToBuy status](self, "status")}];
  itemTitle = [(BMFamilyAskToBuy *)self itemTitle];
  itemDescription = [(BMFamilyAskToBuy *)self itemDescription];
  itemLocalizedPrice = [(BMFamilyAskToBuy *)self itemLocalizedPrice];
  thumbnailPath = [(BMFamilyAskToBuy *)self thumbnailPath];
  ageRating = [(BMFamilyAskToBuy *)self ageRating];
  if (![(BMFamilyAskToBuy *)self hasStarRating]|| ([(BMFamilyAskToBuy *)self starRating], fabs(v11) == INFINITY))
  {
    v47 = 0;
  }

  else
  {
    [(BMFamilyAskToBuy *)self starRating];
    v12 = MEMORY[0x1E696AD98];
    [(BMFamilyAskToBuy *)self starRating];
    v47 = [v12 numberWithDouble:?];
  }

  productType = [(BMFamilyAskToBuy *)self productType];
  if ([(BMFamilyAskToBuy *)self hasIsActionUserDevice])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFamilyAskToBuy isActionUserDevice](self, "isActionUserDevice")}];
  }

  else
  {
    v13 = 0;
  }

  storeLink = [(BMFamilyAskToBuy *)self storeLink];
  v52[0] = @"requestID";
  null = requestID;
  if (!requestID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null;
  v53[0] = null;
  v52[1] = @"eventTime";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null2;
  v53[1] = null2;
  v52[2] = @"userID";
  null3 = userID;
  if (!userID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null3;
  v53[2] = null3;
  v52[3] = @"actionUserID";
  null4 = actionUserID;
  if (!actionUserID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null4;
  v53[3] = null4;
  v52[4] = @"status";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null5;
  v53[4] = null5;
  v52[5] = @"itemTitle";
  null6 = itemTitle;
  if (!itemTitle)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = userID;
  v35 = null6;
  v53[5] = null6;
  v52[6] = @"itemDescription";
  null7 = itemDescription;
  if (!itemDescription)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v9;
  v53[6] = null7;
  v52[7] = @"itemLocalizedPrice";
  null8 = itemLocalizedPrice;
  if (!itemLocalizedPrice)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = itemTitle;
  v53[7] = null8;
  v52[8] = @"thumbnailPath";
  null9 = thumbnailPath;
  if (!thumbnailPath)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v53[8] = null9;
  v52[9] = @"ageRating";
  null10 = ageRating;
  if (!ageRating)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null8;
  v34 = null7;
  v42 = v6;
  v53[9] = null10;
  v52[10] = @"starRating";
  null11 = v47;
  if (!v47)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = requestID;
  v53[10] = null11;
  v52[11] = @"productType";
  null12 = productType;
  if (!productType)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v53[11] = null12;
  v52[12] = @"isActionUserDevice";
  null13 = v13;
  v29 = v13;
  if (!v13)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v53[12] = null13;
  v52[13] = @"storeLink";
  null14 = storeLink;
  if (!storeLink)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v53[13] = null14;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:{14, v32}];
  if (!storeLink)
  {
  }

  if (!v29)
  {
  }

  if (!productType)
  {
  }

  if (!v47)
  {
  }

  if (!ageRating)
  {
  }

  if (!thumbnailPath)
  {
  }

  if (!itemLocalizedPrice)
  {
  }

  if (!itemDescription)
  {
  }

  if (v43)
  {
    if (v44)
    {
      goto LABEL_58;
    }
  }

  else
  {

    if (v44)
    {
LABEL_58:
      if (actionUserID)
      {
        goto LABEL_59;
      }

      goto LABEL_67;
    }
  }

  if (actionUserID)
  {
LABEL_59:
    if (v45)
    {
      goto LABEL_60;
    }

    goto LABEL_68;
  }

LABEL_67:

  if (v45)
  {
LABEL_60:
    if (v42)
    {
      goto LABEL_61;
    }

LABEL_69:

    if (v26)
    {
      goto LABEL_62;
    }

    goto LABEL_70;
  }

LABEL_68:

  if (!v42)
  {
    goto LABEL_69;
  }

LABEL_61:
  if (v26)
  {
    goto LABEL_62;
  }

LABEL_70:

LABEL_62:

  return v41;
}

- (BMFamilyAskToBuy)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v167[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"requestID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"eventTime"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v27 = 0;
          goto LABEL_100;
        }

        errorCopy = error;
        selfCopy = self;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v133 = v8;
        v31 = *MEMORY[0x1E698F240];
        v164 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventTime"];
        v165 = v32;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
        v33 = v30;
        self = selfCopy;
        v34 = v32;
        v27 = 0;
        *errorCopy = [v33 initWithDomain:v31 code:2 userInfo:v11];
        v10 = 0;
        v8 = v133;
        goto LABEL_99;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"userID"];
    v139 = v11;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v18 = v8;
      selfCopy2 = self;
      v122 = v7;
      v20 = v9;
      v21 = v10;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v34 = 0;
          v27 = 0;
          v9 = v20;
          v7 = v122;
          v8 = v18;
          goto LABEL_99;
        }

        v135 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v162 = *MEMORY[0x1E696A578];
        v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userID"];
        v163 = v137;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
        v37 = v36 = error;
        v38 = v35;
        v11 = v139;
        v34 = 0;
        v27 = 0;
        *v36 = [v135 initWithDomain:v38 code:2 userInfo:v37];
        v39 = v18;
        v10 = v21;
        v9 = v20;
        v7 = v122;
        v12 = v37;
        self = selfCopy2;
        v8 = v39;
LABEL_98:

LABEL_99:
        goto LABEL_100;
      }

      v134 = v11;
      v9 = v20;
      v7 = v122;
      v8 = v18;
    }

    else
    {
      v134 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"actionUserID"];
    v131 = v10;
    errorCopy2 = error;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v137 = 0;
          v27 = 0;
          v34 = v134;
          goto LABEL_98;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy3 = self;
        v42 = v12;
        v43 = v40;
        v123 = v7;
        v44 = v9;
        v45 = v8;
        v46 = selfCopy3;
        v47 = *MEMORY[0x1E698F240];
        v160 = *MEMORY[0x1E696A578];
        v130 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"actionUserID"];
        v161 = v130;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
        v49 = v43;
        v12 = v42;
        v50 = v47;
        self = v46;
        v15 = v48;
        v8 = v45;
        v9 = v44;
        v7 = v123;
        v137 = 0;
        v27 = 0;
        *error = [v49 initWithDomain:v50 code:2 userInfo:v48];
        v34 = v134;
        goto LABEL_97;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    v127 = v14;
    v128 = v12;
    v121 = v9;
    selfCopy4 = self;
    v137 = v13;
    v132 = v8;
    if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v7;
        v17 = v9;
        v130 = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy2)
          {
            v130 = 0;
            v27 = 0;
            v34 = v134;
            goto LABEL_97;
          }

          v88 = objc_alloc(MEMORY[0x1E696ABC0]);
          v126 = v7;
          v89 = *MEMORY[0x1E698F240];
          v158 = *MEMORY[0x1E696A578];
          v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"status"];
          v159 = v129;
          v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
          v90 = v89;
          v7 = v126;
          v130 = 0;
          v27 = 0;
          *errorCopy2 = [v88 initWithDomain:v90 code:2 userInfo:v67];
          v34 = v134;
          v12 = v128;
LABEL_96:

          v8 = v132;
LABEL_97:

          v10 = v131;
          goto LABEL_98;
        }

        v16 = v7;
        v17 = v9;
        v130 = [MEMORY[0x1E696AD98] numberWithInt:BMFamilyAskToBuyRequestStatusFromString(v15)];
      }
    }

    else
    {
      v16 = v7;
      v17 = v9;
      v130 = 0;
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"itemTitle"];
    if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v129 = 0;
          v27 = 0;
          v67 = v51;
          v9 = v17;
          v7 = v16;
          v34 = v134;
          self = selfCopy4;
          goto LABEL_95;
        }

        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v124 = v16;
        v63 = *MEMORY[0x1E698F240];
        v156 = *MEMORY[0x1E696A578];
        v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemTitle"];
        v157 = v52;
        v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
        v65 = v62;
        v12 = v128;
        v66 = v63;
        v67 = v51;
        self = selfCopy4;
        v9 = v121;
        v7 = v124;
        v120 = v64;
        v129 = 0;
        v27 = 0;
        *errorCopy2 = [v65 initWithDomain:v66 code:2 userInfo:?];
        v34 = v134;
LABEL_94:

LABEL_95:
        v15 = v127;
        goto LABEL_96;
      }

      v118 = v51;
      v129 = v51;
    }

    else
    {
      v118 = v51;
      v129 = 0;
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"itemDescription"];
    v9 = v17;
    v120 = v52;
    if (v52)
    {
      objc_opt_class();
      v7 = v16;
      if (objc_opt_isKindOfClass())
      {
        v52 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy2)
          {
            v52 = 0;
            v27 = 0;
            v34 = v134;
            self = selfCopy4;
            v67 = v118;
            goto LABEL_94;
          }

          v69 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = *MEMORY[0x1E698F240];
          v154 = *MEMORY[0x1E696A578];
          v119 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemDescription"];
          v155 = v119;
          v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
          v72 = v69;
          self = selfCopy4;
          v9 = v121;
          v117 = v71;
          v52 = 0;
          v27 = 0;
          *errorCopy2 = [v72 initWithDomain:v70 code:2 userInfo:?];
          v34 = v134;
          goto LABEL_126;
        }

        v52 = v52;
      }
    }

    else
    {
      v7 = v16;
    }

    v53 = [dictionaryCopy objectForKeyedSubscript:@"itemLocalizedPrice"];
    v117 = v53;
    if (!v53 || (v54 = v53, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v119 = 0;
      goto LABEL_50;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v119 = v54;
LABEL_50:
      v55 = [dictionaryCopy objectForKeyedSubscript:@"thumbnailPath"];
      v115 = v55;
      if (!v55 || (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v57 = v52;
        v116 = 0;
LABEL_53:
        v58 = [dictionaryCopy objectForKeyedSubscript:@"ageRating"];
        v113 = v58;
        if (v58 && (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy2)
            {
              v114 = 0;
              v27 = 0;
              v34 = v134;
              self = selfCopy4;
              v67 = v118;
              v52 = v57;
              v9 = v121;
              goto LABEL_91;
            }

            v91 = objc_alloc(MEMORY[0x1E696ABC0]);
            v92 = *MEMORY[0x1E698F240];
            v148 = *MEMORY[0x1E696A578];
            v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ageRating"];
            v149 = v112;
            v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
            v94 = v91;
            self = selfCopy4;
            v52 = v57;
            v9 = v121;
            v111 = v93;
            v114 = 0;
            v27 = 0;
            *errorCopy2 = [v94 initWithDomain:v92 code:2 userInfo:?];
            v34 = v134;
            v67 = v118;
            goto LABEL_90;
          }

          v114 = v59;
        }

        else
        {
          v114 = 0;
        }

        v60 = [dictionaryCopy objectForKeyedSubscript:@"starRating"];
        v52 = v57;
        v111 = v60;
        if (v60)
        {
          v61 = v60;
          objc_opt_class();
          v9 = v121;
          if (objc_opt_isKindOfClass())
          {
            v112 = 0;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy2)
              {
                v112 = 0;
                v27 = 0;
                v34 = v134;
                self = selfCopy4;
                v67 = v118;
                v9 = v121;
                goto LABEL_90;
              }

              v95 = objc_alloc(MEMORY[0x1E696ABC0]);
              v96 = *MEMORY[0x1E698F240];
              v146 = *MEMORY[0x1E696A578];
              v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starRating"];
              v147 = v125;
              v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
              v98 = v95;
              self = selfCopy4;
              v112 = 0;
              v27 = 0;
              *errorCopy2 = [v98 initWithDomain:v96 code:2 userInfo:v97];
              v78 = v97;
              v34 = v134;
              v67 = v118;
              v9 = v121;
LABEL_89:

              v12 = v128;
LABEL_90:

LABEL_91:
LABEL_92:

LABEL_93:
              goto LABEL_94;
            }

            v112 = v61;
          }
        }

        else
        {
          v112 = 0;
          v9 = v121;
        }

        v68 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
        if (v68)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v108 = v68;
            v125 = 0;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v78 = v68;
              if (!errorCopy2)
              {
                v125 = 0;
                v27 = 0;
                goto LABEL_88;
              }

              v99 = objc_alloc(MEMORY[0x1E696ABC0]);
              v100 = *MEMORY[0x1E698F240];
              v144 = *MEMORY[0x1E696A578];
              v109 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"productType"];
              v145 = v109;
              v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
              v125 = 0;
              v27 = 0;
              *errorCopy2 = [v99 initWithDomain:v100 code:2 userInfo:v73];
LABEL_87:

LABEL_88:
              v34 = v134;
              self = selfCopy4;
              v67 = v118;
              goto LABEL_89;
            }

            v108 = v68;
            v125 = v68;
          }
        }

        else
        {
          v108 = 0;
          v125 = 0;
        }

        v73 = [dictionaryCopy objectForKeyedSubscript:@"isActionUserDevice"];
        if (v73 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy2)
            {
              v109 = 0;
              v27 = 0;
              v78 = v108;
              goto LABEL_87;
            }

            v75 = selfCopy4;
            v110 = objc_alloc(MEMORY[0x1E696ABC0]);
            v107 = *MEMORY[0x1E698F240];
            v142 = *MEMORY[0x1E696A578];
            v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isActionUserDevice"];
            v143 = v77;
            v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
            v101 = [v110 initWithDomain:v107 code:2 userInfo:v76];
            v109 = 0;
            v27 = 0;
            *errorCopy2 = v101;
            v78 = v108;
            goto LABEL_86;
          }

          v106 = v52;
          v74 = errorCopy2;
          v75 = selfCopy4;
          v109 = v73;
        }

        else
        {
          v106 = v52;
          v74 = errorCopy2;
          v75 = selfCopy4;
          v109 = 0;
        }

        v76 = [dictionaryCopy objectForKeyedSubscript:@"storeLink"];
        if (v76 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          v78 = v108;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v74)
            {
              v105 = objc_alloc(MEMORY[0x1E696ABC0]);
              v104 = *MEMORY[0x1E698F240];
              v140 = *MEMORY[0x1E696A578];
              v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"storeLink"];
              v141 = v102;
              v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
              *v74 = [v105 initWithDomain:v104 code:2 userInfo:v103];
            }

            v77 = 0;
            v27 = 0;
            v52 = v106;
            goto LABEL_86;
          }

          v77 = v76;
        }

        else
        {
          v77 = 0;
          v78 = v108;
        }

        v52 = v106;
        v27 = -[BMFamilyAskToBuy initWithRequestID:eventTime:userID:actionUserID:status:itemTitle:itemDescription:itemLocalizedPrice:thumbnailPath:ageRating:starRating:productType:isActionUserDevice:storeLink:](v75, "initWithRequestID:eventTime:userID:actionUserID:status:itemTitle:itemDescription:itemLocalizedPrice:thumbnailPath:ageRating:starRating:productType:isActionUserDevice:storeLink:", v132, v131, v134, v137, [v130 intValue], v129, v106, v119, v116, v114, v112, v125, v109, v77);
        v75 = v27;
LABEL_86:
        selfCopy4 = v75;

        v11 = v139;
        goto LABEL_87;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = v52;
        v116 = v56;
        goto LABEL_53;
      }

      if (errorCopy2)
      {
        v84 = objc_alloc(MEMORY[0x1E696ABC0]);
        v85 = *MEMORY[0x1E698F240];
        v150 = *MEMORY[0x1E696A578];
        v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"thumbnailPath"];
        v151 = v114;
        v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
        v87 = v84;
        self = selfCopy4;
        v9 = v121;
        v113 = v86;
        v116 = 0;
        v27 = 0;
        *errorCopy2 = [v87 initWithDomain:v85 code:2 userInfo:?];
        v34 = v134;
        v67 = v118;
        goto LABEL_91;
      }

      v116 = 0;
      v27 = 0;
      v34 = v134;
      self = selfCopy4;
LABEL_131:
      v67 = v118;
      goto LABEL_92;
    }

    if (errorCopy2)
    {
      v80 = objc_alloc(MEMORY[0x1E696ABC0]);
      v81 = *MEMORY[0x1E698F240];
      v152 = *MEMORY[0x1E696A578];
      v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemLocalizedPrice"];
      v153 = v116;
      v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
      v83 = v80;
      self = selfCopy4;
      v9 = v121;
      v115 = v82;
      v119 = 0;
      v27 = 0;
      *errorCopy2 = [v83 initWithDomain:v81 code:2 userInfo:?];
      v34 = v134;
      goto LABEL_131;
    }

    v119 = 0;
    v27 = 0;
    v34 = v134;
    self = selfCopy4;
LABEL_126:
    v67 = v118;
    goto LABEL_93;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (error)
  {
    selfCopy5 = self;
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E698F240];
    v166 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestID"];
    v167[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v167 forKeys:&v166 count:1];
    v25 = v23;
    self = selfCopy5;
    v26 = [v25 initWithDomain:v24 code:2 userInfo:v9];
    v8 = 0;
    v27 = 0;
    *error = v26;
LABEL_100:

    goto LABEL_101;
  }

  v8 = 0;
  v27 = 0;
LABEL_101:

  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFamilyAskToBuy *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasEventTime)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_userID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionUserID)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_itemTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_itemDescription)
  {
    PBDataWriterWriteStringField();
  }

  v4 = toCopy;
  if (self->_itemLocalizedPrice)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_thumbnailPath)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_ageRating)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_hasStarRating)
  {
    PBDataWriterWriteFloatField();
    v4 = toCopy;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_hasIsActionUserDevice)
  {
    PBDataWriterWriteBOOLField();
    v4 = toCopy;
  }

  if (self->_storeLink)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v43.receiver = self;
  v43.super_class = BMFamilyAskToBuy;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_71;
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
        LOBYTE(v44) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v44) & 0x7F) << v7;
        if ((LOBYTE(v44) & 0x80) == 0)
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

      switch((v14 >> 3))
      {
        case 1u:
          v15 = PBReaderReadString();
          v16 = 32;
          goto LABEL_53;
        case 2u:
          v5->_hasEventTime = 1;
          v44 = 0.0;
          v31 = [fromCopy position] + 8;
          if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 8, v32 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v38 = v44;
          v39 = 40;
          goto LABEL_68;
        case 3u:
          v15 = PBReaderReadString();
          v16 = 48;
          goto LABEL_53;
        case 4u:
          v15 = PBReaderReadString();
          v16 = 56;
          goto LABEL_53;
        case 5u:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v44) = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (LOBYTE(v44) & 0x7F) << v17;
            if ((LOBYTE(v44) & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            if (v18++ > 8)
            {
              goto LABEL_60;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v19 > 3)
          {
LABEL_60:
            LODWORD(v19) = 0;
          }

          v5->_status = v19;
          goto LABEL_54;
        case 6u:
          v15 = PBReaderReadString();
          v16 = 64;
          goto LABEL_53;
        case 7u:
          v15 = PBReaderReadString();
          v16 = 72;
          goto LABEL_53;
        case 8u:
          v15 = PBReaderReadString();
          v16 = 80;
          goto LABEL_53;
        case 9u:
          v15 = PBReaderReadString();
          v16 = 88;
          goto LABEL_53;
        case 0xAu:
          v15 = PBReaderReadString();
          v16 = 96;
          goto LABEL_53;
        case 0xBu:
          v5->_hasStarRating = 1;
          LODWORD(v44) = 0;
          v33 = [fromCopy position] + 4;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 4, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v38 = *&v44;
          v39 = 104;
LABEL_68:
          *(&v5->super.super.isa + v39) = v38;
          goto LABEL_54;
        case 0xCu:
          v15 = PBReaderReadString();
          v16 = 112;
          goto LABEL_53;
        case 0xDu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v5->_hasIsActionUserDevice = 1;
          break;
        case 0xEu:
          v15 = PBReaderReadString();
          v16 = 120;
LABEL_53:
          v35 = *(&v5->super.super.isa + v16);
          *(&v5->super.super.isa + v16) = v15;

          goto LABEL_54;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_70;
          }

          goto LABEL_54;
      }

      while (1)
      {
        LOBYTE(v44) = 0;
        v27 = [fromCopy position] + 1;
        if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v26 |= (LOBYTE(v44) & 0x7F) << v24;
        if ((LOBYTE(v44) & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v13 = v25++ >= 9;
        if (v13)
        {
          LOBYTE(v30) = 0;
          goto LABEL_63;
        }
      }

      v30 = (v26 != 0) & ~[fromCopy hasError];
LABEL_63:
      v5->_isActionUserDevice = v30;
LABEL_54:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_70:
    v41 = 0;
  }

  else
  {
LABEL_71:
    v41 = v5;
  }

  return v41;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  requestID = [(BMFamilyAskToBuy *)self requestID];
  v3 = MEMORY[0x1E696AD98];
  [(BMFamilyAskToBuy *)self eventTime];
  v20 = [v3 numberWithDouble:?];
  userID = [(BMFamilyAskToBuy *)self userID];
  actionUserID = [(BMFamilyAskToBuy *)self actionUserID];
  v15 = BMFamilyAskToBuyRequestStatusAsString([(BMFamilyAskToBuy *)self status]);
  itemTitle = [(BMFamilyAskToBuy *)self itemTitle];
  itemDescription = [(BMFamilyAskToBuy *)self itemDescription];
  itemLocalizedPrice = [(BMFamilyAskToBuy *)self itemLocalizedPrice];
  thumbnailPath = [(BMFamilyAskToBuy *)self thumbnailPath];
  ageRating = [(BMFamilyAskToBuy *)self ageRating];
  v9 = MEMORY[0x1E696AD98];
  [(BMFamilyAskToBuy *)self starRating];
  v10 = [v9 numberWithDouble:?];
  productType = [(BMFamilyAskToBuy *)self productType];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFamilyAskToBuy isActionUserDevice](self, "isActionUserDevice")}];
  storeLink = [(BMFamilyAskToBuy *)self storeLink];
  v18 = [v17 initWithFormat:@"BMFamilyAskToBuy with requestID: %@, eventTime: %@, userID: %@, actionUserID: %@, status: %@, itemTitle: %@, itemDescription: %@, itemLocalizedPrice: %@, thumbnailPath: %@, ageRating: %@, starRating: %@, productType: %@, isActionUserDevice: %@, storeLink: %@", requestID, v20, userID, actionUserID, v15, itemTitle, itemDescription, itemLocalizedPrice, thumbnailPath, ageRating, v10, productType, v12, storeLink];

  return v18;
}

- (BMFamilyAskToBuy)initWithRequestID:(id)d eventTime:(id)time userID:(id)iD actionUserID:(id)userID status:(int)status itemTitle:(id)title itemDescription:(id)description itemLocalizedPrice:(id)self0 thumbnailPath:(id)self1 ageRating:(id)self2 starRating:(id)self3 productType:(id)self4 isActionUserDevice:(id)self5 storeLink:(id)self6
{
  dCopy = d;
  timeCopy = time;
  iDCopy = iD;
  iDCopy2 = iD;
  userIDCopy = userID;
  userIDCopy2 = userID;
  titleCopy = title;
  descriptionCopy = description;
  priceCopy = price;
  pathCopy = path;
  ratingCopy = rating;
  v21 = timeCopy;
  starRatingCopy = starRating;
  typeCopy = type;
  deviceCopy = device;
  linkCopy = link;
  v44.receiver = self;
  v44.super_class = BMFamilyAskToBuy;
  v26 = [(BMEventBase *)&v44 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v26->_requestID, d);
    if (v21)
    {
      v26->_hasEventTime = 1;
      [v21 doubleValue];
    }

    else
    {
      v26->_hasEventTime = 0;
      v27 = -1.0;
    }

    v26->_eventTime = v27;
    objc_storeStrong(&v26->_userID, iDCopy);
    objc_storeStrong(&v26->_actionUserID, userIDCopy);
    v26->_status = status;
    objc_storeStrong(&v26->_itemTitle, title);
    objc_storeStrong(&v26->_itemDescription, description);
    objc_storeStrong(&v26->_itemLocalizedPrice, price);
    objc_storeStrong(&v26->_thumbnailPath, path);
    objc_storeStrong(&v26->_ageRating, rating);
    if (starRatingCopy)
    {
      v26->_hasStarRating = 1;
      [starRatingCopy floatValue];
      v29 = v28;
    }

    else
    {
      v26->_hasStarRating = 0;
      v29 = -1.0;
    }

    v26->_starRating = v29;
    objc_storeStrong(&v26->_productType, type);
    if (deviceCopy)
    {
      v26->_hasIsActionUserDevice = 1;
      v26->_isActionUserDevice = [deviceCopy BOOLValue];
    }

    else
    {
      v26->_hasIsActionUserDevice = 0;
      v26->_isActionUserDevice = 0;
    }

    objc_storeStrong(&v26->_storeLink, link);
  }

  return v26;
}

+ (id)protoFields
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestID" number:1 type:13 subMessageClass:0];
  v18[0] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventTime" number:2 type:0 subMessageClass:0];
  v18[1] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userID" number:3 type:13 subMessageClass:0];
  v18[2] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionUserID" number:4 type:13 subMessageClass:0];
  v18[3] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"status" number:5 type:4 subMessageClass:0];
  v18[4] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemTitle" number:6 type:13 subMessageClass:0];
  v18[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemDescription" number:7 type:13 subMessageClass:0];
  v18[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemLocalizedPrice" number:8 type:13 subMessageClass:0];
  v18[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"thumbnailPath" number:9 type:13 subMessageClass:0];
  v18[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ageRating" number:10 type:13 subMessageClass:0];
  v18[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starRating" number:11 type:1 subMessageClass:0];
  v18[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productType" number:12 type:13 subMessageClass:0];
  v18[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActionUserDevice" number:13 type:12 subMessageClass:0];
  v18[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"storeLink" number:14 type:13 subMessageClass:0];
  v18[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMFamilyAskToBuy alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end